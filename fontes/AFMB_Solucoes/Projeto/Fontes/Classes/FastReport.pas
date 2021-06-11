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
  xx Alguns sem qualquer �tica profissional ou moral, tem comercializado esses fontes  xx
  xx sem minha autoriza��o. Pelas leis brasileiras de direitos autorais, ISSO � CRIME. xx
  xx                                                                                   xx
  xx***********************************************************************************xx
  xx                                                                                   xx
  xx Eu Adriano Zanini, sou autor/desenvolvedor. Se alguem te vendeu esses fontes      xx
  xx sem minha autoriza��o, voc� comprou um codigo-fonte pirata (n�o autorizo vender). xx
  xx                                                                                   xx
  xx***********************************************************************************xx
  xx                                                                                   xx
  xx Sou autor dos sitemas "VestisPCP", "IndPCP" e "DBVenda". Os fontes do "VestisPCP" xx
  xx est�o l� no GitHub.                                                               xx
  xx Link no GitHub: https://github.com/ZaniniAdriano/VestisPCP                        xx
  xx                                                                                   xx
  xx***********************************************************************************xx
  xx  COMERCIALIZE SOMENTE O SISTEMA COMPILADO (COM O NOME/INTERFACE QUE DESEJAR).     xx
  xx  MUDE O QUE DESEJAR, CUSTOMIZE COMO QUISER. INCLUSIVE O NOME DO SISTEMA/PROJETO.  xx
  xx                                                                                   xx
  xx***********************************************************************************xx
}

unit FastReport;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, DB,

   frxExportPDF, frxDMPExport, frxOLE, frxDesgn, frxCross,
   frxRich, frxBarcode, frxExportText, frxExportImage, frxExportHTML,
   frxExportXLS, frxExportMail, frxClass, frxExportRTF,
   Classe.Global;

Procedure prcFastReportEmailConfigurar(Destinatario: String);

implementation

uses fBaseComponentes, Global, App.SQL, Biblioteca;

Procedure prcFastReportEmailConfigurar(Destinatario: String);
Begin
   dmBaseComponentes.frxMailExport1.Address := LowerCase(Destinatario);
   dmBaseComponentes.frxMailExport1.FromCompany :=
     FParametros.Empresa.NomeFantasia;
End;

end.
