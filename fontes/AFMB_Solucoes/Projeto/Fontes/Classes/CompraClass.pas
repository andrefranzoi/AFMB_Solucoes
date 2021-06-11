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

unit CompraClass;

interface

uses
  System.Generics.Collections;

type
  TCompraItemFiscal = Class
  private
    { Private declarations }
    FID               : Integer;
    FCodFabricante    : String;
    FDescricao        : String;
    FQTDE              : Currency;
    FPICMS            : Currency;
    FVICMS            : Currency;
    FPREDBCST         : Currency;
    FVBCST            : Currency;
    FPICMSST          : Currency;
    FVICMSST          : Currency;
    FPST              : Currency;
    FVBCSTRet         : Currency;
    FVICMSSTRet       : Currency;
    FVICMSSubstituto  : Currency;
    FPREDBCEfet       : Currency;
    FVBCEfet          : Currency;
    FPICMSEfet        : Currency;
    FVICMSEfet        : Currency;

  public
    { Public declarations }
    constructor Create;

    property ID               : Integer     read FID                write FID;
    property CodFabricante    : String      read FCodFabricante     write FCodFabricante;
    property Descricao        : String      read FDescricao         write FDescricao;
    property QTDE             : Currency    read FQTDE              write FQTDE;
    property PICMS            : Currency    read FPICMS             write FPICMS;
    property VICMS            : Currency    read FVICMS             write FVICMS;
    property PREDBCST         : Currency    read FPREDBCST          write FPREDBCST;
    property VBCST            : Currency    read FVBCST             write FVBCST;
    property PICMSST          : Currency    read FPICMSST           write FPICMSST;
    property VICMSST          : Currency    read FVICMSST           write FVICMSST;
    property PST              : Currency    read FPST               write FPST;
    property VBCSTRet         : Currency    read FVBCSTRet          write FVBCSTRet;
    property VICMSSTRet       : Currency    read FVICMSSTRet        write FVICMSSTRet;
    property VICMSSubstituto  : Currency    read FVICMSSubstituto   write FVICMSSubstituto;
    property PREDBCEfet       : Currency    read FPREDBCEfet        write FPREDBCEfet;
    property VBCEfet          : Currency    read FVBCEfet           write FVBCEfet;
    property PICMSEfet        : Currency    read FPICMSEfet         write FPICMSEfet;
    property VICMSEfet        : Currency    read FVICMSEfet         write FVICMSEfet;
  end;

implementation

{ TCompraItemFiscal }

constructor TCompraItemFiscal.Create;
begin
  FID               := 0;
  FCodFabricante    := '';
  FDescricao        := '';
  FQTDE             := 0;
  FPICMS            := 0;
  FVICMS            := 0;
  FPREDBCST         := 0;
  FVBCST            := 0;
  FPICMSST          := 0;
  FVICMSST          := 0;
  FPST              := 0;
  FVBCSTRet         := 0;
  FVICMSSTRet       := 0;
  FVICMSSubstituto  := 0;
  FPREDBCEfet       := 0;
  FVBCEfet          := 0;
  FPICMSEfet        := 0;
  FVICMSEfet        := 0;
end;

end.

