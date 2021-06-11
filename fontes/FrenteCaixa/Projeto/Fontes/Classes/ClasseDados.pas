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

unit ClasseDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections, Data.DB, FireDAC.Comp.Client,
  System.StrUtils,
  ACBrSATClass,
  ACBrValidador,
  pcnConversao;

Type

  //------------------------------------------------------------------------
  // Classe (tipo record) para configurações locais
  //------------------------------------------------------------------------
  TRConfiguracao = record
    Loja                 : Integer;
    TerminalPDV          : Integer;
    Operador             : Integer;
    HDDSerie             : String;
    CNPJ                 : String;
    IE                   : String;
    IM                   : String;
    CNAE                 : String;
    Telefone             : String;
    Site                 : String;
    Email                : String;
    OperadorNome         : String;
    NomeFantasia         : String;
    RazaoSocial          : String;
    Endereco             : String;
    Complemento          : String;
    Numero               : String;
    Bairro               : String;
    CidadeID             : Integer;
    Cidade               : String;
    CEP                  : Integer;
    UFID                 : Integer;
    UF                   : String;
    CFOP                 : Integer;
    AbrirGaveta          : Boolean;
    RegimeTributario     : Integer;
    ModeloEscPos         : String;
    PortaImpressora      : String;
    ColunasNormal        : Integer;
    ColunasCondensado    : Integer;
    NFECertArquivo       : String;
    NFECertSenha         : String;
    NFECertSerie         : String;
    NFEIdToken           : String;
    NFETokenCSC          : String;
    NFEAmbiente          : Integer;
    VersaoQRCode         : Integer;
    NFESSLTipo           : String;
    NFETSL_TIPO          : String;
    TIPO_IMPRESSAO       : String;
    RespTec_IDCSRT       : String;
    RespTec_CSRT         : String;
    RespTec_CNPJ         : String;
    RespTec_xContato     : String;
    RespTec_email        : String;
    RespTec_Fone         : String;
    PIS                  : Currency;
    COFINS               : Currency;
    BalancaModelo        : String;
    BalancaPorta         : String;
    BalancaTimeOut       : Integer;
    BalancaVelocidade    : Integer;
    BalancaMascara       : String;
    MFE_Chave            : String;
  end;


  //------------------------------------------------------------------------
  // Classe (tipo record) para identificação de cliente
  //------------------------------------------------------------------------
  TCartaoPagamento = record
    IDVenda          : Integer;
    IDCaixa          : Integer;
    IDOperador       : Integer;
    Data             : TDateTime;
    Hora             : TTime;
    IDBandeiraCartao : Integer;
    BandeiraNome     : String;
    BandeiraCartao   : TpcnBandeiraCartao;
    BandeiraCNPJ     : String;
    TipoPagto        : String;
    ValorTransacao   : Currency;
    Enviado          : String;
    Documento_NSU    : String;
    CodigoCartao     : String;
    Autorizacao      : String;
    DebitoCredito    : String;
    FormaPagamento   : TpcnFormaPagamento;
    EnviadaServidor  : String;
    TEF              : String;
    POS              : String;
    Conferido        : String;
  public
    procedure LimparCampos;
  end;

  TIBPTRecord = record
    NCM               : String;
    EXTIPI            : String;
    ALiquotaFederal   : Currency;
    AliquotaEstadual  : Currency;
    AliquotaMunicipal : Currency;
    procedure Limpar;
    procedure GetIBPT(const ANCM: String; AExTipi: String; const AOrigem: Integer);
  end;

  TClienteRecord = record
    IDCliente   : Integer;
    Documento   : String;
    Nome        : String;
    Endereco    : String;
    Numero      : String;
    Complemento : String;
    Referencia  : String;
    Bairro      : String;
    IDCidade    : Integer;
    Cidade      : String;
    Fone        : String;
    IDUF        : Integer;
    UF          : String;
    CEP         : Integer;
    IDPais      : Integer;
    Pais        : String;
    procedure Limpar;
    procedure GetCliente(Const aDocumento: String);
    procedure GetByID(Const aCliente: Integer);
  end;

  TProdutoRecord = record
    IDProduto   : Integer;
    CodProprio  : String;
    CodFabr     : String;
    Descricao   : String;
    Unidade     : String;
    GTIN        : String;
    VlrVenda    : Currency;
    NCM         : String;
    CEST	      : String;
    Origem      : Integer;
    CST_ICSM    : Integer;
    CSOSN       : Integer;
    ANP         : Integer;
    INDESCALA   : String;
    CST_IPI     : Integer;
    CST_PIS     : Integer;
    CST_COFINS  : Integer;
    ALIQ_ICMS   : Currency;
    ALIQ_IPI    : Currency;
    ALIQ_PIS    : Currency;
    ALIQ_COFINS : Currency;
    procedure Limpar;
    procedure GetProduto(const aCodProprio: String);
  end;


implementation

{ TCartaoPagamento }

uses FPrincipal, AppConstantes, AppFuncoes;

procedure TCartaoPagamento.LimparCampos;
begin
  IDVenda          := 0;
  IDCaixa          := 0;
  IDOperador       := 0;
  Data             := 0;
  Hora             := 0;
  IDBandeiraCartao := 0;
  BandeiraNome     := '';
  BandeiraCartao   := bcOutros;
  BandeiraCNPJ     := '';
  TipoPagto        := '';
  ValorTransacao   := 0;
  Enviado          := '';
  Documento_NSU    := '';
  CodigoCartao     := '';
  Autorizacao      := '';
  DebitoCredito    := '';
  FormaPagamento   := fpOutro;
  EnviadaServidor  := '';
  TEF              := '';
  POS              := '';
  Conferido        := '';
end;

{ TIBPTRecord }

procedure TIBPTRecord.Limpar;
begin
  NCM               := EmptyStr;
  EXTIPI            := EmptyStr;
  ALiquotaFederal   := 0.00;
  AliquotaEstadual  := 0.00;
  AliquotaMunicipal := 0.00;
end;

procedure TIBPTRecord.GetIBPT(const ANCM: String; AExTipi: String; const AOrigem: Integer);
Var
  mDataSet : TDataSet;
  mSQL : String;
begin
  mSQL  := 'SELECT * FROM CAD_IBPT '+Format('WHERE CAD_IBPT.ID = %s AND CAD_IBPT.EXTIPI = %s', [QuotedStr(ANCM), QuotedStr(AExTipi)]);
  try
    FrmPrincipal.ConnectFirebird.ExecSQL(mSQL, nil, mDataSet);
    if mDataSet.IsEmpty then
      exit;
    NCM               := mDataSet.FieldByName('ID').AsString.Trim;
    EXTIPI            := mDataSet.FieldByName('EXTIPI').AsString.Trim;
    AliquotaEstadual  := mDataSet.FieldByName('ALIQ_ESTADUAL').AsFloat;
    AliquotaMunicipal := mDataSet.FieldByName('ALIQ_MUNICIPAL').AsFloat;

    if AOrigem in [0,3,4,5] then
      ALiquotaFederal := mDataSet.FieldByName('ALIQ_NACIONAL').AsFloat
    else
      ALiquotaFederal := mDataSet.FieldByName('ALIQ_IMPORTADO').AsFloat;

  finally
    mDataSet.Close;
    mDataSet.Free;
  end;
end;

{ TClienteRecord }

procedure TClienteRecord.Limpar;
begin
  IDCliente   := 0;
  Documento   := '';
  Nome        := '';
  Endereco    := '';
  Numero      := '';
  Complemento := '';
  Referencia  := '';
  Bairro      := '';
  IDCidade    := 0;
  Cidade      := '';
  Fone        := '';
  UF          := '';
  CEP         := 0;
  IDPais      := 1058;
  Pais        := 'BRASIL';
end;

procedure TClienteRecord.GetByID(const aCliente: Integer);
Var
  mDataSet : TDataSet;
  mSQL : String;
  mCEP : Integer;
  mCondicao : String;
begin
  Limpar();
  if aCliente < 0 then
    exit;
  mSQL  := 'SELECT * FROM CAD_CLIENTES WHERE '+Format(' CODIGO=%d ', [aCliente]);
  try
    FrmPrincipal.ConnectFirebird.ExecSQL(mSQL, nil, mDataSet);
    if mDataSet.IsEmpty =  False then
    begin
      mCEP := StrToIntDef(SoNumero(mDataSet.FieldByName('CEP').AsString.Trim),0);
      IDCliente   := mDataSet.FieldByName('CODIGO').AsInteger;
      Nome        := mDataSet.FieldByName('NOME').AsString.Trim;
      Endereco    := mDataSet.FieldByName('ENDERECO').AsString.Trim;
      Numero      := mDataSet.FieldByName('NUMERO').AsString.Trim;
      Complemento := mDataSet.FieldByName('COMPLEMENTO').AsString.Trim;
      Referencia  := mDataSet.FieldByName('REFERENCIA').AsString.Trim;
      Bairro      := mDataSet.FieldByName('BAIRRO').AsString.Trim;
      IDCidade    := mDataSet.FieldByName('IDCIDADE').AsInteger;
      Cidade      := mDataSet.FieldByName('NOMECIDADE').AsString.Trim;
      Fone        := SoNumero(mDataSet.FieldByName('DDD_FONE').AsString.Trim+mDataSet.FieldByName('FONE').AsString.Trim);
      IDUF        := mDataSet.FieldByName('CODIGOUF').AsInteger;
      UF          := mDataSet.FieldByName('UF').AsString.Trim;
      CEP         := mCEP;
    end;
  finally
    mDataSet.Close;
    mDataSet.Free;
  end;
end;

procedure TClienteRecord.GetCliente(const aDocumento: String);
Var
  mDataSet : TDataSet;
  mSQL : String;
  mCEP : Integer;
  mCondicao : String;
begin
  Limpar();
  if aDocumento = '' then
    exit;
  Documento   := aDocumento;
  mSQL  := 'SELECT * FROM CAD_CLIENTES '+Format('WHERE ((CAD_CLIENTES.CPF_CNPJ = %s) or (CAD_CLIENTES.CPF_CNPJ = %s))', [QuotedStr(aDocumento.Trim), QuotedStr(FormatarCNPJouCPF(aDocumento.Trim)) ]);
  try
    FrmPrincipal.ConnectFirebird.ExecSQL(mSQL, nil, mDataSet);
    if mDataSet.IsEmpty =  False then
    begin
      mCEP := StrToIntDef(SoNumero(mDataSet.FieldByName('CEP').AsString.Trim),0);
      Documento   := aDocumento;
      IDCliente   := mDataSet.FieldByName('CODIGO').AsInteger;
      Nome        := mDataSet.FieldByName('NOME').AsString.Trim;
      Endereco    := mDataSet.FieldByName('ENDERECO').AsString.Trim;
      Numero      := mDataSet.FieldByName('NUMERO').AsString.Trim;
      Complemento := mDataSet.FieldByName('COMPLEMENTO').AsString.Trim;
      Referencia  := mDataSet.FieldByName('REFERENCIA').AsString.Trim;
      Bairro      := mDataSet.FieldByName('BAIRRO').AsString.Trim;
      IDCidade    := mDataSet.FieldByName('IDCIDADE').AsInteger;
      Cidade      := mDataSet.FieldByName('NOMECIDADE').AsString.Trim;
      Fone        := SoNumero(mDataSet.FieldByName('DDD_FONE').AsString.Trim+mDataSet.FieldByName('FONE').AsString.Trim);
      IDUF        := mDataSet.FieldByName('CODIGOUF').AsInteger;
      UF          := mDataSet.FieldByName('UF').AsString.Trim;
      CEP         := mCEP;
    end;
  finally
    mDataSet.Close;
    mDataSet.Free;
  end;
end;

{ TProdutoRecord }

procedure TProdutoRecord.GetProduto(const aCodProprio: String);
Var
  mDataSet : TDataSet;
  mSQL : String;
  mCEP : Integer;
  mCondicao : String;
begin
  Limpar();
  if aCodProprio = '' then
    exit;
  mSQL  := 'SELECT * FROM CAD_PRODUTOS '+Format(' WHERE REFERENCIA=:%s', [QuotedStr(aCodProprio.Trim)]);
  try
    FrmPrincipal.ConnectFirebird.ExecSQL(mSQL, nil, mDataSet);
    if mDataSet.IsEmpty =  False then
    begin
      IDProduto   := mDataSet.FieldByName('CODIGO').AsInteger;;
      CodProprio  := aCodProprio;
      CodFabr     := mDataSet.FieldByName('REFERENCIA').AsString;
      Descricao   := mDataSet.FieldByName('DESCRICAO').AsString;
      Unidade     := mDataSet.FieldByName('UNIDADE').AsString;
      GTIN        := mDataSet.FieldByName('CODIGO_BARRA').AsString;
      VlrVenda    := mDataSet.FieldByName('PRC_VENDA').AsFloat;
      NCM         := mDataSet.FieldByName('IDNCM').AsString;
      CEST	      := mDataSet.FieldByName('IDCEST').AsString;
      Origem      := mDataSet.FieldByName('IDCSTORIGEM').AsInteger;
      CST_ICSM    := mDataSet.FieldByName('IDCSTICMS').AsInteger;
      CSOSN       := mDataSet.FieldByName('IDCSOSNICMS').AsInteger;
      ANP         := mDataSet.FieldByName('IDANP').AsInteger;
      INDESCALA   := mDataSet.FieldByName('INDESCALA').AsString;
      CST_IPI     := mDataSet.FieldByName('IDCSTIPI').AsInteger;
      CST_PIS     := mDataSet.FieldByName('IDCSTPIS').AsInteger;
      CST_COFINS  := mDataSet.FieldByName('IDCSTCOFINS').AsInteger;
      ALIQ_ICMS   := mDataSet.FieldByName('ICMS').AsFloat;
      ALIQ_IPI    := mDataSet.FieldByName('IPI').AsFloat;
      ALIQ_PIS    := mDataSet.FieldByName('PIS').AsFloat;
      ALIQ_COFINS := mDataSet.FieldByName('COFINS').AsFloat;
    end;
  finally
    mDataSet.Close;
    mDataSet.Free;
  end;
end;

procedure TProdutoRecord.Limpar;
begin
  IDProduto   := 0;
  CodProprio  := '';
  CodFabr     := '';
  Descricao   := '';
  Unidade     := '';
  GTIN        := '';
  VlrVenda    := 0;
  NCM         := '';
  CEST	      := '';
  Origem      := 0;
  CST_ICSM    := 0;
  CSOSN       := 0;
  ANP         := 0;
  INDESCALA   := '';
  CST_IPI     := 0;
  CST_PIS     := 0;
  CST_COFINS  := 0;
  ALIQ_ICMS   := 0;
  ALIQ_IPI    := 0;
  ALIQ_PIS    := 0;
  ALIQ_COFINS := 0;
end;


{ TRConfiguracao }

end.
