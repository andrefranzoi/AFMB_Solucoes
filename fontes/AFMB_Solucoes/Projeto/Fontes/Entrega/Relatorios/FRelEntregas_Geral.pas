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

unit FRelEntregas_Geral;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, QuickRpt, DB, SqlExpr, QRCtrls,
   FMTBcd, QRExport,
   QRPDFFilt, FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmRelEntregas_Geral = class(TForm)
      QuickRep1: TQuickRep;
      DetailBand1: TQRBand;
      SummaryBand1: TQRBand;
      QRDBText1: TQRDBText;
      db_Entregas: TFDQuery;
      PageHeaderBand1: TQRBand;
      QrTitulo: TQRLabel;
      QQuantidade: TQRDBText;
      QRLabel10: TQRLabel;
      QRSysData1: TQRSysData;
      QRDBText4: TQRDBText;
      QRLabel13: TQRLabel;
      QProduzidos: TQRExpr;
      QRLabel11: TQRLabel;
      QRSysData2: TQRSysData;
      QRDBText2: TQRDBText;
      QRDBText3: TQRDBText;
      TitleBand1: TQRBand;
      QRLabel2: TQRLabel;
      QRLabel3: TQRLabel;
      QRLabel5: TQRLabel;
      QRLabel4: TQRLabel;
      QRLabel7: TQRLabel;
      QrParametro: TQRLabel;
      qrStatus: TQRLabel;
      qrdbStatus: TQRDBText;
      qRegistros: TQRLabel;
      QRExpr1: TQRExpr;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelEntregas_Geral: TFrmRelEntregas_Geral;

implementation

uses FPrincipal, Biblioteca, Global, FRelEntregas;

{$R *.dfm}

procedure TFrmRelEntregas_Geral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   db_Entregas.Close;
   Action := caFree;

end;

procedure TFrmRelEntregas_Geral.FormCreate(Sender: TObject);
begin

   Flutuante1 := 0;
   Flutuante2 := 0;

   QrParametro.Caption := 'Periodo de entrega: ' +
     FrmRelEntregas.MskDataIni.Text + '  -  ' + FrmRelEntregas.MskDataFim.Text;
   dtDataIni := StrToDate(FrmRelEntregas.MskDataIni.Text);
   dtDataFim := StrToDate(FrmRelEntregas.MskDataFim.Text);

   // montar script da tabela Mestre
   sqlMaster := '';
   sqlMaster := sqlMaster + ' SELECT  A.*, B.CODIGO, B.NOME ';
   sqlMaster := sqlMaster + ' FROM ';
   sqlMaster := sqlMaster + ' PEDIDOS A,  CAD_CLIENTES B ';
   sqlMaster := sqlMaster + ' WHERE ';
   sqlMaster := sqlMaster + ' B.CODIGO=A.CLIENTE ';
   sqlMaster := sqlMaster + ' AND ';
   sqlMaster := sqlMaster + ' A.DATA_ENTREGA>=:Data1 AND A.DATA_ENTREGA<=:Data2 ';

   if FrmRelEntregas.RdPedidos.ItemIndex = 0 then
   Begin
      QrParametro.Caption := QrParametro.Caption +
        '     -     (Todos os tipos)';
      qrStatus.Enabled := True;
      qrdbStatus.Enabled := True;
   End;

   if FrmRelEntregas.RdPedidos.ItemIndex = 1 then
   Begin
      QrParametro.Caption := QrParametro.Caption + '     -     (Abertos)';
      sqlMaster := sqlMaster + ' AND ';
      sqlMaster := sqlMaster + ' A.STATUS=''N'' ';
   End;

   if FrmRelEntregas.RdPedidos.ItemIndex = 2 then
   Begin
      QrParametro.Caption := QrParametro.Caption + '     -     (Cancelados)';
      sqlMaster := sqlMaster + ' AND ';
      sqlMaster := sqlMaster + ' A.STATUS=''C'' ';
   End;

   if FrmRelEntregas.RdPedidos.ItemIndex = 3 then
   Begin
      QrParametro.Caption := QrParametro.Caption + '     -     (Faturados)';
      sqlMaster := sqlMaster + ' AND ';
      sqlMaster := sqlMaster + ' A.STATUS=''S'' ';
   End;

   sqlMaster := sqlMaster + ' ORDER BY DATA_ENTREGA ';

   db_Entregas.Close;
   db_Entregas.SQL.clear;
   db_Entregas.SQL.Add(sqlMaster);
   db_Entregas.ParamByName('Data1').AsDateTime := dtDataIni;
   db_Entregas.ParamByName('Data2').AsDateTime := dtDataFim;
   db_Entregas.Open;

   // visualizar
   QuickRep1.Preview;
   Close;

end;

end.
