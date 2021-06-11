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

unit FRelReceb_ExtratoProdutos;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, Db,   Qrctrls, QuickRpt, QRPrntr, QRExport,
   StdCtrls, QRPDFFilt, FireDAC.Comp.Client, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
   TFrmRelReceb_ExtratoProdutos = class(TForm)
      PageHeaderBand1: TQRBand;
      QRLabel2: TQRLabel;
      QRSysData2: TQRSysData;
      QRLabel31: TQRLabel;
      QRSysData1: TQRSysData;
      Datalhes: TQRBand;
      QRDBText3: TQRDBText;
      QRDBText4: TQRDBText;
      QuebraBanco: TQRGroup;
      QRLabel15: TQRLabel;
      Cabecalho: TQRBand;
      QRLabel9: TQRLabel;
      QRLabel1: TQRLabel;
      TotalOperacao: TQRBand;
      SummaryBand1: TQRBand;
      ADO_CtaReceber: TFDQuery;
      QRDBText5: TQRDBText;
      QRLabel4: TQRLabel;
      QRLabel5: TQRLabel;
      QRLabel6: TQRLabel;
      QRDBText6: TQRDBText;
      QRLabel10: TQRLabel;
      QRLabel12: TQRLabel;
      QRDBText9: TQRDBText;
      QRExpr4: TQRExpr;
      QRExpr6: TQRExpr;
      QRLabel13: TQRLabel;
      lbl_situacao: TQRLabel;
      QuickRep: TQuickRep;
      QRDBText10: TQRDBText;
      QRLabel11: TQRLabel;
      QRExpr1: TQRExpr;
      QRExpr2: TQRExpr;
      QRShape1: TQRShape;
      qReceber: TQRLabel;
      QRLabel14: TQRLabel;
      QRLabel16: TQRLabel;
      qVlrPago: TQRLabel;
      qSaldo: TQRLabel;
      QRDBText1: TQRDBText;
      QRLabel7: TQRLabel;
      QRSysData3: TQRSysData;
      SubDetail_Cliente: TQRSubDetail;
      db_VendasItens: TFDQuery;
      DS_CtaReceber: TDataSource;
      QRDBText2: TQRDBText;
      QRDBText7: TQRDBText;
      ChildBand1: TQRChildBand;
      QRLabel3: TQRLabel;
      QRLabel8: TQRLabel;
      GroupFooterBand1: TQRBand;
      QRLabel17: TQRLabel;
      QRLabel18: TQRLabel;
      QRLabel19: TQRLabel;
      QRLabel20: TQRLabel;
      QRDBText8: TQRDBText;
      QRDBText11: TQRDBText;
      QRDBText12: TQRDBText;
      QRLabel21: TQRLabel;
      lbl_VendaQtde: TQRLabel;
      lbl_VendaValores: TQRLabel;
      procedure FormCreate(Sender: TObject);
      procedure DatalhesBeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
        var PrintReport: Boolean);
      procedure SubDetail_ClienteBeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure GroupFooterBand1AfterPrint(Sender: TQRCustomBand;
        BandPrinted: Boolean);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelReceb_ExtratoProdutos: TFrmRelReceb_ExtratoProdutos;

   nVenda_QtdeTotal, nVenda_VlrTotal: real;

implementation

uses Biblioteca, FRelCtaReceber, Global, FPrincipal;

{$R *.DFM}

procedure TFrmRelReceb_ExtratoProdutos.FormCreate(Sender: TObject);
begin

   nVenda_QtdeTotal := 0;
   nVenda_VlrTotal := 0;


   vSelect := '         SELECT * FROM VIEW_FIN_CTARECEBER_PRODUTOS ';
   vSelect := vSelect + ' WHERE  ';
   vSelect := vSelect + ' (VENCIMENTO>=:data1 AND VENCIMENTO<=:data2) ';

   If FrmRelCtaReceber.chkClientes.Checked = False Then
   Begin
      vSelect := vSelect + ' AND ';
      vSelect := vSelect + ' CLIENTE=''' + Trim(FrmRelCtaReceber.EditCliente.Text) + '''    ';
   End;

   if not FrmRelCtaReceber.chkRepres.Checked then
   Begin
      vSelect := vSelect + ' AND ';
      vSelect := vSelect + ' VENDEDOR=:vendedor01 ';
   End;

   vSelect := vSelect + ' ORDER BY VENCIMENTO, NOTAFISCAL  ';

   ADO_CtaReceber.close;
   ADO_CtaReceber.SQL.clear;
   ADO_CtaReceber.SQL.Add(vSelect);
   ADO_CtaReceber.ParamByName('data1').AsDate := dtDataIni;
   ADO_CtaReceber.ParamByName('data2').AsDate := dtDataFim;

   If not FrmRelCtaReceber.chkRepres.Checked then
   Begin
      ADO_CtaReceber.ParamByName('vendedor01').Value := Achar[0];
   End;

   ADO_CtaReceber.open;

   db_VendasItens.open;

   Flutuante1 := 0;
   Flutuante2 := 0;

   QuebraBanco.Expression := 'ADO_CtaReceber.' + Agrupar;
   QuickRep.Preview;
   close;
end;

procedure TFrmRelReceb_ExtratoProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   ADO_CtaReceber.close;
   db_VendasItens.close;

   Action := caFree;

end;

procedure TFrmRelReceb_ExtratoProdutos.DatalhesBeforePrint
  (Sender: TQRCustomBand; var PrintBand: Boolean);
begin

   if ADO_CtaReceber.FieldByName('QUITADO').AsString <> 'S' then
   Begin
      lbl_situacao.caption := 'A RECEBER';
      lbl_situacao.Font.Color := clRed;
   End
   else
   Begin
      lbl_situacao.caption := 'QUITADO';
      lbl_situacao.Font.Color := clBlack;
   End;

   if (ADO_CtaReceber.FieldByName('COMPLEMENTAR').AsString <> 'S') then
   begin
      Flutuante1 := Flutuante1 + ADO_CtaReceber.FieldByName('VALOR').AsFloat;
   end;

   Flutuante2 := Flutuante2 + ADO_CtaReceber.FieldByName('VALOR_PAGO').AsFloat;

end;

procedure TFrmRelReceb_ExtratoProdutos.SummaryBand1BeforePrint
  (Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   Flutuante := 0;

   // Saldo
   Flutuante := (Flutuante1 - Flutuante2);

   qReceber.caption := FormatFloat('###,##0.00', Flutuante1);
   qVlrPago.caption := FormatFloat('###,##0.00', Flutuante2);
   qSaldo.caption := FormatFloat('###,##0.00', Flutuante);

End;

procedure TFrmRelReceb_ExtratoProdutos.SubDetail_ClienteBeforePrint
  (Sender: TQRCustomBand; var PrintBand: Boolean);
begin

   nVenda_QtdeTotal := nVenda_QtdeTotal + db_VendasItens.FieldByName
     ('QUANTIDADE').AsFloat;
   nVenda_VlrTotal := nVenda_VlrTotal + db_VendasItens.FieldByName
     ('VLR_TOTAL').AsFloat;

end;

procedure TFrmRelReceb_ExtratoProdutos.GroupFooterBand1AfterPrint
  (Sender: TQRCustomBand; BandPrinted: Boolean);
begin

   nVenda_QtdeTotal := 0;
   nVenda_VlrTotal := 0;

end;

procedure TFrmRelReceb_ExtratoProdutos.GroupFooterBand1BeforePrint
  (Sender: TQRCustomBand; var PrintBand: Boolean);
begin

   lbl_VendaQtde.caption := FormatFloat('###,##0', nVenda_QtdeTotal);
   lbl_VendaValores.caption := FormatFloat('###,##0.00', nVenda_VlrTotal);

end;

procedure TFrmRelReceb_ExtratoProdutos.QuickRepBeforePrint
  (Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
   Flutuante := 0;
   Flutuante1 := 0;
   Flutuante2 := 0;

   nVenda_QtdeTotal := 0;
   nVenda_VlrTotal := 0;

   // Lblvendedor.Caption:='Representante: '+Achar[0]+'-'+ADO_CtaReceber.FieldByName('NOMEVEND').AsString;

end;

end.
