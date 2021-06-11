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

unit Classe.GetConnect;

interface

uses
   Forms, Classes, Windows, Controls, Variants, ComCtrls,
   WinTypes, WinProcs, Tabs, ExtCtrls, DBCtrls,
   Dialogs, StdCtrls, Messages, Graphics, shellapi, Sysutils,
   FMTBcd, WideStrings, DBCommon, System.DateUtils,
   System.StrUtils, System.Types,
   FireDAC.Comp.Client, System.IniFiles,
   Data.DB,
   App.Constantes,
   Classe.Criptografia;

procedure GravarINIFB;
procedure GetConfigFB(aFDConnection: TFDConnection;
  aLocalDados: TLocalDados = ldPadrao);

const
   _INI_FB = Concat(_DRIVE, PathDelim, _SISTEMA_NOME, PathDelim, PASTA_BINARIO,
     PathDelim, CONFIG_INI);

implementation

procedure GravarINIFB;
var
   FIniConfiguracao: TIniFile;
begin
   try
      FIniConfiguracao := TIniFile.create(_INI_FB);
      FIniConfiguracao.WriteString('PARAMETROS', 'Database',
        _BANCODADOS_PADRAO);
      FIniConfiguracao.WriteString('PARAMETROS', 'DBConfig', _BANCODADOS_PDV);
      FIniConfiguracao.WriteString('PARAMETROS', 'DBCEP', _BANCODADOS_CEP);
      FIniConfiguracao.WriteString('PARAMETROS', 'Server', _DATABASE_SERVIDOR);
   finally
      FIniConfiguracao.Free;
   end;
end;

procedure GetConfigFB(aFDConnection: TFDConnection;
  aLocalDados: TLocalDados = ldPadrao);
var
   mIniFile: TIniFile;
   mServidor: String;
   mBancoDados: String;
   usuario: String;
   mSenha: String;
   mPorta: Integer;
begin
   if (aFDConnection = nil) then
      raise Exception.create('Objeto aFDConnection não instanciado.');
   try
      if not FileExists(_INI_FB) then
      begin
         GravarINIFB; // Força Criar um novo ".INI"
         sleep(1000); // esperar 1 segundo
      end;
      mIniFile := TIniFile.create(_INI_FB);
      case aLocalDados of
         ldPadrao:
            mBancoDados := Trim(mIniFile.ReadString('PARAMETROS', 'Database',
              _BANCODADOS_PADRAO));
         ldCEP:
            mBancoDados := Trim(mIniFile.ReadString('PARAMETROS', 'DBCEP',
              _BANCODADOS_CEP));
      end;
      mServidor := Trim(mIniFile.ReadString('PARAMETROS', 'Server',
        _DATABASE_SERVIDOR));
      mPorta := mIniFile.ReadInteger('PARAMETROS', 'porta', 3050);
      usuario := _DATABASE_USUARIO;
      mSenha := _DATABASE_SENHA;
      aFDConnection.Params.Values['DriverID'] := _DATABASE_DRIVER;
      aFDConnection.Params.Values['Server'] := mServidor;
      aFDConnection.Params.Values['Database'] := mBancoDados;
      aFDConnection.Params.Values['User_Name'] := usuario;
      aFDConnection.Params.Values['Password'] := mSenha;
      aFDConnection.Params.Values['Port'] := '';
      if mPorta > 0 then
         aFDConnection.Params.Values['Port'] := mPorta.ToString;
   finally
      mIniFile.Free;
   end;
end;

end.
