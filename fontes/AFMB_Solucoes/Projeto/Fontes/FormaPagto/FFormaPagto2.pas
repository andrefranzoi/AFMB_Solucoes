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

unit FFormaPagto2;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DBCtrls, Grids, DBGrids,
   Mask, DB, 
   FFrameBotoes, FFrameBarra, FireDAC.Comp.Client, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
   TFrmFormaPagto2 = class(TForm)
      PgFPagto: TPageControl;
      TabRegistros: TTabSheet;
      TabEditar: TTabSheet;
      DBRG_arredond: TDBRadioGroup;
      GroupBox2: TGroupBox;
      DBEdit_Multiplicador: TDBEdit;
      Label7: TLabel;
      DBEdit_nome: TDBEdit;
      DBEdit1: TDBEdit;
      Label2: TLabel;
      Label3: TLabel;
      Label5: TLabel;
      DBEdit_indice: TDBEdit;
      GroupBox1: TGroupBox;
      DBGrid1: TDBGrid;
      DBCheckBox1: TDBCheckBox;
      Label1: TLabel;
      DBEdit2: TDBEdit;
      DS_FormaPagto: TDataSource;
      DS_Prazos: TDataSource;
      DBRadioGroup1: TDBRadioGroup;
      FrmFrameBotoes1: TFrmFrameBotoes;
      FrmFrameBarra1: TFrmFrameBarra;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    cxGrid: TcxGrid;
    cxGridDados: TcxGridDBTableView;
    cxGridDadosCodigo: TcxGridDBColumn;
    cxGridDadosNome: TcxGridDBColumn;
    cxGridDadosStatus: TcxGridDBColumn;
    cxGridNivel: TcxGridLevel;
    db_FormaPagto: TFDQuery;
    db_FormaPagtoDias: TFDQuery;
    db_FormaPagtoCODIGO: TFDAutoIncField;
    db_FormaPagtoNOME: TStringField;
    db_FormaPagtoACRESCIMO: TFloatField;
    db_FormaPagtoDESCONTO: TFloatField;
    db_FormaPagtoVENCIMENTO_DIA: TIntegerField;
    db_FormaPagtoTIPO_PAGAMENTO: TStringField;
    db_FormaPagtoARRED_SN: TStringField;
    db_FormaPagtoPARCELAMINIMA: TFloatField;
    db_FormaPagtoARREDONDAR: TStringField;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure db_FormaPagtoNewRecord(DataSet: TDataSet);
      procedure db_FormaPagtoDiasBeforePost(DataSet: TDataSet);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure DBGrid1Enter(Sender: TObject);
    procedure db_FormaPagtoDiasAfterDelete(DataSet: TDataSet);
    procedure cxGridDadosDblClick(Sender: TObject);
    procedure cxGridDadosCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
    FrmFormaPagto2: TFrmFormaPagto2;

implementation

uses FBaseDados, Biblioteca, FPrincipal, Global, App.Constantes;

{$R *.dfm}

procedure TFrmFormaPagto2.FormCreate(Sender: TObject);
begin

   PgFPagto.ActivePageIndex := 0;
   FrmFrameBotoes1.DataSource := DS_FormaPagto;
   db_FormaPagto.Open;
   db_FormaPagtoDias.Open;

   //
end;

procedure TFrmFormaPagto2.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   PgFPagto.ActivePage := TabEditar;
   DBEdit_nome.SetFocus;

end;

procedure TFrmFormaPagto2.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   PgFPagto.ActivePage := TabRegistros;

end;

procedure TFrmFormaPagto2.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmFormaPagto2.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmFormaPagto2.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmFormaPagto2.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
   If (db_FormaPagtoDias.state in [dsEdit, dsInsert]) then
   Begin
      // Salvar Prazos
      db_FormaPagtoDias.Post;
   End;

end;

procedure TFrmFormaPagto2.cxGridDadosCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected then
    ACanvas.Brush.Color := _COR_HIGHLIGHT;
end;

procedure TFrmFormaPagto2.cxGridDadosDblClick(Sender: TObject);
begin
   PgFPagto.ActivePage := TabEditar;
end;

procedure TFrmFormaPagto2.DBGrid1Enter(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
   If (db_FormaPagtoDias.state in [dsEdit, dsInsert]) then
   Begin
      // Salvar Prazos
      db_FormaPagtoDias.Post;
   End;

end;

procedure TFrmFormaPagto2.db_FormaPagtoDiasAfterDelete(DataSet: TDataSet);
begin
   db_FormaPagtoDias.refresh;
end;

procedure TFrmFormaPagto2.db_FormaPagtoDiasBeforePost(DataSet: TDataSet);
begin
   db_FormaPagtoDias.FieldByName('CODIGO').AsInteger := db_FormaPagto.FieldByName('CODIGO').AsInteger;

end;

procedure TFrmFormaPagto2.db_FormaPagtoNewRecord(DataSet: TDataSet);
begin
   db_FormaPagto.FieldByName('ARREDONDAR').AsString := 'P';
   db_FormaPagto.FieldByName('ARRED_SN').AsString := 'N';

end;

procedure TFrmFormaPagto2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   db_FormaPagto.Close;
   Action :=Cafree;

end;

end.
