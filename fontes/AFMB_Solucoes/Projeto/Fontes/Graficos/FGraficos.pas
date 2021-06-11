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

unit FGraficos;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FFrameBarra, FrmRelatoriosBotoes,
   Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, dxBarBuiltInMenu, cxGraphics,
   cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxStyles,
   cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
   dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
   Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
   cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
   cxGridChartView, cxGridDBChartView, FireDAC.Stan.Intf, FireDAC.Stan.Option,
   FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
   FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
   FireDAC.Comp.Client, cxGridCustomLayoutView, cxGridCardView,
   cxGridDBCardView,
   cxLocalization, cxCalendar, cxCurrencyEdit;

type
   TFrmDashboardGrafico = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
      Panel1: TPanel;
      SpbImprimir: TBitBtn;
      SpbSair: TBitBtn;
      pnGrafico: TPanel;
      dsCtaReceber: TDataSource;
      QryCtaReceber: TFDQuery;
      cxLevelCtaReceber: TcxGridLevel;
      cxGrid1: TcxGrid;
      cxGrid1DBChartView1: TcxGridDBChartView;
      cxLevelCtaPagar: TcxGridLevel;
      cxGraficoCtaPagar: TcxGridDBChartView;
      cxGraficoCtaPagarSeries1: TcxGridDBChartSeries;
      cxGraficoCtaPagarDataGroup1: TcxGridDBChartDataGroup;
      cxGrid1DBChartView1DataGroup1: TcxGridDBChartDataGroup;
      cxGraficoCtaReceber: TcxGridDBChartView;
      cxGraficoCtaReceberSeries1: TcxGridDBChartSeries;
      cxGraficoCtaReceberDataGroup1: TcxGridDBChartDataGroup;
      Splitter1: TSplitter;
      dsCtaPagar: TDataSource;
      QryCtaPagar: TFDQuery;
      cxLevelCtaReceberTotais: TcxGridLevel;
      cxGraficoCtaReceberTotais: TcxGridDBChartView;
      cxGraficoCtaReceberTotaisSeries1: TcxGridDBChartSeries;
      cxGraficoCtaReceberTotaisDataGroup1: TcxGridDBChartDataGroup;
      cxLevelCtaPagarTotais: TcxGridLevel;
      cxGraficoCtaPagarTotais: TcxGridDBChartView;
      cxGraficoCtaPagarTotaisSeries1: TcxGridDBChartSeries;
      cxGraficoCtaPagarTotaisDataGroup1: TcxGridDBChartDataGroup;
      procedure FormDestroy(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure SpbSairClick(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmDashboardGrafico: TFrmDashboardGrafico;

implementation

{$R *.dfm}

uses FPrincipal, App.Funcoes, App.Constantes;

procedure TFrmDashboardGrafico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   QryCtaReceber.Close;
   QryCtaPagar.Close;
   Action := Cafree;
end;

procedure TFrmDashboardGrafico.FormCreate(Sender: TObject);
begin
   cxLevelCtaReceber.Visible := False;
   cxLevelCtaPagar.Visible := False;
   cxLevelCtaReceberTotais.Visible := False;
   cxLevelCtaPagarTotais.Visible := False;
end;

procedure TFrmDashboardGrafico.FormDestroy(Sender: TObject);
begin
   FrmDashboardGrafico := Nil;
end;

procedure TFrmDashboardGrafico.FormShow(Sender: TObject);
begin
   QryCtaReceber.Open();
   QryCtaPagar.Open();
end;

procedure TFrmDashboardGrafico.SpbSairClick(Sender: TObject);
begin
   Close;
end;

end.
