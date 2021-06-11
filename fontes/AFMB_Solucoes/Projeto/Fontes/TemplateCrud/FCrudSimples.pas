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

 Unit FCrudSimples;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCheckBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.StdCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.ComCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn,
  IDBEdit, uEstSearchDialogZeos, FFrameBotoes, FFrameBarra, dxDateRanges,
  dxSkinsCore, dxSkinsDefaultPainters;

type
   TFrmCrudSimples = class(TForm)
    dbTabela: TFDQuery;
    dsTabela: TDataSource;
    FrmFrameBarra1: TFrmFrameBarra;
    FrmFrameBotoes1: TFrmFrameBotoes;
    dbEditPesquisar: TIDBEditDialog;
    pgControl: TPageControl;
    tabPrincipal: TTabSheet;
    tabDetalhe: TTabSheet;
    GroupBox1: TGroupBox;
    lblCodigo: TLabel;
    EditCodigo: TDBEdit;
    lblNome: TLabel;
    EditNome: TDBEdit;
    rgStatus: TDBRadioGroup;
    cxGrid: TcxGrid;
    cxGridDados: TcxGridDBTableView;
    cxGridDadosCodigo: TcxGridDBColumn;
    cxGridDadosNome: TcxGridDBColumn;
    cxGridDadosStatus: TcxGridDBColumn;
    cxGridNivel: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure FormCreate(Sender: TObject); Virtual;
    procedure Btn_SairClick(Sender: TObject); Virtual;
    procedure FormClose(Sender: TObject; var Action: TCloseAction); Virtual;
    procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject); Virtual;
    procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject); Virtual;
    procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject); Virtual;
    procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject); Virtual;
    procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject); Virtual;
    procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject); Virtual;
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject); Virtual;
    procedure tabDetalheShow(Sender: TObject); Virtual;
    procedure dbTabelaNewRecord(DataSet: TDataSet); Virtual;
    procedure cxGridDadosCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure dbTabelaAfterOpen(DataSet: TDataSet);
    procedure dsTabelaStateChange(Sender: TObject);
    procedure cxGridDadosDblClick(Sender: TObject);
   private
    FEditando         : Boolean;
    FValidarCampoNome : Boolean;

   procedure AcaoEditar;
      { Private declarations }
   public
      { Public declarations }
      property ValidarCampoNome : Boolean   read FValidarCampoNome write FValidarCampoNome;
   end;

var
   FrmCrudSimples: TFrmCrudSimples;

implementation

uses FPrincipal, App.SQL, Biblioteca, Global, Classe.Usuarios, App.Constantes,
  App.Funcoes;

{$R *.DFM}

procedure TFrmCrudSimples.FormCreate(Sender: TObject);
begin
  FValidarCampoNome :=True;

  dbTabela.close;
  FrmFrameBotoes1.DataSource := dsTabela;
  // FTrocarAba :=False;
  pgControl.ActivePageIndex :=0;
  Self.Caption :=FrmFrameBarra1.LblBarraTitulo.Caption;
  dbTabela.open;
end;

procedure TFrmCrudSimples.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
  pgControl.ActivePage :=tabDetalhe;
  FrmFrameBotoes1.SpbAdicionarClick(Sender);
  FEditando:=False;

  if (EditNome.Visible) and (EditNome.Enabled) then
    EditNome.SetFocus;
end;

procedure TFrmCrudSimples.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbCancelarClick(Sender);
  if pgControl.ActivePageIndex>0 then
    pgControl.ActivePage :=tabPrincipal;
end;

procedure TFrmCrudSimples.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
  pgControl.ActivePage :=tabDetalhe;
  FrmFrameBotoes1.SpbEditarClick(Sender);
end;

procedure TFrmCrudSimples.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);
end;

procedure TFrmCrudSimples.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbEditPesquisar.Execute then
   begin
      dbTabela.Locate('CODIGO', dbEditPesquisar.ResultFieldAsInteger('CODIGO'), []);
   End;

end;

procedure TFrmCrudSimples.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);
end;

procedure TFrmCrudSimples.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
  if FValidarCampoNome then
  begin
    if Trim(EditNome.Text)='' then
    begin
      Mensagem('Campo "'+lblNome.Caption+'" é obrigatório.');
      exit;
    end;
  end;
  FrmFrameBotoes1.SpbSalvarClick(Sender);
  pgControl.ActivePage :=tabPrincipal;

end;

procedure TFrmCrudSimples.tabDetalheShow(Sender: TObject);
begin
  if (EditNome.Visible) and (EditNome.Enabled) then
    EditNome.SetFocus;
end;

procedure TFrmCrudSimples.Btn_SairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmCrudSimples.cxGridDadosCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected then
    ACanvas.Brush.Color := _COR_HIGHLIGHT;
end;

procedure TFrmCrudSimples.dbTabelaAfterOpen(DataSet: TDataSet);
begin
  FormataCampo(dbTabela);
end;

procedure TFrmCrudSimples.dbTabelaNewRecord(DataSet: TDataSet);
begin
  dbTabela.FieldByName('STATUS').AsString :='S';
end;

procedure TFrmCrudSimples.dsTabelaStateChange(Sender: TObject);
begin
  if (FrmFrameBotoes1.DataSource.State in [dsInsert,dsEdit]) then
    FrmFrameBotoes1.AtivaEdicao
  else
    FrmFrameBotoes1.DesativaEdicao;
end;

procedure TFrmCrudSimples.cxGridDadosDblClick(Sender: TObject);
begin
  AcaoEditar;
end;

procedure TFrmCrudSimples.AcaoEditar;
begin
  if dbTabela.IsEmpty then
    Exit;
  pgControl.ActivePage :=tabDetalhe;

end;

procedure TFrmCrudSimples.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   dbTabela.close;
   Action :=caFree;
end;

end.
