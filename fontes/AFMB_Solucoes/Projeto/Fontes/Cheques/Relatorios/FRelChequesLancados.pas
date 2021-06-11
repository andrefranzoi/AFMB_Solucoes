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

unit FRelChequesLancados;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   QRExport, QRPREV, ExtCtrls, quickrpt, Qrctrls, Db,   QRPrntr,
   QRPDFFilt, FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmRelChequesLancados = class(TForm)
      DS_CHEQUES: TDataSource;
      db_cheques: TFDQuery;
      QuickRep: TQuickRep;
      PageHeaderBand1: TQRBand;
      QRLabel2: TQRLabel;
      QRSysData2: TQRSysData;
      QRLabel31: TQRLabel;
      QRSysData1: TQRSysData;
      QRLabel10: TQRLabel;
      QRSysData3: TQRSysData;
      Datalhes: TQRBand;
      QRDBText3: TQRDBText;
      QRDBText4: TQRDBText;
      QRDBText6: TQRDBText;
      QRDBText7: TQRDBText;
      QRDBText8: TQRDBText;
      qrxtItens: TQRDBText;
      QuebraBanco: TQRGroup;
      qrPeriodo: TQRLabel;
      QDPeriodo: TQRDBText;
      Cabecalho: TQRBand;
      QRLabel18: TQRLabel;
      QRLabel19: TQRLabel;
      QRLabel20: TQRLabel;
      QRLabel21: TQRLabel;
      QRLabel24: TQRLabel;
      lbPecas: TQRLabel;
      TotalOperacao: TQRBand;
      qTotalEspecie: TQRLabel;
      QRExpr4: TQRExpr;
      SummaryBand1: TQRBand;
      QRExpr6: TQRExpr;
      QRLabel5: TQRLabel;
      PageFooterBand1: TQRBand;
      QRDBText1: TQRDBText;
      QRLabel3: TQRLabel;
      QRLabel6: TQRLabel;
      QRDBText2: TQRDBText;
      QRDBText5: TQRDBText;
      qrTipo: TQRLabel;
      LblParam: TQRLabel;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelChequesLancados: TFrmRelChequesLancados;

implementation

uses Biblioteca, Global, FRelCheques, FPrincipal;

{$R *.DFM}

procedure TFrmRelChequesLancados.FormCreate(Sender: TObject);
begin

   If FrmRelCheques.rAgrupar.ItemIndex = 0 then
   Begin
      qrPeriodo.Caption := 'Vencimento:';
      QDPeriodo.DataField := 'VENCIMENTO';

      LblParam.Caption := 'Vencimento de ' + FrmRelCheques.MskDataIni.Text +
        ' at� ' + FrmRelCheques.MskDataFim.Text + '     ';

   end;

   If FrmRelCheques.rAgrupar.ItemIndex = 1 then
   begin
      qrPeriodo.Caption := 'Emiss�o:';
      QDPeriodo.DataField := 'DATA';

      LblParam.Caption := 'Data de ' + FrmRelCheques.MskDataIni.Text + ' at� ' +
        FrmRelCheques.MskDataFim.Text + '  -  ';

   End;

   dtDataIni := StrToDateTime(FrmRelCheques.MskDataIni.Text);
   dtDataFim := StrToDateTime(FrmRelCheques.MskDataFim.Text);

   // cheques a receber
   If FrmRelCheques.RadioG.ItemIndex = 0 then
   begin

      qrTipo.Caption := 'Cheques Recebidos';

      // montar script da tabela Mestre
      sqlMaster := '';
      sqlMaster := sqlMaster + ' SELECT * FROM FIN_CTARECEBER ';
      sqlMaster := sqlMaster + ' WHERE ';
      sqlMaster := sqlMaster + ' VENCIMENTO>=:Data1 AND VENCIMENTO<=:Data2 ';
      sqlMaster := sqlMaster + ' AND ';
      sqlMaster := sqlMaster + ' ESPECIE=''CHEQUE'' ';

      If not FrmRelCheques.chkContas.Checked then
      begin
         LblParam.Caption := LblParam.Caption + 'C�digo da Conta corrente: ' +
           FrmRelCheques.EditContaCorrente.Text;
         sqlMaster := sqlMaster + ' AND ';
         sqlMaster := sqlMaster + ' CONTA_CREDITO=:CONTA_CORRENTE ';
      end;

      sqlMaster := sqlMaster + ' ORDER BY VENCIMENTO, CHQ_EMITENTE ';

      db_cheques.Close;
      db_cheques.SQL.clear;
      db_cheques.SQL.Add(sqlMaster);
      db_cheques.ParamByName('data1').AsDateTime := dtDataIni;
      db_cheques.ParamByName('data2').AsDateTime := dtDataFim;
      db_cheques.Open;

      If db_cheques.RecordCount > 0 then
      Begin
         db_cheques.First;
         QuebraBanco.Expression := '';
         QuebraBanco.Expression := 'db_cheques.' + Agrupar;

         // visualizar
         QuickRep.Preview;
      End
      else
      begin
         Informar('N�o h� dados para relat�rio no periodo selecionado');
      end;

   end;

   // cheques a PAGAR
   IF FrmRelCheques.RadioG.ItemIndex = 1 then
   begin
      qrTipo.Caption := 'Cheques Emitidos (a pagar)';

      // montar script da tabela Mestre
      sqlMaster := '';
      sqlMaster := sqlMaster + ' SELECT * FROM FIN_CTAPAGAR ';
      sqlMaster := sqlMaster + ' WHERE ';
      sqlMaster := sqlMaster + ' VENCIMENTO>=:Data1 AND VENCIMENTO<=:Data2 ';
      sqlMaster := sqlMaster + ' AND ';
      sqlMaster := sqlMaster + ' ESPECIE=''CHEQUE'' ';

      If not FrmRelCheques.chkContas.Checked then
      begin
         LblParam.Caption := LblParam.Caption + 'C�digo da Conta corrente: ' +
           FrmRelCheques.EditContaCorrente.Text;
         sqlMaster := sqlMaster + ' AND ';
         sqlMaster := sqlMaster + ' CONTA_CREDITO=:CONTA_CORRENTE ';
      end;

      sqlMaster := sqlMaster + ' ORDER BY VENCIMENTO, CHQ_EMITENTE ';

      db_cheques.Close;
      db_cheques.SQL.clear;
      db_cheques.SQL.Add(sqlMaster);
      db_cheques.ParamByName('data1').AsDateTime := dtDataIni;
      db_cheques.ParamByName('data2').AsDateTime := dtDataFim;
      db_cheques.Open;

      If db_cheques.RecordCount > 0 then
      Begin
         db_cheques.First;
         QuebraBanco.Expression := '';
         QuebraBanco.Expression := 'db_cheques.' + Agrupar;

         // visualizar
         QuickRep.Preview;
      End
      else
      begin
         Informar('N�o h� dados para relat�rio no periodo selecionado');
      end;

   end;

   Close;

end;

procedure TFrmRelChequesLancados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_cheques.Close;
   Action := caFree;

end;

end.
