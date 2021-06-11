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

Unit Classe.Global;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.IniFiles, FireDAC.Comp.Client,
  Classe.Sistema,
  Classe.EMail,
  Classe.Parametros,
  Classe.Usuarios,
  Classe.Criptografia,
  Classe.BancoDados,
  App.IniFiles;

  Procedure CriarObjetos;
  Procedure DestruirObjetos;
  Procedure SetParametrosAtualizaDados;

Var
   FMailConfig     : TEmail;
   FSistema        : TSistema;
   FParametros     : TParametros;
   FUsuario        : TUsuario;
   FCriptografia   : TCriptografia;
   FConexao        : TFDConnection;
   FBancoDados     : TBancoDados;
   FInfFile        : TInfFile;

implementation

uses App.SQL;

procedure SetParametrosAtualizaDados;
begin
   GetParametros;
end;

Procedure CriarObjetos;
begin
   FConexao        := TFDConnection.Create(Application);
   FParametros     := TParametros.Create;
   FMailConfig     := TEmail.Create;
   FSistema        := TSistema.Create;
   FUsuario        := TUsuario.Create;
   FCriptografia   := TCriptografia.Create;
   FBancoDados     := TBancoDados.Create;
   FInfFile        := TInfFile.Create;
end;

procedure DestruirObjetos;
begin
   if FParametros<>Nil then
       FParametros.Free;
   if Assigned(FMailConfig) then
      FMailConfig.Free;
   if Assigned(FSistema) then
      FSistema.Free;
   if Assigned(FUsuario) then
      FUsuario.Free;
   if Assigned(FCriptografia) then
      FCriptografia.Free;
   if Assigned(FBancoDados) then
      FBancoDados.Free;
   if Assigned(FConexao) then
      FConexao.Free;
   if Assigned(FInfFile) then
      FInfFile.Free;
end;

end.
