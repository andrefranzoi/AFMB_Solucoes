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

unit FPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  ClasseDados, System.ImageList, Vcl.ImgList, ACBrUtil, cxImageList, cxGraphics,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.Generics.Collections, System.Types;

type
  TFrmPagamento = class(TForm)
    Panel1: TPanel;
    pnBotoes: TPanel;
    pnTitulo: TPanel;
    Shape2: TShape;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    MemRecebimento: TMemo;
    Panel5: TPanel;
    grpTroco: TGroupBox;
    lblTroco: TLabel;
    GroupBox3: TGroupBox;
    lblReceber: TLabel;
    GroupBox4: TGroupBox;
    lblPagar: TLabel;
    GroupBox5: TGroupBox;
    lblRecebido: TLabel;
    GroupBox1: TGroupBox;
    btnDinheiro: TButton;
    btnCartoDebito: TButton;
    btnCartaoCredito: TButton;
    btnOk: TButton;
    Label1: TLabel;
    Label3: TLabel;
    grpDesconto: TGroupBox;
    lblDesconto: TLabel;
    btnParcelar: TButton;
    FDQuery1: TFDQuery;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnDinheiroClick(Sender: TObject);
    procedure btnCartoDebitoClick(Sender: TObject);
    procedure btnCartaoCreditoClick(Sender: TObject);
    procedure btnParcelarClick(Sender: TObject);
  private
    { Private declarations }
    mReceber : Currency;
    function  GetPagamento(aTitulo: String; aReceber: Currency; aCartao: Boolean = False; aDebitoCredito : String = ''): Currency;
    procedure CalcularRecebimentos();
    procedure LimparCampos;
    procedure ReceberDinheiro;
    procedure ReceberCartaoDebito;
    procedure ReceberCartaoCredito;
    procedure ReceberLimparPagamentos;
    procedure Validar;
    procedure Reabrir;
    procedure ParcelarVenda;
  public
    { Public declarations }
    FIDVenda            : Integer;
    FValorProdutos      : Currency;
    FValorVenda         : Currency;
    FRecebido           : Currency;
    FDinheiro           : Currency;
    FDebito             : Currency;
    FCredito            : Currency;
    FParcelas           : Currency;
    FTroco              : Currency;
    FValDesconto        : Currency;
    FFormaPagtoParcela  : String;

  end;

Const
  _SEM_SALDO_REBECER = 'Não há saldo para receber';

var
  FrmPagamento: TFrmPagamento;

implementation

{$R *.dfm}

uses FRecebimento, AppFuncoes, FPrincipal, FDescontoVenda, FGeraParcelas,
  AppSQL;

procedure TFrmPagamento.FormCreate(Sender: TObject);
begin
  ModalResult := mrNone;
  FValorVenda := 0;
  FValorProdutos := 0;
  FIDVenda := 0;
  LimparCampos();
end;

procedure TFrmPagamento.LimparCampos;
begin
  MemRecebimento.Clear;
  grpTroco.Visible := False;
  FDinheiro      := 0;
  FDebito        := 0;
  FCredito       := 0;
  FParcelas      := 0;
  mReceber       := 0;
  FRecebido      := 0;
  FTroco         := 0;

  if Length(FCartaoPagamento)>0 then
  begin
    Finalize(FCartaoPagamento);
    FillChar(FCartaoPagamento,sizeof(FCartaoPagamento),0);
  end;
  CalcularRecebimentos();
end;

procedure TFrmPagamento.FormShow(Sender: TObject);
begin
  Reabrir();
  lblPagar.Caption := 'R$ '+FormatFloat('###,##0.00',  FValorVenda);
  CalcularRecebimentos();
end;

procedure TFrmPagamento.ReceberDinheiro;
begin
  if (FRecebido >= FValorVenda) then
  begin
    Informar(_SEM_SALDO_REBECER+' em dinheiro','Recebimento Dinheiro',True);
    exit;
  end;
  FDinheiro := FDinheiro + GetPagamento('Dinheiro',mReceber,False,'DINHEIRO');
  CalcularRecebimentos;
end;

procedure TFrmPagamento.ReceberCartaoDebito;
begin
  if (FRecebido >= FValorVenda) then
  begin
    Informar(_SEM_SALDO_REBECER+' em cartão','Recebimento Cartão Débito',True);
    exit;
  end;
  FDebito := FDebito + GetPagamento('Cartão Débito',mReceber,true,'DEBITO');
  CalcularRecebimentos;
end;

procedure TFrmPagamento.Reabrir;
begin
  FrmPrincipal.QryVenda.Close;
  FrmPrincipal.QryVendaItem.Close;
  FrmPrincipal.QryVenda.Open;
  FrmPrincipal.QryVendaItem.Open;
end;

procedure TFrmPagamento.ReceberCartaoCredito;
begin
  if (FRecebido >= FValorVenda) then
  begin
    Informar(_SEM_SALDO_REBECER+' em cartão','Recebimento Cartão Crédito',True);
    exit;
  end;
  FCredito := FCredito + GetPagamento('Cartão Crédito',mReceber,true,'CREDITO');
  CalcularRecebimentos;
end;

procedure TFrmPagamento.ReceberLimparPagamentos;
var
  mAlterado : Boolean;
begin
    if Pergunta('Limpar os pagamentos ja realizados?') = false then
      exit;
    LimparCampos();
    mAlterado := False;
    try
      Reabrir();
      FrmPrincipal.QryVenda.Edit;
      FrmPrincipal.QryVenda.FieldByName('VALORRECEBIDO').AsFloat      := 0;
      FrmPrincipal.QryVenda.FieldByName('VALORDINHEIRO').AsFloat      := 0;
      FrmPrincipal.QryVenda.FieldByName('TROCO').AsFloat              := 0;
      FrmPrincipal.QryVenda.FieldByName('VALORCARTAODEBITO').AsFloat  := 0;
      FrmPrincipal.QryVenda.FieldByName('VALORCARTAOCREDITO').AsFloat := 0;
      FrmPrincipal.QryVenda.Post;
      SQLExcluirCtaReceber(FIDVenda);
      CalcularRecebimentos();
      mAlterado := True;
    finally
      if mAlterado then
      begin
        Reabrir();
      end;
    end;
end;

procedure TFrmPagamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then
  begin
    ModalResult := mrCancel;
    Close;
  end;
  if Key=VK_F1 then
  begin
    ReceberDinheiro();
  end;
  if Key=VK_F2 then
  begin
    ReceberCartaoDebito();
  end;
  if Key=VK_F3 then
  begin
    ReceberCartaoCredito();
  end;
  if Key=VK_F4 then
  begin
    ParcelarVenda();
  end;
  if Key=VK_F5 then
  begin
    Validar();
  end;
  if Key=VK_F11 then
  begin
    ReceberLimparPagamentos();
  end;
end;

function TFrmPagamento.GetPagamento(aTitulo: String; aReceber: Currency; aCartao: Boolean = False; aDebitoCredito : String = ''): Currency;
var
  mModalResultOk : Boolean;
begin
  Result :=0;
  //CalcularRecebimentos();
  if mReceber <= 0 then
  begin
    Informar('Não há valor a receber.');
    exit;
  end;
  try
    FrmRecebimento := TFrmRecebimento.Create(nil);
    FrmRecebimento.lblTipoPagamento.Caption := Trim(aTitulo);
    FrmRecebimento.FVReceber := aReceber;
    FrmRecebimento.FCartao   := aCartao;
    if aCartao then
      FrmRecebimento.FTipo := aDebitoCredito;
    mModalResultOk := FrmRecebimento.ShowModal=mrOk;
    if mModalResultOk then
    begin
      Result := FrmRecebimento.FVRecebido;
    end;
  finally
    FrmRecebimento.Free;
  end;
end;

procedure TFrmPagamento.btnCartaoCreditoClick(Sender: TObject);
begin
  ReceberCartaoCredito();
end;

procedure TFrmPagamento.btnCartoDebitoClick(Sender: TObject);
begin
  ReceberCartaoDebito();
end;

procedure TFrmPagamento.btnDinheiroClick(Sender: TObject);
begin
   ReceberDinheiro();
end;

procedure TFrmPagamento.btnOkClick(Sender: TObject);
begin
  Validar();
end;

procedure TFrmPagamento.btnParcelarClick(Sender: TObject);
begin
  ParcelarVenda();
end;

procedure TFrmPagamento.ParcelarVenda;
var
  mModalResultOk : Boolean;
begin
  FParcelas := 0;
  try
    try
      FrmGeraParcelas := TFrmGeraParcelas.Create(nil);
      FrmGeraParcelas.FValorReceber := mReceber;
      FrmGeraParcelas.FIDVenda := FIDVenda;
      mModalResultOk := FrmGeraParcelas.ShowModal = mrOk;
      FParcelas := FrmGeraParcelas.FValorParcelas;
      FFormaPagtoParcela := FrmGeraParcelas.EditNomeFormaPagto.Text;
    finally
      FrmGeraParcelas.Free;
    end;
  finally
    CalcularRecebimentos;
  end;
end;

procedure TFrmPagamento.Validar;
begin
  CalcularRecebimentos();
  if (FRecebido < mReceber) then
  begin
    Informar('Valor pago é insuficiente para concluir venda.','Conclusão da Venda',True);
    Abort;
  end;

  ModalResult := mrOk;
end;

procedure TFrmPagamento.CalcularRecebimentos();
var
 mValVenda : Currency;
begin
  mReceber  := 0;
  FRecebido := 0;
  FTroco    := 0;
  mValVenda := 0;
  //----------------------------------------------------------------------
  // Calcular pagamentos
  //----------------------------------------------------------------------
  //mValVenda := (FValorVenda - FValDesconto);
  mValVenda := (FValorVenda);
  FRecebido := RoundABNT((FDinheiro + FDebito + FCredito + FParcelas),2);
  mReceber := mValVenda - FRecebido;
  if FRecebido > mValVenda then
  begin
    FTroco := FRecebido - mValVenda;
    if FTroco < 0 then
      FTroco := (FTroco*-1);
    mReceber := 0;
  end;
  //----------------------------------------------------------------------
  // Totais
  //----------------------------------------------------------------------
  lblRecebido.Caption := 'R$ '+FormatFloat('###,##0.00',  FRecebido);
  lblReceber.Caption  := 'R$ '+FormatFloat('###,##0.00',  mReceber);
  lblTroco.Caption    := 'R$ '+FormatFloat('###,##0.00',  FTroco);
  lblDesconto.Caption := 'R$ '+FormatFloat('###,##0.00',  FValDesconto);
  grpTroco.Visible    := FTroco > 0;
  grpDesconto.Visible := FValDesconto > 0;
  //----------------------------------------------------------------------
  // Detalhar os recebimentos
  //----------------------------------------------------------------------
  MemRecebimento.Clear;
  MemRecebimento.Lines.Add('');
  MemRecebimento.Lines.Add('');

  if FValorProdutos>0 then
  begin
    MemRecebimento.Lines.Add('           Valor Total: '+FormatFloat('###,##0.00',  FValorProdutos).PadLeft(8) );
    //MemRecebimento.Lines.Add('');
  end;
  if FValDesconto>0 then
  begin
    MemRecebimento.Lines.Add('              Desconto: '+FormatFloat('###,##0.00',  FValDesconto).PadLeft(8) );
    //MemRecebimento.Lines.Add('');
  end;
  if FDinheiro>0 then
  begin
    MemRecebimento.Lines.Add('              Dinheiro: '+FormatFloat('###,##0.00',  FDinheiro).PadLeft(8) );
    //MemRecebimento.Lines.Add('');
  end;
  if FDebito>0 then
  begin
    MemRecebimento.Lines.Add('      Cartão de Débito: '+FormatFloat('###,##0.00',  FDebito).PadLeft(8) );
    //MemRecebimento.Lines.Add('');
  end;
  if FCredito>0 then
  begin
    MemRecebimento.Lines.Add('     Cartão de Crédito: '+FormatFloat('###,##0.00',  FCredito).PadLeft(8) );
    //MemRecebimento.Lines.Add('');
  end;
  if FParcelas>0 then
  begin
    MemRecebimento.Lines.Add(' Parcelado (Crediário): '+FormatFloat('###,##0.00',  FParcelas).PadLeft(8) );
    //MemRecebimento.Lines.Add('');
  end;
  if FRecebido>0 then
  begin
    MemRecebimento.Lines.Add(StringOfChar('-',32));
    //MemRecebimento.Lines.Add('  PAGO PELO CLIENTE: '+FormatFloat('###,##0.00',  FRecebido).PadLeft(8) );
  end;
  //FrmPrincipal.ReabrirTabela();

end;

end.
