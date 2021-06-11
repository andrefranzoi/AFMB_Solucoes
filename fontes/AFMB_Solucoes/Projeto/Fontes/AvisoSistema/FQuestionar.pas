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

unit FQuestionar;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons;

type
   TFrmQuestionar = class(TForm)
      pnTitulo: TPanel;
      shpTitulo: TShape;
      lblTitulo: TLabel;
      pnBotoes: TPanel;
      btnOk: TBitBtn;
      btnCancelar: TBitBtn;
      pnMensagem: TPanel;
      lblMensagem: TLabel;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormShow(Sender: TObject);
      procedure btnCancelarClick(Sender: TObject);
      procedure btnOkClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
      FFocoOk: Boolean;
   end;

var
   FrmQuestionar: TFrmQuestionar;

implementation

uses Biblioteca;

{$R *.dfm}

procedure TFrmQuestionar.FormCreate(Sender: TObject);
begin
   lblMensagem.Caption := '';
   ModalResult := mrNone;
   FFocoOk := False;
end;

procedure TFrmQuestionar.btnCancelarClick(Sender: TObject);
begin
   ModalResult := mrCancel;
end;

procedure TFrmQuestionar.btnOkClick(Sender: TObject);
begin
   ModalResult := mrOk;
end;

procedure TFrmQuestionar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFrmQuestionar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      Key := 0;
      ModalResult := mrCancel;
      close;
   end;
end;

procedure TFrmQuestionar.FormShow(Sender: TObject);
begin
   if FFocoOk then
   begin
      btnOk.Caption := '&Ok';
      btnOk.SetFocus;
   end;
end;

end.
