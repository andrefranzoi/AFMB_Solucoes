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

unit AppGetConnect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Comp.Client,
  System.IniFiles,
  AppConstantes,
  ClasseCriptografia;

  procedure GravarINIFB;
  procedure GetConnectFirebird(aFDConnection: TFDConnection; aPadrao: Boolean = True);
  Function GetEmpresa : Integer;
  function GetTerminalPDV : Integer;
  procedure GetConfigBalanca;

const
  _INI_FB  = Concat(_DRIVE,PathDelim,_SISTEMA_NOME,PathDelim,PASTA_BINARIO,PathDelim,CONFIG_INI );

implementation

uses ClasseDados, FPrincipal;

procedure GravarINIFB;
var
  FIniConfiguracao : TIniFile;
begin
   try
     FIniConfiguracao := TIniFile.create(_INI_FB);
     FIniConfiguracao.WriteInteger('PARAMETROS', 'EMPRESA',      1 );
     FIniConfiguracao.WriteInteger('PARAMETROS', 'TerminalPDV',  1 );
     FIniConfiguracao.WriteString('PARAMETROS',  'Server',       _DATABASE_SERVIDOR);
     FIniConfiguracao.WriteString('PARAMETROS',  'Database',     LowerCase(_DATABASE_NOME) );
     FIniConfiguracao.WriteString('PARAMETROS',  'DBConfig',     LowerCase(_DATABASE_CONFIG_NOME) ); //Faz com que o Frente de Caixa tenha configurações independentes
   finally
     FIniConfiguracao.Free;
   end;
end;

procedure GetConnectFirebird(aFDConnection: TFDConnection; aPadrao: Boolean = True);
var
  mIniFile      : TIniFile;
  mServidor     : String;
  mBancoDados   : String;
  usuario       : String;
  mSenha        : String;
  mPorta        : Integer;
begin
   if (aFDConnection=nil) then
     raise Exception.Create('Objeto não aFDConnection instanciado.');
   try
     if not FileExists(_INI_FB) then
     begin
       GravarINIFB; // Força Criar um novo ".INI"
       sleep(1000); // esperar 1 segundo
     end;
     mIniFile := TIniFile.create(_INI_FB);
     if aPadrao then
       mBancoDados   := Trim(mIniFile.ReadString('PARAMETROS',    'Database',  _DATABASE_NOME))
     else
       mBancoDados   := Trim(mIniFile.ReadString('PARAMETROS',    'DBConfig',  _DATABASE_CONFIG_NOME));  //Faz com que o Frente de Caixa tenha configurações independentes
     mServidor     := Trim(mIniFile.ReadString('PARAMETROS',      'Server',    _DATABASE_SERVIDOR));
     usuario       := _DATABASE_USUARIO;
     mPorta        := _DATABASE_PORTA;
     mSenha        := _DATABASE_SENHA;
     aFDConnection.Params.Values['DriverID']  := _DATABASE_DRIVER;
     aFDConnection.Params.Values['Server']    := mServidor;
     aFDConnection.Params.Values['Database']  := mBancoDados;
     aFDConnection.Params.Values['User_Name'] := usuario;
     aFDConnection.Params.Values['Password']  := mSenha;
     aFDConnection.Params.Values['Port']      := mPorta.ToString;
   finally
     mIniFile.Free;
   end;
end;

function GetEmpresa : Integer;
var
  mIniFile      : TIniFile;
begin
   Result := -1;
   if not FileExists(_INI_FB) then
     exit;
   try
     mIniFile := TIniFile.create(_INI_FB);
     Result   := mIniFile.ReadInteger('PARAMETROS', 'Empresa',  1);
   finally
     mIniFile.Free;
   end;
end;

function GetTerminalPDV : Integer;
var
  mIniFile      : TIniFile;
begin
   Result := -1;
   if not FileExists(_INI_FB) then
     exit;
   try
     mIniFile := TIniFile.create(_INI_FB);
     Result   := mIniFile.ReadInteger('PARAMETROS', 'TerminalPDV',  1);
   finally
     mIniFile.Free;
   end;
end;

procedure GetConfigBalanca;
var
  mIniFile    : TIniFile;
  mModelo     : String;
  mPorta      : String;
  mMascara    : String;
  mTimeOut    : Integer;
  mVelocidade : Integer;
begin
   mIniFile := TIniFile.create(_LOCALINI);
   try
     FConfiguracao.BalancaModelo     := Trim(mIniFile.ReadString('BALANCA',  'Modelo', 'balNenhum'));
     FConfiguracao.BalancaPorta      := Trim(mIniFile.ReadString('BALANCA',  'Porta', 'COM1'));
     FConfiguracao.BalancaTimeOut    := mIniFile.ReadInteger('BALANCA', 'TimeOut', 2000);
     FConfiguracao.BalancaVelocidade := mIniFile.ReadInteger('BALANCA', 'Baudrate', 4800);
     FConfiguracao.BalancaMascara    := Trim(mIniFile.ReadString('BALANCA',  'MascaraBalanca', '2CCCC0TTTTTTDV'));
   finally
     mIniFile.Free;
   end;
end;


end.
