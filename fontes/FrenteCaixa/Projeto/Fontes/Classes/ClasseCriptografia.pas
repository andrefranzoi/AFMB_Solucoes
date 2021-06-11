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

unit ClasseCriptografia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

Type
   TCriptografia = Class(TPersistent)
   Private
      class var FEncriptar  : WideString;
      class var FDecriptar  : WideString;
      class Procedure prcLimparVariaveis;
   Public
     class function  Encrypt(Encript: WideString): WideString;
     class function  Decrypt(Decript: WideString): WideString;
   end;

implementation

{ TCriptografia }

class procedure TCriptografia.prcLimparVariaveis;
begin
  FEncriptar  :='';
  FDecriptar  :='';
end;

class function TCriptografia.Decrypt(Decript: WideString): WideString;
var
   strEncriptar            : WideString;
   StrEncriptado           : WideString;
   intComprimento          : Integer;
   intContador             : Integer;
   intOrdinal              : Integer;
   strOrdinal              : WideString;
   intRestoDivisor         : Integer;
begin
   strEncriptar := Decript;
   StrEncriptado := '';
   intComprimento := Length(Decript);
   intRestoDivisor := Length(Decript) mod 2;
   For intContador := intComprimento downto 1 do
      StrEncriptado := StrEncriptado + Copy(strEncriptar, intContador, 1);
   strEncriptar := '';
   For intContador := 1 To intComprimento do
   begin
      strOrdinal := Copy(StrEncriptado, intContador, 1);
      intOrdinal := ord(strOrdinal[1]);
      if intRestoDivisor > 0 then
      begin
         if not(intContador / 2 = Int(intContador / 2)) then
            strEncriptar := strEncriptar + CHR(intOrdinal + 1)
         else
            strEncriptar := strEncriptar + CHR(intOrdinal - 1);
      end
      else
      begin
         if intContador / 2 = Int(intContador / 2) then
            strEncriptar := strEncriptar + CHR(intOrdinal + 1)
         else
            strEncriptar := strEncriptar + CHR(intOrdinal - 1);
      end;
   end;
   StrEncriptado := strEncriptar;
   Result := StrEncriptado;

   prcLimparVariaveis;
end;

class function TCriptografia.Encrypt(Encript: WideString): WideString;
var
   strEncriptar            : WideString;
   StrEncriptado           : WideString;
   intComprimento          : Integer;
   intContador             : Integer;
   intOrdinal              : Integer;
   strOrdinal              : WideString;
begin
   strEncriptar := Encript;
   StrEncriptado := '';
   intComprimento := Length(Encript);
   for intContador := intComprimento downto 1 do
      StrEncriptado := StrEncriptado + Copy(strEncriptar, intContador, 1);
   strEncriptar := '';
   For intContador := 1 To intComprimento do
   begin
      strOrdinal := Copy(StrEncriptado, intContador, 1);
      intOrdinal := ord(strOrdinal[1]);
      if intContador / 2 = Int(intContador / 2) then
         strEncriptar := strEncriptar + CHR(intOrdinal + 1)
      else
         strEncriptar := strEncriptar + CHR(intOrdinal - 1);
   end;
   StrEncriptado := strEncriptar;
   Result := StrEncriptado;

   prcLimparVariaveis;

end;

end.
