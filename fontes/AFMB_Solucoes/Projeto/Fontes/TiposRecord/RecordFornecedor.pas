unit RecordFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections, Data.DB, FireDAC.Comp.Client,
  System.StrUtils, System.Diagnostics,  System.ZLib, System.TypInfo,
  ACBrUtil,
  ACBrSATClass,
  ACBrValidador,
  pcnConversao,
  pcnNFe,
  pcnConversaoNFe,
  RecordTransporta;

Type

  TFornecedorRecord = Record
    IDFornec      : NativeInt;
    CNPJCPF       : String;  // CNPJ do destinatário
    idEstrangeiro : String;  // Identificação do destinatário no caso de comprador estrangeiro
    xNome         : String;
    xLgr          : String;
    nro           : String;
    xCpl          : String;
    xBairro       : String;
    cMun          : NativeInt;
    xMun          : String;
    cUF           : NativeInt;
    UF            : String;
    CEP           : NativeInt;
    cPais         : NativeInt;
    xPais         : String;
    fone          : String;
    indIEDest     : NativeInt;
    IE            : String;
    ISUF          : String;  // Inscrição na SUFRAMA
    IM            : String;
    email         : String;
    Transporta    : TTransporta;
  private
    function GetSQLCNPJ(const sCNPJ: String): String;
  public
    procedure Limpar;
    procedure GetByID(Const aIDFornecedor: NativeInt);
    procedure GetByCNPJ(const sCNPJ: String);
  end;

implementation

uses FPrincipal;

{ TCliente }
procedure TFornecedorRecord.GetByCNPJ(const sCNPJ: String);
Var
  mDataSet : TDataSet;
  mSQL : String;
  mCEP : NativeInt;
begin
  if sCNPJ = '' then
    exit;
  mSQL  := GetSQLCNPJ(sCNPJ);
  Limpar();
  try
    FrmPrincipal.DBConexao.ExecSQL(mSQL, nil, mDataSet);
    if mDataSet.IsEmpty then
      Exit;

    IDFornec      := mDataSet.FieldByName('CODIGO').AsInteger;
    CNPJCPF       := FormatarCNPJouCPF(sCNPJ);
    mCEP          := StrToIntDef(OnlyNumber(mDataSet.FieldByName('CEP').AsString),0);
    idEstrangeiro := '';
    xNome         := mDataSet.FieldByName('NOME').AsString;;
    xLgr          := mDataSet.FieldByName('ENDERECO').AsString;
    nro           := mDataSet.FieldByName('NUMERO').AsString;
    xCpl          := mDataSet.FieldByName('COMPLEMENTO').AsString;
    xBairro       := mDataSet.FieldByName('BAIRRO').AsString;;
    cMun          := mDataSet.FieldByName('IDCIDADE').AsInteger;
    xMun          := mDataSet.FieldByName('NOMECIDADE').AsString;
    cUF           := mDataSet.FieldByName('CODIGOUF').AsInteger;
    UF            := mDataSet.FieldByName('UF').AsString;
    CEP           := mCEP;
    cPais         := 1058;
    xPais         := 'BRASIL';
    fone          := OnlyNumber(mDataSet.FieldByName('DDD_FONE').AsString+mDataSet.FieldByName('FONE').AsString);
    IE            := mDataSet.FieldByName('RG_IE').AsString;;
    email         := mDataSet.FieldByName('EMAIL').AsString;
  finally
    mDataSet.Close;
    mDataSet.Free;
  end;
end;

procedure TFornecedorRecord.GetByID(const aIDFornecedor: NativeInt);
Var
  mDataSet : TDataSet;
  mSQL : String;
  mCEP : NativeInt;
begin
  if aIDFornecedor = 0 then
    exit;
  mSQL  := 'SELECT * FROM CAD_CLIENTES '+Format('WHERE CODIGO=%d', [aIDFornecedor]);
  Limpar();
  try
    FrmPrincipal.DBConexao.ExecSQL(mSQL, nil, mDataSet);
    if mDataSet.IsEmpty then
      Exit;
    mCEP          := StrToIntDef(OnlyNumber(mDataSet.FieldByName('CEP').AsString),0);
    IDFornec      := mDataSet.FieldByName('CODIGO').AsInteger;
    CNPJCPF       := FormatarCNPJouCPF(mDataSet.FieldByName('CPF_CNPJ').AsString);
    idEstrangeiro := '';
    xNome         := mDataSet.FieldByName('NOME').AsString;;
    xLgr          := mDataSet.FieldByName('ENDERECO').AsString;
    nro           := mDataSet.FieldByName('NUMERO').AsString;
    xCpl          := mDataSet.FieldByName('COMPLEMENTO').AsString;
    xBairro       := mDataSet.FieldByName('BAIRRO').AsString;;
    cMun          := mDataSet.FieldByName('IDCIDADE').AsInteger;
    xMun          := mDataSet.FieldByName('NOMECIDADE').AsString;
    cUF           := mDataSet.FieldByName('CODIGOUF').AsInteger;
    UF            := mDataSet.FieldByName('UF').AsString;
    CEP           := mCEP;
    cPais         := 1058;
    xPais         := 'BRASIL';
    fone          := OnlyNumber(mDataSet.FieldByName('DDD_FONE').AsString+mDataSet.FieldByName('FONE').AsString);
    IE            := mDataSet.FieldByName('RG_IE').AsString;;
    //ISUF        := mDataSet.FieldByName('SUFRAMA').AsString;
    //IM          := mDataSet.FieldByName('IM').AsString;
    email         := mDataSet.FieldByName('EMAIL').AsString;
  finally
    mDataSet.Close;
    mDataSet.Free;
  end;
end;

procedure TFornecedorRecord.Limpar;
begin
  IDFornec      := 0;
  CNPJCPF       := '';
  idEstrangeiro := '';
  xNome         := '';
  xLgr          := '';
  nro           := '';
  xCpl          := '';
  xBairro       := '';
  cMun          := 0;
  xMun          := '';
  cUF           := 0;
  UF            := '';
  CEP           := 0;
  cPais         := 1058;
  xPais         := 'BRASIL';
  fone          := '';
  indIEDest     := 0;
  IE            := '';
  ISUF          := '';
  IM            := '';
  email         := '';
  Transporta.Limpar();
end;

function TFornecedorRecord.GetSQLCNPJ(const sCNPJ: String): String;
var
  mDQuery  : TFDQuery;
  mSQL     : String;
  mDOC     : String;
begin
  Result := '';
  mDOC   := OnlyNumber(sCNPJ);
  mSQL   := Format(' SELECT * FROM CAD_CLIENTES WHERE replace(replace(replace(cpf_cnpj, ''.'', ''''), ''/'', ''''), ''-'', '''' )=%s ',[QuotedStr(mDOC)]);
  Result := mSQL;
end;

end.
