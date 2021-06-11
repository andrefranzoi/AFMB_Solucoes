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

unit FRelFornFicha;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, quickrpt, Qrctrls, Db,  
   QRPDFFilt, FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmRelFornFicha = class(TForm)
      DB_Fornecedor: TFDQuery;
      Prever: TQuickRep;
      DetailBand1: TQRBand;
      QRDBText1: TQRDBText;
      QRDBText3: TQRDBText;
      QRDBText4: TQRDBText;
      QRDBText5: TQRDBText;
      QRLabel1: TQRLabel;
      QRLabel3: TQRLabel;
      QRLabel4: TQRLabel;
      QRLabel5: TQRLabel;
      QRLabel6: TQRLabel;
      QRDBText6: TQRDBText;
      QRLabel7: TQRLabel;
      QRDBText7: TQRDBText;
      QRLabel8: TQRLabel;
      QRDBText8: TQRDBText;
      QRDBText9: TQRDBText;
      QRLabel9: TQRLabel;
      QRLabel11: TQRLabel;
      QRDBText10: TQRDBText;
      QRLabel13: TQRLabel;
      QRDBText12: TQRDBText;
      PageHeaderBand1: TQRBand;
      QRLabel2: TQRLabel;
      QRDBText15: TQRDBText;
      QRLabel15: TQRLabel;
      QRLabel17: TQRLabel;
      QRSysData4: TQRSysData;
      QRLabel16: TQRLabel;
      QRDBText14: TQRDBText;
      QRLabel10: TQRLabel;
      QRDBText2: TQRDBText;
      QRLabel12: TQRLabel;
      QRDBText11: TQRDBText;
      QRPDFFilter1: TQRPDFFilter;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelFornFicha: TFrmRelFornFicha;

implementation

uses Biblioteca, FRelClientes, FPrincipal, Global;

{$R *.DFM}

procedure TFrmRelFornFicha.FormCreate(Sender: TObject);
begin

   DB_Fornecedor.Close;
   DB_Fornecedor.ParamByName('CODIGO').AsInteger := iAchar[0];
   DB_Fornecedor.Open;

   Prever.Preview;
   Close;

End;

procedure TFrmRelFornFicha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DB_Fornecedor.Close;
   Action := cafree;

end;

end.
