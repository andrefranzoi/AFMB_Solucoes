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

unit FReciboImprimir;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, QRCtrls, QuickRpt, ExtCtrls, ACBrBase, QRPDFFilt;

type
   TFrmReciboImprimir = class(TForm)
      QuickRep: TQuickRep;
      DetailBand1: TQRBand;
      t18: TQRShape;
      QRShape1: TQRShape;
      QRLabel1: TQRLabel;
      QRLabel8: TQRLabel;
      QRLabel2: TQRLabel;
      QRLabel4: TQRLabel;
      QRLabel5: TQRLabel;
      QRLabel6: TQRLabel;
      Ass_Linha1: TQRLabel;
      QRLabel50: TQRLabel;
      linha: TQRLabel;
      t2: TQRLabel;
      QRDBText1: TQRDBText;
      QRDBText2: TQRDBText;
      QRDBText4: TQRDBText;
      QRDBText5: TQRDBText;
      QRDBText6: TQRDBText;
      QRDBText7: TQRDBText;
      QRLabel7: TQRLabel;
      QRLabel10: TQRLabel;
      QRLabel11: TQRLabel;
      QRLabel12: TQRLabel;
      QRLabel13: TQRLabel;
      QRLabel14: TQRLabel;
      QRLabel15: TQRLabel;
      Ass_Linha2: TQRLabel;
      QRDBText10: TQRDBText;
      QRDBText11: TQRDBText;
      QRDBText13: TQRDBText;
      Assinatura1: TQRDBText;
      Assinatura2: TQRDBText;
      Nome1: TQRDBText;
      Nome2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
        var PrintReport: Boolean);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmReciboImprimir: TFrmReciboImprimir;

implementation

uses FCtaReceber, FPrincipal, FRecibo, FBaseDados;

{$R *.dfm}

procedure TFrmReciboImprimir.FormCreate(Sender: TObject);
begin

   QuickRep.Preview;
   Close;

end;

procedure TFrmReciboImprimir.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := cafree;
end;

procedure TFrmReciboImprimir.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

   If FrmRecibo.db_recibo.FieldByName('TIPO').AsString = 'D' Then
   begin
      // 1ª VIA
      Assinatura1.Left := 45;
      Assinatura1.Top := 128;
      Assinatura1.Alignment := taLeftJustify;

      Nome1.Left := Ass_Linha1.Left + 110;
      Nome1.Top := 407;

      Nome1.Font.Name := 'Arial';
      Nome1.Font.Size := 8;
      Nome1.Alignment := taCenter;

      // 2ª VIA
      Assinatura2.Left := 45;
      Assinatura2.Top := 696;
      Assinatura2.Alignment := taLeftJustify;

      Nome2.Left := Ass_Linha2.Left + 110;
      Nome2.Top := 973;

      Nome2.Font.Name := 'Arial';
      Nome2.Font.Size := 8;
      Nome2.Alignment := taCenter;

   end;

end;

end.
