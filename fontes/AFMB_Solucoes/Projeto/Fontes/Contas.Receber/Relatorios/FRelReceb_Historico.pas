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

unit FRelReceb_Historico;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, Db, Qrctrls, QuickRpt, QRPrntr, QRExport,
   StdCtrls, QRPDFFilt,
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmRelReceb_Historico = class(TForm)
      PageHeaderBand1: TQRBand;
      DSCtaReceber: TDataSource;
      QRLabel2: TQRLabel;
      QRSysData2: TQRSysData;
      QRLabel31: TQRLabel;
      QRSysData1: TQRSysData;
      Datalhes: TQRBand;
      QuebraBanco: TQRGroup;
      LblAgrupar: TQRLabel;
      Cabecalho: TQRBand;
      TotalOperacao: TQRBand;
      SummaryBand1: TQRBand;
      ADO_CtaReceber: TFDQuery;
      lblCampoGrupo: TQRDBText;
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
      QRLabel18: TQRLabel;
      QRDBText4: TQRDBText;
      QRLabel21: TQRLabel;
      QRDBText11: TQRDBText;
      QRDBText2: TQRDBText;
      QRLabel22: TQRLabel;
      QRLabel23: TQRLabel;
      Lblvendedor: TQRLabel;
      QRDBText13: TQRDBText;
      QRLabel24: TQRLabel;
      QRLabel9: TQRLabel;
      QRDBText3: TQRDBText;
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
      procedure ADO_CtaReceberBeforeOpen(DataSet: TDataSet);
   private
      { Private declarations }
      xFlutuante, xFlutuante1, xFlutuante2: Real;
      Flutuante: Double;
      Flutuante1: Double;
      Flutuante2: Double;

   public
      { Public declarations }
   end;

var
   FrmRelReceb_Historico: TFrmRelReceb_Historico;

implementation

uses Biblioteca, FRelCtaReceber, Global, FPrincipal;

{$R *.DFM}

procedure TFrmRelReceb_Historico.FormCreate(Sender: TObject);
begin

   vSelect := ' SELECT * FROM VIEW_FIN_CTARECEBER ';
   vSelect := vSelect + ' WHERE  ';
   vSelect := vSelect + ' EMPRESA=:EMPRESA  ';

   if strRestricaoCredito <> '' then
      vSelect := vSelect + ' AND RESTRICAO=' + QuotedStr(strRestricaoCredito);

   if FrmRelCtaReceber.rAgrupar.ItemIndex = 0 then
      vSelect := vSelect + '  AND (VENCIMENTO>=:data1 AND VENCIMENTO<=:data2) ';

   if FrmRelCtaReceber.rAgrupar.ItemIndex = 1 then
      vSelect := vSelect + '  AND (DATA>=:data1 AND DATA<=:data2) ';

   if FrmRelCtaReceber.rAgrupar.ItemIndex = 2 then
      vSelect := vSelect + '  AND (DATA_PAGTO>=:data1 AND DATA_PAGTO<=:data2) ';

   If FrmRelCtaReceber.chkClientes.Checked = False Then
   Begin
      vSelect := vSelect + '  AND CLIENTE=''' +
        Trim(FrmRelCtaReceber.EditCliente.Text) + ''' ';
   End;

   if not FrmRelCtaReceber.chkRepres.Checked then
   Begin
      vSelect := vSelect + '  AND VENDEDOR=' + strVendedor
   End;

   if not FrmRelCtaReceber.chkContaCaixa.Checked then
   Begin
      vSelect := vSelect + '  AND CONTACAIXA=' + strContaCaixa;
   End;

   if not FrmRelCtaReceber.chkCarteira.Checked then
   Begin
      vSelect := vSelect + '  AND CARTEIRA=' + strCarteira;
   End;

   if not FrmRelCtaReceber.chkContaBancaria.Checked then
   Begin
      vSelect := vSelect + '  AND CONTACORRENTE=' + strContaCorrente;
   End;

   if not FrmRelCtaReceber.chkFormaPagto.Checked then
   Begin
      vSelect := vSelect + '  AND FORMA_PAGTO=' + strFormaPagamento;
   End;

   vSelect := vSelect + ' ORDER BY ' + strOrdemDados;

   ADO_CtaReceber.close;
   ADO_CtaReceber.SQL.clear;
   ADO_CtaReceber.SQL.Add(vSelect);
   ADO_CtaReceber.ParamByName('data1').AsDateTime := dtDataIni;
   ADO_CtaReceber.ParamByName('data2').AsDateTime := dtDataFim;
   ADO_CtaReceber.open;

   QuebraBanco.Expression := 'ADO_CtaReceber.' + Agrupar;
   LblAgrupar.Caption := strNomeAgrupamento;
   lblCampoGrupo.DataField := Agrupar;

   QuickRep.Preview;
   close;

end;

procedure TFrmRelReceb_Historico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   ADO_CtaReceber.close;

   Action := caFree;

end;

procedure TFrmRelReceb_Historico.ADO_CtaReceberBeforeOpen(DataSet: TDataSet);
begin
   ADO_CtaReceber.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmRelReceb_Historico.DatalhesBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

   if ADO_CtaReceber.FieldByName('QUITADO').AsString <> 'S' then
   Begin
      lbl_situacao.Caption := 'A RECEBER';
      lbl_situacao.Font.Color := clRed;
   End
   else
   Begin
      lbl_situacao.Caption := 'QUITADO';
      lbl_situacao.Font.Color := clBlack;
   End;

   if (ADO_CtaReceber.FieldByName('COMPLEMENTAR').AsString <> 'S') then
   begin
      Flutuante1 := Flutuante1 + ADO_CtaReceber.FieldByName('VALOR').AsFloat;
   end;

   Flutuante2 := Flutuante2 + ADO_CtaReceber.FieldByName('VALOR_PAGO').AsFloat;

   if (ADO_CtaReceber.FieldByName('COMPLEMENTAR').AsString <> 'S') then
   begin
      xFlutuante1 := xFlutuante1 + ADO_CtaReceber.FieldByName('VALOR').AsFloat;
   end;

   xFlutuante2 := xFlutuante2 + ADO_CtaReceber.FieldByName
     ('VALOR_PAGO').AsFloat;

end;

procedure TFrmRelReceb_Historico.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

   Flutuante := 0;

   // Saldo
   Flutuante := (Flutuante1 - Flutuante2);

   qReceber.Caption := FormatFloat('###,##0.00', Flutuante1);
   qVlrPago.Caption := FormatFloat('###,##0.00', Flutuante2);
   qSaldo.Caption := FormatFloat('###,##0.00', Flutuante);

End;

procedure TFrmRelReceb_Historico.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   Flutuante := 0;
   Flutuante1 := 0;
   Flutuante2 := 0;

   xFlutuante := 0;
   xFlutuante1 := 0;
   xFlutuante2 := 0;

   // Lblvendedor.Caption:='Representante: '+sCodVendedor+'-'+ADO_CtaReceber.FieldByName('NOMEVEND').AsString;

end;

procedure TFrmRelReceb_Historico.TotalOperacaoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   xFlutuante := 0;

   // Saldo
   xFlutuante := (xFlutuante1 - xFlutuante2);

   xReceber.Caption := FormatFloat('###,##0.00', xFlutuante1);
   xVlrPago.Caption := FormatFloat('###,##0.00', xFlutuante2);
   xSaldo.Caption := FormatFloat('###,##0.00', xFlutuante);

end;

procedure TFrmRelReceb_Historico.TotalOperacaoAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   xFlutuante := 0;
   xFlutuante1 := 0;
   xFlutuante2 := 0;

end;

end.
