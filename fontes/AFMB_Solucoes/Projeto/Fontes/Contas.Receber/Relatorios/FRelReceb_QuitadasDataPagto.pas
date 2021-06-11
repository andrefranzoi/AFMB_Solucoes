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

unit FRelReceb_QuitadasDataPagto;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db, Qrctrls, QuickRpt, ExtCtrls, QRExport, StdCtrls,
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmRelReceb_QuitadasDataPagto = class(TForm)
      ADO_CtaReceber: TFDQuery;
      QuickRep: TQuickRep;
      PageHeaderBand1: TQRBand;
      QRLabel2: TQRLabel;
      QRSysData2: TQRSysData;
      QRLabel31: TQRLabel;
      QRSysData1: TQRSysData;
      QRLabel10: TQRLabel;
      Datalhes: TQRBand;
      QRDBText3: TQRDBText;
      QRDBText4: TQRDBText;
      QRDBText6: TQRDBText;
      QRDBText9: TQRDBText;
      QRDBText10: TQRDBText;
      QuebraBanco: TQRGroup;
      LblAgrupar: TQRLabel;
      lblCampoGrupo: TQRDBText;
      Cabecalho: TQRBand;
      QRLabel9: TQRLabel;
      QRLabel1: TQRLabel;
      QRLabel6: TQRLabel;
      QRLabel12: TQRLabel;
      QRLabel11: TQRLabel;
      TotalOperacao: TQRBand;
      QRLabel4: TQRLabel;
      QRExpr4: TQRExpr;
      QRExpr1: TQRExpr;
      SummaryBand1: TQRBand;
      QRShape1: TQRShape;
      QRLabel5: TQRLabel;
      QRExpr6: TQRExpr;
      QRExpr2: TQRExpr;
      qReceber: TQRLabel;
      QRLabel14: TQRLabel;
      QRLabel16: TQRLabel;
      qVlrPago: TQRLabel;
      qSaldo: TQRLabel;
      PageFooterBand1: TQRBand;
      QRDBText8: TQRDBText;
      Lblvendedor: TQRLabel;
      QRDBText2: TQRDBText;
      QRLabel3: TQRLabel;
      QRLabel7: TQRLabel;
      QRDBText1: TQRDBText;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
        var PrintReport: Boolean);
      procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure DatalhesBeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure ADO_CtaReceberBeforeOpen(DataSet: TDataSet);
   private
      { Private declarations }
      Flutuante: Double;
      Flutuante1: Double;
      Flutuante2: Double;
   public
      { Public declarations }
   end;

var
   FrmRelReceb_QuitadasDataPagto: TFrmRelReceb_QuitadasDataPagto;

implementation

uses Biblioteca, Global, FRelCtaReceber, FPrincipal;

{$R *.DFM}

procedure TFrmRelReceb_QuitadasDataPagto.FormCreate(Sender: TObject);
begin

   vSelect := ' SELECT * FROM VIEW_FIN_CTARECEBER ';
   vSelect := vSelect + ' WHERE  ';
   vSelect := vSelect + ' EMPRESA=:EMPRESA  ';
   vSelect := vSelect + ' AND QUITADO=' + QuotedStr('S');

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

procedure TFrmRelReceb_QuitadasDataPagto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   ADO_CtaReceber.close;
   Action := caFree;
end;

procedure TFrmRelReceb_QuitadasDataPagto.QuickRepBeforePrint
  (Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
   Flutuante := 0;
   Flutuante1 := 0;
   Flutuante2 := 0;
   // Lblvendedor.Caption:='Representante: '+TxtAuxiliar+'-'+ADO_CtaReceber.FieldByName('NOMEVEND').AsString;

end;

procedure TFrmRelReceb_QuitadasDataPagto.SummaryBand1BeforePrint
  (Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   Flutuante := 0;

   // Saldo
   IF Flutuante1 >= Flutuante2 then
   Begin
      Flutuante := (Flutuante1 - Flutuante2);
   end;

   IF Flutuante2 >= Flutuante1 then
   Begin
      Flutuante := (Flutuante2 - Flutuante1);
   end;

   qReceber.Caption := FormatFloat('###,##0.00', Flutuante1);
   qVlrPago.Caption := FormatFloat('###,##0.00', Flutuante2);
   qSaldo.Caption := FormatFloat('###,##0.00', Flutuante);

end;

procedure TFrmRelReceb_QuitadasDataPagto.ADO_CtaReceberBeforeOpen
  (DataSet: TDataSet);
begin
   ADO_CtaReceber.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmRelReceb_QuitadasDataPagto.DatalhesBeforePrint
  (Sender: TQRCustomBand; var PrintBand: Boolean);
begin

   if (ADO_CtaReceber.FieldByName('COMPLEMENTAR').AsString <> 'S') then
   begin
      Flutuante1 := Flutuante1 + ADO_CtaReceber.FieldByName('VALOR').AsFloat;
   end;

   Flutuante2 := Flutuante2 + ADO_CtaReceber.FieldByName('VALOR_PAGO').AsFloat;

end;

end.
