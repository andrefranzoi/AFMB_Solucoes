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

unit FRecebimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  pcnConversao,
  ClasseDados, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit;

type
  TFrmRecebimento = class(TForm)
    Panel1: TPanel;
    pnTitulo: TPanel;
    Panel2: TPanel;
    Shape2: TShape;
    Label2: TLabel;
    lblTipoPagamento: TLabel;
    Label1: TLabel;
    btnOk: TButton;
    btnSair: TButton;
    EditValor: TcxCurrencyEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditValorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSairClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
    FIDBandeiraCartao : Integer;
    FBandeiraNome     : String;
    FBandeiraCartao   : TpcnBandeiraCartao;
    FBandeiraCNPJ     : String;
    procedure Adicionar;
    procedure Sair;
  public
    { Public declarations }
    FCartao           : Boolean;
    FTipo             : String;
    FVReceber         : Currency;
    FVRecebido        : Currency;
  end;

var
  FrmRecebimento: TFrmRecebimento;

implementation

{$R *.dfm}

uses AppFuncoes, FPrincipal, FSelecionarBandeiraCartao, FPagamento;

procedure TFrmRecebimento.FormCreate(Sender: TObject);
begin
  ModalResult := mrNone;
  FCartao := False;
  FVRecebido := 0;
  FVReceber  := 0;
  EditValor.Value := 0;
end;

procedure TFrmRecebimento.FormShow(Sender: TObject);
var
  mSValor  : String;
  mNValor  : Currency;
begin
  mNValor := 0;
  mSValor := FormatFloat('###,##0.0000',  FVReceber);
  mSValor := StringReplace(mSValor,'.','',[]);
  mNValor := StrToFloat(mSValor);
  if FCartao then
    EditValor.Value := mNValor;
  EditValor.SetFocus;
end;

procedure TFrmRecebimento.btnOkClick(Sender: TObject);
begin
  Adicionar();
end;

procedure TFrmRecebimento.btnSairClick(Sender: TObject);
begin
  Sair();
end;

procedure TFrmRecebimento.EditValorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key in [VK_DELETE,VK_BACK]) then
    EditValor.Clear;
end;

procedure TFrmRecebimento.Adicionar();
var
  mNumericoValor    : Currency;
  mDiferenca : Currency;
  mAlerta    : String;
  mStringValor    : String;
begin
  mDiferenca := 0;
  //mEValor    := StrToFloatDef(EditValor.Text,0);
  mNumericoValor    := EditValor.Value;
  //mStringValor    := FormatFloat('###,##0.00',  mEValor);
  //mStringValor    := StringReplace(mStringValor,'.','',[]);
  //mEValor    := StrToCurr(mStringValor);
  FVRecebido := 0;
  if mNumericoValor <= 0 then
  begin
    Informar('Nenhum valor informado.');
    exit;
  end;

  mDiferenca := mNumericoValor - FVReceber;
  if mDiferenca<0 then
    mDiferenca := 0;
  if FCartao then
  begin
    if mNumericoValor>FVReceber then
    begin
      Informar('Valor do cartão não pode ser maior que o valor a pagar.');
      exit;
    end;
  end;

  //-------------------------------------------------------------------------------
  // Evitar fraude ou erro do operador:
  // Situação 1:
  //   Levando em conta que maior cédula  do Brasil é R$ 100,00, não faz sentido
  //   que a diferença (a mais) do pagamento ultrapasse esse valor.
  // Situação 2:
  //   Serve tambem para alertar o operador do caixa sobre erro ao digitar
  //   valor do cartão (o que pode gerar transtornos/processos judiciais).
  //-------------------------------------------------------------------------------

  FVRecebido := mNumericoValor;
  if FCartao then
  begin
    try
      FBandeiraNome       := '';
      FBandeiraCartao := bcOutros;
      FBandeiraCNPJ   := '';
      FrmSelecionarBandeiraCartao := TFrmSelecionarBandeiraCartao.Create(Nil);
      FrmSelecionarBandeiraCartao.ShowModal;
      FIDBandeiraCartao  := FrmSelecionarBandeiraCartao.FIDBandeiraCad;
      FBandeiraNome   := FrmSelecionarBandeiraCartao.FBandeiraNome;
      FBandeiraCartao := FrmSelecionarBandeiraCartao.FBandeiraCartao;
      FBandeiraCNPJ   := FrmSelecionarBandeiraCartao.FBandeiraCNPJ;
    finally
      FrmSelecionarBandeiraCartao.Free;
    end;

    //---------------------------------------------------------------------------------------------------------------------------------------
    // Dica ao programador que não saiba trabalhar com Record (ou qualquer tipo de Array).
    // Aqui, quando uso "High(FCartaoPagamento)", estou pegando o ultimo registro (elemento) em memoria, e utilizando posição.
    // (é como se você desse um Last numa tabela de banco de dados)
    //---------------------------------------------------------------------------------------------------------------------------------------
    SetLength(FCartaoPagamento, Length(FCartaoPagamento)+1 ); // Aqui adiciona-se mais um registro (elemento) ao vetor (array). É como se você desse um Append numa tabela de banco de dados.
    FCartaoPagamento[High(FCartaoPagamento)].IDVenda          := FrmPrincipal.QryVenda.FieldByName('CODIGO').AsInteger;
    FCartaoPagamento[High(FCartaoPagamento)].IDCaixa          := FrmPrincipal.QryVenda.FieldByName('TERMINAL').AsInteger;
    FCartaoPagamento[High(FCartaoPagamento)].IDOperador       := FrmPrincipal.QryVenda.FieldByName('OPERADOR').AsInteger;
    FCartaoPagamento[High(FCartaoPagamento)].Data             := Date;
    FCartaoPagamento[High(FCartaoPagamento)].Hora             := Time;
    FCartaoPagamento[High(FCartaoPagamento)].BandeiraNome     := FBandeiraNome;        // Programador, Se você usar TEF, poderá gravar aqui
    FCartaoPagamento[High(FCartaoPagamento)].IDBandeiraCartao    := FIDBandeiraCartao;
    FCartaoPagamento[High(FCartaoPagamento)].BandeiraCartao   := TpcnBandeiraCartao(FBandeiraCartao);  // Trate aqui essa informação quando usar TEF.
    FCartaoPagamento[High(FCartaoPagamento)].BandeiraCNPJ     := FBandeiraCNPJ;    // Programador, Se você usar TEF, poderá gravar aqui
    FCartaoPagamento[High(FCartaoPagamento)].TipoPagto        := 'A VISTA'; // Defina aqui quando for a prazo ou a vista
    FCartaoPagamento[High(FCartaoPagamento)].ValorTransacao   := FVRecebido;
    FCartaoPagamento[High(FCartaoPagamento)].Enviado          := '';
    FCartaoPagamento[High(FCartaoPagamento)].Documento_NSU    := '';               // Programador, Se você usar TEF, poderá gravar aqui
    FCartaoPagamento[High(FCartaoPagamento)].CodigoCartao     := '';               // Programador, Se você usar TEF, poderá gravar aqui
    FCartaoPagamento[High(FCartaoPagamento)].Autorizacao      := ''; {MUDAR AQUI, INFORMAR OCORRETO}          // Programador, Se você usar TEF, poderá gravar aqui
    FCartaoPagamento[High(FCartaoPagamento)].DebitoCredito    := FTipo;            // Programador, Se você usar TEF, poderá gravar aqui
    FCartaoPagamento[High(FCartaoPagamento)].EnviadaServidor  := '';               // Programador, Se você usar TEF, poderá gravar aqui
    FCartaoPagamento[High(FCartaoPagamento)].TEF              := 'NAO';            // Programador, Se você usar TEF, poderá gravar aqui
    FCartaoPagamento[High(FCartaoPagamento)].POS              := 'SIM';            // Programador, Se você usar TEF, poderá gravar aqui
    FCartaoPagamento[High(FCartaoPagamento)].Conferido        := '';               // Programador, Se você usar TEF, poderá gravar aqui
    FCartaoPagamento[High(FCartaoPagamento)].FormaPagamento := fpOutro;
    if FTipo='DEBITO' then
      FCartaoPagamento[High(FCartaoPagamento)].FormaPagamento := fpCartaoDebito;
    if FTipo='CREDITO' then
      FCartaoPagamento[High(FCartaoPagamento)].FormaPagamento := fpCartaoCredito;
  end;
  Close;
  ModalResult := mrOk;
end;

procedure TFrmRecebimento.Sair();
begin
  ModalResult := mrCancel;
  Close;
end;

procedure TFrmRecebimento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  mEValor    : Currency;
  mDiferenca : Currency;
  mAlerta    : String;
  mSValor    : String;
begin
  if Key=VK_ESCAPE then
  begin
    Sair();
  end;
  if Key=VK_RETURN then
  begin
    Adicionar();
  end;
end;

end.
