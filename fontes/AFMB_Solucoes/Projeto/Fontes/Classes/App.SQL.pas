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

unit App.SQL;

interface

uses
   Forms, Classes, Windows, Controls, Variants, ComCtrls,
   WinTypes, WinProcs, Tabs, ExtCtrls, DBCtrls,
   Dialogs, StdCtrls, Messages, Graphics, shellapi, Sysutils,
   FMTBcd, WideStrings, DBCommon, System.DateUtils,
   System.StrUtils, System.Types,
   FireDAC.Comp.Client, ACBrUtil,
   Data.DB,
   Classe.Parametros,
   Global,
   Classe.Global,
   Classe.CEP,
   pcnConversaoNFe,
   CompraClass;

procedure InserirLicenca(aCHAVE: String);
function GetTempoLicenca: Currency;
procedure RegistrarUltimaVenda(TblClientes, Tbl_Pedidos: TFDQuery;
  CodigoCliente: String);
procedure prcRegistrarUltimaVenda(lnCliente: Integer; lsOrigem: String);
procedure prcContasReceberDescontato(ncodigo, ncontabanco, ncontacaixa,
  ncarteira: Integer; stacao: String);
procedure pContasReceberBaixaParcial(ncliente, nVendedor: Integer;
  nData, nVencimento: TDate; nNotafiscal, nDocumento: String; nNovoValor: Real;
  nPlanoConta: String; nforma_pagto: Integer; wAcao: String);
procedure pContasPagarBaixaParcial(nfornecedor: Integer;
  nData, nVencimento: TDate; nNotafiscal, nDocumento: String; nNovoValor: Real;
  nPlanoConta: String; nforma_pagto: Integer; shitorico, wAcao: String);
function ValidaReferencia(sReferencia: String): Boolean;
function fncReferenciaNome(sReferencia: String): String;
function RetornaReferenciaPrecoVenda(sReferencia: String): Real;
function GetProdutoPrecoCusto(sReferencia: String): Real;
function GetClienteCampo(ncliente: Integer; slCampo: String): String;
function Cliente_Endereco(ncliente: Integer; slCampo: String): String;
function GetNCMCEST(aNCM: String): String;
procedure GetParametros;
function RetornaReferenciaPrecoTabela(nTabela: Integer;
  sReferencia: String): Real;
function ValidaReferenciaTabela(nTabela: Integer; sReferencia: String): Boolean;
function ChecarCreditoCliente(ncliente: Integer): Boolean;
function ChecarCreditoSaldo(ncliente: Integer): Real;
function BuscaClienteVendedor(ncliente: Integer): Integer;
function GetClienteFormaPagto(ncliente: Integer): Integer;
function BuscaClienteTransportadora(ncliente: Integer): Integer;
function BuscaClienteCentroCusto(ncliente: Integer): Integer;
function fncCliente_cnpj(sCNPJ: String): Boolean;
function fncCliente_ID_CNPJ(sCNPJ: String): Integer;
function GetCFOPCliente(ncliente: Integer): Integer;
function fncBuscaClienteEmail(ncodigo: Integer): String;
function fncBuscaVendedorRegiao(ncodigo: Integer): Integer;
function GetTaxaDolar: Real;
function GetTaxaEuro: Real;
function BuscaPlanoContasTipo(sPlanoContas: String): String;
function BuscaPlanoContasID(sPlanoContas: String): Integer;

function GetCFOPDescricao(nCFOP: Integer): WideString;
function GetCFOPDetalhe(nCFOP: Integer): WideString;

procedure GetFaturaNFe(aQuery: TFDQuery; aIDEmpresa, aIDVenda: Integer);
function GetCNPJFabricante(aProduto: String): String;
function GetCompraItemFiscal(aProduto: String): TCompraItemFiscal;
function GetCFOP(aCliente: Integer): Integer;
function GetChecarMesmaUF(aCliente: Integer): Boolean;
function GetProdutoCampo(aProduto, aCampo: String): String;
function GetIDProduto(aProduto: String): Integer;
function GetCFOPProduto(aProduto: Integer;
  aDentroEstado: Boolean = True): Integer;
procedure SQLExcluirCtaReceber(aIDVenda: Integer);
procedure GravarProdutoCaminhoFoto(const IDProduto: Integer;
  Const aCaminho: String);
procedure SQLExcluirVenda(aIDVenda: Integer);

implementation

uses Biblioteca, App.Licenca, App.Constantes, App.Funcoes, FPrincipal;

procedure InserirLicenca(aCHAVE: String);
var
   mQuery: TFDQuery;
begin
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add(' INSERT INTO LICENCA ');
      mQuery.SQL.Add(' (DATA, HORA, CHAVE, STATUS ) ');
      mQuery.SQL.Add(' VALUES ');
      mQuery.SQL.Add(' (');
      mQuery.SQL.Add('  :VDATA ');
      mQuery.SQL.Add(' ,:VHORA ');
      mQuery.SQL.Add(' ,:VCHAVE ');
      mQuery.SQL.Add(' ,:VSTATUS ');
      mQuery.SQL.Add('  )');
      mQuery.ParamByName('VDATA').AsDate := Date;
      mQuery.ParamByName('VHORA').AsTime := Time;
      mQuery.ParamByName('VCHAVE').AsString := aCHAVE;
      mQuery.ParamByName('VSTATUS').AsString := 'L'; // L=LIBERADO
      mQuery.ExecSQL;
   finally
      QueryLiberar(mQuery);
   end;
end;

function GetTempoLicenca: Currency;
var
   mData, mDataLimite: TDate;
   mDias: Integer;
   mChave: String;
   mPrazo1: Extended;
   mQuery: TFDQuery;
begin
   Result := 0;
   mPrazo1 := 0;
   mData := 0;
   mDias := 0;
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add(' SELECT FIRST 1 * FROM LICENCA WHERE STATUS=''L'' ');
      mQuery.Open;
      if mQuery.IsEmpty then
         exit;
      // -------------------------------------------------------------------
      // Decifrar chave
      // -------------------------------------------------------------------
      mChave := mQuery.FieldByName('CHAVE').AsString;;
      VerificarChave(mChave, mData, mDias);
      mDataLimite := mData + mDias;
      mPrazo1 := mDataLimite - Date();
      if mPrazo1 < 0 then
         mPrazo1 := 0;
      // -------------------------------------------------------------------
      // Se prazo for igual a 0 (zero), bloqueia imediatamente.
      // -------------------------------------------------------------------
      if mPrazo1 < 1 then
      begin
         mQuery.SQL.Clear;
         mQuery.SQL.Add(' UPDATE LICENCA SET STATUS=''B'' '); // B=BLOQUEADO
         mQuery.ExecSQL;
      end;
      Result := mPrazo1;
   finally
      QueryLiberar(mQuery);
   end;
end;

Procedure RegistrarUltimaVenda(TblClientes, Tbl_Pedidos: TFDQuery;
  CodigoCliente: String);
Begin
   CodigoCliente := Trim(CodigoCliente);
   if not TblClientes.Active then
      TblClientes.Open;
   if not Tbl_Pedidos.Active then
      Tbl_Pedidos.Open;
   If Tbl_Pedidos.Locate('Cliente', CodigoCliente, []) = True then
   Begin
      If TblClientes.Locate('CODIGO', CodigoCliente, []) = True then
      begin
         If Tbl_Pedidos.FieldByName('DataVenda').AsDateTime >= Date then
         begin
            TblClientes.edit;
            TblClientes.FieldByName('ULTIMA_VENDA').AsDateTime :=
              Tbl_Pedidos.FieldByName('DataVenda').AsDateTime;
            TblClientes.Post;
         end;
      end;
   End;
   TblClientes.Refresh;
End;

procedure prcContasReceberDescontato(ncodigo, ncontabanco, ncontacaixa,
  ncarteira: Integer; stacao: String);
Var
   mQuery: TFDQuery;
begin
   stacao := UpperCase(Trim(stacao));
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add(' update FIN_CTARECEBER  set          ');
      mQuery.SQL.Add('     DESCONTADO=' + QuotedStr(stacao));
      mQuery.SQL.Add('    ,CONTA_CREDITO=' + inttostr(ncontabanco));
      mQuery.SQL.Add('    ,CONTACAIXA=' + inttostr(ncontacaixa));
      mQuery.SQL.Add('    ,CARTEIRA=' + inttostr(ncarteira));
      mQuery.SQL.Add('      ');
      mQuery.SQL.Add(' where     ');
      mQuery.SQL.Add('    EMPRESA=:NEMPRESA     ');
      mQuery.SQL.Add(' and     ');
      mQuery.SQL.Add('    CODIGO=:nCODIGO     ');
      mQuery.ParamByName('NEMPRESA').AsInteger := FSistema.Empresa;
      mQuery.ParamByName('nCODIGO').AsInteger := ncodigo;
      mQuery.ExecSQL;
   finally
      QueryLiberar(mQuery);
   end;
end;

procedure pContasReceberBaixaParcial(ncliente, nVendedor: Integer;
  nData, nVencimento: TDate; nNotafiscal, nDocumento: String; nNovoValor: Real;
  nPlanoConta: String; nforma_pagto: Integer; wAcao: String);
Var
   mQuery: TFDQuery;
begin
   QueryCriar(mQuery);
   try
      /// ----------- excluir contas a receber ---------------------------
      if (wAcao = 'D') then
      begin
         mQuery.SQL.Clear;
         mQuery.SQL.Add(' delete from fin_ctareceber                         ');
         mQuery.SQL.Add(' where                                              ');
         mQuery.SQL.Add(' data=:data                                         ');
         mQuery.SQL.Add(' and                                                ');
         mQuery.SQL.Add(' cliente=:cliente                                   ');
         mQuery.SQL.Add(' and                                                ');
         mQuery.SQL.Add(' vendedor=:vendedor                                 ');
         mQuery.SQL.Add(' and                                                ');
         mQuery.SQL.Add(' documento=:documento                               ');
         mQuery.ParamByName('data').AsDate := nData;
         mQuery.ParamByName('cliente').AsInteger := ncliente;
         mQuery.ParamByName('vendedor').AsInteger := nVendedor;
         mQuery.ParamByName('documento').AsString := nDocumento + '-(P)';
         mQuery.ExecSQL;
         exit; // nao deixar prosseguir. Ação de exclusão foi concluida.
      end;
      /// ----------- baixar contas a receber ---------------------------
      mQuery.SQL.Clear;
      mQuery.SQL.Add(' insert into fin_ctareceber                         ');
      mQuery.SQL.Add('                                                    ');
      mQuery.SQL.Add(' (                                                  ');
      mQuery.SQL.Add('                                                    ');
      if ncliente > 0 then
         mQuery.SQL.Add(' cliente,                                           ');
      if nVendedor > 0 then
         mQuery.SQL.Add(' vendedor,                                          ');
      mQuery.SQL.Add(' data,                                              ');
      mQuery.SQL.Add(' vencimento,                                        ');
      mQuery.SQL.Add(' notafiscal,                                        ');
      mQuery.SQL.Add(' documento,                                         ');
      mQuery.SQL.Add(' valor,                                             ');
      mQuery.SQL.Add(' PLANO_CONTAS,                                         ');
      mQuery.SQL.Add(' forma_pagto,                                       ');
      mQuery.SQL.Add(' historico,                                         ');
      mQuery.SQL.Add(' complementar                                       ');
      mQuery.SQL.Add('                                                    ');
      mQuery.SQL.Add(' )                                                  ');
      mQuery.SQL.Add('                                                    ');
      mQuery.SQL.Add(' values                                             ');
      mQuery.SQL.Add('                                                    ');
      mQuery.SQL.Add(' (                                                  ');
      mQuery.SQL.Add('                                                    ');
      if ncliente > 0 then
         mQuery.SQL.Add(' :cliente,                                          ');
      if nVendedor > 0 then
         mQuery.SQL.Add(' :vendedor,                                         ');
      mQuery.SQL.Add(' :data,                                             ');
      mQuery.SQL.Add(' :vencimento,                                       ');
      mQuery.SQL.Add(' :notafiscal,                                       ');
      mQuery.SQL.Add(' :documento,                                        ');
      mQuery.SQL.Add(' :valor,                                            ');
      mQuery.SQL.Add(' :PLANO_CONTAS,                                        ');
      mQuery.SQL.Add(' :forma_pagto,                                      ');
      mQuery.SQL.Add(' :historico,                                        ');
      mQuery.SQL.Add(' :complementar                                      ');
      mQuery.SQL.Add('                                                    ');
      mQuery.SQL.Add(' )                                                  ');
      if ncliente > 0 then
         mQuery.ParamByName('cliente').AsInteger := ncliente;
      if nVendedor > 0 then
         mQuery.ParamByName('vendedor').AsInteger := nVendedor;
      mQuery.ParamByName('data').AsDate := nData;
      mQuery.ParamByName('vencimento').AsDate := nVencimento;
      mQuery.ParamByName('notafiscal').AsString := nNotafiscal;
      mQuery.ParamByName('documento').AsString := nDocumento + '-(P)';
      mQuery.ParamByName('valor').AsFloat := nNovoValor;
      mQuery.ParamByName('PLANO_CONTAS').AsString := nPlanoConta;
      mQuery.ParamByName('forma_pagto').AsInteger := nforma_pagto;
      mQuery.ParamByName('historico').AsString := '(PARCELA COMPLEMENTAR) ' +
        nDocumento;
      mQuery.ParamByName('complementar').AsString := 'S';
      mQuery.ExecSQL;
   finally
      QueryLiberar(mQuery);
   end;
end;

procedure pContasPagarBaixaParcial(nfornecedor: Integer;
  nData, nVencimento: TDate; nNotafiscal, nDocumento: String; nNovoValor: Real;
  nPlanoConta: String; nforma_pagto: Integer; shitorico, wAcao: String);
Var
   mQuery: TFDQuery;
begin
   QueryCriar(mQuery);
   try
      if (wAcao = 'D') then
      begin
         mQuery.SQL.Clear;
         mQuery.SQL.Add(' delete from fin_ctapagar                           ');
         mQuery.SQL.Add(' where                                              ');
         mQuery.SQL.Add(' data=:data                                         ');
         mQuery.SQL.Add(' and                                                ');
         mQuery.SQL.Add(' fornecedor=:fornecedor                             ');
         mQuery.SQL.Add(' and                                                ');
         mQuery.SQL.Add(' documento=:documento                               ');

         mQuery.ParamByName('data').AsDate := nData;
         mQuery.ParamByName('fornecedor').AsInteger := nfornecedor;
         mQuery.ParamByName('documento').AsString := nDocumento;
         mQuery.ExecSQL;
         exit; // nao deixar prosseguir. Ação de exclusão foi concluida.
      end;
      /// ----------- baixar contas a receber ---------------------------------
      mQuery.SQL.Clear;
      mQuery.SQL.Add(' insert into fin_ctapagar                           ');
      mQuery.SQL.Add('                                                    ');
      mQuery.SQL.Add(' (                                                  ');
      mQuery.SQL.Add(' empresa,                                           ');
      mQuery.SQL.Add(' fornecedor,                                        ');
      mQuery.SQL.Add(' data,                                              ');
      mQuery.SQL.Add(' vencimento,                                        ');
      mQuery.SQL.Add(' notafiscal,                                        ');
      mQuery.SQL.Add(' documento,                                         ');
      mQuery.SQL.Add(' valor,                                             ');
      mQuery.SQL.Add(' PLANO_CONTAS,                                      ');
      mQuery.SQL.Add(' forma_pagto,                                       ');
      mQuery.SQL.Add(' historico,                                         ');
      mQuery.SQL.Add(' complementar                                       ');
      mQuery.SQL.Add('                                                    ');
      mQuery.SQL.Add(' )                                                  ');
      mQuery.SQL.Add('                                                    ');
      mQuery.SQL.Add(' values                                             ');
      mQuery.SQL.Add('                                                    ');
      mQuery.SQL.Add(' (                                                  ');
      mQuery.SQL.Add('                                                    ');
      mQuery.SQL.Add(' :empresa,                                          ');
      mQuery.SQL.Add(' :fornecedor,                                       ');
      mQuery.SQL.Add(' :data,                                             ');
      mQuery.SQL.Add(' :vencimento,                                       ');
      mQuery.SQL.Add(' :notafiscal,                                       ');
      mQuery.SQL.Add(' :documento,                                        ');
      mQuery.SQL.Add(' :valor,                                            ');
      mQuery.SQL.Add(' :PLANO_CONTAS,                                     ');
      mQuery.SQL.Add(' :forma_pagto,                                      ');
      mQuery.SQL.Add(' :historico,                                        ');
      mQuery.SQL.Add(' :complementar                                      ');
      mQuery.SQL.Add('                                                    ');
      mQuery.SQL.Add(' )                                                  ');
      mQuery.ParamByName('empresa').AsInteger := FSistema.Empresa;
      mQuery.ParamByName('fornecedor').AsInteger := nfornecedor;
      mQuery.ParamByName('data').AsDate := nData;
      mQuery.ParamByName('vencimento').AsDate := nVencimento;
      mQuery.ParamByName('notafiscal').AsString := nNotafiscal;
      mQuery.ParamByName('documento').AsString := nDocumento;
      mQuery.ParamByName('valor').AsFloat := nNovoValor;
      mQuery.ParamByName('PLANO_CONTAS').AsString := nPlanoConta;
      mQuery.ParamByName('forma_pagto').AsInteger := nforma_pagto;
      mQuery.ParamByName('historico').AsString := shitorico;
      mQuery.ParamByName('complementar').AsString := 'S';
      mQuery.ExecSQL;
   finally
      QueryLiberar(mQuery);
   end;
end;

function ValidaReferencia(sReferencia: String): Boolean;
Var
   mQuery: TFDQuery;
begin
   Result := False;
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add('  SELECT COUNT(*) AS RETORNO FROM CAD_PRODUTOS ');
      mQuery.SQL.Add('  where                         ');
      mQuery.SQL.Add('     REFERENCIA=:REFERENCIA    ');
      mQuery.ParamByName('REFERENCIA').AsString := UpperCase(Trim(sReferencia));
      mQuery.Open;
      Result := mQuery.FieldByName('RETORNO').AsInteger > 0;
   finally
      QueryLiberar(mQuery);
   end;
end;

function fncReferenciaNome(sReferencia: String): String;
Var
   mQuery: TFDQuery;
begin
   Result := '';
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add('  SELECT * FROM CAD_PRODUTOS ');
      mQuery.SQL.Add('  where                         ');
      mQuery.SQL.Add('     REFERENCIA=:REFERENCIA    ');
      mQuery.ParamByName('REFERENCIA').AsString :=
        UpperCase(Trim(sReferencia));;
      mQuery.Open;
      Result := Trim(mQuery.FieldByName('DESCRICAO').AsString);
   finally
      QueryLiberar(mQuery);
   end;
end;

function RetornaReferenciaPrecoVenda(sReferencia: String): Real;
Var
   mQuery: TFDQuery;
begin
   Result := 0;
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add('  SELECT * FROM CAD_PRODUTOS ');
      mQuery.SQL.Add('  where                         ');
      mQuery.SQL.Add('     REFERENCIA=:REFERENCIA    ');
      mQuery.ParamByName('REFERENCIA').AsString := UpperCase(Trim(sReferencia));
      mQuery.Open;
      Result := mQuery.FieldByName('PRC_VENDA').AsFloat;
   finally
      QueryLiberar(mQuery);
   end;
end;

function ValidaReferenciaTabela(nTabela: Integer; sReferencia: String): Boolean;
Var
   mQuery: TFDQuery;
begin
   Result := False;
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add('  SELECT COUNT(*) AS RETORNO FROM TPRECO_REFERENCIAS ');
      mQuery.SQL.Add('  where                         ');
      mQuery.SQL.Add('     CODIGO=:NCODIGO    ');
      mQuery.SQL.Add('  AND                         ');
      mQuery.SQL.Add('     REFERENCIA=:REFERENCIA    ');
      mQuery.ParamByName('NCODIGO').AsInteger := nTabela;
      mQuery.ParamByName('REFERENCIA').AsString := UpperCase(Trim(sReferencia));
      mQuery.Open;
      Result := mQuery.FieldByName('RETORNO').AsInteger > 0;
   finally
      QueryLiberar(mQuery);
   end;
end;

function RetornaReferenciaPrecoTabela(nTabela: Integer;
  sReferencia: String): Real;
Var
   mQuery: TFDQuery;
begin
   Result := 0;
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add('  SELECT * FROM TPRECO_REFERENCIAS ');
      mQuery.SQL.Add('  where                         ');
      mQuery.SQL.Add('     CODIGO=:NCODIGO    ');
      mQuery.SQL.Add('  AND                         ');
      mQuery.SQL.Add('     REFERENCIA=:REFERENCIA    ');
      mQuery.ParamByName('NCODIGO').AsInteger := nTabela;
      mQuery.ParamByName('REFERENCIA').AsString := UpperCase(Trim(sReferencia));
      mQuery.Open;
      Result := mQuery.FieldByName('PRC_VENDA').AsFloat;
   finally
      QueryLiberar(mQuery);
   end;
end;

function GetTaxaDolar: Real;
Var
   mQuery: TFDQuery;
begin
   Result := 0;
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add('  SELECT * FROM FIN_COTACAOMOEDA ');
      mQuery.Open;
      Result := mQuery.FieldByName('DOLAR').AsFloat;
   finally
      QueryLiberar(mQuery);
   end;
end;

function GetTaxaEuro: Real;
Var
   mQuery: TFDQuery;
begin
   Result := 0;
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add('  SELECT * FROM FIN_COTACAOMOEDA ');
      mQuery.Open;
      Result := mQuery.FieldByName('EURO').AsFloat;
   finally
      QueryLiberar(mQuery);
   end;
end;

function GetProdutoPrecoCusto(sReferencia: String): Real;
Var
   mQuery: TFDQuery;
begin
   Result := 0;
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add('  SELECT * FROM CAD_PRODUTOS ');
      mQuery.SQL.Add('  where                         ');
      mQuery.SQL.Add('     REFERENCIA=:REFERENCIA    ');
      mQuery.ParamByName('REFERENCIA').AsString := UpperCase(Trim(sReferencia));
      mQuery.Open;
      Result := mQuery.FieldByName('PRC_CUSTO').AsFloat;
   finally
      QueryLiberar(mQuery);
   end;
end;

function GetNCMCEST(aNCM: String): String;
Var
   mQuery: TFDQuery;
begin
   Result := '';
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add(' SELECT CEST FROM CAD_NCM  ');
      mQuery.SQL.Add('  where                         ');
      mQuery.SQL.Add('     CODIGO=:CNSM    ');
      mQuery.ParamByName('CNSM').AsString := aNCM;
      mQuery.Open;
      Result := UpperCase(mQuery.FieldByName('CEST').AsString);
   finally
      QueryLiberar(mQuery);
   end;
end;

procedure GetParametros;
Var
   mQuery: TFDQuery;
begin
   if FParametros = nil then
      FParametros := TParametros.Create;
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add(' SELECT * FROM CONFIG_PARAMETROS  ');
      mQuery.SQL.Add(' WHERE                         ');
      mQuery.SQL.Add(' EMPRESA=:EMPRESA    ');
      mQuery.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
      mQuery.Open;
      FParametros.Empresa.Codigo := mQuery.FieldByName('EMPRESA').AsInteger;
      FParametros.Empresa.DataAtividade := mQuery.FieldByName('INF_DATABASE')
        .AsDateTime;
      FParametros.Empresa.Nome := mQuery.FieldByName('NOME').AsString;
      FParametros.Empresa.NomeFantasia :=
        mQuery.FieldByName('NOMEFANTASIA').AsString;
      FParametros.Empresa.CNPJ := mQuery.FieldByName('CNPJ').AsString;
      FParametros.Empresa.IE := mQuery.FieldByName('IE').AsString;
      FParametros.Empresa.IM := mQuery.FieldByName('IM').AsString;
      FParametros.Empresa.CNAE := mQuery.FieldByName('CNAE').AsString;
      FParametros.Empresa.Endereco := mQuery.FieldByName('ENDERECO').AsString;
      FParametros.Empresa.Numero := mQuery.FieldByName('NUMERO').AsString;
      FParametros.Empresa.Bairro := mQuery.FieldByName('BAIRRO').AsString;
      FParametros.Empresa.Complemento :=
        mQuery.FieldByName('COMPLEMENTO').AsString;
      FParametros.Empresa.CEP := mQuery.FieldByName('CEP').AsString;
      FParametros.Empresa.Fone := mQuery.FieldByName('FONE').AsString;
      FParametros.Empresa.Fax := mQuery.FieldByName('FAX').AsString;
      FParametros.Empresa.Email := mQuery.FieldByName('EMAIL').AsString;
      FParametros.Empresa.Site := mQuery.FieldByName('SITE').AsString;
      FParametros.Empresa.Contato := mQuery.FieldByName('CONTATO').AsString;
      FParametros.Empresa.IDCIDADE := mQuery.FieldByName('IDCIDADE').AsInteger;
      FParametros.Empresa.IDUF := mQuery.FieldByName('IDUF').AsInteger;
      FParametros.Empresa.Cidade := mQuery.FieldByName('CIDADE').AsString;
      FParametros.Empresa.UF := mQuery.FieldByName('UF').AsString;
      FParametros.Empresa.CodigoPais := mQuery.FieldByName('IDPAIS').AsInteger;
      FParametros.Empresa.NomePais := mQuery.FieldByName('NOMEPAIS').AsString;
      FParametros.Empresa.REGIME_TRIB := mQuery.FieldByName('REGIME_TRIB')
        .AsInteger;
      FParametros.Empresa.REGIME_TRIBALIQ :=
        mQuery.FieldByName('REGIME_TRIBALIQUOT').AsFloat;
      FParametros.Financeiro.Juros := mQuery.FieldByName('FIN_JUROS').AsFloat;
      FParametros.Financeiro.Cartorio :=
        mQuery.FieldByName('FIN_CARTORIO').AsFloat;
      FParametros.Financeiro.CobrancaDias := mQuery.FieldByName('FIN_COBDIAS')
        .AsInteger;
      FParametros.Financeiro.VendaVistaBaixar :=
        mQuery.FieldByName('FIN_VENDAVISTABAIXAR').AsString;
      FParametros.Financeiro.DiasBloqueio :=
        mQuery.FieldByName('FIN_DIASBLOQUEAR').AsInteger;
      FParametros.Financeiro.PagarLancarCaixa :=
        mQuery.FieldByName('FIN_CTAPAG_LANCCX').AsString;
      FParametros.Financeiro.PagarLancarBanco :=
        mQuery.FieldByName('FIN_CTAPAG_LANCBCO').AsString;
      FParametros.Financeiro.PagarComissao :=
        mQuery.FieldByName('FIN_CTAPAG_COMISSAO').AsString;
      FParametros.Financeiro.PagarContaCaixa :=
        mQuery.FieldByName('FIN_CTAPAG_CONTACX').AsInteger;
      FParametros.Financeiro.PagarPlanoContas :=
        mQuery.FieldByName('FIN_CTAPAG_PLANOCTA').AsString;
      FParametros.Financeiro.PagarComissaoVencimento :=
        mQuery.FieldByName('FIN_CTAPAG_COMVECTO').AsInteger;
      FParametros.Financeiro.PagarComissaoContaCaixa :=
        mQuery.FieldByName('FIN_CTAPAG_COMCTACX').AsInteger;
      FParametros.Financeiro.PagarComissaoCentroCusto :=
        mQuery.FieldByName('FIN_CTAPAG_COMCTOCUSTO').AsInteger;
      FParametros.Financeiro.PagarComissaoPlanoconta :=
        mQuery.FieldByName('FIN_CTAPAG_COMPLANCTA').AsString;
      FParametros.Financeiro.ReceberLancarCaixa :=
        mQuery.FieldByName('FIN_CTAREC_LANCARCAIXA').AsString;
      FParametros.Financeiro.ReceberLancarBanco :=
        mQuery.FieldByName('FIN_CTAREC_LANCARBANCO').AsString;
      FParametros.Financeiro.ReceberContaCaixa :=
        mQuery.FieldByName('FIN_CTAREC_CONTACAIXA').AsInteger;
      FParametros.Financeiro.ReceberPlanoContas :=
        mQuery.FieldByName('FIN_CTAREC_PLANOCONTAS').AsString;
      FParametros.Financeiro.BalcaoLancarCaixa :=
        mQuery.FieldByName('FIN_BANCAO_LANCCX').AsString;
      FParametros.Financeiro.SiteCotacao :=
        mQuery.FieldByName('SITECOTACAOMOEDA').AsString;
      FParametros.Compra.PlanoContas :=
        mQuery.FieldByName('COMPRA_PLNCTA').AsString;
      FParametros.Compra.CFOP := mQuery.FieldByName('COMPRA_CFOP').AsInteger;
      FParametros.Compra.Fornecedor := mQuery.FieldByName('COMPRA_IDFORNECEDOR')
        .AsInteger;
      FParametros.Alerta.Estoque := mQuery.FieldByName('ALERTA_ESTQ').AsString;
      FParametros.Alerta.Ctareceber :=
        mQuery.FieldByName('ALERTA_CTAREC').AsString;
      FParametros.Alerta.CtareceberDias :=
        mQuery.FieldByName('ALERTA_CTAREC_DIAS').AsInteger;
      FParametros.Alerta.Ctapagar :=
        mQuery.FieldByName('ALERTA_CTAPAG').AsString;
      FParametros.Alerta.CtapagarDias :=
        mQuery.FieldByName('ALERTA_CTAPAG_DIAS').AsInteger;
      FParametros.Alerta.Pedidos :=
        mQuery.FieldByName('ALERTA_PEDIDOS').AsString;
      FParametros.Alerta.Cobranca :=
        mQuery.FieldByName('ALERTA_COBRANCA').AsString;
      FParametros.Alerta.Validade := mQuery.FieldByName('ALERTA_VALID')
        .AsString;
      FParametros.Alerta.ValidadeDias := mQuery.FieldByName('ALERTA_VALID_DIAS')
        .AsInteger;
      FParametros.Alerta.PedidosCompras :=
        mQuery.FieldByName('ALERTA_PEDCOMPRA').AsString;
      FParametros.CFOP.VendaUFInterno := mQuery.FieldByName('CFOP_VNDUFLOCAL')
        .AsInteger;
      FParametros.CFOP.VendaUFExterno :=
        mQuery.FieldByName('CFOP_VNDAUFEXTERNO').AsInteger;
      FParametros.CFOP.DevolucaoUFLocal :=
        mQuery.FieldByName('CFOP_DEVUFINTERNO').AsInteger;
      FParametros.CFOP.DevolucaoUFFora :=
        mQuery.FieldByName('CFOP_DEVUFEXTERNO').AsInteger;
      FParametros.CFOP.CompraUFLocal := mQuery.FieldByName('CFOP_COMPUFINTERNO')
        .AsInteger;
      FParametros.CFOP.CompraUFFora := mQuery.FieldByName('CFOP_COMPUFEXTERNO')
        .AsInteger;
      FParametros.NFE.Ambiente := StrToIntDef(mQuery.FieldByName('NFE_AMBIENTE')
        .AsString, 0);
      FParametros.NFE.TipoDANFE := mQuery.FieldByName('NFE_TIPODANFE').AsString;
      FParametros.NFE.FormaEmissao :=
        mQuery.FieldByName('NFE_FORMAEMISSAO').AsString;
      FParametros.NFE.Modelo := mQuery.FieldByName('NFE_MODELO').AsString;
      FParametros.NFE.Serie := mQuery.FieldByName('NFE_SERIE').AsString;
      FParametros.NFE.Sequencia := mQuery.FieldByName('NFE_SEQUENCIA')
        .AsInteger;
      FParametros.NFE.Lote := mQuery.FieldByName('NFE_LOTE').AsInteger;
      FParametros.NFE.VersaoNFe := Ord(TpcnVersaoDF.ve400);
      // mQuery.FieldByName('NFE_VERSAONFE').AsInteger;
      FParametros.NFE.EnviarEmail := mQuery.FieldByName('NFE_ENVIAREMAIL')
        .AsString = 'SIM';
      FParametros.NFE.CertArquivo :=
        mQuery.FieldByName('NFE_CERTIFICADO_LOCAL').AsString;
      FParametros.NFE.CertSenha :=
        mQuery.FieldByName('NFE_CERTIFICADO_SENHA').AsString;
      FParametros.NFE.CertSerie :=
        mQuery.FieldByName('NFE_CERTIFICADO_NUMSERIE').AsString;
      FParametros.NFE.GeradorDANFE := 'FORTESREPORT';
      FParametros.Configuracao.LogoPrincipal :=
        mQuery.FieldByName('INF_IMGPRINCIPAL').AsString;
      FParametros.Configuracao.LogoRelatorios :=
        mQuery.FieldByName('INF_IMGIMPRIMIR').AsString;
      FParametros.Cliente.Inatividade := mQuery.FieldByName('CLI_DIASINATIVAR')
        .AsInteger;
      FParametros.Cliente.Atrasopermitido :=
        mQuery.FieldByName('CLI_DIASATRASO').AsInteger;
      FParametros.Venda.Vendedor := mQuery.FieldByName('VND_IDVENDPADRAO')
        .AsInteger;
      FParametros.Venda.Cliente := mQuery.FieldByName('VND_IDCLIENTEPADRAO')
        .AsInteger;
      FParametros.Venda.IDPagto := mQuery.FieldByName('IDFPAGTOPADRAO')
        .AsInteger;
      FParametros.Venda.Imprimefatura :=
        mQuery.FieldByName('VND_IMPFATURA').AsString;
      FParametros.Pedido.Entrega := mQuery.FieldByName('PED_DIASENTREGA')
        .AsInteger;
      FParametros.Pedido.Baixaestoque :=
        mQuery.FieldByName('PED_BAIXAESTOQUE').AsString;
      FParametros.Pedido.Mensagem := mQuery.FieldByName('PED_MSG').AsWideString;
      FParametros.Email.POPHost :=
        Trim(mQuery.FieldByName('EMAIL_POP3HOST').AsString);
      FParametros.Email.POPPorta := mQuery.FieldByName('EMAIL_POP3PORTA')
        .AsInteger;
      FParametros.Email.SMTPHost :=
        Trim(mQuery.FieldByName('EMAIL_SMTPHOST').AsString);
      FParametros.Email.SMTPPorta := mQuery.FieldByName('EMAIL_SMTPPORTA')
        .AsInteger;
      FParametros.Email.Usuario :=
        Trim(mQuery.FieldByName('EMAIL_USUARIO').AsString);
      FParametros.Email.Senha :=
        Trim(mQuery.FieldByName('EMAIL_SENHA').AsString);
      FParametros.Email.SSLTSL := mQuery.FieldByName('EMAIL_SSLTSL')
        .AsString = 'SIM';
      FParametros.Email.Nome := Trim(mQuery.FieldByName('EMAIL_NOME').AsString);
      if FParametros.Email.Nome.IsEmpty then
         FParametros.Email.Nome := FParametros.Email.Usuario;
      FParametros.Frete.Padrao := mQuery.FieldByName('FRETEPADRAO').AsInteger;
      FParametros.NFE.RespTec_IDCSRT :=
        mQuery.FieldByName('RESPTEC_IDCSRT').AsString;
      FParametros.NFE.RespTec_CSRT :=
        mQuery.FieldByName('RESPTEC_CSRT').AsString;
      FParametros.NFE.RespTec_CNPJ :=
        mQuery.FieldByName('RESPTEC_CNPJ').AsString;
      FParametros.NFE.RespTec_xContato :=
        mQuery.FieldByName('RESPTEC_XCONTATO').AsString;
      FParametros.NFE.RespTec_email :=
        mQuery.FieldByName('RESPTEC_EMAIL').AsString;
      FParametros.NFE.RespTec_Fone :=
        mQuery.FieldByName('RESPTEC_FONE').AsString;
   finally
      QueryLiberar(mQuery);
   end;
end;

function fncBuscaClienteEmail(ncodigo: Integer): String;
Var
   mQuery: TFDQuery;
begin
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add(' select EMAIL from CAD_CLIENTES ');
      mQuery.SQL.Add('  where                         ');
      mQuery.SQL.Add('     CODIGO=:NCODIGO    ');
      mQuery.ParamByName('NCODIGO').AsInteger := ncodigo;
      mQuery.Open;
      Result := UpperCase(mQuery.FieldByName('EMAIL').AsString);
   finally
      QueryLiberar(mQuery);
   end;
end;

function fncBuscaVendedorRegiao(ncodigo: Integer): Integer;
Var
   mQuery: TFDQuery;
begin
   Result := 0;
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add(' select REGIAO from CAD_CLIENTES ');
      mQuery.SQL.Add('  where                         ');
      mQuery.SQL.Add('     CODIGO=:NCODIGO    ');
      mQuery.ParamByName('NCODIGO').AsInteger := ncodigo;
      mQuery.Open;
      Result := mQuery.FieldByName('REGIAO').AsInteger;
   finally
      QueryLiberar(mQuery);
   end;
end;

function BuscaClienteVendedor(ncliente: Integer): Integer;
Var
   mQuery: TFDQuery;
begin
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add(' select VENDEDOR from CAD_CLIENTES ');
      mQuery.SQL.Add('  where                         ');
      mQuery.SQL.Add('     CODIGO=:NCODIGO    ');
      mQuery.ParamByName('NCODIGO').AsInteger := ncliente;
      mQuery.Open;
      Result := mQuery.FieldByName('VENDEDOR').AsInteger;
   finally
      QueryLiberar(mQuery);
   end;
end;

function GetClienteFormaPagto(ncliente: Integer): Integer;
Var
   mQuery: TFDQuery;
begin
   Result := 0;
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add(' select IDFORMAPAGTO from CAD_CLIENTES ');
      mQuery.SQL.Add('  where                         ');
      mQuery.SQL.Add('     CODIGO=:NCODIGO    ');
      mQuery.ParamByName('NCODIGO').AsInteger := ncliente;
      mQuery.Open;
      Result := mQuery.FieldByName('IDFORMAPAGTO').AsInteger;
   finally
      QueryLiberar(mQuery);
   end;
end;

function BuscaClienteTransportadora(ncliente: Integer): Integer;
Var
   mQuery: TFDQuery;
begin
   Result := 0;
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add(' select TRANSPORTADORA from CAD_CLIENTES ');
      mQuery.SQL.Add('  where                         ');
      mQuery.SQL.Add('     CODIGO=:NCODIGO    ');
      mQuery.ParamByName('NCODIGO').AsInteger := ncliente;
      mQuery.Open;
      Result := mQuery.FieldByName('TRANSPORTADORA').AsInteger;
   finally
      QueryLiberar(mQuery);
   end;
end;

function BuscaClienteCentroCusto(ncliente: Integer): Integer;
Var
   mQuery: TFDQuery;
begin
   Result := 0;
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add(' select CENTROCUSTO from CAD_CLIENTES ');
      mQuery.SQL.Add('  where                         ');
      mQuery.SQL.Add('     CODIGO=:NCODIGO    ');
      mQuery.ParamByName('NCODIGO').AsInteger := ncliente;
      mQuery.Open;
      Result := mQuery.FieldByName('CENTROCUSTO').AsInteger;
   finally
      QueryLiberar(mQuery);
   end;
end;

function fncCliente_cnpj(sCNPJ: String): Boolean;
Var
   mQuery: TFDQuery;
begin
   Result := False;
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add('  SELECT COUNT(CPF_CNPJ) AS RETORNO FROM CAD_CLIENTES ');
      mQuery.SQL.Add('  where                         ');
      mQuery.SQL.Add('  CPF_CNPJ=:SCNPJ    ');
      mQuery.ParamByName('SCNPJ').AsString := sCNPJ;
      mQuery.Open;
      Result := mQuery.FieldByName('RETORNO').AsInteger > 0;
   finally
      QueryLiberar(mQuery);
   end;
end;

function fncCliente_ID_CNPJ(sCNPJ: String): Integer;
var
   mDocumento: String;
   mQuery: TFDQuery;
begin
   Result := 0;
   mDocumento := '';
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add('  SELECT CODIGO, ');
      mQuery.SQL.Add
        (' replace(replace(replace(cpf_cnpj, ''.'', ''''), ''/'', ''''), ''-'', '''' ) as  cpf_cnpj ');
      mQuery.SQL.Add('  FROM CAD_CLIENTES ');
      mQuery.SQL.Add('  where                         ');
      mQuery.SQL.Add('  CPF_CNPJ=:SCNPJ    ');
      mQuery.ParamByName('SCNPJ').AsString := sCNPJ;
      mQuery.Open;
      Result := mQuery.FieldByName('CODIGO').AsInteger;
   finally
      QueryLiberar(mQuery);
   end;
end;

function GetClienteCampo(ncliente: Integer; slCampo: String): String;
Var
   mQuery: TFDQuery;
begin
   Result := '';
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add(' select * from CAD_CLIENTES where CODIGO=' +
        inttostr(ncliente));
      mQuery.Open;
      Result := Trim(mQuery.FieldByName(slCampo).AsString);
   finally
      QueryLiberar(mQuery);
   end;
end;

function Cliente_Endereco(ncliente: Integer; slCampo: String): String;
Var
   mQuery: TFDQuery;
begin
   Result := '';
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add(' select * from CAD_CLIENTES where CODIGO=' +
        inttostr(ncliente));
      mQuery.Open;
      Result := UpperCase(mQuery.FieldByName(slCampo).AsString);
   finally
      QueryLiberar(mQuery);
   end;
end;

function ChecarCreditoCliente(ncliente: Integer): Boolean;
Var
   mQuery: TFDQuery;
begin
   Result := False;
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add(' select BLOQUEADO from CAD_CLIENTES ');
      mQuery.SQL.Add('  where                         ');
      mQuery.SQL.Add('     CODIGO=:CODIGO    ');
      mQuery.ParamByName('CODIGO').AsInteger := ncliente;
      mQuery.Open;
      Result := ((mQuery.FieldByName('BLOQUEADO').AsString = 'S') or
        (mQuery.FieldByName('BLOQUEADO').AsString = 'SIM'));
   finally
      QueryLiberar(mQuery);
   end;
end;

function ChecarCreditoSaldo(ncliente: Integer): Real;
Var
   mQuery: TFDQuery;
begin
   Result := 0;
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add(' SELECT CREDITO_DISPONIVEL FROM CAD_CLIENTES ');
      mQuery.SQL.Add(' WHERE   ');
      mQuery.SQL.Add(' CODIGO=:CODIGO    ');
      mQuery.ParamByName('CODIGO').AsInteger := ncliente;
      mQuery.Open;
      Result := mQuery.FieldByName('CREDITO_DISPONIVEL').AsFloat;
      if Result < 0 then
         Result := 0;
   finally
      QueryLiberar(mQuery);
   end;
end;

function BuscaPlanoContasTipo(sPlanoContas: String): String;
Var
   mQuery: TFDQuery;
begin
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add(' SELECT * FROM PLANO_CONTAS_DETALHES ');
      mQuery.SQL.Add(' WHERE                         ');
      mQuery.SQL.Add(' CODIGO_PLANO=:PLN_CONTA    ');
      mQuery.ParamByName('PLN_CONTA').AsString := UpperCase(Trim(sPlanoContas));
      mQuery.Open;
      Result := UpperCase(Trim(mQuery.FieldByName('TIPO').AsString));
   finally
      QueryLiberar(mQuery);
   end;
end;

function BuscaPlanoContasID(sPlanoContas: String): Integer;
Var
   mQuery: TFDQuery;
begin
   sPlanoContas := UpperCase(Trim(sPlanoContas));
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add(' SELECT * FROM PLANO_CONTAS_DETALHES ');
      mQuery.SQL.Add(' WHERE                         ');
      mQuery.SQL.Add(' CODIGO_PLANO=:PLN_CONTA    ');
      mQuery.ParamByName('PLN_CONTA').AsString := sPlanoContas;
      mQuery.Open;
      Result := StrToIntDef((mQuery.FieldByName('CODIGO').AsString), 0);
   finally
      QueryLiberar(mQuery);
   end;
end;

function GetCFOPDescricao(nCFOP: Integer): WideString;
Var
   mQuery: TFDQuery;
begin
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add('  SELECT * FROM CAD_CFOP ');
      mQuery.SQL.Add('  where                         ');
      mQuery.SQL.Add('  CODIGO=:NCFOP    ');
      mQuery.ParamByName('NCFOP').AsInteger := nCFOP;
      mQuery.Open;
      Result := Copy(UpperCase(mQuery.FieldByName('DESCRICAO').AsString), 1,
        60); // limite na NF-e é 60 caracteres
   finally
      QueryLiberar(mQuery);
   end;
end;

function GetCFOPDetalhe(nCFOP: Integer): WideString;
Var
   mQuery: TFDQuery;
begin
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add('  SELECT * FROM CAD_CFOP ');
      mQuery.SQL.Add('  where                         ');
      mQuery.SQL.Add('  CODIGO=:NCFOP    ');
      mQuery.ParamByName('NCFOP').AsInteger := nCFOP;
      mQuery.Open;
      Result := UpperCase(mQuery.FieldByName('DETALHE').AsString);
   finally
      QueryLiberar(mQuery);
   end;
end;

procedure GetFaturaNFe(aQuery: TFDQuery; aIDEmpresa, aIDVenda: Integer);
begin
   aQuery.SQL.Clear;
   aQuery.SQL.Add(' SELECT * FROM VIEW_FATURAS             ');
   aQuery.SQL.Add(' WHERE                                  ');
   aQuery.SQL.Add(' EMPRESA=:EMPRESA                       ');
   aQuery.SQL.Add(' AND IDVENDA=:IDVENDA                   ');
   aQuery.SQL.Add(' ORDER BY DATA, VENCIMENTO, DOCUMENTO   ');
   aQuery.ParamByName('EMPRESA').AsInteger := aIDEmpresa;
   aQuery.ParamByName('IDVENDA').AsInteger := aIDVenda;
   aQuery.Open;
end;

procedure prcRegistrarUltimaVenda(lnCliente: Integer; lsOrigem: String);
Var
   mQuery: TFDQuery;
begin
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add
        (' UPDATE CAD_CLIENTES SET ULTIMAVENDA_DATA=                                    ');
      if (lsOrigem = 'PEDIDO') then
      begin
         mQuery.SQL.Add
           (' (SELECT  MAX(PEDIDOS.DATA) AS DATA FROM PEDIDOS                        ');
         mQuery.SQL.Add
           (' WHERE PEDIDOS.EMPRESA=:NEMPRESA AND PEDIDOS.CLIENTE=:NCLIENTE),  ');
         mQuery.SQL.Add
           (' ULTIMAVENDA_ORIGEM=:SORIGEM                                                  ');
      end;
      if (lsOrigem = 'NFE') then
      begin
         mQuery.SQL.Add
           (' (SELECT  MAX(VENDAS.EMISSAO) AS EMISSAO FROM VENDAS                        ');
         mQuery.SQL.Add
           (' WHERE VENDAS.EMPRESA=:NEMPRESA AND VENDAS.CLIENTE=:NCLIENTE),  ');
         mQuery.SQL.Add
           (' ULTIMAVENDA_ORIGEM=:SORIGEM                                                  ');
      end;
      mQuery.SQL.Add
        (' WHERE                                                                        ');
      mQuery.SQL.Add
        (' CODIGO=:NCLIENTE                                                            ');
      mQuery.SQL.Add
        ('                                                                              ');
      mQuery.ParamByName('NEMPRESA').AsInteger := FSistema.Empresa;
      mQuery.ParamByName('NCLIENTE').AsInteger := lnCliente;
      mQuery.ParamByName('SORIGEM').AsString := UpperCase(lsOrigem);
      mQuery.ExecSQL;
   finally
      QueryLiberar(mQuery);
   end;
end;

function GetCompraItemFiscal(aProduto: String): TCompraItemFiscal;
Var
   mCompraItemFiscal: TCompraItemFiscal;
   mCodFabr: String;
   mQuery: TFDQuery;
begin
   Result := Nil;
   if Trim(aProduto) = '' then
      exit;

   QueryCriar(mQuery);
   try
      try
         mQuery.Close;
         mQuery.SQL.Clear;
         mQuery.SQL.Add(' SELECT FIRST 1 CODIGO_FABRICANTE FROM CAD_PRODUTOS ');
         mQuery.SQL.Add(' WHERE ');
         mQuery.SQL.Add(' CODIGO=:IDCODIGO  ');
         mQuery.ParamByName('IDCODIGO').AsString := aProduto;
         mQuery.Open;
         mCodFabr := mQuery.FieldByName('CODIGO_FABRICANTE').AsString;
      finally
         mQuery.Close;
      end;
      try
         mQuery.Close;
         mQuery.SQL.Clear;
         mQuery.SQL.Add(' SELECT FIRST 1 * FROM COMPRAS_ITENS ');
         mQuery.SQL.Add(' WHERE ');
         mQuery.SQL.Add
           (' DATAENTRADA=(SELECT MAX(DATAENTRADA) FROM COMPRAS_ITENS WHERE PRODUTO=:SPRODUTO)  ');
         mQuery.SQL.Add(' AND  ');
         mQuery.SQL.Add(' PRODUTO=:SPRODUTO  ');
         mQuery.ParamByName('SPRODUTO').AsString := mCodFabr;
         mQuery.Open;
         if mQuery.IsEmpty then
            exit;
         mCompraItemFiscal := TCompraItemFiscal.Create;
         mCompraItemFiscal.ID := mQuery.FieldByName('CODIGO').AsInteger;
         mCompraItemFiscal.CodFabricante :=
           mQuery.FieldByName('PRODUTO').AsString;
         mCompraItemFiscal.Descricao := mQuery.FieldByName('DESCRICAO')
           .AsString;
         mCompraItemFiscal.QTDE := mQuery.FieldByName('QUANTIDADE').AsFloat;
         mCompraItemFiscal.PICMS := mQuery.FieldByName('ICMS').AsFloat;
         mCompraItemFiscal.VICMS :=
           (mQuery.FieldByName('ICMS_VALOR').AsFloat / mCompraItemFiscal.QTDE);
         mCompraItemFiscal.VBCST :=
           (mQuery.FieldByName('VBCST').AsFloat / mCompraItemFiscal.QTDE);
         mCompraItemFiscal.PICMSST := mQuery.FieldByName('PICMSST').AsFloat;
         mCompraItemFiscal.VICMSST :=
           (mQuery.FieldByName('VICMSST').AsFloat / mCompraItemFiscal.QTDE);
         mCompraItemFiscal.PST := mQuery.FieldByName('PST').AsFloat;
         mCompraItemFiscal.VBCSTRet :=
           (mQuery.FieldByName('VBCSTRET').AsFloat / mCompraItemFiscal.QTDE);
         mCompraItemFiscal.VICMSSTRet :=
           (mQuery.FieldByName('VICMSSTRET').AsFloat / mCompraItemFiscal.QTDE);
         mCompraItemFiscal.VICMSSubstituto :=
           (mQuery.FieldByName('VICMSSUBSTITUTO').AsFloat /
           mCompraItemFiscal.QTDE);
         mCompraItemFiscal.PREDBCEfet :=
           mQuery.FieldByName('PREDBCEFET').AsFloat;
         mCompraItemFiscal.VBCEfet :=
           (mQuery.FieldByName('VBCEFET').AsFloat / mCompraItemFiscal.QTDE);
         mCompraItemFiscal.PICMSEfet := mQuery.FieldByName('PICMSEFET').AsFloat;
         mCompraItemFiscal.VICMSEfet :=
           (mQuery.FieldByName('VICMSEFET').AsFloat / mCompraItemFiscal.QTDE);
         mCompraItemFiscal.PREDBCST := mQuery.FieldByName('PREDBCST').AsFloat;
         Result := mCompraItemFiscal;
      finally
         mQuery.Close;
      end;
   finally
      QueryLiberar(mQuery);
   end;
end;

function GetCNPJFabricante(aProduto: String): String;
Var
   mIDCompra: Integer;
   mIDFornec: Integer;
   mCodFabr: String;
   mCNPJFabr: String;
   mQuery: TFDQuery;
begin
   Result := '';
   QueryCriar(mQuery);
   try
      try
         mQuery.Close;
         mQuery.SQL.Clear;
         mQuery.SQL.Add
           (' SELECT FORNECEDOR, CODIGO_FABRICANTE FROM CAD_PRODUTOS ');
         mQuery.SQL.Add(' WHERE ');
         mQuery.SQL.Add(' CODIGO=:IDCODIGO  ');
         mQuery.ParamByName('IDCODIGO').AsString := aProduto;
         mQuery.Open;
         mIDFornec := mQuery.FieldByName('FORNECEDOR').AsInteger;
         mCodFabr := mQuery.FieldByName('CODIGO_FABRICANTE').AsString;
      finally
         mQuery.Close;
      end;
      mCNPJFabr := OnlyNumber(GetClienteCampo(mIDFornec, 'CPF_CNPJ'));
      Result := mCNPJFabr;
   finally
      QueryLiberar(mQuery);
   end;
end;

function GetCFOPCliente(ncliente: Integer): Integer;
Var
   mQuery: TFDQuery;
begin
   Result := 0;
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add(' SELECT CFOP from CAD_CLIENTES ');
      mQuery.SQL.Add('  where                         ');
      mQuery.SQL.Add('     CODIGO=:ID    ');
      mQuery.ParamByName('ID').AsInteger := ncliente;
      mQuery.Open;
      Result := mQuery.FieldByName('CFOP').AsInteger;
   finally
      QueryLiberar(mQuery);
   end;
end;

function GetCFOP(aCliente: Integer): Integer;
Var
   mQuery: TFDQuery;
   mCFOP: Integer;
begin
   Result := 0;
   mCFOP := GetCFOPCliente(aCliente);
   if mCFOP > 0 then
      exit(mCFOP);
   // Se ha CFOP no cadastro do cliente, retorne daqui com o CFOP indicado.
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add('SELECT UF FROM CAD_CLIENTES');
      mQuery.SQL.Add('WHERE');
      mQuery.SQL.Add('CODIGO=:ID');
      mQuery.ParamByName('ID').AsInteger := aCliente;
      mQuery.Open;
      if mQuery.IsEmpty = False then
      begin
         if (mQuery.FieldByName('UF').AsString = FParametros.Empresa.UF) then
            Result := FParametros.CFOP.VendaUFInterno
         else
            Result := FParametros.CFOP.VendaUFExterno;
      end;
   finally
      QueryLiberar(mQuery);
   end;
end;

function GetChecarMesmaUF(aCliente: Integer): Boolean;
Var
   mQuery: TFDQuery;
begin
   Result := True;
   // por padrao é True (empresa e cliente são da mesma UF(estado))
   if aCliente < 1 then
      exit;
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add('SELECT UF FROM CAD_CLIENTES');
      mQuery.SQL.Add('WHERE');
      mQuery.SQL.Add('CODIGO=:ID');
      mQuery.ParamByName('ID').AsInteger := aCliente;
      mQuery.Open;
      if mQuery.IsEmpty = False then
         Result := (mQuery.FieldByName('UF').AsString = FParametros.Empresa.UF);
   finally
      QueryLiberar(mQuery);
   end;
end;

function GetCFOPProduto(aProduto: Integer; aDentroEstado: Boolean): Integer;
Var
   mCFOP: Integer;
   mProduto: String;
   vCFOP: String;

begin
   Result := 0;
   mProduto := inttostr(aProduto);
   vCFOP := GetProdutoCampo(mProduto, 'CFOPDENTROESTADO');
   mCFOP := StrToIntDef(vCFOP, 0);
   // Por ser NFC-e ou SAT, a venda é presencial (dentro do estado).
   if mCFOP > 0 then
      exit(mCFOP);
   // Se ha CFOP no cadastro do produto, retorne daqui com o CFOP indicado.
   if aDentroEstado then
      Result := FParametros.CFOP.VendaUFInterno
      // cadastrado nas configurações do sistema
   else
      Result := FParametros.CFOP.VendaUFExterno;
   // cadastrado nas configurações do sistema
end;

function GetProdutoCampo(aProduto, aCampo: String): String;
var
   mIDProduto: Integer;
   mResultado: String;
   mQuery: TFDQuery;
begin
   Result := '';
   mIDProduto := 0;
   QueryCriar(mQuery);
   try
      mIDProduto := GetIDProduto(aProduto);
      mQuery.SQL.Clear;
      mQuery.SQL.Add(' SELECT * FROM CAD_PRODUTOS  ');
      mQuery.SQL.Add('  where ');
      mQuery.SQL.Add(' REFERENCIA=:CODREF ');
      mQuery.ParamByName('CODREF').AsString := aProduto;
      mQuery.Open;
      mResultado := Trim(mQuery.FieldByName(aCampo).AsString);
      if (mResultado = '') then
      // se procurar pela referencia não trouxe resultado, tentar pelo ID do produto
      begin
         if mIDProduto = 0 then
            mIDProduto := StrToIntDef(aProduto, 0);
         mQuery.Close;
         mQuery.SQL.Clear;
         mQuery.SQL.Add(' SELECT * FROM CAD_PRODUTOS  ');
         mQuery.SQL.Add('  where ');
         mQuery.SQL.Add(' CODIGO=:NUMCODIGO ');
         mQuery.ParamByName('NUMCODIGO').AsInteger := mIDProduto;;
         mQuery.Open;
         mResultado := Trim(mQuery.FieldByName(aCampo).AsString);
      end;
      Result := mResultado
   finally
      QueryLiberar(mQuery);
   end;
end;

function GetIDProduto(aProduto: String): Integer;
Var
   mQuery: TFDQuery;
begin
   Result := 0;
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add(' SELECT * FROM CAD_PRODUTOS  ');
      mQuery.SQL.Add('  where                         ');
      mQuery.SQL.Add('     REFERENCIA=:IDCODIGO    ');
      mQuery.ParamByName('IDCODIGO').AsString := aProduto;
      mQuery.Open;
      Result := mQuery.FieldByName('CODIGO').AsInteger;
      if (mQuery.FieldByName('CODIGO').AsString <>
        mQuery.FieldByName('REFERENCIA').AsString) then
      // para não coincidir que codigo sequencial ou referencia sejam os mesmos (pode acontecer isso, e nesse caso fica dificil o sistema saber qual é o certo).
      begin
         if mQuery.FieldByName('CODIGO').AsInteger > 0 then
            Result := mQuery.FieldByName('CODIGO').AsInteger;
      end;
   finally
      QueryLiberar(mQuery);
   end;
end;

procedure SQLExcluirCtaReceber(aIDVenda: Integer);
var
   mQuery: TFDQuery;
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
      mQuery.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
      mQuery.ParamByName('IDVENDA').AsInteger := aIDVenda;
      mQuery.ExecSQL;
      // --------------------------------------------------------------------
      // (ExecSQL)
      // --------------------------------------------------------------------
   finally
      QueryLiberar(mQuery);
   end;
end;

procedure GravarProdutoCaminhoFoto(const IDProduto: Integer;
  Const aCaminho: String);
Var
   mQuery: TFDQuery;
begin
   QueryCriar(mQuery);
   try
      mQuery.SQL.Clear;
      mQuery.SQL.Add(' DELETE FROM CAD_PRODUTOS_FOTOS ');
      mQuery.SQL.Add(' WHERE ');
      mQuery.SQL.Add(' CODIGO=:IDPRODUTO  ');
      mQuery.ParamByName('IDPRODUTO').AsInteger := IDProduto;
      mQuery.ExecSQL;

      mQuery.SQL.Clear;
      mQuery.SQL.Add
        (' INSERT INTO CAD_PRODUTOS_FOTOS (CODIGO, FOTO_PATH) VALUES (:CODIGO, :FOTO_PATH) ');
      mQuery.ParamByName('CODIGO').AsInteger := IDProduto;
      mQuery.ParamByName('FOTO_PATH').AsString := aCaminho;
      mQuery.ExecSQL;
   finally
      QueryLiberar(mQuery);
   end;
end;

procedure SQLExcluirVenda(aIDVenda: Integer);
var
   mQuery: TFDQuery;
begin
   if aIDVenda < 1 then
      exit;
   QueryCriar(mQuery);
   try
      mQuery.SQL.Add('DELETE FROM VENDAS');
      mQuery.SQL.Add('WHERE');
      mQuery.SQL.Add('CODIGO=:IDVENDA');
      mQuery.ParamByName('IDVENDA').AsInteger := aIDVenda;
      mQuery.ExecSQL;
      // --------------------------------------------------------------------
      // (ExecSQL)
      // --------------------------------------------------------------------
   finally
      QueryLiberar(mQuery);
   end;
end;

end.
