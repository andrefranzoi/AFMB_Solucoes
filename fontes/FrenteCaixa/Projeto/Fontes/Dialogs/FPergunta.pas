{
xx***********************************************************************************xx
xx                                                                                   xx
xx  AUTOR/DESENVOLVEDOR...: Adriano Zanini (2020)                                    xx
xx  DATA DO CODIGO-FONTE..: DESDE 01/02/2010                                         xx
xx  E-MAIL................: indpcp2018@gmail.com                                     xx
xx                                                                                   xx
xx  SISTEMA...............: DBVenda Retaguarda / Frente de Caixa                     xx
xx  LINGUAGEM/DB..........: Delphi 10.3 Rio (32 bits) | Firebird 2.5 (32 bits)       xx
xx                                                                                   xx
xx***********************************************************************************xx
xx                                                                                   xx
xx Eu Adriano Zanini, sou autor/desenvolvedor. Se alguem te vendeu esses fontes      xx
}

unit FPergunta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrmPergunta = class(TForm)
    pnTitulo: TPanel;
    shpTitulo: TShape;
    lblTitulo: TLabel;
    pnBotoes: TPanel;
    btnOk: TBitBtn;
    btnCancelar: TBitBtn;
    pnMensagem: TPanel;
    lblMensagem: TLabel;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    FFocoOk : Boolean;
  end;

var
  FrmPergunta: TFrmPergunta;

implementation

{$R *.dfm}

procedure TFrmPergunta.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmPergunta.btnOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFrmPergunta.FormCreate(Sender: TObject);
begin
  ModalResult := mrNone;
  FFocoOk := False;
end;

procedure TFrmPergunta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_ESCAPE then
  begin
    key := 0;
    ModalResult := mrCancel;
    close;
  end;
end;

procedure TFrmPergunta.FormShow(Sender: TObject);
begin
  if FFocoOk then
  begin
    btnOk.Caption := '&Ok';
    btnOk.SetFocus;
  end;
end;

end.