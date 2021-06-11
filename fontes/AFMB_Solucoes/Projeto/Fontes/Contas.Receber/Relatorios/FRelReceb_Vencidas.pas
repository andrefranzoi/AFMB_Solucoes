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

unit FRelReceb_Vencidas;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, quickrpt, Qrctrls, Db,   QRPrntr, QRExport,
   StdCtrls, QRPDFFilt,  Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmRelReceb_Vencidas = class(TForm)
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
      QRDBText9: TQRDBText;
      QuebraBanco: TQRGroup;
      Cabecalho: TQRBand;
      QRLabel9: TQRLabel;
      QRLabel1: TQRLabel;
      QRLabel12: TQRLabel;
      TotalOperacao: TQRBand;
      QRLabel4: TQRLabel;
      QRExpr4: TQRExpr;
      SummaryBand1: TQRBand;
      QRExpr6: TQRExpr;
      ADO_CtaReceber: TFDQuery;
      QRLabel5: TQRLabel;
      QRLabel7: TQRLabel;
      QRDBText7: TQRDBText;
      Lblvendedor: TQRLabel;
      QRDBText5: TQRDBText;
      QRLabel8: TQRLabel;
      QRLabel13: TQRLabel;
      QRDBText10: TQRDBText;
      QRDBText2: TQRDBText;
    LblAgrupar: TQRLabel;
    lblCampoGrupo: TQRDBText;
      QRLabel11: TQRLabel;
      QRDBText1: TQRDBText;
      LblRestricao: TQRLabel;
      QRLabel6: TQRLabel;
      QRDBText8: TQRDBText;
      QRLabel14: TQRLabel;
      QRDBText11: TQRDBText;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
        var PrintReport: Boolean);
    procedure ADO_CtaReceberBeforeOpen(DataSet: TDataSet);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelReceb_Vencidas: TFrmRelReceb_Vencidas;

implementation

uses Biblioteca, Global, FRelCtaReceber, FPrincipal;

{$R *.DFM}

procedure TFrmRelReceb_Vencidas.FormCreate(Sender: TObject);
begin

   if FrmRelCtaReceber.rRestricao.ItemIndex = 0 then
   Begin
      LblRestricao.Caption := 'Restrição Ignorada';
   End;

   if FrmRelCtaReceber.rRestricao.ItemIndex = 1 then
   Begin
      LblRestricao.Caption := 'Com Crédito Bloqueado';
   End;

   if FrmRelCtaReceber.rRestricao.ItemIndex = 2 then
   Begin
      LblRestricao.Caption := 'Com Crédito Liberado';
   End;

   vSelect := '         SELECT * FROM VIEW_ATRASOS  ';
   vSelect := vSelect + ' WHERE  ';
   vSelect := vSelect + ' EMPRESA=:EMPRESA  ';

   if strRestricaoCredito <> '' then
     vSelect := vSelect + ' AND RESTRICAO=' +QuotedStr(strRestricaoCredito);

   if FrmRelCtaReceber.rAgrupar.ItemIndex=0 then
      vSelect := vSelect + '  AND (VENCIMENTO>=:data1 AND VENCIMENTO<=:data2) ';

   if FrmRelCtaReceber.rAgrupar.ItemIndex=1 then
      vSelect := vSelect + '  AND (DATA>=:data1 AND DATA<=:data2) ';

   if FrmRelCtaReceber.rAgrupar.ItemIndex=2 then
      vSelect := vSelect + '  AND (DATA_PAGTO>=:data1 AND DATA_PAGTO<=:data2) ';

   If FrmRelCtaReceber.chkClientes.Checked = False Then
   Begin
      vSelect := vSelect + '  AND CLIENTE=''' + Trim(FrmRelCtaReceber.EditCliente.Text) + ''' ';
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

procedure TFrmRelReceb_Vencidas.ADO_CtaReceberBeforeOpen(DataSet: TDataSet);
begin
   ADO_CtaReceber.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmRelReceb_Vencidas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   ADO_CtaReceber.close;

   Action := caFree;

end;

procedure TFrmRelReceb_Vencidas.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   // Lblvendedor.Caption:='Representante: '+sCodVendedor+'-'+ADO_CtaReceber.FieldByName('NOMEVEND').AsString;
end;

end.
