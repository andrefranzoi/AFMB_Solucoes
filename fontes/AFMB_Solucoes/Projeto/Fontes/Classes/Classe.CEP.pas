﻿{
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

unit Classe.CEP;

interface

uses System.Generics.Collections, Vcl.Graphics, System.SysUtils;

type
   TCEP = Class
   private
      { Private declarations }
      FCEP: String;
      FTipo: String;
      FEndereco: String;
      FNumero: String;
      FComplemento: String;
      FBairro: String;
      FIDCidade: Integer;
      FCidade: String;
      FIDUF: Integer;
      FUF: String;
   public
      { Public declarations }
      constructor Create;

      property CEP: String read FCEP Write FCEP;
      property Tipo: String read FTipo Write FTipo;
      property Endereco: String read FEndereco Write FEndereco;
      property Numero: String read FNumero Write FNumero;
      property Complemento: String read FComplemento Write FComplemento;
      property Bairro: String read FBairro write FBairro;
      property IDCidade: Integer read FIDCidade write FIDCidade;
      property Cidade: String read FCidade write FCidade;
      property IDUF: Integer read FIDUF write FIDUF;
      property UF: String read FUF write FUF;
   end;

implementation

{ TCEP }

constructor TCEP.Create;
begin
   FCEP := '';
   FEndereco := '';
   FNumero := '';
   FComplemento := '';
   FBairro := '';
   FIDCidade := 0;
   FCidade := '';
   FIDUF := 0;
   FUF := '';
end;

end.
