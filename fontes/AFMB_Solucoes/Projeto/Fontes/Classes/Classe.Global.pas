Unit Classe.Global;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
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
   FMailConfig: TEmail;
   FSistema: TSistema;
   FParametros: TParametros;
   FUsuario: TUsuario;
   FCriptografia: TCriptografia;
   FConexao: TFDConnection;
   FBancoDados: TBancoDados;
   FInfFile: TInfFile;

implementation

uses App.SQL;

procedure SetParametrosAtualizaDados;
begin
   GetParametros;
end;

Procedure CriarObjetos;
begin
   FConexao := TFDConnection.Create(Application);
   FParametros := TParametros.Create;
   FMailConfig := TEmail.Create;
   FSistema := TSistema.Create;
   FUsuario := TUsuario.Create;
   FCriptografia := TCriptografia.Create;
   FBancoDados := TBancoDados.Create;
   FInfFile := TInfFile.Create;
end;

procedure DestruirObjetos;
begin
   if FParametros <> Nil then
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
