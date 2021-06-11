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

unit FAutenticarAcao;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, FFrameBarra,
   Classe.Global;

type
   TFrmAutenticarAcao = class(TForm)
      EditSenha: TLabeledEdit;
      BtnOk: TBitBtn;
      BtnCancelar: TBitBtn;
      Panel1: TPanel;
      EditUsuario: TLabeledEdit;
      FrmFrameBarra1: TFrmFrameBarra;
      Label1: TLabel;
      procedure BtnCancelarClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCreate(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure BtnOkClick(Sender: TObject);
      procedure FlatSpeedButton1Click(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmAutenticarAcao: TFrmAutenticarAcao;

implementation

uses Biblioteca, Global, App.Constantes;

{$R *.dfm}

procedure TFrmAutenticarAcao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_RETURN then
   Begin
      BtnOk.Click;
   end;

   if Key = VK_ESCAPE then
   Begin
      BtnCancelar.Click;
   end;

end;

procedure TFrmAutenticarAcao.FormCreate(Sender: TObject);
begin
   if FileExists(_ARQUIVOAUTENTICASENHA) then
   Begin
      EditUsuario.text := 'Admin';
      EditSenha.text := 'Admin';
   end;
   EditUsuario.text := FUsuario.Nome;
   ModalResult := mrCancel;
end;

procedure TFrmAutenticarAcao.FormShow(Sender: TObject);
begin
   EditSenha.SetFocus;
end;

procedure TFrmAutenticarAcao.BtnOkClick(Sender: TObject);
begin
   If Uppercase(EditSenha.text) <> Uppercase(FUsuario.Senha) then
   Begin
      Informar('Senha incorreta');
      EditSenha.SetFocus;
   end;

   If Uppercase(EditSenha.text) = Uppercase(FUsuario.Senha) then
   Begin
      ModalResult := mrOk;
   End;

end;

procedure TFrmAutenticarAcao.BtnCancelarClick(Sender: TObject);
begin
   ModalResult := mrCancel;
   close;
end;

procedure TFrmAutenticarAcao.FlatSpeedButton1Click(Sender: TObject);
begin
   close;
end;

end.
