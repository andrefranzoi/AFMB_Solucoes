unit RecordProduto;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections, Data.DB,
   FireDAC.Comp.Client,
   System.StrUtils, System.Diagnostics, System.ZLib, System.TypInfo,
   ACBrUtil,
   ACBrSATClass,
   ACBrValidador,
   pcnConversao,
   pcnNFe,
   pcnConversaoNFe,
   RecordIBPT;

Type

   TProduto = Record
      IDProduto: NativeInt;
      CodProprio: String; // Codigo proprio do produto (desse sistema)
      CodPropFornec: String;
      // Codigo do produto no fornecedor (no sistema dele)
      IDFornec: NativeInt;
      CNPJFabForn: String; // CNPJ do Fornecedor (ou fabricante)
      Descricao: String;
      Unidade: String;
      GTIN: String;
      cBenef: String;
      EXTIPI: String;
      VlrCusto: Currency;
      VlrVenda: Currency;
      NCM: String;
      CEST: String;
      Origem: NativeInt;
      CST_ICSM: NativeInt;
      CSOSN: NativeInt;
      ANP: String;
      IndEscala: String;
      CST_IPI: NativeInt;
      CST_PIS: NativeInt;
      CST_COFINS: NativeInt;
      ALIQ_ICMS: Currency;
      ALIQ_IPI: Currency;
      ALIQ_PIS: Currency;
      ALIQ_COFINS: Currency;
      xPed: String;
      nItemPed: NativeInt;
      IBPT: TIBPT;
      CFOPEntInt: NativeInt; // CFOP Entrada Interna (dentro do estado)
      CFOPEntExt: NativeInt; // CFOP Entrada Externa (fora do estado)
      CFOPSaiInt: NativeInt; // CFOP Saida Interna (dentro do estado)
      CFOPSaiExt: NativeInt; // CFOP Saida Externa (fora do estado)
      CFOPExterior: NativeInt; // CFOP para Importação de outro país
      CFOPSaiIntNaoContr: NativeInt; // CFOP Saida Externa (fora do estado)
      CFOPSaiExtNaoContr: NativeInt; // CFOP Saida Externa (fora do estado)

      procedure Limpar;
      procedure GetIDProduto(const aIDProduto: NativeInt);
      // Codigo proprio do produto (desse sistema)
      function GetByCodFornecedor(const aIDFornecedor: NativeInt;
        aCodPropFornec: String): Boolean;
      // Procurar pelo código do produto no fornecedor (no sistema dele)
   end;

implementation

uses FPrincipal;

{ TProduto }

// Codigo proprio do produto (desse sistema)
procedure TProduto.GetIDProduto(const aIDProduto: NativeInt);
Var
   mDataSet: TDataSet;
   mSQL: String;
begin
   if aIDProduto = 0 then
      exit;
   mSQL := 'SELECT * FROM CAD_PRODUTOS ' + Format(' WHERE CODIGO=%d',
     [aIDProduto]);
   try
      FrmPrincipal.DBConexao.ExecSQL(mSQL, nil, mDataSet);
      if mDataSet.IsEmpty then
         exit;
      Limpar();
      IDProduto := mDataSet.FieldByName('CODIGO').AsInteger;
      CodProprio := mDataSet.FieldByName('REFERENCIA').AsString;;
      IDFornec := mDataSet.FieldByName('FORNECEDOR').AsInteger;
      // ID do fornecedor (nesse sistema)
      CodPropFornec := mDataSet.FieldByName('CODIGO_FABRICANTE').AsString;
      // Codigo do produto no fornecedor (no sistema dele)
      CNPJFabForn := ''; // mDataSet.FieldByName('CNPJ_FABRICANTE').AsString;
      Descricao := mDataSet.FieldByName('DESCRICAO').AsString;
      Unidade := mDataSet.FieldByName('UNIDADE').AsString;
      cBenef := '';
      // mDataSet.FieldByName('CBENEF').AsString;       // Código de Benefício Fiscal utilizado pela UF
      EXTIPI := mDataSet.FieldByName('EXTIPI').AsString;
      // Código EX da TIPI (em caso de serviço, deixar em branco)
      GTIN := mDataSet.FieldByName('CODIGO_BARRA').AsString;
      VlrCusto := mDataSet.FieldByName('PRC_CUSTO').AsCurrency;
      VlrVenda := mDataSet.FieldByName('PRC_VENDA').AsCurrency;
      NCM := mDataSet.FieldByName('IDNCM').AsString;
      CEST := mDataSet.FieldByName('IDCEST').AsString;
      Origem := mDataSet.FieldByName('IDCSTORIGEM').AsInteger;
      CST_ICSM := mDataSet.FieldByName('IDCSTICMS').AsInteger;
      CSOSN := mDataSet.FieldByName('IDCSOSNICMS').AsInteger;
      ANP := mDataSet.FieldByName('IDANP').AsString;
      IndEscala := mDataSet.FieldByName('INDESCALA').AsString;
      CST_IPI := mDataSet.FieldByName('IDCSTIPI').AsInteger;
      CST_PIS := mDataSet.FieldByName('IDCSTPIS').AsInteger;
      CST_COFINS := mDataSet.FieldByName('IDCSTCOFINS').AsInteger;
      ALIQ_ICMS := mDataSet.FieldByName('ICMS').AsCurrency;
      ALIQ_IPI := mDataSet.FieldByName('IPI').AsCurrency;
      ALIQ_PIS := mDataSet.FieldByName('PIS').AsCurrency;
      ALIQ_COFINS := mDataSet.FieldByName('COFINS').AsCurrency;
      CFOPSaiInt := mDataSet.FieldByName('CFOPDENTROESTADO').AsInteger;
      // CFOP Entrada Interna (dentro do estado)
      CFOPSaiExt := mDataSet.FieldByName('CFOPFORAESTADO').AsInteger;
      // CFOP Entrada Externa (fora do estado)
      CFOPSaiExtNaoContr := mDataSet.FieldByName('CFOPFORANAOCONT').AsInteger;
      CFOPExterior := mDataSet.FieldByName('CFOPEXPORTACAO').AsInteger;
      IBPT.GetIBPT(NCM, EXTIPI, Origem);

      // xPed      := mDataSet.FieldByName('NUMPEDFOR').AsString;   // Número do Pedido de Compra
      // nItemPed  := mDataSet.FieldByName('NUMITEMPED').AsInteger;  // Item do Pedido de Compra
   finally
      mDataSet.Close;
      mDataSet.Free;
   end;
end;

// Procurar pelo código do produto no fornecedor (no sistema dele)
function TProduto.GetByCodFornecedor(const aIDFornecedor: NativeInt;
  aCodPropFornec: String): Boolean;
Var
   mDataSet: TDataSet;
   mSQL: String;
begin
   Result := False;
   if aIDFornecedor = 0 then
      exit;
   mSQL := 'SELECT * FROM CAD_PRODUTOS ' +
     Format(' WHERE  FORNECEDOR=%d AND CODIGO_FABRICANTE=%s  ',
     [aIDFornecedor, QuotedStr(aCodPropFornec)]);
   try
      FrmPrincipal.DBConexao.ExecSQL(mSQL, nil, mDataSet);
      if mDataSet.IsEmpty then
         exit;
      Limpar();
      IDProduto := mDataSet.FieldByName('CODIGO').AsInteger;
      CodProprio := mDataSet.FieldByName('REFERENCIA').AsString;;
      IDFornec := mDataSet.FieldByName('FORNECEDOR').AsInteger;
      // ID do fornecedor (nesse sistema)
      CodPropFornec := mDataSet.FieldByName('CODIGO_FABRICANTE').AsString;
      // Codigo do produto no fornecedor (no sistema dele)
      CNPJFabForn := ''; // mDataSet.FieldByName('CNPJ_FABRICANTE').AsString;
      Descricao := mDataSet.FieldByName('DESCRICAO').AsString;
      Unidade := mDataSet.FieldByName('UNIDADE').AsString;
      cBenef := '';
      // mDataSet.FieldByName('CBENEF').AsString;       // Código de Benefício Fiscal utilizado pela UF
      EXTIPI := mDataSet.FieldByName('EXTIPI').AsString;
      // Código EX da TIPI (em caso de serviço, deixar em branco)
      GTIN := mDataSet.FieldByName('CODIGO_BARRA').AsString;
      VlrCusto := mDataSet.FieldByName('PRC_CUSTO').AsCurrency;
      VlrVenda := mDataSet.FieldByName('PRC_VENDA').AsCurrency;
      NCM := mDataSet.FieldByName('IDNCM').AsString;
      CEST := mDataSet.FieldByName('IDCEST').AsString;
      Origem := mDataSet.FieldByName('IDCSTORIGEM').AsInteger;
      CST_ICSM := mDataSet.FieldByName('IDCSTICMS').AsInteger;
      CSOSN := mDataSet.FieldByName('IDCSOSNICMS').AsInteger;
      ANP := mDataSet.FieldByName('IDANP').AsString;
      IndEscala := mDataSet.FieldByName('INDESCALA').AsString;
      CST_IPI := mDataSet.FieldByName('IDCSTIPI').AsInteger;
      CST_PIS := mDataSet.FieldByName('IDCSTPIS').AsInteger;
      CST_COFINS := mDataSet.FieldByName('IDCSTCOFINS').AsInteger;
      ALIQ_ICMS := mDataSet.FieldByName('ICMS').AsCurrency;
      ALIQ_IPI := mDataSet.FieldByName('IPI').AsCurrency;
      ALIQ_PIS := mDataSet.FieldByName('PIS').AsCurrency;
      ALIQ_COFINS := mDataSet.FieldByName('COFINS').AsCurrency;
      CFOPSaiInt := mDataSet.FieldByName('CFOPDENTROESTADO').AsInteger;
      // CFOP Entrada Interna (dentro do estado)
      CFOPSaiExt := mDataSet.FieldByName('CFOPFORAESTADO').AsInteger;
      // CFOP Entrada Externa (fora do estado)
      CFOPSaiExtNaoContr := mDataSet.FieldByName('CFOPFORANAOCONT').AsInteger;
      CFOPExterior := mDataSet.FieldByName('CFOPEXPORTACAO').AsInteger;
      IBPT.GetIBPT(NCM, EXTIPI, Origem);
      // xPed      := mDataSet.FieldByName('NUMPEDFOR').AsString;   // Número do Pedido de Compra
      // nItemPed  := mDataSet.FieldByName('NUMITEMPED').AsInteger;  // Item do Pedido de Compra

      Result := True;
   finally
      mDataSet.Close;
      mDataSet.Free;
   end;
end;

procedure TProduto.Limpar;
begin
   IDProduto := 0;
   CodProprio := ''; // Codigo proprio do produto (desse sistema)
   IDFornec := 0;
   CodPropFornec := ''; // Codigo do produto no fornecedor (no sistema dele)
   CNPJFabForn := ''; // CNPJ do Fornecedor (ou fabricante)
   Descricao := '';
   Unidade := '';
   cBenef := ''; // Código de Benefício Fiscal utilizado pela UF
   EXTIPI := ''; // Código EX da TIPI (em caso de serviço, deixar em branco)
   GTIN := '';
   VlrCusto := 0;
   VlrVenda := 0;
   NCM := '';
   CEST := '';
   Origem := 0;
   CST_ICSM := 0;
   CSOSN := 0;
   ANP := '';
   IndEscala := '';
   CST_IPI := 0;
   CST_PIS := 0;
   CST_COFINS := 0;
   ALIQ_ICMS := 0;
   ALIQ_IPI := 0;
   ALIQ_PIS := 0;
   ALIQ_COFINS := 0;
   xPed := '';
   nItemPed := 0;
   CFOPEntInt := 0; // CFOP Entrada Interna (dentro do estado)
   CFOPEntExt := 0; // CFOP Entrada Externa (fora do estado)
   CFOPSaiInt := 0; // CFOP Saida Interna (dentro do estado)
   CFOPSaiExt := 0; // CFOP Saida Externa (fora do estado)
   CFOPExterior := 0; // CFOP para Importação de outro país
   CFOPSaiIntNaoContr := 0;
   CFOPSaiExtNaoContr := 0;
   IBPT.Limpar();
end;

end.
