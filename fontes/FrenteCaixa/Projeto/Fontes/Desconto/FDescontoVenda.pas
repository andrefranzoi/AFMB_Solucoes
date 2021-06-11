{
xx***********************************************************************************xx
xx                                                                                   xx
xx  AUTOR/DESENVOLVEDOR...: Adriano Zanini (2020)                                    xx
xx  DATA DO CODIGO-FONTE..: DESDE 01/02/2010                                         xx
xx  E-MAIL................: indpcp2018@gmail.com                                     xx
xx                                                                                   xxxx***********************************************************************************xxxx                                                                                   xx
xx  SISTEMA...............: DBVenda Retaguarda / Frente de Caixa                     xx
xx  LINGUAGEM/DB..........: Delphi 10.3 Rio (32 bits) | Firebird 2.5 (32 bits)       xx
xx                                                                                   xx
xx***********************************************************************************xx
xx                                                                                   xxxx Alguns sem qualquer ética profissional ou moral, tem comercializado esses fontes  xxxx sem minha autorização. Pelas leis brasileiras de direitos autorais, ISSO É CRIME. xxxx                                                                                   xxxx***********************************************************************************xxxx                                                                                   xx
xx Eu Adriano Zanini, sou autor/desenvolvedor. Se alguem te vendeu esses fontes      xxxx sem minha autorização, você comprou um codigo-fonte pirata (não autorizo vender). xxxx                                                                                   xxxx***********************************************************************************xxxx                                                                                   xxxx Sou autor dos sitemas "VestisPCP", "IndPCP" e "DBVenda". Os fontes do "VestisPCP" xxxx estão lá no GitHub.                                                               xxxx Link no GitHub: https://github.com/ZaniniAdriano/VestisPCP                        xxxx                                                                                   xxxx***********************************************************************************xxxx  COMERCIALIZE SOMENTE O SISTEMA COMPILADO (COM O NOME/INTERFACE QUE DESEJAR).     xxxx  MUDE O QUE DESEJAR, CUSTOMIZE COMO QUISER. INCLUSIVE O NOME DO SISTEMA/PROJETO.  xxxx                                                                                   xxxx***********************************************************************************xx
}

unit FDescontoVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit,
  Vcl.ExtCtrls, Vcl.StdCtrls, ACBrUtil;

type
  TFrmDescontoVenda = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    pnTitulo: TPanel;
    Panel2: TPanel;
    Shape2: TShape;
    Label2: TLabel;
    EditDesconto: TcxCurrencyEdit;
    lblReceber: TLabel;
    EditDescontoValor: TcxCurrencyEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditDescontoPropertiesChange(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure EditDescontoValorPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditDescontoValorKeyPress(Sender: TObject; var Key: Char);
    procedure EditDescontoKeyPress(Sender: TObject; var Key: Char);
  private
    procedure Validar;
    procedure Sair;
    procedure GetPercentual;
    procedure GetValor;
    { Private declarations }
  public
    { Public declarations }
    FReceber : Currency;
    FEditValor : Boolean;
    FEditPercent : Boolean;
  end;

var
  FrmDescontoVenda: TFrmDescontoVenda;

implementation

{$R *.dfm}

uses AppFuncoes;

procedure TFrmDescontoVenda.GetValor();
var
  mPercentual : Currency;
begin
  if FEditPercent = False then
    exit;
  EditDescontoValor.Value := RoundABNT(((FReceber * EditDesconto.Value) / 100 ),2);
end;

procedure TFrmDescontoVenda.GetPercentual();
var
  mPercentual : Currency;
begin
  if FEditValor = False then
    exit;
  EditDesconto.Value := RoundABNT(((EditDescontoValor.Value / FReceber) * 100 ),2);
end;

procedure TFrmDescontoVenda.Sair();
begin
  ModalResult := mrCancel;
  Close;
end;

procedure TFrmDescontoVenda.Validar();
begin
  ModalResult := mrOk;
end;

procedure TFrmDescontoVenda.btnOkClick(Sender: TObject);
begin
  Validar();
end;

procedure TFrmDescontoVenda.EditDescontoPropertiesChange(Sender: TObject);
begin
  if FEditPercent = False then
    exit;
  if EditDesconto.Value > 100 then
  begin
    Informar('Limite é 100%');
    EditDesconto.Clear;
  end;
  GetValor();
end;

procedure TFrmDescontoVenda.EditDescontoValorPropertiesChange(Sender: TObject);
begin
  if FEditValor = False then
    exit;
  if EditDescontoValor.Value > FReceber then
  begin
    Informar('Limite é R$ '+FormatFloatBr(FReceber));
    EditDescontoValor.Clear;
    Exit;
  end;
  GetPercentual();
end;

procedure TFrmDescontoVenda.EditDescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
  FEditPercent := True;
  FEditValor := False;
end;

procedure TFrmDescontoVenda.EditDescontoValorKeyPress(Sender: TObject;
  var Key: Char);
begin
  FEditPercent := False;
  FEditValor := True;
end;

procedure TFrmDescontoVenda.FormCreate(Sender: TObject);
begin
  FReceber := 0;
  FEditValor := False;
  FEditPercent := False;
end;

procedure TFrmDescontoVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    Sair();
  end;
  if Key = VK_F5 then
  begin
    Validar();
  end;
  if Key=VK_RETURN then
  begin
    Selectnext(ActiveControl, True, True);
  end;
end;

procedure TFrmDescontoVenda.FormShow(Sender: TObject);
begin
  FrmDescontoVenda.lblReceber.Caption := 'A Receber: R$ '+FormatFloatBr(FReceber);
end;

end.
