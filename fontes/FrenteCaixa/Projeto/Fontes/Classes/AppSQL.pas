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

unit AppSQL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections, Data.DB, FireDAC.Comp.Client,
  System.StrUtils,
  ACBrUtil,
  ClasseCompra;

  function GetPDVLote(aIDLoja: Integer = 1) : Integer;
  function GetNumeroNFCe(aIDLoja: Integer = 1) : Integer;
  function GetNumeroSAT(aIDLoja: Integer = 1) : Integer;
  function GetOperador(aID: Integer) : String;
  function GetFormaPagamento(aID: Integer) : String;
  procedure SQLAtualizaCtaReceber(aIDVenda, aIDCliente, aIDOperador, aIDTerminal, aNumNF: Integer; aSerieNF: String);
  function SQLGetValorParcelas(aIDVenda: Integer): Currency;
  procedure SQLExcluirVenda(aID: Integer);
  procedure SQLCancelarItemVenda(aID, aItemSeq: Integer; aCodigo, aDescricao: String);
  procedure SQLUpdateNumItem(aIDVenda: Integer);
  function SQLInserirItemVenda(aIDEmpresa, aIDVenda, aItemSeq: Integer; aQtde: Currency; aTblProduto : TFDQuery; aBalanca : Boolean; aValorUnit: Currency = 0): Boolean;
  function SQLUpdateDescontoItem(mIDVenda, mItem: Integer; mIDProduto: String; aPercDesc: Currency): Boolean;
  function SQLEstoqueAtualiza(aIDVenda: Integer; aAtualiza: String): Boolean;
  procedure SQLInsertMovimento(aIDCaixa, IDOperador: Integer);
  procedure SQLInsertReforco(aID, aIDCaixa, IDOperador: Integer; aValor: Currency; aNomeOperador: String);
  procedure SQLInsertRetirada(aID, aIDCaixa, IDOperador: Integer; aValor: Currency; aNomeOperador, aMotivo: String);
  procedure SQLUpdateMovimento(aIDMovimento, aIDOperador: Integer; aAcao: String);
  function GetClienteCampo(aID: Integer;aCampo:String): String;
  function GetIDProduto(aProduto: String): Integer;
  function GetProdutoCampo(aProduto, aCampo: String): String;
  function GetIDCodigoBarra(aProduto: String): String;
  Function GetCompraItemFiscal(aProduto: String): TCompraItemFiscal;
  Function GetCNPJFabricante(aProduto: String): String;
  procedure SQLInserirCtaReceber(Const aIDVenda, aIDNF, aCliente, aTerminal, aIDOperador: Integer; Const aVencimento: TDate; Const aValor: Real; Const aPrazoPagto, aOrigemVenda, aEspecie, aQuitado: String; aIDBandeira: Integer);
  procedure SQLInserirControleCaixa(Const aIDVenda, aTerminal, aIDOperador: Integer; Const aValor: Real; Const aOrigemVenda, aDC, aTipoPagto, aEspecie: String; aIDBandeira: Integer);
  procedure SQLUpdateVendaIDCliente(aIDVenda, aIDCliente: Integer; aCPF: String);
  function ChecarCreditoSaldo(aIDCliente: Integer): Real;
  procedure SQLUpdatePedidoStatus(aIDPedido: Integer; aStatus: String = 'S');
  procedure SQLExcluirCtaReceber(aIDVenda: Integer);
  function SQLGetValorAbertura(aID, aIDCaixa, IDOperador: Integer): Currency;

implementation


{******************************************************************************
  Força terminar aplicação e tambem envia ao Windows fechamento forçado
  Isso evita ficar preso na memória
******************************************************************************}

uses FPrincipal, AppFuncoes, ClasseDados;

function GetPDVLote(aIDLoja: Integer=1) : Integer;
var
  mQuery : TFDQuery;
begin
  Result := 0;
  Exit;

// descontinuando. Não é mais utilizado.

//  try
//    QueryCriar(mQuery, False);
//    mQuery.SQL.Add('SELECT NFCE_LOTE FROM CONFIGURACAO');
//    mQuery.Open();
//    mQuery.Edit;
//    mQuery.FieldByName('NFCE_LOTE').AsInteger := mQuery.FieldByName('NFCE_LOTE').AsInteger + 1;
//    mQuery.Post;
//    Result := mQuery.FieldByName('NFCE_LOTE').AsInteger;
//  finally
//    QueryLiberar(mQuery);
//  end;

end;

function GetNumeroNFCe(aIDLoja: Integer) : Integer;
var
  mQuery : TFDQuery;
begin
  Result := 0;
  try
    QueryCriar(mQuery, False);
    mQuery.SQL.Add('SELECT NFCE_SEQUENCIA FROM CONFIGURACAO');
    mQuery.Open();

    mQuery.Edit;
    mQuery.FieldByName('NFCE_SEQUENCIA').AsInteger := mQuery.FieldByName('NFCE_SEQUENCIA').AsInteger + 1;
    mQuery.Post;

    Result := mQuery.FieldByName('NFCE_SEQUENCIA').AsInteger;
  finally
    QueryLiberar(mQuery);
  end;
end;

function GetNumeroSAT(aIDLoja: Integer) : Integer;
var
  mQuery : TFDQuery;
begin
  Result := 0;
  try
    QueryCriar(mQuery, False);
    mQuery.SQL.Add('SELECT SAT_SEQUENCIA FROM CONFIGURACAO');
    mQuery.Open();

    mQuery.Edit;
    mQuery.FieldByName('SAT_SEQUENCIA').AsInteger := mQuery.FieldByName('SAT_SEQUENCIA').AsInteger + 1;
    mQuery.Post;

    Result := mQuery.FieldByName('SAT_SEQUENCIA').AsInteger;
  finally
    QueryLiberar(mQuery);
  end;
end;

function GetOperador(aID: Integer) : String;
var
  mQuery : TFDQuery;
begin
  Result := '';
  try
    QueryCriar(mQuery);
    mQuery.SQL.Add('SELECT * FROM USUARIO ');
    mQuery.SQL.Add('WHERE');
    mQuery.SQL.Add('ID='+aID.ToString);
    mQuery.Open();
    Result := mQuery.FieldByName('USERNAME').AsString
  finally
    QueryLiberar(mQuery);
  end;
end;

function GetFormaPagamento(aID: Integer) : String;
var
  mQuery : TFDQuery;
begin
  Result := '';
  try
    QueryCriar(mQuery);
    mQuery.SQL.Add('SELECT NOME FROM CAD_FORMAPAGTO   ');
    mQuery.SQL.Add('WHERE');
    mQuery.SQL.Add('CODIGO='+aID.ToString);
    mQuery.Open();
    Result := mQuery.FieldByName('NOME').AsString
  finally
    QueryLiberar(mQuery);
  end;
end;

procedure SQLAtualizaCtaReceber(aIDVenda, aIDCliente, aIDOperador, aIDTerminal, aNumNF: Integer; aSerieNF: String);
var
  mQuery       : TFDQuery;
begin
  if aIDVenda = 0 then
    exit;
  QueryCriar(mQuery);
  try
    mQuery.SQL.Add('UPDATE FIN_CTARECEBER SET');
    mQuery.SQL.Add(' IDOPERADOR='+IntToStr(aIDOperador));
    mQuery.SQL.Add(' ,IDTERMINAL='+IntToStr(aIDTerminal));
    mQuery.SQL.Add(' ,NOTAFISCAL='+IntToStr(aNumNF));
    mQuery.SQL.Add(' ,SERIENF='+QuotedStr(aSerieNF));
    if aIDCliente > 0 then
      mQuery.SQL.Add(' ,CLIENTE='+IntToStr(aIDCliente));
    mQuery.SQL.Add('WHERE');
    mQuery.SQL.Add('IDVENDA='+IntToStr(aIDVenda));
    mQuery.ExecSQL;
  finally
    QueryLiberar(mQuery);
  end;
end;

function SQLGetValorParcelas(aIDVenda: Integer): Currency;
var
  mQuery       : TFDQuery;
begin
  Result := 0;
  if aIDVenda < 1 then
    exit;
  QueryCriar(mQuery);
  try
    mQuery.SQL.Add('SELECT SUM(VALOR) AS VALOR FROM FIN_CTARECEBER');
    mQuery.SQL.Add('WHERE');
    mQuery.SQL.Add('EMPRESA=:EMPRESA');
    mQuery.SQL.Add('AND');
    mQuery.SQL.Add('IDVENDA=:IDVENDA');
    mQuery.ParamByName('EMPRESA').AsInteger := FConfiguracao.Loja;
    mQuery.ParamByName('IDVENDA').AsInteger := aIDVenda;
    mQuery.Open;
    Result := mQuery.FieldByName('VALOR').AsFloat;
  finally
    QueryLiberar(mQuery);
  end;
end;

procedure SQLExcluirVenda(aID: Integer);
var
  mQuery       : TFDQuery;
begin
  if aID = 0 then
    exit;
  QueryCriar(mQuery);
  try
    mQuery.SQL.Add('DELETE FROM VENDAS');
    mQuery.SQL.Add('WHERE');
    mQuery.SQL.Add('CODIGO=:ID');
    mQuery.ParamByName('ID').AsInteger         := aID;
    mQuery.ExecSQL;
  finally
    QueryLiberar(mQuery);
  end;
end;

procedure SQLCancelarItemVenda(aID, aItemSeq: Integer; aCodigo, aDescricao: String);
var
  mQuery       : TFDQuery;
begin
  QueryCriar(mQuery);
  try
    mQuery.SQL.Add('DELETE FROM VENDAS_ITENS');
    mQuery.SQL.Add('WHERE');
    mQuery.SQL.Add('CODIGO=:ID');
    mQuery.SQL.Add('AND');
    mQuery.SQL.Add('CODIGOBARRA=:CODIGOBARRA');
    mQuery.SQL.Add('AND');
    mQuery.SQL.Add('ITEM=:ITEM');
    mQuery.ParamByName('ID').AsInteger         := aID;
    mQuery.ParamByName('CODIGOBARRA').AsString := aCodigo;
    mQuery.ParamByName('ITEM').AsInteger       := aItemSeq;
    mQuery.ExecSQL;
  finally
    QueryLiberar(mQuery);
  end;
end;

procedure SQLUpdateNumItem(aIDVenda: Integer);
var
  mQuery : TFDQuery;
  mSequencia : Integer;
begin
  if aIDVenda < 1  then
    exit;
  mSequencia := 0;
  QueryCriar(mQuery);
  mQuery.DisableControls;
  try
    mQuery.SQL.Add('SELECT CODIGO, ITEM FROM VENDAS_ITENS');
    mQuery.SQL.Add('WHERE');
    mQuery.SQL.Add('CODIGO=:ID');
    mQuery.SQL.Add('ORDER BY ITEM');
    mQuery.ParamByName('ID').AsInteger := aIDVenda;
    mQuery.Open;
    if mQuery.IsEmpty then
      exit;

    mQuery.First;
    while not mQuery.Eof do
    begin
      inc(mSequencia);
      mQuery.Edit;
      mQuery.FieldByName('ITEM').AsInteger := mSequencia;
      mQuery.Post;
      mQuery.Next;
    end;

  finally
    QueryLiberar(mQuery);
  end;
end;

procedure SQLUpdateMovimento(aIDMovimento, aIDOperador: Integer; aAcao: String);
var
  mQuery       : TFDQuery;
begin
  if aAcao='' then
  begin
    Informar('Problema ao atualizar movimentação.','Problema',True);
    Abort;
  end;
  QueryCriar(mQuery);
  try
    mQuery.SQL.Add('UPDATE MOVIMENTO SET');
    if aAcao='OPERADOR' then
    begin
      mQuery.SQL.Add('IDOPERADOR=:IDOPERADOR');
    end;
    if aAcao='FECHADO' then
    begin
      mQuery.SQL.Add(' IDOPERADOR=:IDOPERADOR');
      mQuery.SQL.Add(',STATUS=:STATUS');
      mQuery.SQL.Add(',FECHAMENTO=:FECHAMENTO' );
    end;
    mQuery.SQL.Add('WHERE');
    mQuery.SQL.Add('ID=:ID');
    mQuery.ParamByName('ID').AsInteger          := aIDMovimento;
    mQuery.ParamByName('IDOPERADOR').AsInteger  := aIDOperador;
    if aAcao='FECHADO' then
    begin
      mQuery.ParamByName('FECHAMENTO').AsDateTime  := Now;
      mQuery.ParamByName('STATUS').AsString := 'FECHADO';
    end;
    mQuery.ExecSQL;
  finally
    QueryLiberar(mQuery);
  end;
end;

function SQLInserirItemVenda(aIDEmpresa, aIDVenda, aItemSeq: Integer; aQtde: Currency; aTblProduto : TFDQuery; aBalanca : Boolean; aValorUnit: Currency = 0): Boolean;
var
  mQuery       : TFDQuery;
  mVlrUnit     : Currency;
  mValorTotal  : Currency;
  mDesconto    : Currency;
  mProduto     : String;
  mDescricao   : String;
  mIDCodigo    : Integer;
  mAtuEstoque  : Boolean;
  mIBPT        : TIBPTRecord;
begin
  Result := False;
  mAtuEstoque := False;
  QueryCriar(mQuery);
  try
    mQuery.SQL.Add('');
    mQuery.SQL.Add('INSERT INTO VENDAS_ITENS (');
    mQuery.SQL.Add('   CODIGO');
    mQuery.SQL.Add('  ,EMPRESA');
    mQuery.SQL.Add('  ,ITEM');
    mQuery.SQL.Add('  ,STATUS');
    mQuery.SQL.Add('  ,IDPRODUTO');
    mQuery.SQL.Add('  ,CODIGOBARRA');
    mQuery.SQL.Add('  ,BALANCA');
    mQuery.SQL.Add('  ,DESCRICAO');
    mQuery.SQL.Add('  ,UND');
    mQuery.SQL.Add('  ,QUANTIDADE');
    mQuery.SQL.Add('  ,VLR_UNIT');
    mQuery.SQL.Add('  ,VLR_DESCONTO');
    mQuery.SQL.Add('  ,VLR_TOTAL');
    mQuery.SQL.Add('  ,NCM');
    mQuery.SQL.Add('  ,EXTIPI');
    mQuery.SQL.Add('  ,CEST');
    mQuery.SQL.Add('  ,CFOP');
    mQuery.SQL.Add('  ,IPI');
    mQuery.SQL.Add('  ,VLR_IPI');
    mQuery.SQL.Add('  ,PPIS');
    mQuery.SQL.Add('  ,VPIS');
    mQuery.SQL.Add('  ,PCOFINS');
    mQuery.SQL.Add('  ,VCOFINS');
    mQuery.SQL.Add('  ,VLR_ICMS');
    mQuery.SQL.Add('  ,ICMS');
    mQuery.SQL.Add('  ,IN_ALIQ_MUNICIPAL');
    mQuery.SQL.Add('  ,IN_VL_MUNICIPAL');
    mQuery.SQL.Add('  ,IN_ALIQ_ESTADUAL');
    mQuery.SQL.Add('  ,IN_VL_ESTADUAL');
    mQuery.SQL.Add('  ,IN_ALIQ_FEDERAL');
    mQuery.SQL.Add('  ,IN_VL_FEDERAL)');
    mQuery.SQL.Add('VALUES(');
    mQuery.SQL.Add('   :CODIGO');
    mQuery.SQL.Add('  ,:EMPRESA');
    mQuery.SQL.Add('  ,:ITEM');
    mQuery.SQL.Add('  ,:STATUS');
    mQuery.SQL.Add('  ,:IDPRODUTO');
    mQuery.SQL.Add('  ,:CODIGOBARRA');
    mQuery.SQL.Add('  ,:BALANCA');
    mQuery.SQL.Add('  ,:DESCRICAO');
    mQuery.SQL.Add('  ,:UND');
    mQuery.SQL.Add('  ,:QUANTIDADE');
    mQuery.SQL.Add('  ,:VLR_UNIT');
    mQuery.SQL.Add('  ,:VLR_DESCONTO');
    mQuery.SQL.Add('  ,:VLR_TOTAL');
    mQuery.SQL.Add('  ,:NCM');
    mQuery.SQL.Add('  ,:EXTIPI');
    mQuery.SQL.Add('  ,:CEST');
    mQuery.SQL.Add('  ,:CFOP');
    mQuery.SQL.Add('  ,:IPI');
    mQuery.SQL.Add('  ,:VLR_IPI');
    mQuery.SQL.Add('  ,:PPIS');
    mQuery.SQL.Add('  ,:VPIS');
    mQuery.SQL.Add('  ,:PCOFINS');
    mQuery.SQL.Add('  ,:VCOFINS');
    mQuery.SQL.Add('  ,:VLR_ICMS');
    mQuery.SQL.Add('  ,:ICMS');
    mQuery.SQL.Add('  ,:IN_ALIQ_MUNICIPAL');
    mQuery.SQL.Add('  ,:IN_VL_MUNICIPAL');
    mQuery.SQL.Add('  ,:IN_ALIQ_ESTADUAL');
    mQuery.SQL.Add('  ,:IN_VL_ESTADUAL');
    mQuery.SQL.Add('  ,:IN_ALIQ_FEDERAL');
    mQuery.SQL.Add('  ,:IN_VL_FEDERAL)');

    mQuery.ParamByName('ICMS').AsFloat         := 0;
    mQuery.ParamByName('VLR_ICMS').AsFloat     := 0;
    mQuery.ParamByName('IPI').AsFloat          := 0;
    mQuery.ParamByName('VLR_IPI').AsFloat      := 0;
    mQuery.ParamByName('PPIS').AsFloat         := 0;
    mQuery.ParamByName('VPIS').AsFloat         := 0;
    mQuery.ParamByName('PCOFINS').AsFloat      := 0;
    mQuery.ParamByName('VCOFINS').AsFloat      := 0;


    mIBPT.GetIBPT( aTblProduto.FieldByName('IDNCM').AsString,
                   aTblProduto.FieldByName('EXTIPI').AsString,
                   aTblProduto.FieldByName('IDCSTORIGEM').AsInteger);

    mVlrUnit    := 0;
    mValorTotal := 0;
    mDesconto   := 0;
    if aQtde<0 then
      aQtde :=1;
    mIDCodigo   := aTblProduto.FieldByName('CODIGO').AsInteger;
    mProduto    := aTblProduto.FieldByName('REFERENCIA').AsString;
    mDescricao  := aTblProduto.FieldByName('DESCRICAO').AsString;
    mVlrUnit    := aTblProduto.FieldByName('PRC_VENDA').AsFloat;
    if aValorUnit > 0 then // se aValorUnit > 0, significa que é importação de pedido de venda. Não deve pegar valor do cadastro do produto, considerar somente o valor definido no pedido de venda.
      mVlrUnit := aValorUnit;
    mValorTotal := (aQtde * mVlrUnit);

    mQuery.ParamByName('EMPRESA').AsInteger    := aIDEmpresa;
    mQuery.ParamByName('CODIGO').AsInteger     := aIDVenda;
    mQuery.ParamByName('CODIGOBARRA').AsString := mProduto;
    mQuery.ParamByName('ITEM').AsInteger       := aItemSeq;
    mQuery.ParamByName('BALANCA').AsString     := aTblProduto.FieldByName('BALANCA').AsString;
    mQuery.ParamByName('UND').AsString         := aTblProduto.FieldByName('UNIDADE').AsString;
    mQuery.ParamByName('IDPRODUTO').AsInteger  := mIDCodigo;
    mQuery.ParamByName('CFOP').AsInteger       := aTblProduto.FieldByName('CFOPDENTROESTADO').AsInteger;
    if aTblProduto.FieldByName('CFOPDENTROESTADO').AsInteger < 1 then
      mQuery.ParamByName('CFOP').AsInteger := FConfiguracao.CFOP;
    if aTblProduto.FieldByName('PROMOCAO').AsString='SIM' then
    begin
      if aTblProduto.FieldByName('PROMOCAODESCONTO').AsFloat>0 then
        mDesconto := RoundABNT(((mValorTotal * aTblProduto.FieldByName('PROMOCAODESCONTO').AsFloat)/100),2);
    end;
    mQuery.ParamByName('STATUS').AsString      := '';
    mQuery.ParamByName('IDPRODUTO').AsInteger  := mIDCodigo;
    mQuery.ParamByName('DESCRICAO').AsString   := aTblProduto.FieldByName('DESCRICAO').AsString;
    mQuery.ParamByName('QUANTIDADE').AsFloat   := aQtde;
    mQuery.ParamByName('VLR_UNIT').AsFloat     := mVlrUnit-mDesconto;
    mQuery.ParamByName('VLR_DESCONTO').AsFloat := mDesconto;
    mQuery.ParamByName('VLR_TOTAL').AsFloat    := mValorTotal;
    mQuery.ParamByName('NCM').AsString         := aTblProduto.FieldByName('IDNCM').AsString;
    mQuery.ParamByName('CEST').AsString        := aTblProduto.FieldByName('IDCEST').AsString;
    mQuery.ParamByName('EXTIPI').AsString      := aTblProduto.FieldByName('EXTIPI').AsString;
    //--------------------------------------------------------------------
    // Impostos: ICMS/IPI/PIS/COFINS
    //--------------------------------------------------------------------
    if aTblProduto.FieldByName('ICMS').AsFloat>0 then
    begin
      mQuery.ParamByName('ICMS').AsFloat        := aTblProduto.FieldByName('ICMS').AsFloat;
      mQuery.ParamByName('VLR_ICMS').AsFloat    := RoundABNT(((mValorTotal * aTblProduto.FieldByName('ICMS').AsFloat) / 100), 2);
    end;
    if aTblProduto.FieldByName('IPI').AsFloat>0 then
    begin
      mQuery.ParamByName('IPI').AsFloat         := aTblProduto.FieldByName('IPI').AsFloat;
      mQuery.ParamByName('VLR_IPI').AsFloat     := RoundABNT(((mValorTotal * aTblProduto.FieldByName('IPI').AsFloat) / 100), 2);
    end;
    if aTblProduto.FieldByName('PIS').AsFloat>0 then
    begin
      mQuery.ParamByName('PPIS').AsFloat        := aTblProduto.FieldByName('PIS').AsFloat;
      mQuery.ParamByName('VPIS').AsFloat        := RoundABNT(((mValorTotal * aTblProduto.FieldByName('PIS').AsFloat) / 100), 2);
    end;
    if aTblProduto.FieldByName('COFINS').AsFloat>0 then
    begin
      mQuery.ParamByName('PCOFINS').AsFloat     := aTblProduto.FieldByName('COFINS').AsFloat;
      mQuery.ParamByName('VCOFINS').AsFloat     := RoundABNT(((mValorTotal * aTblProduto.FieldByName('COFINS').AsFloat) / 100), 2);
    end;
    //--------------------------------------------------------------------
    // Impostos: IBPT
    //--------------------------------------------------------------------
    mQuery.ParamByName('IN_ALIQ_MUNICIPAL').AsFloat := mIBPT.AliquotaMunicipal;
    mQuery.ParamByName('IN_VL_MUNICIPAL').AsFloat   := RoundABNT(((mValorTotal * mIBPT.AliquotaMunicipal) /100), 2);
    mQuery.ParamByName('IN_ALIQ_ESTADUAL').AsFloat  := mIBPT.AliquotaEstadual;
    mQuery.ParamByName('IN_VL_ESTADUAL').AsFloat    := RoundABNT(((mValorTotal * mIBPT.AliquotaEstadual) /100), 2);
    mQuery.ParamByName('IN_ALIQ_FEDERAL').AsFloat   := mIBPT.ALiquotaFederal;
    mQuery.ParamByName('IN_VL_FEDERAL').AsFloat     := RoundABNT(((mValorTotal * mIBPT.ALiquotaFederal) /100), 2);
    mQuery.ExecSQL;
    Result := True;
  finally
    QueryLiberar(mQuery);
  end;
end;

function SQLUpdateDescontoItem(mIDVenda, mItem: Integer; mIDProduto: String; aPercDesc: Currency): Boolean;
var
  mQryVendaItem: TFDQuery;
  mQryProduto  : TFDQuery;
  mQtd         : Currency;
  mVlrUnit     : Currency;
  mValorTotal  : Currency;
  mDesconto    : Currency;
  mDescontoPro : Currency;
  mDescontoTot : Currency;
  mProduto     : String;
  mDescricao   : String;
  mIDCodigo    : Integer;
  mIBPT        : TIBPTRecord;
begin
  Result := False;
  mQtd         := 0;
  mVlrUnit     := 0;
  mValorTotal  := 0;
  mDescontoPro := 0;
  mDesconto    := 0;
  mDescontoTot := 0;
  QueryCriar(mQryVendaItem);
  QueryCriar(mQryProduto);
  try
    mQryProduto.Close;
    mQryProduto.SQL.Clear;
    mQryProduto.SQL.Add('SELECT * FROM CAD_PRODUTOS WHERE REFERENCIA=:CBARRA ');
    mQryProduto.ParamByName('CBARRA').AsString := mIDProduto;
    mQryProduto.Open;
    if mQryProduto.IsEmpty then
     Exit;

    mQryVendaItem.Close;
    mQryVendaItem.SQL.Clear;
    mQryVendaItem.SQL.Add('SELECT * FROM VENDAS_ITENS');
    mQryVendaItem.SQL.Add('WHERE');
    mQryVendaItem.SQL.Add('CODIGO=:ID');
    mQryVendaItem.SQL.Add('AND');
    mQryVendaItem.SQL.Add('CODIGOBARRA=:CODIGOBARRA');
    mQryVendaItem.SQL.Add('AND');
    mQryVendaItem.SQL.Add('ITEM=:ITEM');
    mQryVendaItem.ParamByName('ID').AsInteger         := mIDVenda;
    mQryVendaItem.ParamByName('CODIGOBARRA').AsString := mIDProduto;
    mQryVendaItem.ParamByName('ITEM').AsInteger       := mItem;
    mQryVendaItem.Open;

    mIBPT.GetIBPT( mQryProduto.FieldByName('IDNCM').AsString,
                   mQryProduto.FieldByName('EXTIPI').AsString,
                   mQryProduto.FieldByName('IDCSTORIGEM').AsInteger);

    mIDCodigo   := mQryProduto.FieldByName('CODIGO').AsInteger;
    mProduto    := mQryProduto.FieldByName('REFERENCIA').AsString;
    mDescricao  := mQryProduto.FieldByName('DESCRICAO').AsString;
    mVlrUnit    := mQryProduto.FieldByName('PRC_VENDA').AsFloat;
    mQtd        := mQryVendaItem.FieldByName('QUANTIDADE').AsFloat;
    mValorTotal := (mQtd * mVlrUnit);

    if mQryProduto.FieldByName('PROMOCAO').AsString='SIM' then
    begin
      if mQryProduto.FieldByName('PROMOCAODESCONTO').AsFloat>0 then
        mDescontoPro := RoundABNT(((mValorTotal * mQryProduto.FieldByName('PROMOCAODESCONTO').AsFloat)/100),2);
    end;
    if aPercDesc > 0 then
      mDesconto := RoundABNT(((mValorTotal * aPercDesc)/100),2);

    mDescontoTot := mDescontoPro + mDesconto;
    if mDescontoTot > mValorTotal then
      mDescontoTot := mValorTotal;

    mQryVendaItem.Edit;
    mQryVendaItem.FieldByName('DESCONTO').AsFloat := aPercDesc;
    mQryVendaItem.FieldByName('VLR_DESCONTO').AsFloat := mDescontoTot;
    mQryVendaItem.FieldByName('VLR_TOTAL').AsFloat    := RoundABNT((mValorTotal - mDescontoTot),2);

    //--------------------------------------------------------------------
    // Recalcular Impostos: ICMS/IPI/PIS/COFINS
    //--------------------------------------------------------------------
    if mQryProduto.FieldByName('ICMS').AsFloat>0 then
    begin
      mQryVendaItem.FieldByName('ICMS').AsFloat        := mQryProduto.FieldByName('ICMS').AsFloat;
      mQryVendaItem.FieldByName('VLR_ICMS').AsFloat    := RoundABNT(((mValorTotal * mQryProduto.FieldByName('ICMS').AsFloat) / 100), 2);
    end;
    if mQryProduto.FieldByName('IPI').AsFloat>0 then
    begin
      mQryVendaItem.FieldByName('IPI').AsFloat         := mQryProduto.FieldByName('IPI').AsFloat;
      mQryVendaItem.FieldByName('VLR_IPI').AsFloat     := RoundABNT(((mValorTotal * mQryProduto.FieldByName('IPI').AsFloat) / 100), 2);
    end;
    if mQryProduto.FieldByName('PIS').AsFloat>0 then
    begin
      mQryVendaItem.FieldByName('PPIS').AsFloat        := mQryProduto.FieldByName('PIS').AsFloat;
      mQryVendaItem.FieldByName('VPIS').AsFloat        := RoundABNT(((mValorTotal * mQryProduto.FieldByName('PIS').AsFloat) / 100), 2);
    end;
    if mQryProduto.FieldByName('COFINS').AsFloat>0 then
    begin
      mQryVendaItem.FieldByName('PCOFINS').AsFloat     := mQryProduto.FieldByName('COFINS').AsFloat;
      mQryVendaItem.FieldByName('VCOFINS').AsFloat     := RoundABNT(((mValorTotal * mQryProduto.FieldByName('COFINS').AsFloat) / 100), 2);
    end;
    //--------------------------------------------------------------------
    // Impostos: IBPT
    //--------------------------------------------------------------------
    mQryVendaItem.FieldByName('IN_ALIQ_MUNICIPAL').AsFloat := mIBPT.AliquotaMunicipal;
    mQryVendaItem.FieldByName('IN_VL_MUNICIPAL').AsFloat   := RoundABNT(((mValorTotal * mIBPT.AliquotaMunicipal) /100), 2);
    mQryVendaItem.FieldByName('IN_ALIQ_ESTADUAL').AsFloat  := mIBPT.AliquotaEstadual;
    mQryVendaItem.FieldByName('IN_VL_ESTADUAL').AsFloat    := RoundABNT(((mValorTotal * mIBPT.AliquotaEstadual) /100), 2);
    mQryVendaItem.FieldByName('IN_ALIQ_FEDERAL').AsFloat   := mIBPT.ALiquotaFederal;
    mQryVendaItem.FieldByName('IN_VL_FEDERAL').AsFloat     := RoundABNT(((mValorTotal * mIBPT.ALiquotaFederal) /100), 2);
    mQryVendaItem.Post;
    Result := True;
  finally
    QueryLiberar(mQryVendaItem);
    QueryLiberar(mQryProduto);
  end;
end;

function SQLEstoqueAtualiza(aIDVenda: Integer; aAtualiza: String): Boolean;
Var
  mQryEstoque : TFDQuery;
  mQryVenda : TFDQuery;
begin
  Result := false;
  QueryCriar(mQryEstoque);
  QueryCriar(mQryVenda);
  try
    mQryVenda.SQL.Add('SELECT IDPRODUTO, QUANTIDADE FROM VENDAS_ITENS');
    mQryVenda.SQL.Add('WHERE');
    mQryVenda.SQL.Add('CODIGO=:ID');
    mQryVenda.SQL.Add('ORDER BY ITEM');
    mQryVenda.ParamByName('ID').AsInteger := aIDVenda;
    mQryVenda.Open;
    if mQryVenda.IsEmpty then
      exit;
    while not mQryVenda.Eof do
    begin
      mQryEstoque.SQL.Clear;
      mQryEstoque.SQL.Add(' UPDATE CAD_PRODUTOS SET  ');
      mQryEstoque.SQL.Add(' ESTOQUESALDO = (ESTOQUESALDO'+aAtualiza+':NQTDE)  '); // Variavel "aAtualiza" deve conter simbolos "-" ou "+".
      mQryEstoque.SQL.Add('  WHERE                         ');
      mQryEstoque.SQL.Add('  CODIGO=:IDCODIGO  ');
      mQryEstoque.ParamByName('IDCODIGO').AsInteger :=  mQryVenda.FieldByName('IDPRODUTO').AsInteger;
      mQryEstoque.ParamByName('NQTDE').AsFloat :=  mQryVenda.FieldByName('QUANTIDADE').AsFloat;
      mQryEstoque.ExecSQL;
      mQryEstoque.Close;
      mQryVenda.Next;
    end;
    Result := True;
  finally
    QueryLiberar(mQryEstoque);
  end;
end;


procedure SQLInsertMovimento(aIDCaixa, IDOperador: Integer);
var
  mQuery : TFDQuery;
begin
  QueryCriar(mQuery);
  try
    mQuery.SQL.Add('INSERT INTO MOVIMENTO (');
    mQuery.SQL.Add(' IDCAIXA');
    mQuery.SQL.Add(',IDOPERADOR');
    mQuery.SQL.Add(',INICIO');
    mQuery.SQL.Add(',VALORVENDABRUTA');
    mQuery.SQL.Add(',STATUS');
    mQuery.SQL.Add(',ENVIADASERVIDOR');
    mQuery.SQL.Add(')');
    mQuery.SQL.Add('VALUES (');
    mQuery.SQL.Add(' :IDCAIXA');
    mQuery.SQL.Add(',:IDOPERADOR');
    mQuery.SQL.Add(',:INICIO');
    mQuery.SQL.Add(',:VALORVENDABRUTA');
    mQuery.SQL.Add(',:STATUS');
    mQuery.SQL.Add(',:ENVIADASERVIDOR)');
    mQuery.ParamByName('IDCAIXA').AsInteger          := aIDCaixa;
    mQuery.ParamByName('IDOPERADOR').AsInteger       := IDOperador;
    mQuery.ParamByName('INICIO').AsDateTime          := Now;
    mQuery.ParamByName('VALORVENDABRUTA').AsInteger := 0;
    mQuery.ParamByName('STATUS').AsString           := 'ABERTO';
    mQuery.ParamByName('ENVIADASERVIDOR').AsString  := 'N';
    mQuery.ExecSQL;
  finally
    QueryLiberar(mQuery);
  end;

end;

procedure SQLInsertReforco(aID, aIDCaixa, IDOperador: Integer; aValor: Currency; aNomeOperador: String);
var
  mQuery : TFDQuery;
begin
  QueryCriar(mQuery);
  try
    mQuery.SQL.Add('INSERT INTO REFORCO(');
    mQuery.SQL.Add(' IDMOVIMENTO');
    mQuery.SQL.Add(',IDCAIXA');
    mQuery.SQL.Add(',IDOPERADOR');
    mQuery.SQL.Add(',NOMEOPERADOR');
    mQuery.SQL.Add(',DATA');
    mQuery.SQL.Add(',VALOR');
    mQuery.SQL.Add(',ENVIADASERVIDOR');
    mQuery.SQL.Add(')');
    mQuery.SQL.Add('VALUES (');
    mQuery.SQL.Add(' :IDMOVIMENTO');
    mQuery.SQL.Add(',:IDCAIXA');
    mQuery.SQL.Add(',:IDOPERADOR');
    mQuery.SQL.Add(',:NOMEOPERADOR');
    mQuery.SQL.Add(',:DATA');
    mQuery.SQL.Add(',:VALOR');
    mQuery.SQL.Add(',:ENVIADASERVIDOR)');
    mQuery.ParamByName('IDMOVIMENTO').AsInteger    := aID;
    mQuery.ParamByName('IDCAIXA').AsInteger        := aIDCaixa;
    mQuery.ParamByName('IDOPERADOR').AsInteger     := IDOperador;
    mQuery.ParamByName('VALOR').AsFloat            := aValor;
    mQuery.ParamByName('NOMEOPERADOR').AsString    := aNomeOperador;
    mQuery.ParamByName('DATA').AsDateTime          := Now;
    mQuery.ParamByName('ENVIADASERVIDOR').AsString := 'N';
    mQuery.ExecSQL;
  finally
    QueryLiberar(mQuery);
  end;
end;

procedure SQLInsertRetirada(aID, aIDCaixa, IDOperador: Integer; aValor: Currency; aNomeOperador, aMotivo: String);
var
  mQuery : TFDQuery;
begin
  QueryCriar(mQuery);
  try
    mQuery.SQL.Add('INSERT INTO RETIRADA (');
    mQuery.SQL.Add(' IDMOVIMENTO');
    mQuery.SQL.Add(',IDCAIXA');
    mQuery.SQL.Add(',IDOPERADOR');
    mQuery.SQL.Add(',DATA');
    mQuery.SQL.Add(',VALOR');
    mQuery.SQL.Add(',NOMEOPERADOR');
    mQuery.SQL.Add(',MOTIVO');
    mQuery.SQL.Add(',ENVIADASERVIDOR');
    mQuery.SQL.Add(')');
    mQuery.SQL.Add('VALUES (');
    mQuery.SQL.Add(' :IDMOVIMENTO');
    mQuery.SQL.Add(',:IDCAIXA');
    mQuery.SQL.Add(',:IDOPERADOR');
    mQuery.SQL.Add(',:DATA');
    mQuery.SQL.Add(',:VALOR');
    mQuery.SQL.Add(',:NOMEOPERADOR');
    mQuery.SQL.Add(',:MOTIVO');
    mQuery.SQL.Add(',:ENVIADASERVIDOR)');
    mQuery.ParamByName('IDMOVIMENTO').AsInteger    := aID;
    mQuery.ParamByName('IDCAIXA').AsInteger        := aIDCaixa;
    mQuery.ParamByName('IDOPERADOR').AsInteger     := IDOperador;
    mQuery.ParamByName('VALOR').AsFloat            := aValor;
    mQuery.ParamByName('NOMEOPERADOR').AsString    := aNomeOperador;
    mQuery.ParamByName('MOTIVO').AsString          := aMotivo;
    mQuery.ParamByName('DATA').AsDateTime          := Now;
    mQuery.ParamByName('ENVIADASERVIDOR').AsString := 'N';
    mQuery.ExecSQL;
  finally
    QueryLiberar(mQuery);
  end;

end;

Function GetClienteCampo(aID: Integer; aCampo: String): String;
var
  mQuery : TFDQuery;
begin
  Result :='';
  QueryCriar(mQuery);
  try
    mQuery.SQL.Clear;
    mQuery.SQL.Add(' select * from CAD_CLIENTES where CODIGO='+IntToStr(aID));
    mQuery.Open;
    Result := Trim(mQuery.FieldByName(aCampo).AsString);
  finally
    QueryLiberar(mQuery);
  end;
end;


// Add: junho/2019
Function GetCompraItemFiscal(aProduto: String): TCompraItemFiscal;
Var
  mCompraItemFiscal : TCompraItemFiscal;
  mCodFabr  : String;
  aDBQuery : TFDQuery;
begin
  Result := Nil;

  aDBQuery := TFDQuery.Create(Application);
  aDBQuery.Connection := FrmPrincipal.ConnectFirebird;
  try
    try
      aDBQuery.Close;
      aDBQuery.SQL.Clear;
      aDBQuery.SQL.Add(' SELECT FIRST 1 CODIGO, CODIGO_FABRICANTE  FROM CAD_PRODUTOS ');
      aDBQuery.SQL.Add(' WHERE ');
      aDBQuery.SQL.Add(' CODIGO=:IDCODIGO  ');
      aDBQuery.ParamByName('IDCODIGO').AsString := aProduto;
      aDBQuery.Open;
      mCodFabr := aDBQuery.FieldByName('CODIGO_FABRICANTE').AsString;
    finally
      aDBQuery.Close;
    end;
    try
      aDBQuery.Close;
      aDBQuery.SQL.Clear;
      aDBQuery.SQL.Add(' SELECT FIRST 1 * FROM COMPRAS_ITENS ');
      aDBQuery.SQL.Add(' WHERE ');
      aDBQuery.SQL.Add(' DATAENTRADA=(SELECT MAX(DATAENTRADA) FROM COMPRAS_ITENS WHERE PRODUTO=:SPRODUTO)  ');
      aDBQuery.SQL.Add(' AND  ');
      aDBQuery.SQL.Add(' PRODUTO=:SPRODUTO  ');
      aDBQuery.ParamByName('SPRODUTO').AsString := mCodFabr;
      aDBQuery.Open;
      if aDBQuery.IsEmpty  then
        exit;

      mCompraItemFiscal := TCompraItemFiscal.Create;
      mCompraItemFiscal.ID               := aDBQuery.FieldByName('CODIGO').AsInteger;
      mCompraItemFiscal.CodFabricante    := aDBQuery.FieldByName('PRODUTO').AsString;
      mCompraItemFiscal.Descricao        := aDBQuery.FieldByName('DESCRICAO').AsString;
      mCompraItemFiscal.QTDE             := aDBQuery.FieldByName('QUANTIDADE').AsFloat;

      mCompraItemFiscal.PICMS            := aDBQuery.FieldByName('ICMS').AsFloat;
      mCompraItemFiscal.VICMS            := (aDBQuery.FieldByName('ICMS_VALOR').AsFloat / mCompraItemFiscal.QTDE);

      mCompraItemFiscal.VBCST            := (aDBQuery.FieldByName('VBCST').AsFloat / mCompraItemFiscal.QTDE);
      mCompraItemFiscal.PICMSST          := aDBQuery.FieldByName('PICMSST').AsFloat;
      mCompraItemFiscal.VICMSST          := (aDBQuery.FieldByName('VICMSST').AsFloat / mCompraItemFiscal.QTDE);
      mCompraItemFiscal.PST              := aDBQuery.FieldByName('PST').AsFloat;
      mCompraItemFiscal.VBCSTRet         := (aDBQuery.FieldByName('VBCSTRET').AsFloat / mCompraItemFiscal.QTDE);
      mCompraItemFiscal.VICMSSTRet       := (aDBQuery.FieldByName('VICMSSTRET').AsFloat / mCompraItemFiscal.QTDE);
      mCompraItemFiscal.VICMSSubstituto  := (aDBQuery.FieldByName('VICMSSUBSTITUTO').AsFloat / mCompraItemFiscal.QTDE);
      mCompraItemFiscal.PREDBCEfet       := aDBQuery.FieldByName('PREDBCEFET').AsFloat;
      mCompraItemFiscal.VBCEfet          := (aDBQuery.FieldByName('VBCEFET').AsFloat / mCompraItemFiscal.QTDE);
      mCompraItemFiscal.PICMSEfet        := aDBQuery.FieldByName('PICMSEFET').AsFloat;
      mCompraItemFiscal.VICMSEfet        := (aDBQuery.FieldByName('VICMSEFET').AsFloat / mCompraItemFiscal.QTDE);
      mCompraItemFiscal.PREDBCST         := aDBQuery.FieldByName('PREDBCST').AsFloat;

      Result := mCompraItemFiscal;
    finally
      aDBQuery.Close;
    end;
  Finally
    aDBQuery.Close;
    aDBQuery.free;
  End;
end;

Function GetCNPJFabricante(aProduto: String): String;
Var
  mIDCompra : Integer;
  mIDFornec : Integer;
  mCodFabr  : String;
  mCNPJFabr : String;

  aDBQuery : TFDQuery;
begin
  Result :='';
  // Fará 2 tentativas
  aDBQuery := TFDQuery.Create(Application);
  aDBQuery.Connection := FrmPrincipal.ConnectFirebird;
  try
    // Primeira tentativa: Encontrar ID do Fabricante no cadastro de produto
    try
      aDBQuery.Close;
      aDBQuery.SQL.Clear;
      aDBQuery.SQL.Add(' SELECT FORNECEDOR, CODIGO_FABRICANTE FROM CAD_PRODUTOS ');
      aDBQuery.SQL.Add(' WHERE ');
      aDBQuery.SQL.Add(' CODIGO=:IDCODIGO  ');
      aDBQuery.ParamByName('IDCODIGO').AsString := aProduto;
      aDBQuery.Open;
      mIDFornec := aDBQuery.FieldByName('FORNECEDOR').AsInteger;
      mCodFabr := aDBQuery.FieldByName('CODIGO_FABRICANTE').AsString;
    finally
      aDBQuery.Close;
    end;
    mCNPJFabr := SoNumero(GetClienteCampo(mIDFornec,'CPF_CNPJ'));
    Result := mCNPJFabr;
  Finally
    aDBQuery.Close;
    aDBQuery.free;
  End;
end;

Function GetProdutoCampo(aProduto, aCampo: String): String;
var
  mQuery : TFDQuery;
  mIDProd : Integer;
  mTryInt : Integer;
begin
  mTryInt := 0;
  Result := aProduto;
  mIDProd := GetIDProduto(aProduto);
  if TryStrToInt(aProduto,mTryInt) = False then
    exit;
  QueryCriar(mQuery);
  try
    mQuery.SQL.Clear;
    mQuery.SQL.Add(' SELECT * FROM CAD_PRODUTOS  ');
    mQuery.SQL.Add('  where                         ');
    mQuery.SQL.Add('     CODIGO=:IDCODIGO    ');
    mQuery.ParamByName('IDCODIGO').AsInteger :=  mIDProd;
    mQuery.Open;
    Result := Trim(mQuery.FieldByName(aCampo).AsString);
  finally
    QueryLiberar(mQuery);
  end;
end;

function GetIDCodigoBarra(aProduto: String): String;
Var
  mQuery : TFDQuery;
begin
  Result := '';
  if Trim(aProduto) = '' then
    Exit;
  QueryCriar(mQuery);
  try
    mQuery.SQL.Clear;
    mQuery.SQL.Add(' SELECT * FROM CAD_PRODUTOS  ');
    mQuery.SQL.Add('  where                         ');
    mQuery.SQL.Add('     CODIGO_BARRA=:IDCODIGO    ');
    mQuery.ParamByName('IDCODIGO').AsString :=  aProduto;
    mQuery.Open;
    Result := mQuery.FieldByName('REFERENCIA').AsString;
  finally
    QueryLiberar(mQuery);
  end;
end;

function GetIDProduto(aProduto: String): Integer;
Var
  mQuery : TFDQuery;
  mTryInt : Integer;
begin
  Result := StrToIntDef(aProduto,0);
  mTryInt := 0;
  if Trim(aProduto) = '' then
    Exit;
  QueryCriar(mQuery);
  try
    mQuery.SQL.Clear;
    mQuery.SQL.Add(' SELECT * FROM CAD_PRODUTOS  ');
    mQuery.SQL.Add('  where                         ');
    mQuery.SQL.Add('     REFERENCIA=:IDCODIGO    ');
    mQuery.ParamByName('IDCODIGO').AsString :=  aProduto;
    mQuery.Open;
    if (mQuery.FieldByName('CODIGO').AsString <> mQuery.FieldByName('REFERENCIA').AsString) then // para não coincidir que codigo sequencial ou referencia sejam os mesmos (pode acontecer isso, e nesse caso fica dificil o sistema saber qual é o certo).
      Result := mQuery.FieldByName('CODIGO').AsInteger;
    if mQuery.FieldByName('CODIGO').AsInteger < 1 then
    begin
      if TryStrToInt(aProduto,mTryInt) = False then
        exit;
      Result := StrToInt(aProduto);
    end;

  finally
    QueryLiberar(mQuery);
  end;
end;

procedure SQLInserirCtaReceber(Const aIDVenda, aIDNF, aCliente, aTerminal, aIDOperador: Integer; Const aVencimento: TDate; Const aValor: Real; Const aPrazoPagto, aOrigemVenda, aEspecie, aQuitado: String; aIDBandeira: Integer);
var
  mQuery : TFDQuery;
  mFormaPagto : String;
begin
  // codigo 1  é para forma de pagamento a vista (balcao)
  mFormaPagto := Trim(GetFormaPagamento(1));
  QueryCriar(mQuery);
  try
    mQuery.SQL.Clear;
    mQuery.SQL.Add(' INSERT INTO  FIN_CTARECEBER( ');
    mQuery.SQL.Add(' IDVENDA,     ');          // terminal de venda
    if aCliente > 0 then
      mQuery.SQL.Add(' CLIENTE,      ');       // cliente

    if mFormaPagto > '' then
    begin
      mQuery.SQL.Add(' FORMA_PAGTO,      ');       // cliente
    end;

    mQuery.SQL.Add(' IDTERMINAL,     ');       // terminal de venda
    mQuery.SQL.Add(' IDOPERADOR,     ');       // operador
    mQuery.SQL.Add(' IDBANDCARTAO,     ');     // operador
    mQuery.SQL.Add(' DATA,           ');       // data
    mQuery.SQL.Add(' VENCIMENTO,     ');       // vencimento
    if aIDNF > 0 then
      mQuery.SQL.Add(' NOTAFISCAL,   ');       // nota fiscal
    mQuery.SQL.Add(' DOCUMENTO,      ');       // documento
    mQuery.SQL.Add(' VALOR,          ');       // valor
    mQuery.SQL.Add(' ESPECIE,        ');       // especie
    mQuery.SQL.Add(' QUITADO   ,     ');       // quitado
    mQuery.SQL.Add(' PRAZOPAGTO,     ');       // prazo
    mQuery.SQL.Add(' HISTORICO)      ');       // historico
    mQuery.SQL.Add(' VALUES(         ');       // ------------------------------------------------
    mQuery.SQL.Add(' :IDVENDA,      ');        // vendedor
    if aCliente > 0 then
      mQuery.SQL.Add(' :CLIENTE,       ');     // cliente

    if mFormaPagto > '' then
    begin
      mQuery.SQL.Add(' :FORMA_PAGTO,      ');       // cliente
    end;

    mQuery.SQL.Add(' :IDTERMINAL,      ');     // vendedor
    mQuery.SQL.Add(' :IDOPERADOR,      ');     // vendedor
    mQuery.SQL.Add(' :IDBANDCARTAO,     ');    // operador
    mQuery.SQL.Add(' :DATA,          ');       // data
    mQuery.SQL.Add(' :VENCIMENTO,    ');       // vencimento
    if aIDNF > 0 then
      mQuery.SQL.Add(' :NOTAFISCAL,  ');       // nota fiscal
    mQuery.SQL.Add(' :DOCUMENTO,     ');       // documento
    mQuery.SQL.Add(' :VALOR,         ');       // valor
    mQuery.SQL.Add(' :ESPECIE,       ');       // especie
    mQuery.SQL.Add(' :QUITADO,       ');       // quitado
    mQuery.SQL.Add(' :PRAZOPAGTO,    ');       // prazo
    mQuery.SQL.Add(' :HISTORICO)     ');       // historico
    mQuery.SQL.Add(' ');
    mQuery.ParamByName('IDVENDA').AsInteger      := aIDVenda;
    if aCliente > 0 then
      mQuery.ParamByName('CLIENTE').AsInteger    := aCliente;

    if mFormaPagto > '' then
    begin
      mQuery.ParamByName('FORMA_PAGTO').AsInteger   := 1;
    end;

    mQuery.ParamByName('IDTERMINAL').AsInteger   := aTerminal;
    mQuery.ParamByName('IDOPERADOR').AsInteger   := aIDOperador;
    mQuery.ParamByName('IDBANDCARTAO').AsInteger := aIDBandeira;
    mQuery.ParamByName('DATA').AsDate            := Date;
    mQuery.ParamByName('VENCIMENTO').AsDate      := aVencimento;
    if aIDNF > 0 then
      mQuery.ParamByName('NOTAFISCAL').AsString  := IntToStr(aIDNF);
    mQuery.ParamByName('DOCUMENTO').AsString     := IntToStr(aIDVenda);
    mQuery.ParamByName('VALOR').AsFloat          := aValor;
    mQuery.ParamByName('ESPECIE').AsString       := aEspecie;
    mQuery.ParamByName('PRAZOPAGTO').AsString    := aPrazoPagto;
    mQuery.ParamByName('QUITADO').AsString       := aQuitado;
    mQuery.ParamByName('HISTORICO').AsString     := 'ORIGEM: ' + aOrigemVenda + '| CÓDIGO DA VENDA: '+IntToStr(aIDVenda);
    mQuery.ExecSQL;
  finally
    QueryLiberar(mQuery);
  end;
end;

procedure SQLInserirControleCaixa(Const aIDVenda, aTerminal, aIDOperador: Integer; Const aValor: Real; Const aOrigemVenda, aDC, aTipoPagto, aEspecie: String; aIDBandeira: Integer);
var
  mQuery : TFDQuery;
begin
  QueryCriar(mQuery);
  try
    mQuery.SQL.Clear;
    mQuery.SQL.Add(' INSERT INTO CTRL_CAIXA( ');
    mQuery.SQL.Add('   IDVENDA,  ');
    mQuery.SQL.Add('   DOCUMENTO,  ');
    mQuery.SQL.Add('   DATA,  ');
    mQuery.SQL.Add('   DC,  ');
    mQuery.SQL.Add('   ESPECIE,  ');
    mQuery.SQL.Add('   IDTERMINAL,  ');
    mQuery.SQL.Add('   IDOPERADOR,  ');
    mQuery.SQL.Add('   IDBANDCARTAO,  ');
    mQuery.SQL.Add('   HISTORICO,  ');
    mQuery.SQL.Add('   VLR_CREDITO,  ');
    mQuery.SQL.Add('   VLR_DEBITO,  ');
    mQuery.SQL.Add('   EFETIVADO)  ');
    mQuery.SQL.Add(' VALUES (  ');
    mQuery.SQL.Add('   :IDVENDA,  ');
    mQuery.SQL.Add('   :DOCUMENTO,  ');
    mQuery.SQL.Add('   :DATA,  ');
    mQuery.SQL.Add('   :DC,  ');
    mQuery.SQL.Add('   :ESPECIE,  ');
    mQuery.SQL.Add('   :IDTERMINAL,  ');
    mQuery.SQL.Add('   :IDOPERADOR,  ');
    mQuery.SQL.Add('   :IDBANDCARTAO,  ');
    mQuery.SQL.Add('   :HISTORICO,  ');
    mQuery.SQL.Add('   :VLR_CREDITO,  ');
    mQuery.SQL.Add('   :VLR_DEBITO,  ');
    mQuery.SQL.Add('   :EFETIVADO)  ');

    mQuery.ParamByName('IDVENDA').AsInteger    := aIDVenda;
    mQuery.ParamByName('DOCUMENTO').AsString   := IntToStr(aIDVenda);
    mQuery.ParamByName('DATA').AsDate          := Date;
    mQuery.ParamByName('DC').AsString          := aDC;
    mQuery.ParamByName('ESPECIE').AsString     := aEspecie;
    mQuery.ParamByName('IDTERMINAL').AsInteger := aTerminal;
    mQuery.ParamByName('IDOPERADOR').AsInteger := aIDOperador;
    mQuery.ParamByName('IDBANDCARTAO').AsInteger := aIDBandeira;
    mQuery.ParamByName('HISTORICO').AsString   := 'ORIGEM: ' + aOrigemVenda + ' | CÓDIGO DA VENDA: '+IntToStr(aIDVenda)+ ' | TIPO DE MOVIMENTACAO: '+aTipoPagto;
    if aDC = 'CREDITO' then
      mQuery.ParamByName('VLR_CREDITO').AsFloat  := aValor;
      if aDC = 'DEBITO' then
      mQuery.ParamByName('VLR_DEBITO').AsFloat   := aValor;
    mQuery.ParamByName('EFETIVADO').AsString   := 'S'; // BAIXADO
    mQuery.ExecSQL;
  finally
    QueryLiberar(mQuery);
  end;
end;

procedure SQLUpdateVendaIDCliente(aIDVenda, aIDCliente: Integer; aCPF: String);
var
  mQuery       : TFDQuery;
begin
  if aIDVenda = 0 then
    exit;
  QueryCriar(mQuery);
  try
    mQuery.SQL.Add('UPDATE VENDAS SET');
    mQuery.SQL.Add(' CLIENTE=:IDCLIENTE, CLIENTECPFCNPJ=:CDOCUMENTO');
    mQuery.SQL.Add('WHERE');
    mQuery.SQL.Add('CODIGO=:IDVENDA');
    mQuery.ParamByName('IDVENDA').AsInteger  := aIDVenda;
    if (aIDCliente > 0) or (aCPF <> '') then
    begin
      if (aIDCliente > 0) then
        mQuery.ParamByName('IDCLIENTE').AsInteger  := aIDCliente;
      if (aCPF <> '') then
        mQuery.ParamByName('CDOCUMENTO').AsString  := aCPF;
    end
    else
    begin
      mQuery.ParamByName('CDOCUMENTO').Clear(); // Salvar como NULL
      mQuery.ParamByName('IDCLIENTE').Clear(); // Salvar como NULL
    end;
    mQuery.ExecSQL;
  finally
    QueryLiberar(mQuery);
  end;
end;

function ChecarCreditoSaldo(aIDCliente: Integer): Real;
Var
  mQuery : TFDQuery;
begin
   Result :=0;
   QueryCriar(mQuery);
   try
     mQuery.SQL.Clear;
     mQuery.SQL.Add(' SELECT CREDITO_DISPONIVEL FROM CAD_CLIENTES ');
     mQuery.SQL.Add(' WHERE   ');
     mQuery.SQL.Add(' CODIGO=:CODIGO    ');
     mQuery.ParamByName('CODIGO').AsInteger := aIDCliente;
     mQuery.Open;
     Result := mQuery.FieldByName('CREDITO_DISPONIVEL').AsFloat;
     if Result < 0 then
        Result := 0;
   finally
     QueryLiberar(mQuery);
   end;
end;

procedure SQLUpdatePedidoStatus(aIDPedido: Integer; aStatus: String = 'S');
var
  mQuery       : TFDQuery;
begin
  if aIDPedido = 0 then
    exit;
  QueryCriar(mQuery);
  try
    mQuery.SQL.Add('UPDATE PEDIDOS SET');
    mQuery.SQL.Add(' STATUS='+QuotedStr(aStatus));
    mQuery.SQL.Add('WHERE');
    mQuery.SQL.Add('CODIGO='+aIDPedido.ToString);
    mQuery.ExecSQL;
  finally
    QueryLiberar(mQuery);
  end;
end;

procedure SQLBaixarPedidoVenda(aIDPedido: Integer; aStatus: String);
var
  mQuery       : TFDQuery;
begin
  if aIDPedido = 0 then
    exit;
  QueryCriar(mQuery);
  try
    mQuery.SQL.Add('UPDATE PEDIDOS SET');
    mQuery.SQL.Add(' STATUS=:STATUS');
    mQuery.SQL.Add(' WHERE');
    mQuery.SQL.Add(' CODIGO=:CODIGO');
    mQuery.ParamByName('CODIGO').AsInteger  := aIDPedido;
    mQuery.ParamByName('STATUS').AsString  := aStatus;
    mQuery.ExecSQL;
  finally
    QueryLiberar(mQuery);
  end;
end;

procedure SQLExcluirCtaReceber(aIDVenda: Integer);
var
  mQuery       : TFDQuery;
begin
  if aIDVenda < 1 then
    exit;
  QueryCriar(mQuery);
  try
    mQuery.SQL.Add('DELETE FROM FIN_CTARECEBER');
    mQuery.SQL.Add('WHERE');
    mQuery.SQL.Add('EMPRESA=:EMPRESA');
    mQuery.SQL.Add('AND');
    mQuery.SQL.Add('IDVENDA=:IDVENDA');
    mQuery.ParamByName('EMPRESA').AsInteger := FConfiguracao.Loja;
    mQuery.ParamByName('IDVENDA').AsInteger := aIDVenda;
    mQuery.ExecSQL;
  finally
    QueryLiberar(mQuery);
  end;
end;

function SQLGetValorAbertura(aID, aIDCaixa, IDOperador: Integer): Currency;
var
  mQuery : TFDQuery;
begin
  Result := 0;
  QueryCriar(mQuery);
  try
    mQuery.SQL.Add('SELECT SUM(COALESCE(VALOR,0)) AS VALOR FROM REFORCO' );
    mQuery.SQL.Add(' WHERE');
    mQuery.SQL.Add(' IDMOVIMENTO=:IDMOVIMENTO');
    mQuery.SQL.Add(' AND IDCAIXA=:IDCAIXA');
    mQuery.SQL.Add(' AND IDOPERADOR=:IDOPERADOR');
    mQuery.ParamByName('IDMOVIMENTO').AsInteger    := aID;
    mQuery.ParamByName('IDCAIXA').AsInteger        := aIDCaixa;
    mQuery.ParamByName('IDOPERADOR').AsInteger     := IDOperador;
    mQuery.Open;
    Result := mQuery.FieldByName('VALOR').AsFloat;
  finally
    QueryLiberar(mQuery);
  end;
end;


procedure SQLRegistrarSAT(aIDVenda: Integer; aArquivo, aChave, aTransmitido: String);
var
  mQuery       : TFDQuery;
begin
  if aIDVenda = 0 then
    exit;
  QueryCriar(mQuery);
  try
    mQuery.SQL.Add('UPDATE VENDAS SET');
    mQuery.SQL.Add(' NFE_ARQUIVO=:ARQUIVO,');
    mQuery.SQL.Add(' NFE_CHAVEACESSO=:CHAVE,');
    mQuery.SQL.Add(' NFE_TRANSMITIDO=:TRANSMITIDO');
    mQuery.SQL.Add(' WHERE');
    mQuery.SQL.Add(' CODIGO=:CODIGO');
    mQuery.ParamByName('CODIGO').AsInteger  := aIDVenda;
    mQuery.ParamByName('ARQUIVO').AsString  := aArquivo;
    mQuery.ParamByName('CHAVE').AsString  := aChave;
    mQuery.ParamByName('TRANSMITIDO').AsString  := aTransmitido;
    mQuery.ExecSQL;
  finally
    QueryLiberar(mQuery);
  end;
end;

end.
