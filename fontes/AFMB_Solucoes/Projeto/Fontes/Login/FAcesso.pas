{
  xx***********************************************************************************xx
  xx                                                                                   xx
  xx  AUTOR/DESENVOLVEDOR...: Adriano Zanini (2020)                                    xx
  xx  DATA DO CODIGO-FONTE..: DESDE 01/02/2010                                         xx
  xx  E-MAIL................: indpcp2018@gmail.com                                     xx
  xx                                                                                   xx
  xx***********************************************************************************xx
  xx                                                                                   xx
  xx  SISTEMA...............: DBVenda Retaguarda / Frente de Caixa                     xx
  xx  LINGUAGEM/DB..........: Delphi 10.3 Rio (32 bits) | Firebird 2.5 (32 bits)       xx
  xx                                                                                   xx
  xx***********************************************************************************xx
  xx                                                                                   xx
  xx Alguns sem qualquer ética profissional ou moral, tem comercializado esses fontes  xx
  xx sem minha autorização. Pelas leis brasileiras de direitos autorais, ISSO É CRIME. xx
  xx                                                                                   xx
  xx***********************************************************************************xx
  xx                                                                                   xx
  xx Eu Adriano Zanini, sou autor/desenvolvedor. Se alguem te vendeu esses fontes      xx
  xx sem minha autorização, você comprou um codigo-fonte pirata (não autorizo vender). xx
  xx                                                                                   xx
  xx***********************************************************************************xx
  xx                                                                                   xx
  xx Sou autor dos sitemas "VestisPCP", "IndPCP" e "DBVenda". Os fontes do "VestisPCP" xx
  xx estão lá no GitHub.                                                               xx
  xx Link no GitHub: https://github.com/ZaniniAdriano/VestisPCP                        xx
  xx                                                                                   xx
  xx***********************************************************************************xx
  xx  COMERCIALIZE SOMENTE O SISTEMA COMPILADO (COM O NOME/INTERFACE QUE DESEJAR).     xx
  xx  MUDE O QUE DESEJAR, CUSTOMIZE COMO QUISER. INCLUSIVE O NOME DO SISTEMA/PROJETO.  xx
  xx                                                                                   xx
  xx***********************************************************************************xx
}

unit FAcesso;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   DB, ExtCtrls, StdCtrls, pngimage, FFrameBarra,
   App.Constantes, Classe.Global,
   FPrincipal, Vcl.DBCtrls, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
   FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
   FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
   FireDAC.Comp.Client, dxGDIPlusClasses, cxGraphics, cxLookAndFeels,
   cxLookAndFeelPainters, Vcl.Menus, cxButtons;

type

   TFrmAcesso = class(TForm)
      QryUsuario: TFDQuery;
      QryFilial: TFDQuery;
      dsFilial: TDataSource;
      Label2: TLabel;
      EditSenha: TLabeledEdit;
      EditUsuario: TLabeledEdit;
      Panel2: TPanel;
      TitleImage: TImage;
      cbxEmpresa: TDBLookupComboBox;
      BitBtn1: TcxButton;
      BitBtn2: TSpeedButton;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
      procedure FormShow(Sender: TObject);
      procedure BitBtn1Click(Sender: TObject);
      procedure BitBtn2Click(Sender: TObject);
      procedure FormDestroy(Sender: TObject);
   private
      { Private declarations }
      FFecharTela: Boolean;
      procedure LoginValidar;
      procedure SairSitema;
      procedure GravarEmpresa;
   public
      { Public declarations }
   end;

var
   FrmAcesso: TFrmAcesso;

implementation

uses Biblioteca, Global, FBaseDados;

{$R *.dfm}

procedure TFrmAcesso.SairSitema;
begin
   FFecharTela := True;
   blnUsuarioAutorizado := false;
   FProsseguir := false;
   TerminarAplicacao();
end;

procedure TFrmAcesso.BitBtn2Click(Sender: TObject);
begin
   SairSitema();
end;

procedure TFrmAcesso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   QryUsuario.Close;
   QryFilial.Close;
   Action := caFree;
end;

procedure TFrmAcesso.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if FFecharTela = false then
      abort;
end;

procedure TFrmAcesso.FormCreate(Sender: TObject);
begin
   QryUsuario.Open;
   QryFilial.Open;
end;

procedure TFrmAcesso.FormDestroy(Sender: TObject);
begin
   if FrmAcesso <> nil then
      FrmAcesso := Nil;
end;

procedure TFrmAcesso.BitBtn1Click(Sender: TObject);
begin
   LoginValidar();
end;

procedure TFrmAcesso.LoginValidar;
begin
   nUsuario := 0;
   if (cbxEmpresa.KeyValue = Null) or (cbxEmpresa.KeyValue < 1) then
   begin
      Informar('Informe a empresa que deseja trabalhar');
      abort;
   end;

   FUsuario.Nome := UpperCase(EditUsuario.text);
   FUsuario.Senha := UpperCase(EditSenha.text);

   if empty(FUsuario.Nome) then
   Begin
      FFecharTela := false;
      blnUsuarioAutorizado := false;
      Informar('Você esqueceu de informar o seu nome de Login');
      EditUsuario.SetFocus;
      abort;
   end;

   if empty(FUsuario.Senha) then
   Begin
      FFecharTela := false;
      blnUsuarioAutorizado := false;
      Informar('Você esqueceu de informar a sua senha Login');
      EditSenha.SetFocus;
      abort;
   end;

   // primeiro, tentar esenha master
   If (UpperCase(FUsuario.Nome) = MASTER_USUARIO) and
     (UpperCase(FUsuario.Senha) = MASTER_SENHA) then
   begin
      blnUsuarioAutorizado := True;
      GravarEmpresa();
      ModalResult := mrOk;
      // close;
   end;

   // abrir tabela
   If blnUsuarioAutorizado = false then
   begin
      QryUsuario.Close;
      QryUsuario.ParamByName('USERNAME').AsString := UpperCase(FUsuario.Nome);
      QryUsuario.ParamByName('SENHA').AsString := UpperCase(FUsuario.Senha);
      QryUsuario.Open;

      // If QryUsuario.LOCATE('UserName;SENHA',VarArrayOf([FUsuario.UsuarioNome,FUsuario.UsuarioSenha]),[])=true then
      If not QryUsuario.IsEmpty then
      begin
         nUsuario := QryUsuario.FieldByName('ID').AsInteger;

         // checar se usuario está autorizado
         if QryUsuario.FieldByName('BLOQUEAR').AsString = 'S' then
         begin
            AvisoSistemaErro('Prezado(a) ' + FUsuario.Nome + ', ' + #13 + #10 +
              'Você está cadastrado no sistema, porém seu acesso não está autorizado.'
              + #13 + #10 + 'Por favor, informe o administrador do sistema.');

            FFecharTela := false;
            blnUsuarioAutorizado := false;
            EditUsuario.SetFocus;
            abort;
         end;
         GravarEmpresa();
         ModalResult := mrOk;
      End
      else
      Begin
         FFecharTela := false;
         blnUsuarioAutorizado := false;
         Informar('Usuário "' + FUsuario.Nome +
           '" não foi reconhecido pelo sistema.' + sLineBreak +
           'Acesso negado');
         EditUsuario.SetFocus;
         abort;
      End;
   End;
   FFecharTela := True;
end;

procedure TFrmAcesso.GravarEmpresa;
begin
   // marcar usuário como online;
   FUsuario.ID := QryUsuario.FieldByName('ID').AsInteger;
   FSistema.Empresa := QryFilial.FieldByName('ID').AsInteger;
   blnUsuarioAutorizado := True;
   ModalResult := mrOk;
end;

procedure TFrmAcesso.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_RETURN then
      LoginValidar();
   If Key = VK_ESCAPE then
      SairSitema();
end;

procedure TFrmAcesso.FormShow(Sender: TObject);
var
   mFilial: Integer;
begin
   mFilial := FInfFile.LerItemINI('PARAMETROS', 'Empresa', 1);
   nUsuario := 0;
   if FileExists(_ARQUIVOAUTENTICASENHA) then
   Begin
      EditUsuario.text := MASTER_USUARIO;
      EditSenha.text := MASTER_SENHA;
   end;
   FFecharTela := false;
   blnUsuarioAutorizado := false;
   QryUsuario.Open;
   QryFilial.First;
   cbxEmpresa.KeyValue := mFilial;
   QryFilial.Locate('ID', mFilial, []);

end;

end.
