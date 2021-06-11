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

unit FRelPagar_Historico;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, Db,   Qrctrls, QuickRpt, QRPrntr, QRExport,
   QRPDFFilt,  Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmRelPagar_Historico = class(TForm)
      PageHeaderBand1: TQRBand;
      QRLabel2: TQRLabel;
      QRSysData2: TQRSysData;
      QRLabel31: TQRLabel;
      QRSysData1: TQRSysData;
      Datalhes: TQRBand;
      QuebraBanco: TQRGroup;
      QRLabel15: TQRLabel;
      Cabecalho: TQRBand;
      TotalOperacao: TQRBand;
      SummaryBand1: TQRBand;
      dbCtaPagar: TFDQuery;
      QRDBText5: TQRDBText;
      QRLabel6: TQRLabel;
      QRLabel7: TQRLabel;
      QRDBText6: TQRDBText;
      QRDBText7: TQRDBText;
      QRLabel10: TQRLabel;
      QRLabel12: TQRLabel;
      QRDBText9: TQRDBText;
      QRLabel13: TQRLabel;
      lbl_situacao: TQRLabel;
      QuickRep: TQuickRep;
      QRDBText10: TQRDBText;
      QRLabel11: TQRLabel;
      PageFooterBand1: TQRBand;
      QRDBText8: TQRDBText;
      QRShape1: TQRShape;
      xSaldo: TQRLabel;
      xVlrPago: TQRLabel;
      xReceber: TQRLabel;
      QRLabel5: TQRLabel;
      QRLabel14: TQRLabel;
      QRLabel16: TQRLabel;
      QRLabel4: TQRLabel;
      qSaldo: TQRLabel;
      qVlrPago: TQRLabel;
      qReceber: TQRLabel;
      QRLabel19: TQRLabel;
      QRLabel20: TQRLabel;
      QRShape2: TQRShape;
      QRLabel8: TQRLabel;
      QRLabel17: TQRLabel;
      QRDBText1: TQRDBText;
      QRLabel1: TQRLabel;
      QRLabel18: TQRLabel;
      QRDBText4: TQRDBText;
      QRLabel21: TQRLabel;
      QRDBText11: TQRDBText;
      QRLabel23: TQRLabel;
      Lblvendedor: TQRLabel;
      QRDBText3: TQRDBText;
      QRLabel9: TQRLabel;
      procedure FormCreate(Sender: TObject);
      procedure DatalhesBeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
        var PrintReport: Boolean);
      procedure TotalOperacaoBeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure TotalOperacaoAfterPrint(Sender: TQRCustomBand;
        BandPrinted: Boolean);
    procedure dbCtaPagarBeforeOpen(DataSet: TDataSet);
   private
      { Private declarations }

      xFlutuante, xFlutuante1, xFlutuante2: Real;

   public
      { Public declarations }
   end;

var
   FrmRelPagar_Historico: TFrmRelPagar_Historico;

implementation

uses Biblioteca, FRelCtaReceber, Global, FPrincipal, FBaseDados,
   FRelCtaPagar;

{$R *.DFM}

procedure TFrmRelPagar_Historico.FormCreate(Sender: TObject);
begin


   dbCtaPagar.close;
   dbCtaPagar.SQL.clear;
   dbCtaPagar.SQL.Add('SELECT * FROM VIEW_FIN_CTAPAGAR');
   dbCtaPagar.SQL.Add('WHERE');
   dbCtaPagar.SQL.Add('EMPRESA=:EMPRESA');
   dbCtaPagar.SQL.Add('AND');
   dbCtaPagar.SQL.Add('VENCIMENTO BETWEEN :DATAINICIAL AND :DATAFINAL');

   If FrmRelCtaPagar.chkFornecedor.Checked = False Then
   Begin
      dbCtaPagar.SQL.Add('AND');
      dbCtaPagar.SQL.Add('FORNECEDOR='+strFornecedor);
   End;

   if not FrmRelCtaPagar.chkContaCaixa.Checked then
   Begin
      dbCtaPagar.SQL.Add('AND');
      dbCtaPagar.SQL.Add('CONTACAIXA='+strContaCaixa);
   End;

   if not FrmRelCtaPagar.chkContaBancaria.Checked then
   Begin
      dbCtaPagar.SQL.Add('AND');
      dbCtaPagar.SQL.Add('CONTACORRENTE='+strContaCorrente);
   End;


   dbCtaPagar.SQL.Add('ORDER BY NOME_FORNECEDOR, VENCIMENTO ' );
   dbCtaPagar.ParamByName('DATAINICIAL').AsDateTime  := dtDataIni;
   dbCtaPagar.ParamByName('DATAFINAL').AsDateTime    := dtDataFim;
   dbCtaPagar.open;

   QuickRep.Preview;
   close;


end;

procedure TFrmRelPagar_Historico.dbCtaPagarBeforeOpen(DataSet: TDataSet);
begin
   dbCtaPagar.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmRelPagar_Historico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   dbCtaPagar.close;

   Action := caFree;

end;

procedure TFrmRelPagar_Historico.DatalhesBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

   if dbCtaPagar.FieldByName('QUITADO').AsString <> 'S' then
   Begin
      lbl_situacao.caption := 'A PAGAR';
      lbl_situacao.Font.Color := clRed;
   End
   else
   Begin
      lbl_situacao.caption := 'QUITADO';
      lbl_situacao.Font.Color := clBlack;
   End;

   Flutuante1 := Flutuante1 + dbCtaPagar.FieldByName('VALOR').AsFloat;
   Flutuante2 := Flutuante2 + dbCtaPagar.FieldByName('VALOR_PAGO').AsFloat;

   xFlutuante1 := xFlutuante1 + dbCtaPagar.FieldByName('VALOR').AsFloat;
   xFlutuante2 := xFlutuante2 + dbCtaPagar.FieldByName('VALOR_PAGO').AsFloat;

end;

procedure TFrmRelPagar_Historico.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

   Flutuante := 0;

   // Saldo
   Flutuante := (Flutuante1 - Flutuante2);
   if Flutuante < 1 then
      Flutuante := 0;

   qReceber.caption := FormatFloat('###,##0.00', Flutuante1);
   qVlrPago.caption := FormatFloat('###,##0.00', Flutuante2);
   qSaldo.caption := FormatFloat('###,##0.00', Flutuante);

End;

procedure TFrmRelPagar_Historico.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   Flutuante := 0;
   Flutuante1 := 0;
   Flutuante2 := 0;

   xFlutuante := 0;
   xFlutuante1 := 0;
   xFlutuante2 := 0;

   // Lblvendedor.Caption:='Representante: '+TxtAuxiliar+'-'+dbCtaPagar.FieldByName('NOMEVEND').AsString;

end;

procedure TFrmRelPagar_Historico.TotalOperacaoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   xFlutuante := 0;

   // Saldo
   xFlutuante := (xFlutuante1 - xFlutuante2);
   if xFlutuante < 1 then
      xFlutuante := 0;

   xReceber.caption := FormatFloat('###,##0.00', xFlutuante1);
   xVlrPago.caption := FormatFloat('###,##0.00', xFlutuante2);
   xSaldo.caption := FormatFloat('###,##0.00', xFlutuante);

end;

procedure TFrmRelPagar_Historico.TotalOperacaoAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   xFlutuante := 0;
   xFlutuante1 := 0;
   xFlutuante2 := 0;

end;

end.
