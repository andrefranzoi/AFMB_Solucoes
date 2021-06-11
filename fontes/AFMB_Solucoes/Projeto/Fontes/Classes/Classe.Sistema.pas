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

Unit Classe.Sistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, App.Constantes,
  Data.DB,  Global;

type

   { TVarSystem }
   TSistema = Class(TPersistent)
   private
     { Private declarations }
     FEmpresa                     : Integer;
     FPastaDrive                  : WideString;
     FPastaPadrao                 : WideString;
     FPastaBinarios               : WideString;
     FArquivoCFG                  : String;
     FExeName                     : String;
     FPathPrograma                : WideString;

     function  GetExeName         : String;
     function  GetPastaBinarios   : WideString;
     function  GetPastaDrive      : WideString;
     function  GetPastaPadrao     : WideString;
     procedure SetExeName(const Value: String);
     procedure SetPastaBinarios(const Value: WideString);
     procedure SetPastaDrive(const Value: WideString);
     procedure SetPastaPadrao(const Value: WideString);
    function GetEmpresa: Integer;
    procedure SetEmpresa(const Value: Integer);
    function  GetPathPrograma: WideString;
   public
      { Public declarations }
      constructor Create;
      Procedure   Clear;
      Function ChecarLicencaUso : Boolean;



      property Empresa            : Integer             Read GetEmpresa        Write SetEmpresa;
      property PastaDrive         : WideString          read GetPastaDrive     write SetPastaDrive;
      property PastaPadrao        : WideString          read GetPastaPadrao    write SetPastaPadrao;
      property PastaBinarios      : WideString          read GetPastaBinarios  write SetPastaBinarios;
      property ArquivoCFG         : String              read FArquivoCFG       write FArquivoCFG;
      property ExeName            : String              read GetExeName        write SetExeName;
      property PathPrograma       : WideString          read GetPathPrograma   write FPathPrograma;

   end;


implementation

{ TVarSystem }

uses App.SQL, Biblioteca;

constructor TSistema.Create;
begin
  FPastaDrive      :='';
  FPastaPadrao     :='';
  FPastaBinarios   :='';
  FArquivoCFG      :='';
  FExeName         :='';

  FPastaPadrao    := Concat(_DRIVE,PathDelim,_SISTEMA_NOME,PathDelim);
  FPastaBinarios  := Concat(PASTA_BINARIO,PathDelim);
  FArquivoCFG     := Concat(_DRIVE,PathDelim,_SISTEMA_NOME,PathDelim,PASTA_BINARIO,PathDelim,CONFIG_INI );

end;

procedure TSistema.Clear;
begin
  FPastaDrive      :='';
  FPastaPadrao     :='';
  FPastaBinarios   :='';
  FArquivoCFG      :='';
  FExeName         :='';
end;

function TSistema.GetEmpresa: Integer;
begin
   if (FEmpresa>0) then
      Result := FEmpresa
   else
      Result := 1;
end;

function TSistema.GetExeName: String;
begin
 Result  := FExeName;
end;

function TSistema.GetPastaBinarios: WideString;
begin
 Result  := FPastaBinarios;
end;

function TSistema.GetPastaDrive: WideString;
begin
 Result  := FPastaDrive;
end;

function TSistema.GetPastaPadrao: WideString;
begin
 Result  := FPastaPadrao;
end;

function TSistema.GetPathPrograma: WideString;
begin
  Result := pchar(GetCurrentDir);
end;

procedure TSistema.SetEmpresa(const Value: Integer);
begin
   if (Value>0) then
      FEmpresa := Value
   else
      FEmpresa := 1;
end;

procedure TSistema.SetExeName(const Value: String);
begin
  FExeName :=Value;
end;

procedure TSistema.SetPastaBinarios(const Value: WideString);
begin
  FPastaBinarios :=Value;
end;

procedure TSistema.SetPastaDrive(const Value: WideString);
begin
  FPastaDrive :=Value;
end;

procedure TSistema.SetPastaPadrao(const Value: WideString);
begin
  FPastaPadrao :=Value;
end;

Function TSistema.ChecarLicencaUso : Boolean;
Var
 mDias: Extended;
begin
  Result := False;
  mDias:=0;
  mDias:=GetTempoLicenca();
  Result := mDias<1; // Retorna True, se prazo for menor que 1 (zero dia).
end;

end.



