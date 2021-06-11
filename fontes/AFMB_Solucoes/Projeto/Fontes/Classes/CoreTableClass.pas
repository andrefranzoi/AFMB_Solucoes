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

unit CoreTableClass;

interface

uses Winapi.Windows, Winapi.Messages, SysUtils, System.Variants, System.Classes,
   Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.IniFiles, FireDAC.Comp.Client,
   Data.DB;

Type
   TCoreTables = Class
   private
   public
      class procedure Abrir(aTabelas: TArray<TFDQuery>);
      class procedure Cancelar(aTabelas: TArray<TFDQuery>);
      class procedure Fechar(aTabelas: TArray<TFDQuery>);
      class procedure Gravar(aTabelas: TArray<TFDQuery>);
      Class function ExecSQL(mSQL: WideString): Boolean;
   End;

implementation

{ TCoreTables }
uses App.Constantes, Classe.Global;

class procedure TCoreTables.Abrir(aTabelas: TArray<TFDQuery>);
var
   I: Integer;
begin
   for I := Low(aTabelas) to High(aTabelas) do
   begin
      if Assigned(aTabelas[I].Connection) then
      begin
         aTabelas[I].Close;
         aTabelas[I].Open;
      end;
   end;
end;

class procedure TCoreTables.Fechar(aTabelas: TArray<TFDQuery>);
var
   I: Integer;
begin
   for I := Low(aTabelas) to High(aTabelas) do
   begin
      if Assigned(aTabelas[I].Connection) then
         aTabelas[I].Close;
   end;
end;

class procedure TCoreTables.Gravar(aTabelas: TArray<TFDQuery>);
var
   I: Integer;
begin
   // percorrer lista de tabelas
   for I := Low(aTabelas) to High(aTabelas) do
   begin
      // verificar se há conexão atribuida
      if Assigned(aTabelas[I].Connection) then
      Begin
         // verificar estado (se está em modo edição ou inserção)
         if (aTabelas[I].State in [dsedit, dsinsert]) then
         begin
            // Gravar
            aTabelas[I].Post;
         end;
      End;
   end;
end;

class procedure TCoreTables.Cancelar(aTabelas: TArray<TFDQuery>);
var
   I: Integer;
begin
   // percorrer lista de tabelas
   for I := Low(aTabelas) to High(aTabelas) do
   begin
      // verificar se há conexão atribuida
      if Assigned(aTabelas[I].Connection) then
      Begin
         // verificar estado (se está em modo edição ou inserção)
         if (aTabelas[I].State in [dsedit, dsinsert]) then
         begin
            // Gravar
            aTabelas[I].Cancel;
         end;
      End;
   end;
end;

class function TCoreTables.ExecSQL(mSQL: WideString): Boolean;
begin
   Result := False;
   try
      FConexao.Transaction.StartTransaction;
      FConexao.ExecSQL(mSQL);
      FConexao.Transaction.Commit;
      Result := True;
   except
      on E: EDatabaseError do
      begin
         FConexao.Transaction.Rollback;
      end;
   end;
end;

end.
