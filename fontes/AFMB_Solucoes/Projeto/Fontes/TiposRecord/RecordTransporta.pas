unit RecordTransporta;

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
  pcnConversaoNFe;

Type

  TTransporta = Record
    IDTransp      : NativeInt;
    CNPJCPF       : String;
    idEstrangeiro : String;
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
    ISUF          : String;
    IM            : String;
    email         : String;
    qVol          : NativeInt;
    pesoL         : Currency;
  private
    function GetSQLCNPJ(const sCNPJ: String): String;
  public
    procedure Limpar;
    procedure GetByID(Const aIDCliente: NativeInt);
    procedure GetByCNPJ(const sCNPJ: String);
  end;

implementation

uses FPrincipal;

{ TTransporta }
procedure TTransporta.GetByCNPJ(const sCNPJ: String);
Var
  mDataSet : TDataSet;
  mSQL : String;
  mCEP : NativeInt;
begin
  if sCNPJ = '' then
    exit;
  mSQL  := GetSQLCNPJ(sCNPJ);
  try
    FrmPrincipal.DBConexao.ExecSQL(mSQL, nil, mDataSet);
    if mDataSet.IsEmpty then
      Exit;
    Limpar();
    mCEP          := StrToIntDef(OnlyNumber(mDataSet.FieldByName('CEP').AsString),0);
    IDTransp      := mDataSet.FieldByName('CODIGO').AsInteger;
    CNPJCPF       := FormatarCNPJouCPF(sCNPJ);
    idEstrangeiro := '';
    xNome         := mDataSet.FieldByName('NOME').AsString;
    xLgr          := mDataSet.FieldByName('ENDERECO').AsString;
    nro           := mDataSet.FieldByName('NUMERO').AsString;
    xCpl          := mDataSet.FieldByName('COMPLEMENTO').AsString;
    xBairro       := mDataSet.FieldByName('BAIRRO').AsString;
    cMun          := mDataSet.FieldByName('IDCIDADE').AsInteger;
    xMun          := mDataSet.FieldByName('NOMECIDADE').AsString;
    cUF           := mDataSet.FieldByName('CODIGOUF').AsInteger;
    UF            := mDataSet.FieldByName('UF').AsString;
    CEP           := mCEP;
    cPais         := 1058;
    xPais         := 'BRASIL';
    fone          := OnlyNumber(mDataSet.FieldByName('DDD_FONE').AsString+mDataSet.FieldByName('FONE').AsString);
    indIEDest     := mDataSet.FieldByName('CONTRIBUINTEICMS').AsInteger;
    IE            := mDataSet.FieldByName('RG_IE').AsString;
    email         := mDataSet.FieldByName('EMAIL').AsString;
  finally
    mDataSet.Close;
    mDataSet.Free;
  end;
end;

procedure TTransporta.GetByID(const aIDCliente: NativeInt);
Var
  mDataSet : TDataSet;
  mSQL : String;
  mCEP : NativeInt;
  mCondicao : String;
begin
  if aIDCliente = 0 then
    exit;
  mSQL  := 'SELECT * FROM CAD_CLIENTES '+Format('WHERE CODIGO=%d', [aIDCliente]);
  try
    FrmPrincipal.DBConexao.ExecSQL(mSQL, nil, mDataSet);
    if mDataSet.IsEmpty then
      Exit;
    Limpar();
    mCEP          := StrToIntDef(OnlyNumber(mDataSet.FieldByName('CEP').AsString),0);
    IDTransp      := mDataSet.FieldByName('CODIGO').AsInteger;
    CNPJCPF       := mDataSet.FieldByName('CPF_CNPJ').AsString;
    idEstrangeiro := '';
    xNome         := mDataSet.FieldByName('NOME').AsString;
    xLgr          := mDataSet.FieldByName('ENDERECO').AsString;
    nro           := mDataSet.FieldByName('NUMERO').AsString;
    xCpl          := mDataSet.FieldByName('COMPLEMENTO').AsString;
    xBairro       := mDataSet.FieldByName('BAIRRO').AsString;
    cMun          := mDataSet.FieldByName('IDCIDADE').AsInteger;
    xMun          := mDataSet.FieldByName('NOMECIDADE').AsString;
    cUF           := mDataSet.FieldByName('CODIGOUF').AsInteger;
    UF            := mDataSet.FieldByName('UF').AsString;
    CEP           := mCEP;
    cPais         := 1058;
    xPais         := 'BRASIL';
    fone          := OnlyNumber(mDataSet.FieldByName('DDD_FONE').AsString+mDataSet.FieldByName('FONE').AsString);
    indIEDest     := mDataSet.FieldByName('CONTRIBUINTEICMS').AsInteger;
    IE            := mDataSet.FieldByName('RG_IE').AsString;
    email         := mDataSet.FieldByName('EMAIL').AsString;
  finally
    mDataSet.Close;
    mDataSet.Free;
  end;
end;

function TTransporta.GetSQLCNPJ(const sCNPJ: String): String;
var
  mDQuery  : TFDQuery;
  mDOC     : String;
  mSQL     : String;
begin
  Result := '';
  mDOC   := OnlyNumber(sCNPJ);
  mSQL   := Format(' SELECT CODIGO, CPF_CNPJ FROM CAD_CLIENTES WHERE replace(replace(replace(cpf_cnpj, ''.'', ''''), ''/'', ''''), ''-'', '''' )=%s ',[mDOC]);
  Result := mSQL;
end;

procedure TTransporta.Limpar;
begin
  IDTransp      := 0;
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
  qVol          := 0;
  pesoL         := 0;

end;

end.