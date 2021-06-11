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

unit FCPFCNPJ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit,
  Vcl.ExtCtrls, Vcl.StdCtrls, ACBrValidador;

type
  TFrmCPFCNPJ = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    pnTitulo: TPanel;
    btnOk: TButton;
    btnSair: TButton;
    Panel2: TPanel;
    Shape2: TShape;
    Label2: TLabel;
    EditDocumento: TEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSairClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    procedure Validar;
    procedure Sair;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCPFCNPJ: TFrmCPFCNPJ;

implementation

{$R *.dfm}

uses AppFuncoes;

procedure TFrmCPFCNPJ.Sair();
begin
  ModalResult := mrCancel;
  Close;
end;

procedure TFrmCPFCNPJ.Validar();
var
  mDocumento : String;
  mResultado : String;
begin
  mDocumento := Trim(EditDocumento.Text);
  if StrToInt64Def(mDocumento,0) = 0 then
  begin
    EditDocumento.Clear;
    mDocumento := '';
  end;
  if mDocumento <> '' then
  begin
    if (Length(mDocumento) in [11,14]) = False then
    begin
      Informar('Documento informado não é CPF ou CNPJ.','Informar Documento.',True);
      Exit;
    end;
    if (Length(mDocumento) = 11) then
    begin
      mResultado := ValidarCPF(mDocumento) ;
      if (mResultado <> '') then
      begin
        Informar('CPF inválido.','Informar CPF.',True);
        Exit;
      end;
    end;
    if (Length(mDocumento) = 14)  then
    begin
      mResultado := ValidarCNPJ(mDocumento);
      if (mResultado <> '') then
      begin
        Informar('CNPJ inválido.','Informar CNPJ.',True);
        Exit;
      end;
    end;
  end;
  ModalResult := mrOk;
end;

procedure TFrmCPFCNPJ.btnOkClick(Sender: TObject);
begin
  Validar();
end;

procedure TFrmCPFCNPJ.btnSairClick(Sender: TObject);
begin
  Sair();
end;

procedure TFrmCPFCNPJ.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then
  begin
    Sair();
  end;
  if Key=VK_RETURN then
  begin
    Validar();
  end;

end;

end.
