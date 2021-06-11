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


unit FCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCalendar, cxCurrencyEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, ACBrBase, ACBrDFe, ACBrNFe, Vcl.ExtCtrls, Vcl.Buttons,
  FFrameBarra, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, ISFEdit,
  ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, Vcl.Mask, Vcl.DBCtrls,
  System.StrUtils, ACBrUtil,
  pcnNFe, dxSkinsCore, dxSkinsDefaultPainters, dxDateRanges, ACBrValidador, pcnConversao, pcnConversaoNFe,
  RecordProduto,
  RecordFornecedor;

type

  TFrmCompra = class(TForm)
    ACBrNFe1: TACBrNFe;
    pnPrincipal: TPanel;
    dsProduto: TDataSource;
    dsCtaPagar: TDataSource;
    dsFretePagar: TDataSource;
    dsEntrada: TDataSource;
    OpenDlgXML: TOpenDialog;
    spCompraEstoque: TFDStoredProc;
    QryEntrada: TFDQuery;
    QryEntradaItem: TFDQuery;
    QryCtaPagar: TFDQuery;
    QryFretePagar: TFDQuery;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditData: TDBEdit;
    EditNF: TDBEdit;
    EditDataEntrada: TDBEdit;
    EditFornecedor: TIDBEditDialog;
    EditNomeFornecedor: TEdit;
    EditNomePlanoContas: TEdit;
    Edit1: TEdit;
    DbEditCFOP: TIDBEditDialog;
    Edit2: TEdit;
    EditCentroCusto: TIDBEditDialog;
    EditPlanoConta: TIDBEditDialog;
    EditTransp: TIDBEditDialog;
    EditNomeTrasportadora: TEdit;
    pnContasPagar: TPanel;
    gbxFatura: TGroupBox;
    cxGridFatPagar: TcxGrid;
    grdCtaPag: TcxGridDBTableView;
    grdCtaPagDocumento: TcxGridDBColumn;
    grdCtaPagVencimento: TcxGridDBColumn;
    grdCtaPagValor: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    gbxFrete: TGroupBox;
    cxGridFatFrete: TcxGrid;
    grdCtaFrete: TcxGridDBTableView;
    grdCtaFreteDocumento: TcxGridDBColumn;
    grdCtaFreteVencimento: TcxGridDBColumn;
    grdCtaFreteValor: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    pnTituloPagar: TPanel;
    FrmFrameBarra1: TFrmFrameBarra;
    dbProcurarCompra: TIDBEditDialog;
    dbProcurarPedido: TIDBEditDialog;
    PanelBotoes: TPanel;
    PanelBotoesBottom: TPanel;
    SpbAdicionar: TSpeedButton;
    SpbEditar: TSpeedButton;
    SpbCancelar: TSpeedButton;
    btnConfirmar: TSpeedButton;
    SpbExcluir: TSpeedButton;
    SpbImprimir: TSpeedButton;
    SpbSair: TSpeedButton;
    btnEstornar: TSpeedButton;
    SpbProcurar: TSpeedButton;
    rgOpcaoEntrada: TRadioGroup;
    EditSerie: TDBEdit;
    Label1: TLabel;
    EditModelo: TDBEdit;
    Label5: TLabel;
    SpbSalvar: TSpeedButton;
    QryEstoque: TFDQuery;
    dsEstoque: TDataSource;
    gbProduto: TGroupBox;
    cxGridEntrada: TcxGrid;
    cxGridProduto: TcxGridDBTableView;
    cxGridProdutoIDProduto: TcxGridDBColumn;
    cxGridProdutoDescricao: TcxGridDBColumn;
    cxGridProdutoUND: TcxGridDBColumn;
    cxGridProdutoQTDE: TcxGridDBColumn;
    cxGridProdutoVUnit: TcxGridDBColumn;
    cxGridProdutoDesconto: TcxGridDBColumn;
    cxGridProdutoICMS: TcxGridDBColumn;
    cxGridProdutoICMSValor: TcxGridDBColumn;
    cxGridProdutoIPI: TcxGridDBColumn;
    cxGridProdutoIPIValor: TcxGridDBColumn;
    cxGridProdutoVTotal: TcxGridDBColumn;
    cxGridEntradaLevel1: TcxGridLevel;
    ACBrValidador1: TACBrValidador;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure SpbAdicionarClick(Sender: TObject);
    procedure SpbSairClick(Sender: TObject);
    procedure btnEstornarClick(Sender: TObject);
    procedure QryEntradaAfterPost(DataSet: TDataSet);
    procedure QryEntradaNewRecord(DataSet: TDataSet);
    procedure QryEntradaItemBeforePost(DataSet: TDataSet);
    procedure QryCtaPagarBeforePost(DataSet: TDataSet);
    procedure QryFretePagarBeforePost(DataSet: TDataSet);
    procedure QryEntradaAfterScroll(DataSet: TDataSet);
    procedure SpbProcurarClick(Sender: TObject);
    procedure SpbEditarClick(Sender: TObject);
    procedure SpbSalvarClick(Sender: TObject);
    procedure SpbCancelarClick(Sender: TObject);
    procedure SpbExcluirClick(Sender: TObject);
    procedure rgOpcaoEntradaClick(Sender: TObject);
    procedure FrmFrameBarra1LblBarraTituloDblClick(Sender: TObject);
    procedure GroupBox2Exit(Sender: TObject);
    procedure cxGridEntradaEnter(Sender: TObject);
    procedure QryEstoqueBeforeOpen(DataSet: TDataSet);
    procedure SpbImprimirClick(Sender: TObject);
  private
    { Private declarations }
    FornecedorRec : TFornecedorRecord;
    FProduto      : TProduto;

    procedure SetFornecedor(FNFe: TNFe);

    function  ComprasInsertFornecedor : Integer;
    procedure CadastraProduto(aProduto : TProduto);
    function  CheckNFe(aFornecedor, aNF, aSerie : Integer): Boolean;
    procedure ImportarXMLFornecedor;
    procedure SetParametros;
    procedure SetEdicao(aValue: Boolean);
    procedure AbrirTabelas(aValue: Boolean);
    procedure SalvarDados;
    function  CheckBaixaNFe(aFornecedor, aNF, aSerie: Integer): Boolean;
    procedure DesativarEdicao(aGrid : TcxGridDBTableView; aValue : Boolean);

  public
    { Public declarations }
  end;

var
  FrmCompra: TFrmCompra;

implementation

{$R *.dfm}

uses FPrincipal, Classe.Global, App.Funcoes, Biblioteca, App.SQL,
  FComprasImprimir;


procedure TFrmCompra.SetFornecedor(FNFe: TNFe);
var
  mFornecedor : TFornecedorRecord;
begin
  mFornecedor.GetByCNPJ(FNFe.Emit.CNPJCPF);
  FornecedorRec.CNPJCPF   := FormatarCNPJouCPF(FNFe.Emit.CNPJCPF);
  FornecedorRec.IDFornec  := mFornecedor.IDFornec;
  FornecedorRec.IE        := FNFe.Emit.IE;
  FornecedorRec.xNome     := FNFe.Emit.xNome;
  FornecedorRec.Fone      := FNFe.Emit.EnderEmit.fone;
  FornecedorRec.CEP       := FNFe.Emit.EnderEmit.CEP;
  FornecedorRec.xLgr      := FNFe.Emit.EnderEmit.xLgr;
  FornecedorRec.nro       := FNFe.Emit.EnderEmit.nro;
  FornecedorRec.xCpl      := FNFe.Emit.EnderEmit.xCpl;
  FornecedorRec.xBairro   := FNFe.Emit.EnderEmit.xBairro;
  FornecedorRec.cMun      := FNFe.Emit.EnderEmit.cMun;
  FornecedorRec.xMun      := FNFe.Emit.EnderEmit.xMun;
  FornecedorRec.cUF       := FNFe.Ide.cUF;
  FornecedorRec.UF        := FNFe.Emit.EnderEmit.UF;
  FornecedorRec.cPais     := FNFe.Emit.EnderEmit.cPais;
  FornecedorRec.xPais     := FNFe.Emit.EnderEmit.xPais;
  FornecedorRec.Transporta.CNPJCPF   := FNFe.Transp.Transporta.CNPJCPF;
  FornecedorRec.Transporta.xNome     := FNFe.Transp.Transporta.xNome;
  FornecedorRec.Transporta.IE        := FNFe.Transp.Transporta.IE;
  FornecedorRec.Transporta.xLgr      := FNFe.Transp.Transporta.xEnder;
  FornecedorRec.Transporta.xMun      := FNFe.Transp.Transporta.xMun;
  FornecedorRec.Transporta.UF        := FNFe.Transp.Transporta.UF;
  //FornecedorRec.Transporta.qVol      := FNFe.Transp.Vol[0].qVol;
  //FornecedorRec.Transporta.pesoL     := FNFe.Transp.Vol[0].pesoL;
end;

procedure TFrmCompra.AbrirTabelas(aValue : Boolean);
begin
  QryEntrada.Active    := aValue;
  QryEntradaItem.Active    := aValue;
  QryCtaPagar.Active   := aValue;
  QryFretePagar.Active := aValue;
  QryEstoque.Active    := aValue;
  if aValue=false then
  begin
    QryEstoque.ParamByName('IDEMPRESA').AsInteger       := 0;
    QryEntrada.ParamByName('IDCOMPRA').AsInteger        := 0;
    QryEntradaItem.ParamByName('IDCOMPRA').AsInteger        := 0;
    QryCtaPagar.ParamByName('IDFORNECEDOR').AsInteger   := 0;
    QryCtaPagar.ParamByName('IDNOTAFISCAL').AsInteger   := 0;
    QryFretePagar.ParamByName('IDFORNECEDOR').AsInteger := 0;
    QryFretePagar.ParamByName('IDNOTAFISCAL').AsInteger := 0;
  end;
end;

procedure TFrmCompra.SpbAdicionarClick(Sender: TObject);
begin
  try
    if rgOpcaoEntrada.ItemIndex=0 then
    begin
      AbrirTabelas(True);
      DesativarEdicao(cxGridProduto, False);
      DesativarEdicao(grdCtaPag, False);
      DesativarEdicao(grdCtaFrete, False);
      ImportarXMLFornecedor();
    end;
  finally

  end;

  if rgOpcaoEntrada.ItemIndex=1 then
  begin
    if (QryEntrada.state in [dsinsert,dsedit]) then
      QryEntrada.Cancel;

    AbrirTabelas(False);
    AbrirTabelas(True);

    DesativarEdicao(cxGridProduto, True);
    DesativarEdicao(grdCtaPag, True);
    DesativarEdicao(grdCtaFrete, True);
    SetEdicao(True);
    QryEntrada.Append;
    EditNF.SetFocus;
  end;
end;

procedure TFrmCompra.SpbCancelarClick(Sender: TObject);
begin
  if (QryEntrada.state in [dsinsert,dsedit]) then
  begin
    QryEntrada.Cancel;
    QryEntradaItem.Cancel;
    QryCtaPagar.Cancel;
    QryFretePagar.Cancel;

    if QryEntrada.FieldByName('CODIGO').AsInteger<1 then
    begin
      AbrirTabelas(False);
    end;
  end;
end;

procedure TFrmCompra.SpbEditarClick(Sender: TObject);
begin
    if (QryEntrada.state in [dsinsert,dsedit]) then
      exit;

    if  QryEntrada.IsEmpty then
      exit;

    if not (QryEntrada.state in [dsedit]) then
      QryEntrada.Edit;
end;

procedure TFrmCompra.SpbExcluirClick(Sender: TObject);
begin
  if (QryEntrada.IsEmpty) then
    exit;
  if pergunta('Excluir este registro?')=false then
    exit;

  QryCtaPagar.First;
  while not QryCtaPagar.eof do
    QryCtaPagar.Delete;
  QryFretePagar.First;
  while not QryFretePagar.eof do
    QryFretePagar.Delete;
  QryEntrada.delete;
  AbrirTabelas(False);

end;

procedure TFrmCompra.SpbImprimirClick(Sender: TObject);
begin
  if (QryEntrada.IsEmpty) then
    exit;
  try
    FrmComprasImprimir := TFrmComprasImprimir.create(self);
  finally
    if FrmComprasImprimir <> Nil then
      FrmComprasImprimir := Nil;
  end;
end;

procedure TFrmCompra.btnConfirmarClick(Sender: TObject);
begin
  if (QryEntrada.IsEmpty) then
    exit;
  if CheckBaixaNFe(QryEntrada.FieldByName('FORNECEDOR').AsInteger, StrToIntDef(QryEntrada.FieldByName('NOTAFISCAL').AsString,0), StrToIntDef(QryEntrada.FieldByName('SERIE').AsString,0) ) then
  begin
    Mensagem('Nota Fiscal '+QryEntrada.FieldByName('NOTAFISCAL').AsString+' já foi importada e baixada.');
    exit;
  end;
  if not pergunta('Confirma o a baixa da compra?') then
    exit;
  spCompraEstoque.ParamByName('NCOMPRA').AsInteger := QryEntrada.FieldByName('CODIGO').AsInteger;
  spCompraEstoque.ParamByName('ACAO').AsString     := 'BAIXAR';
  spCompraEstoque.ExecProc;
  Mensagem('Compra foi baixada.');

end;

procedure TFrmCompra.btnEstornarClick(Sender: TObject);
begin
  if (QryEntrada.IsEmpty) then
    exit;
  if not CheckBaixaNFe(QryEntrada.FieldByName('FORNECEDOR').AsInteger, StrToIntDef(QryEntrada.FieldByName('NOTAFISCAL').AsString,0), StrToIntDef(QryEntrada.FieldByName('SERIE').AsString,0) ) then
  begin
    Mensagem('Nota Fiscal '+QryEntrada.FieldByName('NOTAFISCAL').AsString+' não foi baixada.'+sLineBreak+'Não é possivel fazer estorno.');
    exit;
  end;
  if not pergunta('Confirma o estorno da compra?') then
    exit;
  spCompraEstoque.ParamByName('NCOMPRA').AsInteger := QryEntrada.FieldByName('CODIGO').AsInteger;
  spCompraEstoque.ParamByName('ACAO').AsString     := 'ESTORNAR';
  spCompraEstoque.ExecProc;
  Mensagem('Compra foi estornada.');
end;

procedure TFrmCompra.SpbProcurarClick(Sender: TObject);
begin
   if dbProcurarCompra.Execute then
   begin
      QryEntrada.Close;
      QryEntrada.ParamByName('IDCOMPRA').AsInteger := dbProcurarCompra.ResultFieldAsInteger('CODIGO');
      QryEntrada.open;

      if QryEntrada.FieldByName('ORIGEM').AsString='XML' then
      begin
        rgOpcaoEntrada.ItemIndex := 0;
        DesativarEdicao(cxGridProduto, False);
        DesativarEdicao(grdCtaPag, False);
        DesativarEdicao(grdCtaFrete, False);
        SetEdicao(False);
      end
      else
      begin
        rgOpcaoEntrada.ItemIndex := 1;
        DesativarEdicao(cxGridProduto, True);
        DesativarEdicao(grdCtaPag, True);
        DesativarEdicao(grdCtaFrete, True);
        SetEdicao(True);
      end;

      QryEntradaItem.Close;
      QryEstoque.Close;
      QryCtaPagar.Close;
      QryFretePagar.Close;

      SetParametros();
      QryEntradaItem.open;
      QryEstoque.open;
      QryCtaPagar.open;
      QryFretePagar.open;
   end;
end;

procedure TFrmCompra.SpbSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCompra.SpbSalvarClick(Sender: TObject);
begin
  SalvarDados;
end;

procedure TFrmCompra.SalvarDados;
begin
  if (QryEntrada.state in [dsinsert,dsedit]) then
    QryEntrada.Post;

  if (QryEntradaItem.state in [dsinsert,dsedit]) then
    QryEntradaItem.Post;

  if (QryCtaPagar.state in [dsinsert,dsedit]) then
    QryCtaPagar.Post;

  if (QryFretePagar.state in [dsinsert,dsedit]) then
    QryFretePagar.Post;

end;


procedure TFrmCompra.QryFretePagarBeforePost(DataSet: TDataSet);
begin
  if rgOpcaoEntrada.ItemIndex=1 then
  begin
    QryFretePagar.FieldByName('EMPRESA').AsInteger      := 1;
    QryFretePagar.FieldByName('FORNECEDOR').AsInteger   := FornecedorRec.Transporta.IDTransp; // id transportadora
    QryFretePagar.FieldByName('NOTAFISCAL').AsString    := QryEntrada.FieldByName('NOTAFISCAL').AsString;
    QryFretePagar.FieldByName('SERIENF').AsString       := QryEntrada.FieldByName('SERIE').AsString;
    QryFretePagar.FieldByName('DATA').AsDateTime        := QryEntrada.FieldByName('DATA').AsDateTime;
    QryFretePagar.FieldByName('TIPO').AsString          := 'PAGAR';
    QryFretePagar.FieldByName('QUITADO').AsString       := 'N';
    QryFretePagar.FieldByName('HISTORICO').AsString     := 'FRETE/DESPESA (NOTA FISCAL DE COMPRA: '+QryEntrada.FieldByName('NOTAFISCAL').AsString+')';
    QryFretePagar.FieldByName('ORIGEM').AsString        := 'FRETE';
  end;
end;

procedure TFrmCompra.SetParametros;
begin
  if (QryEntrada.State in [dsInsert]) then
    exit;

  FornecedorRec.IDFornec  :=  QryEntrada.FieldByName('FORNECEDOR').AsInteger;
  FornecedorRec.Transporta.IDTransp :=  QryEntrada.FieldByName('TRANSPORTADORA').AsInteger;
  QryEntrada.ParamByName('IDCOMPRA').AsInteger         := QryEntrada.FieldByName('CODIGO').AsInteger;
  QryEntradaItem.ParamByName('IDCOMPRA').AsInteger         := QryEntrada.FieldByName('CODIGO').AsInteger;
  QryCtaPagar.ParamByName('IDFORNECEDOR').AsInteger    := QryEntrada.FieldByName('FORNECEDOR').AsInteger;
  QryCtaPagar.ParamByName('IDNOTAFISCAL').AsInteger    := QryEntrada.FieldByName('NOTAFISCAL').AsInteger;
  QryFretePagar.ParamByName('IDFORNECEDOR').AsInteger  := QryEntrada.FieldByName('TRANSPORTADORA').AsInteger;
  QryFretePagar.ParamByName('IDNOTAFISCAL').AsInteger  := QryEntrada.FieldByName('NOTAFISCAL').AsInteger;
end;

procedure TFrmCompra.ImportarXMLFornecedor;
var
  IDCompra    : Integer;
  I           : Integer;
  mQtdTotal   : Currency;
  mVlrTotal   : Currency;
  mVlrProdTot : Currency;
  mVlrDesc    : Currency;
  mDecimal    : Char;
  mRatFrete   : Currency;
  mValFrete   : Currency;
  mOK         : Boolean;
  mIDFornec   : Integer;
begin
  IDCompra    := 0;
  I           := 0;
  mQtdTotal   := 0;
  mVlrTotal   := 0;
  mVlrProdTot := 0;
  mVlrDesc    := 0;
  mRatFrete   := 0;
  mValFrete   := 0;
  mOK         := False;
  mIDFornec   := 0;

  if not OpenDlgXML.Execute then
    exit;

  ACBrNFe1.NotasFiscais.Clear;
  try
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDlgXML.FileName);
  except
    raise Exception.Create('Arquivo NF-e Inválido');
  end;

  if Copy(LowerCase(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID),1,3)<>'nfe' then
  begin
    Mensagem('Arquivo não é uma NF-e. Processo cancelado.');
    exit;
  end;

  try
    SetFornecedor(ACBrNFe1.NotasFiscais.Items[0].NFe);
    if FornecedorRec.IDFornec<1 then
    begin
      mIDFornec := ComprasInsertFornecedor();
      FornecedorRec.Limpar();
      FornecedorRec.GetByID(mIDFornec);
      if FornecedorRec.IDFornec<1 then
        SetFornecedor(ACBrNFe1.NotasFiscais.Items[0].NFe);
    end;

    if FornecedorRec.IDFornec < 1 then
    begin
      Mensagem('Problema na indentificação do Fornecedor');
    end;

    if CheckNFe(FornecedorRec.IDFornec, ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF, ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.serie) then
    begin
      Aviso('Nota Fiscal ja foi importada. Clique no botão "Procurar"');
      exit;
    end;

    QryEntrada.DisableControls;
    QryEntradaItem.DisableControls;
    QryCtaPagar.DisableControls;
    QryFretePagar.DisableControls;

    //----------------------------------------------------------------------
    // CALCULAR TOTAIS
    //----------------------------------------------------------------------
    mQtdTotal   := 0;
    mVlrDesc    := 0;
    mVlrProdTot := 0;
    mVlrTotal   := 0;
    for I := 0 to ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Count-1 do
    begin
       with ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[I] do
       begin
         mQtdTotal   := mQtdTotal   + Prod.qCom;
         mVlrDesc    := mVlrDesc    + Prod.vDesc;
         mVlrProdTot := mVlrProdTot + (Prod.vUnCom * Prod.qCom);
         mVlrTotal   := mVlrTotal   + (Prod.vUnCom * Prod.qCom);
       end;
    end;

    //----------------------------------------------------------------------
    // Adicionar Compra
    //----------------------------------------------------------------------
    QryEntrada.Append;
    QryEntrada.FieldByName('EMPRESA').AsInteger         := FSistema.Empresa;
    QryEntrada.FieldByName('CFOP').AsInteger            := 1102;
    QryEntrada.FieldByName('FORNECEDOR').AsInteger      := FornecedorRec.IDFornec;
    QryEntrada.FieldByName('NOTAFISCAL').AsString       := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF);
    QryEntrada.FieldByName('MODELO').AsString           := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.modelo);
    QryEntrada.FieldByName('SERIE').AsString            := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.serie);
    QryEntrada.FieldByName('DATA').AsDateTime           := ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi;
    QryEntrada.FieldByName('DATAENTRADA').AsDateTime    := Date;
    if FornecedorRec.Transporta.IDTransp>0 then
      QryEntrada.FieldByName('TRANSPORTADORA').AsInteger   := FornecedorRec.Transporta.IDTransp;
    QryEntrada.FieldByName('FRETE_VALOR').AsCurrency       := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete;
    QryEntrada.FieldByName('QTDE_PRODUTOS').AsCurrency     := mQtdTotal;
    QryEntrada.FieldByName('VALOR_PRODUTOS').AsCurrency    := mVlrProdTot;
    QryEntrada.FieldByName('VLR_DESCONTO').AsCurrency      := mVlrDesc;
    QryEntrada.FieldByName('TOTAL_NF').AsCurrency          := mVlrTotal;
    QryEntrada.FieldByName('ORIGEM').AsString           := 'XML';
    QryEntrada.FieldByName('ATUALIZADO').AsString       := 'N';
    QryEntrada.Post;

    //----------------------------------------------------------------------
    // Adicionar Produtos
    //----------------------------------------------------------------------
    for I := 0 to ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Count-1 do
    begin
       //----------------------------------------------------------------------
       // INFORMAÇÃO DOS PRODUTOS
       //----------------------------------------------------------------------
       with ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[I] do
       begin
         FProduto.Limpar();
         FProduto.GetByCodFornecedor(FornecedorRec.IDFornec, Prod.cProd);
         if FProduto.CodProprio = '' then
         begin
           FProduto.Limpar();
           FProduto.IDFornec         := FornecedorRec.IDFornec;
           FProduto.CodPropFornec    := Prod.cProd;
           FProduto.Descricao        := Prod.xProd;
           FProduto.GTIN             := Prod.cEAN;
           FProduto.VlrCusto         := Prod.vUnCom;
           CadastraProduto(FProduto);
           FProduto.Limpar();
           FProduto.GetByCodFornecedor(FornecedorRec.IDFornec, Prod.cProd); // Procura novamente - trazendo dados cadastrados.
         end;

         QryEntradaItem.Append;
         QryEntradaItem.FieldByName('CODIGO').AsInteger          := QryEntrada.FieldByName('CODIGO').AsInteger;
         QryEntradaItem.FieldByName('FORNECEDOR').AsInteger      := QryEntrada.FieldByName('FORNECEDOR').AsInteger;
         QryEntradaItem.FieldByName('NOTAFISCAL').AsString       := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF);
         QryEntradaItem.FieldByName('MODELO').AsString           := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.modelo);
         QryEntradaItem.FieldByName('SERIE').AsString            := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.serie);
         QryEntradaItem.FieldByName('DATA').AsDateTime           := ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi;
         QryEntradaItem.FieldByName('DATAENTRADA').AsDateTime    := Date;

         QryEntradaItem.FieldByName('PRODUTO').AsString          := FProduto.CodProprio;
         QryEntradaItem.FieldByName('DESCRICAO').AsString        := Prod.xProd;
         QryEntradaItem.FieldByName('UND').AsString              := Prod.uCom;
         QryEntradaItem.FieldByName('QUANTIDADE').AsCurrency        := Prod.qCom;
         QryEntradaItem.FieldByName('VL_UNITARIO').AsCurrency       := Prod.vUnCom;
         QryEntradaItem.FieldByName('DESCONTO_VLR').AsCurrency      := Prod.vDesc;
         QryEntradaItem.FieldByName('VL_TOTAL').AsCurrency          := (Prod.vUnCom * Prod.qCom);
         mValFrete := ((QryEntradaItem.FieldByName('VL_UNITARIO').AsCurrency / QryEntrada.FieldByName('TOTAL_NF').AsCurrency) * QryEntrada.FieldByName('FRETE_VALOR').AsCurrency);
         mRatFrete := ((mValFrete / QryEntradaItem.FieldByName('VL_TOTAL').AsCurrency) * 100);
         QryEntradaItem.FieldByName('PFRETE').AsCurrency          := mRatFrete;
         QryEntradaItem.FieldByName('PFRETE_VALOR').AsCurrency    := mValFrete;


        //----------------------------------------------------------------------
        // TRIBUTOS/IMPOSTOS
        //----------------------------------------------------------------------
         with Imposto do
         begin
           QryEntradaItem.FieldByName('ICMS').AsCurrency              := ICMS.pICMS;
           QryEntradaItem.FieldByName('ICMS_VALOR').AsCurrency        := ICMS.vICMS;
           QryEntradaItem.FieldByName('IPI').AsCurrency               := IPI.pIPI;
           QryEntradaItem.FieldByName('IPI_VALOR').AsCurrency         := IPI.vIPI;

            QryEntradaItem.FieldByName('PICMS').AsCurrency            := ICMS.PICMS;
            QryEntradaItem.FieldByName('VICMS').AsCurrency            := ICMS.VICMS;
            QryEntradaItem.FieldByName('PREDBCST').AsCurrency         := ICMS.PREDBCST;

            QryEntradaItem.FieldByName('VBCST').AsCurrency            := ICMS.vBCST;
            QryEntradaItem.FieldByName('PICMSST').AsCurrency          := ICMS.pICMSST;
            QryEntradaItem.FieldByName('VICMSST').AsCurrency          := ICMS.VICMSST;
            QryEntradaItem.FieldByName('PST').AsCurrency              := ICMS.PST;
            QryEntradaItem.FieldByName('VBCSTRET').AsCurrency         := ICMS.VBCSTRET;
            QryEntradaItem.FieldByName('VICMSSTRET').AsCurrency       := ICMS.VICMSSTRET;
            QryEntradaItem.FieldByName('VICMSSUBSTITUTO').AsCurrency  := ICMS.VICMSSUBSTITUTO;
            QryEntradaItem.FieldByName('PREDBCEFET').AsCurrency       := ICMS.PREDBCEFET;
            QryEntradaItem.FieldByName('VBCEFET').AsCurrency          := ICMS.VBCEFET;
            QryEntradaItem.FieldByName('PICMSEFET').AsCurrency        := ICMS.PICMSEFET;
            QryEntradaItem.FieldByName('VICMSEFET').AsCurrency        := ICMS.VICMSEFET;
         end;

         QryEntradaItem.FieldByName('IDNCM').AsString        := Prod.NCM;
         QryEntradaItem.FieldByName('IDCEST').AsString       := Prod.CEST;
         QryEntradaItem.FieldByName('IDCSTORIGEM').AsInteger := StrToIntDef(OrigToStr(Imposto.ICMS.orig),-1);
         QryEntradaItem.FieldByName('IDCSTICMS').AsInteger   := StrToIntDef(CSTICMSToStr(Imposto.ICMS.CST),-1);
         QryEntradaItem.FieldByName('IDCSOSNICMS').AsInteger := StrToIntDef(CSOSNIcmsToStr(Imposto.ICMS.CSOSN),-1);
         QryEntradaItem.FieldByName('IDANP').AsString        := IntToStr(Prod.comb.cProdANP);
         QryEntradaItem.FieldByName('IDCSTIPI').AsInteger    := StrToIntDef(CSTIPIToStr(Imposto.IPI.CST),-1);
         QryEntradaItem.FieldByName('IDCSTPIS').AsInteger    := StrToIntDef(CSTPISToStr(Imposto.PIS.CST),1-1);
         QryEntradaItem.FieldByName('IDCSTCOFINS').AsInteger := StrToIntDef(CSTCOFINSToStr(Imposto.COFINS.CST),-1);
         QryEntradaItem.FieldByName('INDESCALA').AsString    := IndEscalaToStr(Prod.indEscala);
       end;
       QryEntradaItem.Post;
       FProduto.Limpar();
    end;

    //----------------------------------------------------------------------
    // FATURA A PAGAR
    //----------------------------------------------------------------------
    for I:=0 to ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Count-1 do
    begin
      with ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[I] do
       begin
         QryCtaPagar.Append;
         QryCtaPagar.FieldByName('EMPRESA').AsInteger      := 1;
         QryCtaPagar.FieldByName('FORNECEDOR').AsInteger   := QryEntrada.FieldByName('FORNECEDOR').AsInteger;
         QryCtaPagar.FieldByName('NOTAFISCAL').AsString    := QryEntrada.FieldByName('NOTAFISCAL').AsString;
         QryCtaPagar.FieldByName('SERIENF').AsString       := QryEntrada.FieldByName('SERIE').AsString;
         QryCtaPagar.FieldByName('DATA').AsDateTime        := QryEntrada.FieldByName('DATA').AsDateTime;
         QryCtaPagar.FieldByName('VENCIMENTO').AsDateTime  := dVenc;
         QryCtaPagar.FieldByName('DOCUMENTO').AsString     := nDup;
         QryCtaPagar.FieldByName('TIPO').AsString          := 'PAGAR';
         QryCtaPagar.FieldByName('VALOR').AsCurrency          := vDup;
         QryCtaPagar.FieldByName('VALOR_SALDO').AsCurrency    := vDup;
         QryCtaPagar.FieldByName('QUITADO').AsString       := 'N';
         QryCtaPagar.FieldByName('HISTORICO').AsString     := '(NOTA FISCAL DE COMPRA: '+QryEntrada.FieldByName('NOTAFISCAL').AsString+')';
         QryCtaPagar.FieldByName('ORIGEM').AsString        := 'COMPRA';
         QryCtaPagar.Post;
       end;
    end;

   //----------------------------------------------------------------------
    // DESPESA FRETE
    //----------------------------------------------------------------------
    if FornecedorRec.Transporta.IDTransp>0 then
    begin
      if ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete>0 then
      begin
        QryFretePagar.Append;
        QryFretePagar.FieldByName('EMPRESA').AsInteger      := 1;
        QryFretePagar.FieldByName('FORNECEDOR').AsInteger   := QryEntrada.FieldByName('TRANSPORTADORA').AsInteger;
        QryFretePagar.FieldByName('NOTAFISCAL').AsString    := QryEntrada.FieldByName('NOTAFISCAL').AsString;
        QryFretePagar.FieldByName('SERIENF').AsString       := QryEntrada.FieldByName('SERIE').AsString;
        QryFretePagar.FieldByName('DATA').AsDateTime        := QryEntrada.FieldByName('DATA').AsDateTime;
        QryFretePagar.FieldByName('VENCIMENTO').AsDateTime  := Date;
        QryFretePagar.FieldByName('DOCUMENTO').AsString     := 'FRETE-'+QryEntrada.FieldByName('NOTAFISCAL').AsString;
        QryFretePagar.FieldByName('TIPO').AsString          := 'PAGAR';
        QryFretePagar.FieldByName('VALOR').AsCurrency       := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete;
        QryFretePagar.FieldByName('VALOR_SALDO').AsCurrency := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete;
        QryFretePagar.FieldByName('QUITADO').AsString       := 'N';
        QryFretePagar.FieldByName('HISTORICO').AsString     := 'FRETE/DESPESA (NOTA FISCAL DE COMPRA: '+QryEntrada.FieldByName('NOTAFISCAL').AsString+')';
        QryFretePagar.FieldByName('ORIGEM').AsString        := 'FRETE';
        QryFretePagar.Post;
      end;
    end;

  finally
    //----------------------------------------------------------------------
    //
    //----------------------------------------------------------------------
    QryEntradaItem.First;
    QryEntrada.EndBatch;
    QryEntradaItem.EndBatch;
    QryCtaPagar.EndBatch;
    QryFretePagar.EndBatch;
    QryEntrada.EnableControls;
    QryEntradaItem.EnableControls;
    QryCtaPagar.EnableControls;
    QryFretePagar.EnableControls;
    ACBrNFe1.NotasFiscais.Clear
  end;
end;

procedure TFrmCompra.QryCtaPagarBeforePost(DataSet: TDataSet);
begin
  if rgOpcaoEntrada.ItemIndex=1 then
  begin
    QryCtaPagar.FieldByName('EMPRESA').AsInteger      := 1;
    QryCtaPagar.FieldByName('FORNECEDOR').AsInteger   := FornecedorRec.IDFornec; // id transportadora
    QryCtaPagar.FieldByName('NOTAFISCAL').AsString    := QryEntrada.FieldByName('NOTAFISCAL').AsString;
    QryCtaPagar.FieldByName('SERIENF').AsString       := QryEntrada.FieldByName('SERIE').AsString;
    QryCtaPagar.FieldByName('DATA').AsDateTime        := QryEntrada.FieldByName('DATA').AsDateTime;
    QryCtaPagar.FieldByName('TIPO').AsString          := 'PAGAR';
    QryCtaPagar.FieldByName('QUITADO').AsString       := 'N';
    QryCtaPagar.FieldByName('HISTORICO').AsString     := '(NOTA FISCAL DE COMPRA: '+QryEntrada.FieldByName('NOTAFISCAL').AsString+')';
    QryCtaPagar.FieldByName('ORIGEM').AsString        := 'COMPRA';
  end;
end;

procedure TFrmCompra.QryEntradaAfterPost(DataSet: TDataSet);
begin
  SetParametros();
end;

procedure TFrmCompra.QryEntradaAfterScroll(DataSet: TDataSet);
begin
  if ((QryEntrada.FieldByName('ORIGEM').AsString='XML') or (QryEntrada.FieldByName('ATUALIZADO').AsString='S'))  then
    SetEdicao(False);

  if ((QryEntrada.FieldByName('ORIGEM').AsString<>'XML') and (QryEntrada.FieldByName('ATUALIZADO').AsString='N'))  then
    SetEdicao(True);
end;

procedure TFrmCompra.SetEdicao(aValue : Boolean);
begin
  EditNF.Enabled           := aValue;
  EditSerie.Enabled        := aValue;
  EditModelo.Enabled       := aValue;
  EditData.Enabled         := aValue;
  EditDataEntrada.Enabled  := aValue;
  EditFornecedor.Enabled   := aValue;
  DbEditCFOP.Enabled       := aValue;
  EditCentroCusto.Enabled  := aValue;
  EditPlanoConta.Enabled   := aValue;
  EditTransp.Enabled       := aValue;
end;

procedure TFrmCompra.QryEntradaNewRecord(DataSet: TDataSet);
begin
  if rgOpcaoEntrada.ItemIndex=1 then
  begin
    QryEntrada.ParamByName('IDCOMPRA').AsInteger        := 0;
    QryEntrada.FieldByName('EMPRESA').AsInteger         := FSistema.Empresa;
    QryEntrada.FieldByName('CFOP').AsInteger            := 1102;
    QryEntrada.FieldByName('DATA').AsDateTime           := Date;
    QryEntrada.FieldByName('DATAENTRADA').AsDateTime    := Date;
    QryEntrada.FieldByName('ORIGEM').AsString           := 'MANUAL';
    QryEntrada.FieldByName('ATUALIZADO').AsString       := 'N';

    QryEntradaItem.Close;
    QryCtaPagar.Close;
    QryFretePagar.Close;

    QryEntradaItem.Open;
    QryCtaPagar.Open;
    QryFretePagar.Open;

  end;
end;

procedure TFrmCompra.QryEstoqueBeforeOpen(DataSet: TDataSet);
begin
  QryEstoque.ParamByName('IDEMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TFrmCompra.QryEntradaItemBeforePost(DataSet: TDataSet);
var
  mNome : String;
begin
  mNome := '';
  if rgOpcaoEntrada.ItemIndex=1 then
  begin
    mNome := fncReferenciaNome(QryEntradaItem.FieldByName('PRODUTO').AsString);
    if (mNome='') then
    begin
      Mensagem('Produto '+QryEntradaItem.FieldByName('PRODUTO').AsString+' não existe... Verifique.');
      QryEntradaItem.Cancel;
      exit;
    end;
    QryEntradaItem.FieldByName('DESCRICAO').AsString        := mNome;

    QryEntradaItem.FieldByName('CODIGO').AsInteger          := QryEntrada.FieldByName('CODIGO').AsInteger;
    QryEntradaItem.FieldByName('NOTAFISCAL').AsString       := QryEntrada.FieldByName('NOTAFISCAL').AsString;
    QryEntradaItem.FieldByName('MODELO').AsString           := QryEntrada.FieldByName('MODELO').AsString;
    QryEntradaItem.FieldByName('SERIE').AsString            := QryEntrada.FieldByName('SERIE').AsString;
    QryEntradaItem.FieldByName('FORNECEDOR').AsInteger      := QryEntrada.FieldByName('FORNECEDOR').AsInteger;
    QryEntradaItem.FieldByName('DATA').AsDateTime           := QryEntrada.FieldByName('DATA').AsDateTime;
    QryEntradaItem.FieldByName('DATAENTRADA').AsDateTime    := QryEntrada.FieldByName('DATAENTRADA').AsDateTime;
  end;
end;

procedure TFrmCompra.rgOpcaoEntradaClick(Sender: TObject);
begin
  if not QryEntrada.Active then
    exit;

  if QryEntrada.FieldByName('ORIGEM').AsString='XML' then
    exit;

  SetEdicao(rgOpcaoEntrada.ItemIndex=1);

  if rgOpcaoEntrada.ItemIndex=0 then
    gbProduto.Caption := '[Produtos]'
  else
    gbProduto.Caption := '[Produtos] pressione "Insert" para incluir itens na grade';

end;

procedure TFrmCompra.FormCreate(Sender: TObject);
begin
  ACBrValidador1.TipoDocto := docGTIN;
  DesativarEdicao(cxGridProduto, False);
  DesativarEdicao(grdCtaPag, False);
  DesativarEdicao(grdCtaFrete, False);
  SetEdicao(False);
end;

procedure TFrmCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AbrirTabelas(False);
  Action := Cafree;
end;

procedure TFrmCompra.FormDestroy(Sender: TObject);
begin
  if FrmCompra <> Nil then
    FrmCompra := Nil;
end;

procedure TFrmCompra.DesativarEdicao(aGrid : TcxGridDBTableView; aValue : Boolean);
begin
  aGrid.OptionsData.Deleting             := aValue;
  aGrid.OptionsData.DeletingConfirmation := aValue;
  aGrid.OptionsData.Editing              := aValue;
  aGrid.OptionsData.Inserting            := aValue;
end;

procedure TFrmCompra.FormShow(Sender: TObject);
begin
  rgOpcaoEntradaClick(Sender);
  rgOpcaoEntrada.SetFocus;
end;

procedure TFrmCompra.FrmFrameBarra1LblBarraTituloDblClick(Sender: TObject);
begin
  FrmFrameBarra1.LblBarraTituloDblClick(Sender);
end;

function TFrmCompra.ComprasInsertFornecedor : Integer;
var
  mDQuery  : TFDQuery;
begin
  Result := 0;
  try
    mDQuery  := TFDQuery.Create(Self);
    mDQuery.Connection := FrmPrincipal.DBConexao;
    mDQuery.UpdateOptions.AutoIncFields := 'CODIGO';
    mDQuery.SQL.Clear;
    mDQuery.SQL.Add('  insert into CAD_CLIENTES(   ');
    mDQuery.SQL.Add('   DATA ');
    mDQuery.SQL.Add('  ,CPF_CNPJ ');
    mDQuery.SQL.Add('  ,RG_IE ');
    mDQuery.SQL.Add('  ,TIPO ');
    mDQuery.SQL.Add('  ,CLASSIFICACAO');
    mDQuery.SQL.Add('  ,NOME');
    mDQuery.SQL.Add('  ,NOME_FANTASIA');
    mDQuery.SQL.Add('  ,FONE');
    mDQuery.SQL.Add('  ,ENDERECO');
    mDQuery.SQL.Add('  ,NUMERO');
    mDQuery.SQL.Add('  ,COMPLEMENTO');
    mDQuery.SQL.Add('  ,BAIRRO');
    mDQuery.SQL.Add('  ,CEP');
    mDQuery.SQL.Add('  ,IDCIDADE');
    mDQuery.SQL.Add('  ,CODIGOUF');
    mDQuery.SQL.Add('  ,NOMECIDADE');
    mDQuery.SQL.Add('  ,UF');
    mDQuery.SQL.Add('  ,TRANSPORTADORA');
    mDQuery.SQL.Add('   ) ');
    mDQuery.SQL.Add('   values ( ');
    mDQuery.SQL.Add(' :DATA');
    mDQuery.SQL.Add(',:CPF_CNPJ');
    mDQuery.SQL.Add(',:RG_IE');
    mDQuery.SQL.Add(',:TIPO');
    mDQuery.SQL.Add(',:CLASSIFICACAO');
    mDQuery.SQL.Add(',:NOME');
    mDQuery.SQL.Add(',:NOME_FANTASIA');
    mDQuery.SQL.Add(',:FONE');
    mDQuery.SQL.Add(',:ENDERECO');
    mDQuery.SQL.Add(',:NUMERO');
    mDQuery.SQL.Add(',:COMPLEMENTO');
    mDQuery.SQL.Add(',:BAIRRO');
    mDQuery.SQL.Add(',:CEP');
    mDQuery.SQL.Add(',:IDCIDADE');
    mDQuery.SQL.Add(',:CODIGOUF');
    mDQuery.SQL.Add(',:NOMECIDADE');
    mDQuery.SQL.Add(',:UF');
    mDQuery.SQL.Add(',:TRANSPORTADORA');
    mDQuery.SQL.Add('   ) ');
    mDQuery.ParamByName('DATA').AsDate              := Date;
    mDQuery.ParamByName('CPF_CNPJ').AsString        := Formata_CNPJ_CPF(FornecedorRec.CNPJCPF);
    mDQuery.ParamByName('RG_IE').AsString           := FornecedorRec.IE;
    mDQuery.ParamByName('TIPO').AsString            := 'FORNECEDOR';
    mDQuery.ParamByName('CLASSIFICACAO').AsString   := 'J';
    mDQuery.ParamByName('NOME').AsString            := FornecedorRec.xNome;
    mDQuery.ParamByName('FONE').AsString            := FornecedorRec.Fone;
    mDQuery.ParamByName('ENDERECO').AsString        := FornecedorRec.xLgr;
    mDQuery.ParamByName('NUMERO').AsString          := FornecedorRec.nro;
    mDQuery.ParamByName('COMPLEMENTO').AsString     := FornecedorRec.xCpl;
    mDQuery.ParamByName('BAIRRO').AsString          := FornecedorRec.xBairro;
    mDQuery.ParamByName('CEP').AsString             := IntToStr(FornecedorRec.CEP);
    mDQuery.ParamByName('IDCIDADE').AsInteger       := FornecedorRec.cMun;
    mDQuery.ParamByName('NOMECIDADE').AsString      := FornecedorRec.xMun;
    mDQuery.ParamByName('CODIGOUF').AsInteger       := FornecedorRec.cUF;
    mDQuery.ParamByName('UF').AsString              := FornecedorRec.UF;
    mDQuery.ParamByName('TRANSPORTADORA').AsInteger := FornecedorRec.Transporta.IDTransp;
    mDQuery.ExecSQL;
    Result := mDQuery.Connection.GetLastAutoGenValue( 'GEN_CAD_CLIENTES_ID' );
  finally
    mDQuery.Close;
    mDQuery.Free;
  end;
end;

procedure TFrmCompra.cxGridEntradaEnter(Sender: TObject);
begin
  if rgOpcaoEntrada.ItemIndex=1 then
  begin
    if QryEntradaItem.IsEmpty then
      QryEntradaItem.Append;
    if QryCtaPagar.IsEmpty then
      QryCtaPagar.Append;
    if QryFretePagar.IsEmpty then
      QryFretePagar.Append;
    cxGridEntrada.SetFocus;
  end;
end;

procedure TFrmCompra.CadastraProduto(aProduto: TProduto);
var
  mDQuery  : TFDQuery;
  mDecimal : Char;
begin
  mDecimal := FormatSettings.DecimalSeparator;
  try
    FormatSettings.DecimalSeparator := '.';

    mDQuery  := TFDQuery.Create(Self);
    mDQuery.Connection := FrmPrincipal.DBConexao;
    mDQuery.SQL.Clear;
    mDQuery.SQL.Add('  insert into CAD_PRODUTOS(   ');
    mDQuery.SQL.Add('  EMPRESA ');
    mDQuery.SQL.Add('  ,FORNECEDOR ');
    mDQuery.SQL.Add('  ,REFERENCIA ');
    mDQuery.SQL.Add('  ,CODIGO_BARRA ');
    mDQuery.SQL.Add('  ,CODIGO_FABRICANTE ');
    mDQuery.SQL.Add('  ,DESCRICAO ');
    mDQuery.SQL.Add('  ,DATA ');
    mDQuery.SQL.Add('  ,PRC_CUSTO ');
    mDQuery.SQL.Add('   ) ');
    mDQuery.SQL.Add('   values ( ');
    mDQuery.SQL.Add(':EMPRESA');
    mDQuery.SQL.Add(',:FORNECEDOR ');
    mDQuery.SQL.Add(',:REFERENCIA');
    mDQuery.SQL.Add(',:CODIGO_BARRA');
    mDQuery.SQL.Add(',:CODIGO_FABRICANTE');
    mDQuery.SQL.Add(',:DESCRICAO');
    mDQuery.SQL.Add(',:DATA');
    mDQuery.SQL.Add(',:PRC_CUSTO');
    mDQuery.SQL.Add('   ) ');
    mDQuery.ParamByName('DATA').AsDateTime              := Date;
    mDQuery.ParamByName('EMPRESA').AsInteger            := FSistema.Empresa;
    mDQuery.ParamByName('FORNECEDOR').AsInteger         := aProduto.IDFornec;
    mDQuery.ParamByName('REFERENCIA').AsString          := Trim(aProduto.CodPropFornec);
    mDQuery.ParamByName('DESCRICAO').AsString           := Trim(aProduto.Descricao);
    mDQuery.ParamByName('CODIGO_BARRA').AsString        := Trim(aProduto.GTIN);
    mDQuery.ParamByName('CODIGO_FABRICANTE').AsString   := Trim(aProduto.CodPropFornec);
    mDQuery.ParamByName('PRC_CUSTO').AsCurrency         := aProduto.VlrCusto;
    mDQuery.ExecSQL;
  finally
    mDQuery.Close;
    mDQuery.Free;
    FormatSettings.DecimalSeparator := mDecimal;
  end;
end;

procedure TFrmCompra.GroupBox2Exit(Sender: TObject);
begin
  SalvarDados;
end;

function TFrmCompra.CheckBaixaNFe(aFornecedor, aNF, aSerie : Integer): Boolean;
var
  mDQuery  : TFDQuery;
begin
  Result := False;
  try
    mDQuery  := TFDQuery.Create(Self);
    mDQuery.Connection := FrmPrincipal.DBConexao;
    mDQuery.SQL.Clear;
    mDQuery.SQL.Add('  SELECT COUNT(NOTAFISCAL) AS QTDE FROM COMPRAS ');
    mDQuery.SQL.Add('  where ');
    mDQuery.SQL.Add('  FORNECEDOR=:IDFORNECEDOR ');
    mDQuery.SQL.Add('  AND ');
    mDQuery.SQL.Add('  NOTAFISCAL=:IDNOTA ');
    mDQuery.SQL.Add('  AND  ');
    mDQuery.SQL.Add('  SERIE=:IDSERIE ');
    mDQuery.SQL.Add('  AND  ');
    mDQuery.SQL.Add('  ATUALIZADO='+QuotedStr('S') );
    mDQuery.ParamByName('IDFORNECEDOR').AsInteger :=  aFornecedor;
    mDQuery.ParamByName('IDNOTA').AsString        :=  IntToStr(aNF);
    mDQuery.ParamByName('IDSERIE').AsString       :=  IntToStr(aSerie);
    mDQuery.Open;
    Result := mDQuery.FieldByName('QTDE').AsInteger>0;
  finally
    mDQuery.Close;
    mDQuery.Free;
  end;

end;


function TFrmCompra.CheckNFe(aFornecedor, aNF, aSerie : Integer): Boolean;
var
  mDQuery  : TFDQuery;
begin
  Result := False;
  try
    mDQuery  := TFDQuery.Create(Self);
    mDQuery.Connection := FrmPrincipal.DBConexao;
    mDQuery.SQL.Clear;
    mDQuery.SQL.Add('  SELECT COUNT(NOTAFISCAL) AS QTDE FROM COMPRAS ');
    mDQuery.SQL.Add('  where ');
    mDQuery.SQL.Add('  FORNECEDOR=:IDFORNECEDOR ');
    mDQuery.SQL.Add('  AND ');
    mDQuery.SQL.Add('  NOTAFISCAL=:IDNOTA ');
    mDQuery.SQL.Add('  AND  ');
    mDQuery.SQL.Add('  SERIE=:IDSERIE ');
    mDQuery.ParamByName('IDFORNECEDOR').AsInteger :=  aFornecedor;
    mDQuery.ParamByName('IDNOTA').AsString        :=  IntToStr(aNF);
    mDQuery.ParamByName('IDSERIE').AsString       :=  IntToStr(aSerie);
    mDQuery.Open;
    Result := mDQuery.FieldByName('QTDE').AsInteger>0;
  finally
    mDQuery.Close;
    mDQuery.Free;
  end;

end;


end.
