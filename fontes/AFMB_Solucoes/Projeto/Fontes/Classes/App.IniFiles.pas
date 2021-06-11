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

unit App.IniFiles;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.IniFiles;

Type
   TInfFile = Class
   Private
      FIniConfiguracao: TIniFile;
   Public
      procedure CarregarINI;
      procedure GravarINI;
      function LerCaminhoFDB: String;
      function LerItemINI(strSessao, strChave: String;
        ValueDefault: Variant): Variant;
      procedure GravarItemINI(strSessao, strChave: String;
        ValueDefault: Variant);

   End;

implementation

uses Classe.Global, App.Constantes;

procedure TInfFile.CarregarINI;
begin
   try
      FIniConfiguracao := TIniFile.create(FSistema.ArquivoCFG);
      FBancoDados.BancoDados := FIniConfiguracao.ReadString('PARAMETROS',
        'Database', _BANCODADOS_PADRAO);
      FBancoDados.Endereco := FIniConfiguracao.ReadString('PARAMETROS',
        'Server', _DATABASE_SERVIDOR);
      FBancoDados.Porta := FIniConfiguracao.ReadInteger('PARAMETROS', 'porta',
        _DATABASE_PORTA);
      FBancoDados.Usuario := _DATABASE_USUARIO;
      FBancoDados.Senha := _DATABASE_SENHA;
   finally
      FIniConfiguracao.Free;
   end;
end;

procedure TInfFile.GravarINI;
begin
   try
      FIniConfiguracao := TIniFile.create(FSistema.ArquivoCFG);
      FIniConfiguracao.WriteInteger('PARAMETROS', 'EMPRESA', 1);
      FIniConfiguracao.WriteString('PARAMETROS', 'Server',
        FBancoDados.Endereco);
      FIniConfiguracao.WriteString('PARAMETROS', 'Database',
        LowerCase(FBancoDados.BancoDados));
   finally
      FIniConfiguracao.Free;
   end;
end;

function TInfFile.LerItemINI(strSessao, strChave: String;
  ValueDefault: Variant): Variant;
begin
   try
      FIniConfiguracao := TIniFile.create(FSistema.ArquivoCFG);
      Result := FIniConfiguracao.ReadInteger(strSessao, strChave, ValueDefault);
   finally
      FIniConfiguracao.Free;
   end;
end;

function TInfFile.LerCaminhoFDB: String;
begin
   Result := '';
   try
      FIniConfiguracao := TIniFile.create(FSistema.ArquivoCFG);
      Result := FIniConfiguracao.ReadString('PARAMETROS', 'Database',
        _BANCODADOS_PADRAO);
   finally
      FIniConfiguracao.Free;
   end;
end;

procedure TInfFile.GravarItemINI(strSessao, strChave: String;
  ValueDefault: Variant);
begin
   try
      FIniConfiguracao := TIniFile.create(FSistema.ArquivoCFG);
      FIniConfiguracao.WriteInteger(strSessao, strChave, ValueDefault);
   finally
      FIniConfiguracao.Free;
   end;
end;

end.
