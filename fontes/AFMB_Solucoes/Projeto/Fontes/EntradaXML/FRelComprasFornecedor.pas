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

unit FRelComprasFornecedor;

interface

uses
   SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
   Forms, Dialogs,   DB, Qrctrls,
   quickrpt, ExtCtrls, QRPDFFilt,
   QRExport, FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmRelComprasFornecedor = class(TForm)
      QuickRep: TQuickRep;
      EmpresaTitulo: TQRBand;
      QRLabel1: TQRLabel;
      QRLabel3: TQRLabel;
      QRSysData1: TQRSysData;
      QRLabel4: TQRLabel;
      QRSysData2: TQRSysData;
      Cabecalho: TQRBand;
      QRLabel8: TQRLabel;
      QRLabel10: TQRLabel;
      QRLabel14: TQRLabel;
      Datalhes: TQRBand;
      QRDBText6: TQRDBText;
      QRDBText7: TQRDBText;
      QRDBText11: TQRDBText;
      QuebraProduto: TQRGroup;
      QRLabel15: TQRLabel;
      QRDBText13: TQRDBText;
      TotalProduto: TQRBand;
      QRExpr1: TQRExpr;
      QRExpr2: TQRExpr;
      QRExpr4: TQRExpr;
      QRExpr5: TQRExpr;
      QRShape5: TQRShape;
      SummaryBand1: TQRBand;
      QRExpr6: TQRExpr;
      QRExpr7: TQRExpr;
      QRExpr9: TQRExpr;
      QRExpr10: TQRExpr;
      QRLabel16: TQRLabel;
    dsComprasItens: TDataSource;
    QryComprasItens: TFDQuery;
      QRDBText5: TQRDBText;
      QRLabel6: TQRLabel;
      QRLabel11: TQRLabel;
      QRLabel13: TQRLabel;
      QRLabel17: TQRLabel;
      QRExpr11: TQRExpr;
      QRExpr12: TQRExpr;
      QRLabel7: TQRLabel;
      QRLabel18: TQRLabel;
      QRDBText1: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText10: TQRDBText;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelComprasFornecedor: TFrmRelComprasFornecedor;

implementation

uses Global, FRelCompras, Biblioteca;

{$R *.DFM}

procedure TFrmRelComprasFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   QryComprasItens.Close;
   Action := caFree;
end;

procedure TFrmRelComprasFornecedor.FormCreate(Sender: TObject);
begin
   dtDataIni := StrToDate(FrmRelCompras.MskDataIni.Text);
   dtDataFim := StrToDate(FrmRelCompras.MskDataFim.Text);

   sqlMaster := '';
   sqlMaster := sqlMaster +
     ' SELECT A.*, B.CODIGO, B.NOME FROM COMPRAS_ITENS A, CAD_CLIENTES B  ';
   sqlMaster := sqlMaster + ' WHERE  ';
   sqlMaster := sqlMaster + ' B.CODIGO=A.FORNECEDOR ';
   sqlMaster := sqlMaster + ' AND  (A.DATA>=:DATAINI AND A.DATA<=:DATAFIM )';
   if not FrmRelCompras.chkFornecedor.Checked then
     sqlMaster := sqlMaster + ' AND  A.FORNECEDOR='+strFornecedor;
   QryComprasItens.Close;
   QryComprasItens.SQL.clear;
   QryComprasItens.SQL.Add(sqlMaster);
   QryComprasItens.ParamByName('DATAINI').AsDate := dtDataIni;
   QryComprasItens.ParamByName('DATAFIM').AsDate := dtDataFim;
   QryComprasItens.Open;
   try
     QuickRep.Preview;
   finally
     QryComprasItens.Close;
     Close;
   end;

end;

end.
