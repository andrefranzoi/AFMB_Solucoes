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

unit FServidorSistema;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs,  StdCtrls, ExtCtrls, Buttons, FileCtrl, DBCtrls, DB,
   IniFiles, Spin, Menus, jpeg, FFrameBarra, Classe.Global, FireDAC.Comp.Client,
   FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmServidorSistema = class(TForm)
      PopupMenu1: TPopupMenu;
    MnuRestaurar: TMenuItem;
    FrmFrameBarra1: TFrmFrameBarra;
    pnTitulo: TPanel;
    BtnOk: TButton;
    BtnCancelar: TButton;
    btnfechar: TButton;
    PainelMsg: TPanel;
    GroupBox1: TGroupBox;
    EditServidor: TLabeledEdit;
    pnServidor: TPanel;
    EditSenha: TLabeledEdit;
    EditPorta: TLabeledEdit;
    editUsurario: TLabeledEdit;
    EditLocalDB: TLabeledEdit;
    BtnTestar: TButton;
    BtnFirebird: TBitBtn;
    OpenDialog1: TOpenDialog;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnTestarClick(Sender: TObject);
      procedure BtnOkClick(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
      procedure MnuRestaurarClick(Sender: TObject);
      procedure btnfecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnFirebirdClick(Sender: TObject);
   private
      { Private declarations }

      SQLConexaoTeste: TFDConnection;
      procedure CarregarCampos;
      procedure GravarCampos;

   public
      { Public declarations }
   end;

var
   FrmServidorSistema: TFrmServidorSistema;

implementation

uses Biblioteca, FPrincipal, Global, App.Constantes;

{$R *.dfm}

procedure TFrmServidorSistema.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_ESCAPE then
      close;
end;

procedure TFrmServidorSistema.FormShow(Sender: TObject);
begin
  FInfFile.CarregarINI;
  CarregarCampos;
end;

procedure TFrmServidorSistema.MnuRestaurarClick(Sender: TObject);
begin
   EditServidor.Text  := _DATABASE_SERVIDOR;
   EditPorta.text     := _DATABASE_PORTA.ToString;
   editUsurario.text  := _DATABASE_USUARIO;
   EditSenha.text     := _DATABASE_SENHA;
   EditLocalDB.Text   := _BANCODADOS_PADRAO;
end;

procedure TFrmServidorSistema.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   SQLConexaoTeste.Free;
   Action := Cafree;
end;

procedure TFrmServidorSistema.FormCreate(Sender: TObject);
begin
   SQLConexaoTeste := TFDConnection.create(nil);
   SQLConexaoTeste.Params  := FrmPrincipal.DBConexao.Params;
end;

Procedure TFrmServidorSistema.CarregarCampos;
begin
   EditLocalDB.Text    := FBancoDados.BancoDados;
   EditServidor.Text   := FBancoDados.Endereco;
   EditPorta.Text      := IntToStr(FBancoDados.Porta);
   editUsurario.Text   := FBancoDados.Usuario;
   EditSenha.Text      := FBancoDados.Senha;
end;

Procedure TFrmServidorSistema.GravarCampos;
begin
   FBancoDados.Endereco    :=EditServidor.Text;
   FBancoDados.Porta       :=StrToIntDef((EditPorta.Text),1433);
   FBancoDados.Senha       :=EditSenha.Text;
   FBancoDados.BancoDados  :=EditLocalDB.Text;
end;

procedure TFrmServidorSistema.BtnTestarClick(Sender: TObject);
begin
   GravarCampos;

  SQLConexaoTeste.Close;
  SQLConexaoTeste.Params.Values['Database']        :=FBancoDados.BancoDados;
  SQLConexaoTeste.Params.Values['Server']          :=FBancoDados.Endereco;
  SQLConexaoTeste.Params.Values['User_Name']       :=FBancoDados.Usuario;
  SQLConexaoTeste.Params.Values['Password']        :=FBancoDados.Senha;

   PainelMsg.Caption := 'aguarde, conectando ao servidor remoto...';
   Update;
   Try
      SQLConexaoTeste.Open;

      PainelMsg.Caption := '';
      Aviso('Sucesso na conexão com servidor');
      SQLConexaoTeste.Close;
   except
      SQLConexaoTeste.Close;
      AvisoSistema('Falha na conexão com o servidor'+
           sLineBreak+
           sLineBreak+
           ' Verificar: '+
           sLineBreak+
           ' - nome ou IP do servidor'+
           sLineBreak+
           ' - firewall do Windows/Linux (liberar a porta 3050)'+
           sLineBreak+
           ' - nome do banco de dados'+
           sLineBreak+
           ' - Senha do banco de dados');
   end;
   PainelMsg.Caption := '';
   Update;

end;

procedure TFrmServidorSistema.btnfecharClick(Sender: TObject);
begin
   blTerminate := True;
   TerminarAplicacao;
end;

procedure TFrmServidorSistema.BtnCancelarClick(Sender: TObject);
begin
   close;
end;

procedure TFrmServidorSistema.BtnFirebirdClick(Sender: TObject);
begin
  if not OpenDialog1.Execute then
    exit;
  EditLocalDB.Text :=OpenDialog1.FileName;
end;

procedure TFrmServidorSistema.BtnOkClick(Sender: TObject);
begin
   GravarCampos;
   FInfFile.GravarINI;
   AvisoSistema('O Sistema será fechado.' +
                sLineBreak+
                sLineBreak+
                'Execute-o novamente, para carregar as configurações adequadas.');
   btnfecharClick(Sender);
end;


end.
