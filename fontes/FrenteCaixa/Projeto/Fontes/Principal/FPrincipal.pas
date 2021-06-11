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

unit FPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  System.TypInfo,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.StrUtils, System.DateUtils, System.Math, System.MaskUtils,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCurrencyEdit, FireDAC.Phys.FBDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.VCLUI.Wait, ACBrSAT, ACBrSATExtratoESCPOS, ACBrSATExtratoClass,
  ACBrSATExtratoReportClass, ACBrSATExtratoFortesFr, ACBrDANFCeFortesFr,
  cxClasses, ACBrInStore, ACBrValidador, ACBrDFeReport, ACBrDFeDANFeReport,
  ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS, ACBrDFe, ACBrNFe, ACBrBase,
  ACBrPosPrinter, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  FireDAC.Phys.IBBase, Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxTextEdit,
  dxGDIPlusClasses,
  //--------------------- NFC-e/SAT -------------------------
  pcnConversaoNFe, pcnConversao, pcnNFe, ACBrUtil,
  ClasseDados,
  ACBrSATClass,
  ACBrIntegrador,
  ACBrDFeUtil, ACBrDANFCeFortesFrA4, ACBrMail, ACBrBAL,
  pcnVFPe,
  // -------------------------------------------------------
  ISFEdit, ISFEditbtn,  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos;

type

  TFrmPrincipal = class(TForm)
    dsVenda: TDataSource;
    dsItens: TDataSource;
    FDTransactionFirebird: TFDTransaction;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    QryVenda: TFDQuery;
    QryVendaItem: TFDQuery;
    ConnectFirebird: TFDConnection;
    QryFBProduto: TFDQuery;
    QrySomaItemCancelar: TFDQuery;
    QryCalcularVenda: TFDQuery;
    ACBrPosPrinter1: TACBrPosPrinter;
    ACBrNFeDANFeESCPOS1: TACBrNFeDANFeESCPOS;
    QryConfiguracoes: TFDQuery;
    QryMovimento: TFDQuery;
    ACBrValidador1: TACBrValidador;
    pnPrincipal: TPanel;
    pnImgDireita: TPanel;
    pnImgTopo: TPanel;
    lblEmpresa: TLabel;
    Image3: TImage;
    pnGrid: TPanel;
    pnImgRodape: TPanel;
    cxStyleRepository1: TcxStyleRepository;
    cxItemGrid: TcxStyle;
    cxTituloGrid: TcxStyle;
    ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes;
    GridPanel1: TGridPanel;
    btnBotao1: TSpeedButton;
    btnBotao7: TSpeedButton;
    btnBotao2: TSpeedButton;
    btnBotao3: TSpeedButton;
    btnBotao5: TSpeedButton;
    btnBotao4: TSpeedButton;
    btnBotao6: TSpeedButton;
    mLog: TMemo;
    ACBrInStore1: TACBrInStore;
    ACBrNFe1: TACBrNFe;
    ACBrMail1: TACBrMail;
    pnProdEntrada: TPanel;
    pnCodigoProduto: TPanel;
    EditCodigo: TEdit;
    Panel2: TPanel;
    lblMensagem: TLabel;
    pnGrade: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    ACBrSAT1: TACBrSAT;
    ACBrSATExtratoESCPOS1: TACBrSATExtratoESCPOS;
    ACBrSATExtratoFortes1: TACBrSATExtratoFortes;
    btnInformarCliente: TSpeedButton;
    ConnectConfigPDV: TFDConnection;
    FDTransactionConnectConfigPDV: TFDTransaction;
    ACBrBAL1: TACBrBAL;
    PedidoProcurar: TIDBEditDialog;
    btnPedido: TSpeedButton;
    btnDesconto: TSpeedButton;
    QryPedidoVenda: TFDQuery;
    QryPedidoVendaItens: TFDQuery;
    QryCtaReceber: TFDQuery;
    GroupBox1: TGroupBox;
    lblPrecoUnit: TcxTextEdit;
    GroupBox4: TGroupBox;
    lblQtde: TcxTextEdit;
    GroupBox2: TGroupBox;
    lblTotalItem: TcxTextEdit;
    GroupBox3: TGroupBox;
    lblValorTotal: TcxTextEdit;
    Panel1: TPanel;
    Panel3: TPanel;
    lblInformacao: TLabel;
    btnBotao8: TLabel;
    lblTipoDFe: TLabel;
    EditQtde: TcxCurrencyEdit;
    dbProcurarProduto: TIDBEditDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ACBrSAT1GravarLog(const ALogLine: string; var Tratado: Boolean);
    procedure ACBrSAT1MensagemSEFAZ(ACod: Integer; AMensagem: string);
    procedure ACBrSAT1CalcPath(var APath: string; ACNPJ: string;
      AData: TDateTime);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnOutrosClick(Sender: TObject);
    procedure btnBotao8Click(Sender: TObject);
    procedure btnBotao1Click(Sender: TObject);
    procedure btnBotao2Click(Sender: TObject);
    procedure btnBotao3Click(Sender: TObject);
    procedure btnBotao4Click(Sender: TObject);
    procedure btnBotao5Click(Sender: TObject);
    procedure btnBotao6Click(Sender: TObject);
    procedure btnBotao7Click(Sender: TObject);
    procedure ACBrInStore1GetPrecoUnitario(const Codigo: string;
      var PrecoUnitario: Double);
    procedure ACBrNFe1StatusChange(Sender: TObject);
    procedure ACBrSAT1GetcodigoDeAtivacao(var Chave: AnsiString);
    procedure ACBrSAT1GetsignAC(var Chave: AnsiString);
    procedure btnInformarClienteClick(Sender: TObject);
    procedure btnDescontoClick(Sender: TObject);
    procedure btnPedidoClick(Sender: TObject);

  private
    { Private declarations }
    FContigencia          : Boolean;
    FVendaIniciada        : Boolean;
    FPagamentoIniciado    : Boolean;
    FItemID               : Integer;
    FLarguraDescricao     : Integer;
    FVlrUnitBalanca       : Double;
    FAssinatura           : WideString;
    FCodAtivacao          : WideString;
    FCPF                  : String;
    mCliente              : TClienteRecord;
    FLeituraPeso          : Boolean;

    //------------------------------------------------------------------------------------
    //
    //------------------------------------------------------------------------------------
    procedure ConexaoFirebird;
    function  VerificaVendaPendente(out aIDPedido: Integer): Boolean;
    procedure CarregarVendaPendente();
    procedure HabilitarCampoCodigo(aValue: Boolean);
    procedure NovaVenda(aPedidoVenda: Boolean = False);
    procedure CalcularVenda;
    procedure ChecarSair;
    procedure LerCodigoProduto;
    procedure MensagemTopo(aMensagem: String='');
    procedure MensagemRodape(aMensagem: String='');

    procedure AtualizaGradeItens;
    procedure TabelaItemFecharAbrir;
    procedure LimparCartaoPagamento;
    procedure FecharConexoes;
    procedure CriarPastas;
    procedure TrataErros(Sender: TObject; E: Exception);
    //------------------------------------------------------------------------------------
    // NFC-e
    //------------------------------------------------------------------------------------
    procedure NFCeGerar(aNumeroNota: integer);
    function  NFCeEnviar(): Boolean;
    //------------------------------------------------------------------------------------
    // SAT CF-e
    //------------------------------------------------------------------------------------
    procedure SATConfigurar(aNumeroCaixa: Integer = 1);
    procedure SATGerar(aNumeroNota: integer = 0);
    procedure SatEnviar;
    procedure GetsignAC(var Chave: AnsiString);
    procedure GetcodigoDeAtivacao(var Chave: AnsiString);
    //------------------------------------------------------------------------------------
    //
    //------------------------------------------------------------------------------------
    procedure TeclaCtrlxFecharSistema;
    procedure TeclaLimparCampo;
    procedure TeclaF3NovaVenda;
    procedure TeclaF4CancelarItem;
    procedure TeclaF5Pagamento;
    procedure TeclaF6CancelarVenda;
    procedure TeclaF7Funcoes;
    procedure TeclaF9InformarCPF;
    procedure TeclaF11DescontoItem;
    procedure TeclaF12ImportarPedido;

    procedure TeclaFMultiplicar;
    function RegistrarCtaReceber: Boolean;
    function RegistrarCaixa: Boolean;
    procedure GetDadosCliente(aID: Integer);
    function InformarCPFCNPJ(): String;
    function VerificaCertificado(): Boolean;
    //------------------------------------------------------------------------------------
    // Balanca
    //------------------------------------------------------------------------------------
    Procedure ConfigurarBalanca();
    procedure ExcluirItem(mIDVenda, mItem: Integer; mIDProduto, mDescricao: String);
    procedure ChecaProdutoPesado;
    function ImportarPedido(aIDPedido: Integer): Boolean;
    procedure AtualizaVendaPedido(aIDPedido: Integer);
    procedure LimparPagamentosRecebidos;
    procedure GravarDadosNFCeSAT;
    function LerBalancaManualmente: Double;
    procedure ConfigurarIntegradorCeara;
    procedure ConfigurarLog;
    function GetIDCartao(aFormaPagto: TpcnFormaPagamento): NativeInt;
    //------------------------------------------------------------------------------------
    //
    //------------------------------------------------------------------------------------
  public
    { Public declarations }
    FACBrIntegradorCeara  : TACBrIntegrador;
    FNaturezaFiscal    : String;
    FTipoVendaFiscal  : Boolean;
    procedure ReabrirTabela;
    procedure GetInformacoes;
    procedure AtualizarCaption;
    procedure AbrirGaveta;
    procedure Identificadores;
    procedure CheckOperador;
    procedure CheckCaixaFechado;
    procedure CheckCaixaAberto;
    Procedure EncerrarVenda(aPedidoVenda: Boolean);
    function RelatorioGerencial(aTipo: String; aDataHoje: TDate = 0): TStringList;
    procedure CheckTblMovimento;
    procedure NFCePreparaImpressora;
    procedure SetCertificado;
    //------------------------------------------------------------------------------------
    // PDV
    //------------------------------------------------------------------------------------
    procedure CupomNaoFiscal(aNumeroNota: integer);
  end;
  procedure ImprimirDiversos(aTitulo, aTexto: String);

var
  FrmPrincipal: TFrmPrincipal;
  FCartaoPagamento: TArray<TCartaoPagamento>;
  FConfiguracao : TRConfiguracao;

implementation

{$R *.dfm}

uses AppConstantes, AppGetConnect, AppFuncoes, FPagamento, AppSQL,
  FOutrasFuncoes, FOperador, FPDVPrint, ClasseCompra,
  FCancelaItem, FDescontoVenda, FExcluirItem, FCPFCNPJ, FInformarPesoManual;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    ChecarSair();
    QryVenda.Close;
    QryVendaItem.Close;
  finally
    TerminarAplicacao;
  end;
  Action := Cafree;
end;

procedure TFrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  LimparCartaoPagamento();
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  //Application.OnException := TrataErros ;
  HabilitarCampoCodigo(False);
  ACBrValidador1.TipoDocto := docGTIN;
  mLog.Clear;
  EditCodigo.Text     := '';
  FContigencia        := False;
  FVendaIniciada      := False;
  FPagamentoIniciado  := False;
  FLarguraDescricao   := 20;
  ConexaoFirebird;
  QryVenda.Close;
  QryVendaItem.Close;
  QryMovimento.Close;
  QryFBProduto.Close;
  //------------------------------------------------------------------------------------
  // A desativação dos controles acelera o desempenho, pois os dados não precisam
  // ser gravados na tela a cada interação.
  //------------------------------------------------------------------------------------
  QryMovimento.DisableControls;
  QryFBProduto.DisableControls;
  QrySomaItemCancelar.DisableControls;
  QryCalcularVenda.DisableControls;
  QryConfiguracoes.DisableControls;

  //------------------------------------------------------------------------------------
  // SAT CF-e
  // Add: Abril/2019
  //------------------------------------------------------------------------------------
  ACBrSAT1.Inicializado := False;
  FACBrIntegradorCeara  := TACBrIntegrador.Create(Self);
  MensagemTopo();
  MensagemRodape();
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  CriarPastas();
  QryMovimento.Open;
  GetInformacoes();
  SetCertificado();
  NFCePreparaImpressora();
  Identificadores();
  ConfigurarLog();
  ConfigurarIntegradorCeara();
  AtualizarCaption();
end;

procedure TFrmPrincipal.TrataErros(Sender: TObject; E: Exception);
var
  Erro : String ;
begin
  Erro := Trim(E.Message) ;
  if FTipoVendaFiscal = false then // se nao for fiscal
    exit;
  if FNaturezaFiscal <> 'SAT' then
    exit;
  ACBrSAT1.DoLog( E.ClassName+' - '+Erro);
end ;

//------------------------------------------------------------------------------------
// SAT CF-e - Configurar
// Add: Abril/2019
//------------------------------------------------------------------------------------
procedure TFrmPrincipal.SATConfigurar(aNumeroCaixa : Integer);
var
  mActive : Boolean;
begin
  if FTipoVendaFiscal = false then // se nao for fiscal
    exit;
  if FNaturezaFiscal <> 'SAT' then
    exit;
  mActive := QryConfiguracoes.Active;
  if QryConfiguracoes.Active = false then
    QryConfiguracoes.Active := True;
  ACBrSAT1.DesInicializar;
  try
    ACBrSAT1.MAIL := ACBrMail1;
    ACBrSAT1.CFe.TamanhoIdentacao := 3;
    ACBrSAT1.CFe.RetirarAcentos := True;
    if ACBrSAT1.Modelo = mfe_Integrador_XML then
    begin
      ConfigurarIntegradorCeara();
    end;

    //ACBrSAT1.Extrato.ImprimeQRCodeLateral := (QryConfiguracoes.FieldByName('SATQRCODELATERAL').AsString = 'SIM');
    //ACBrSAT1.Extrato.ImprimeLogoLateral := (QryConfiguracoes.FieldByName('SATLOGOLATERAL').AsString = 'SIM');

    ACBrSAT1.Config.ide_numeroCaixa  := aNumeroCaixa;
    ACBrSAT1.Config.ide_CNPJ         := QryConfiguracoes.FieldByName('RESPTEC_CNPJ').AsString; // CNPJ da Softhouse
    ACBrSAT1.Config.emit_CNPJ        := QryConfiguracoes.FieldByName('CNPJ').AsString;
    ACBrSAT1.Config.emit_IE          := QryConfiguracoes.FieldByName('IE').AsString;
    ACBrSAT1.Config.emit_IM          := QryConfiguracoes.FieldByName('IM').AsString;
    ACBrSAT1.Modelo                  := TACBrSATModelo(QryConfiguracoes.FieldByName('SATMODELO').AsInteger);
    ACBrSAT1.Config.ide_tpAmb        := TpcnTipoAmbiente(FConfiguracao.NFEAmbiente);

    ACBrSATExtratoESCPOS1.PosPrinter := ACBrPosPrinter1;
    ACBrSATExtratoESCPOS1.ImprimeQRCode := True;
    ACBrSAT1.Extrato := ACBrSATExtratoESCPOS1;

    if QryConfiguracoes.FieldByName('NFCE_DANFE').AsString <> 'PDV' then // 'PDV' = BOBINA (IMPRESSORA NAO FISCAL)
    begin
      ACBrSAT1.Extrato := ACBrSATExtratoFortes1;
      ACBrSATExtratoFortes1.Impressora := FConfiguracao.PortaImpressora;
      ACBrSAT1.Extrato.MostraPreview := ACBrSATExtratoFortes1.Impressora.IsEmpty;
    end;
    ACBrSAT1.NomeDLL  := QryConfiguracoes.FieldByName('SATDLL').AsString;

    case QryConfiguracoes.FieldByName('REGIME_TRIB').AsInteger of
      1: ACBrSAT1.Config.emit_cRegTrib := RTSimplesNacional;
      2: ACBrSAT1.Config.emit_cRegTrib := RTSimplesNacional;
      3: ACBrSAT1.Config.emit_cRegTrib := RTRegimeNormal;
    end;

    ACBrSAT1.Config.emit_cRegTribISSQN := TpcnRegTribISSQN(QryConfiguracoes.FieldByName('REGTRIBISSQN').AsInteger) ;
    ACBrSAT1.Config.emit_indRatISSQN := TpcnindRatISSQN(QryConfiguracoes.FieldByName('REGTRIBISSQN').AsInteger);

    ACBrSAT1.Config.EhUTF8 := True;
    ACBrSAT1.Config.PaginaDeCodigo := _SAT_PAGINADECODIGO;
    ACBrSAT1.Config.infCFe_versaoDadosEnt := cversaoDadosEnt;

    ACBrSAT1.ConfigArquivos.SalvarCFe := True;
    ACBrSAT1.ConfigArquivos.SalvarCFeCanc := True;
    ACBrSAT1.ConfigArquivos.SalvarEnvio := True;
    ACBrSAT1.ConfigArquivos.SepararPorCNPJ := False;
    ACBrSAT1.ConfigArquivos.SepararPorDia := False;
    ACBrSAT1.ConfigArquivos.SepararPorMes := True;
    ACBrSAT1.ConfigArquivos.SepararPorAno := True;
    ACBrSAT1.ConfigArquivos.SepararPorModelo := False;

    //----------------------------------------------------------------------
    // SAT: Configurações de subpastas
    //----------------------------------------------------------------------
    ACBrSAT1.ConfigArquivos.PastaCFeVenda         := _SAT_LOCAL_PASTAS[0];  // Veja no Vetor 0 - Venda'),
    ACBrSAT1.ConfigArquivos.PastaCFeCancelamento  := _SAT_LOCAL_PASTAS[1];  // Veja no Vetor 1 - Cancelamento'),
    ACBrSAT1.ConfigArquivos.PastaEnvio            := _SAT_LOCAL_PASTAS[2];  // Veja no Vetor 2 - Envio'),
    ACBrSAT1.Extrato.PathPDF                      := _SAT_LOCAL_PASTAS[3];  // Veja no Vetor 3 - PDF'),

    //----------------------------------------------------------------------
    // Inicializar
    //----------------------------------------------------------------------
    ACBrSAT1.Inicializar;
  finally
    QryConfiguracoes.Active := mActive;
  end;
end;

procedure TFrmPrincipal.CheckCaixaFechado;
begin
  CheckTblMovimento();
  if QryMovimento.FieldByName('STATUS').AsString<>'ABERTO' then
  begin
    Informar('Caixa está fechado: '+ 'Abra o Caixa  (F7 - Funções Diversas)','Status do Caixa.');
    Abort;
  end;
end;

procedure TFrmPrincipal.CheckCaixaAberto;
begin
  CheckTblMovimento();
  if QryMovimento.FieldByName('STATUS').AsString='ABERTO' then
  begin
    Informar('Ultimo movimento: '+
              FormatDateTime('c', QryMovimento.FieldByName('INICIO').AsDateTime)+sLineBreak+
              'Status: '+QryMovimento.FieldByName('STATUS').AsString+sLineBreak+
              'Caixa já está fechado.');
    Abort;
  end;
end;

procedure TFrmPrincipal.CheckTblMovimento;
begin
  if not QryMovimento.Active then
  begin
    if not ConnectFirebird.Connected then
      ConnectFirebird.Open;
    QryMovimento.Open;
  end;
end;

procedure TFrmPrincipal.CheckOperador;
begin
  if FConfiguracao.Operador=0 then
  begin
    Informar('Caixa sem operador(a)... Informe operador(a) de caixa.');
    abort;
  end;
end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin
  if FACBrIntegradorCeara <> Nil then
    FACBrIntegradorCeara.Free;
  if FrmPagamento<>Nil then
    FrmPagamento.Free;
end;

procedure TFrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  if (Shift = [ssCtrl]) and (Upcase(Char(Key)) = 'X') then
//  begin
//    Key := 0;
//    TeclaCtrlxFecharSistema();
//  end;

  if Key = VK_ESCAPE then
  begin
    Key := 0;
    TeclaCtrlxFecharSistema();
  end;

  if Key = VK_DELETE then
  begin
    Key := 0;
    TeclaLimparCampo();
  end;

  if Key = VK_F3 then
  begin
    Key := 0;
    TeclaF3NovaVenda();
  end;

  if (((ssAlt in Shift) = False) and (Key = VK_F4)) then // evitar conflito com Alt + F4 do proprio Windows
  begin
    Key := 0;
    TeclaF4CancelarItem();
  end;

  if Key = VK_F5 then
  begin
    Key := 0;
    TeclaF5Pagamento();
  end;

  if Key = VK_F6 then
  begin
    Key := 0;
    TeclaF6CancelarVenda();
  end;

  if Key = VK_F7 then
  begin
    Key := 0;
    TeclaF7Funcoes();
  end;

  if Key = VK_F9 then
  begin
    Key := 0;
    TeclaF9InformarCPF();
  end;

  if Key = VK_F11 then
  begin
    Key := 0;
   TeclaF11DescontoItem();
  end;

  if Key = VK_F12 then
  begin
    Key := 0;
    TeclaF12ImportarPedido();
  end;


end;

procedure TFrmPrincipal.LimparCartaoPagamento;
begin
  if Length(FCartaoPagamento)>0 then
  begin
    Finalize(FCartaoPagamento);
    FillChar(FCartaoPagamento,sizeof(FCartaoPagamento),0);
  end;
end;

procedure TFrmPrincipal.ReabrirTabela;
var
  mID : Integer;
begin
  if QryVenda.Active then
    mID := QryVenda.FieldByName('CODIGO').AsInteger;

  QryVenda.Close;
  QryVenda.Open;

  QryVendaItem.Close;
  QryVendaItem.ParamByName('ID').AsInteger  := mID;
  QryVendaItem.Open;
end;

procedure TFrmPrincipal.ConexaoFirebird;
var
  mCursor : TCursor;
begin
  mCursor :=Cursor;
  ConnectFirebird.Close;
  Try
    Cursor :=crSQLWait;
    GetConnectFirebird(ConnectFirebird);
    GetConnectFirebird(ConnectConfigPDV, False); //Faz com que o Frente de Caixa tenha configurações independentes
    ConnectFirebird.Open;
  Finally
    Cursor := mCursor;
  End;
end;

procedure TFrmPrincipal.ConfigurarBalanca;
begin
  GetConfigBalanca();
  ACBrBAL1.Modelo := TACBrBALModelo(GetEnumValue(TypeInfo(TACBrBALModelo), FConfiguracao.BalancaModelo));
  ACBrBAL1.Porta  := FConfiguracao.BalancaPorta;
  ACBrBAL1.Device.Porta := FConfiguracao.BalancaPorta;
  ACBrBAL1.Device.Baud := FConfiguracao.BalancaVelocidade;
  ACBrBAL1.Device.TimeOut := FConfiguracao.BalancaTimeOut;
  ACBrInStore1.Codificacao := FConfiguracao.BalancaMascara;
  if ACBrBAL1.Modelo <> balNenhum then
  begin
    if FConfiguracao.BalancaPorta.IsEmpty then
      raise Exception.Create('Porta de conexão a balança não foi configurada!');

    if FConfiguracao.BalancaVelocidade <= 0 then
      raise Exception.Create('Velocidade de conexão a balança não foi configurada!');
  end;
end;

procedure TFrmPrincipal.MensagemTopo(aMensagem: String);
begin
  lblInformacao.Caption := aMensagem;
  Application.ProcessMessages;
end;

procedure TFrmPrincipal.MensagemRodape(aMensagem: String);
begin
  lblMensagem.Caption := aMensagem;
  Application.ProcessMessages;
end;

function TFrmPrincipal.NFCeEnviar(): Boolean;
var
  StrMsg: String;
  StatusNFCe: Integer;
  MsgMotivo: String;

  mNumeroNFCe : Integer;
  mNumeroLote : String;
  mEnviarOk : Boolean;
  iErrors : Integer;
  mMSGErro : String;
begin
  if FTipoVendaFiscal = false then // se nao for fiscal
    exit;
  if FNaturezaFiscal <> 'NFCE' then
    exit;
  Result := False;
  mEnviarOk := False;
  mNumeroLote := '';
  mNumeroNFCe := 0;
  iErrors := 0;
  StatusNFCe := 0;
  if (FTipoVendaFiscal = True) then
  begin
    NFCePreparaImpressora();
    SetCertificado();

    //-----------------------------------------------------------------
    // Gerar NFC-e
    //-----------------------------------------------------------------
    mNumeroNFCe :=QryVenda.FieldByName('NOTAFISCAL').AsInteger;
    if mNumeroNFCe < 1 then
      mNumeroNFCe := GetNumeroNFCe();
    mNumeroLote := GetLoteString();
    NFCeGerar(mNumeroNFCe);
    try
      try
        if not FContigencia then
        begin
          ACBrNFeDANFeESCPOS1.ViaConsumidor := True;
          if ACBrNFe1.Enviar(mNumeroLote, False, True) then // ENVIAR
          begin
            ACBrNFeDANFeESCPOS1.ViaConsumidor := True;
            StatusNFCe := ACBrNFe1.WebServices.Enviar.cStat;
            MsgMotivo  := ACBrNFe1.WebServices.Enviar.xMotivo;
            // nota duplicada, via correta é o retorno de status
            if StatusNFCe = 204 then
            begin
              ACBrNFe1.Consultar;
              StatusNFCe := ACBrNFe1.WebServices.Consulta.cStat;
              MsgMotivo  := ACBrNFe1.WebServices.Consulta.xMotivo;
            end;

            if FConfiguracao.TIPO_IMPRESSAO = 'PDV' then // 'PDV' = BOBINA (IMPRESSORA NAO FISCAL)
            begin
              ACBrNFeDANFeESCPOS1.ImprimirDANFE(ACBrNFe1.NotasFiscais.Items[0].NFe);
              ACBrNFeDANFeESCPOS1.PosPrinter.PularLinhas(_PULAR_LINHA);
            end
            else
            begin
              ACBrNFeDANFCeFortes1.ViaConsumidor  := True;
              ACBrNFe1.DANFE := ACBrNFeDANFCeFortes1;
              ACBrNFe1.NotasFiscais.Imprimir;
            end;
          end;
        end
        else
        begin
          ACBrNFe1.NotasFiscais.Assinar;
          ACBrNFe1.NotasFiscais.Validar;
          if FConfiguracao.TIPO_IMPRESSAO = 'PDV' then // 'PDV' = BOBINA (IMPRESSORA NAO FISCAL)
          begin
            //--------------------------------------------------------------------
            // Modo contingencia, imprimir 2 vias.
            //--------------------------------------------------------------------
             // A 1ª via do Consumidor
            ACBrNFeDANFeESCPOS1.ImprimirDANFE(ACBrNFe1.NotasFiscais.Items[0].NFe);
            ACBrNFeDANFeESCPOS1.PosPrinter.PularLinhas(_PULAR_LINHA);

             // A 2ª via é da empresa.
            ACBrNFeDANFeESCPOS1.ViaConsumidor := False;
            ACBrNFeDANFeESCPOS1.ImprimirDANFE(ACBrNFe1.NotasFiscais.Items[0].NFe);
            ACBrNFeDANFeESCPOS1.PosPrinter.PularLinhas(_PULAR_LINHA);
          end
          else
          begin
            ACBrNFeDANFCeFortes1.ViaConsumidor  := True;
            ACBrNFe1.DANFE := ACBrNFeDANFCeFortes1;;
            ACBrNFe1.NotasFiscais.Imprimir;
          end;
        end;
      finally
        ACBrNFe1.NotasFiscais.GravarXML();
      end;
      mEnviarOk := True;
      //-----------------------------------------------------------------
      // Gravar dados
      //-----------------------------------------------------------------
      HabilitarCampoCodigo(False); // Desabilitar campo codigo
    finally
      Result := mEnviarOk;
      try
        if mEnviarOk then
        begin
          //-----------------------------------------------------------------
          // Salvar caminho do XML
          //-----------------------------------------------------------------
          if ContemNumero(StatusNFCe, [100, 110, 150, 301, 302]) then
          begin
            GravarDadosNFCeSAT();
            if FConfiguracao.UF = 'CE' then
            begin
              MFE_EnviarRespostaFiscal();
            end;
          end
          else
          begin
            if StatusNFCe > 0 then
            begin
              mMSGErro := Format('%d - %s', [ACBrNFe1.WebServices.Enviar.cStat,ACBrNFe1.WebServices.Enviar.xMotivo]);
              Informar(mMSGErro,'NFC-e',True);
            end;
            GravarDadosNFCeSAT(); //Salvar dados do XML
          end;
        end;
      finally

        QryVenda.Close;
        QryVenda.ParamByName('IDTERMINAL').AsInteger  := FConfiguracao.TerminalPDV;
        QryVenda.Open;
      end;
    end;
  end;
end;

procedure TFrmPrincipal.GravarDadosNFCeSAT;
begin
  ReabrirTabela;
  QryVenda.Edit;
  QryVenda.FieldByName('NFE_ARQUIVO').AsString       := ACBrNFe1.NotasFiscais[0].NomeArq;
  QryVenda.FieldByName('NFE_CHAVEACESSO').AsString   := ACBrNFe1.NotasFiscais[0].NFe.procNFe.chNFe;
  QryVenda.FieldByName('NFE_VALIDADO').AsString      := 'SIM';
  QryVenda.FieldByName('NFE_RECIBO').AsString        := ACBrNFe1.NotasFiscais[0].NFe.procNFe.nProt;
  QryVenda.FieldByName('NFE_SITUACAOSEFAZ').AsString := ACBrNFe1.NotasFiscais[0].NFe.procNFe.xMotivo;
  if ACBrNFe1.NotasFiscais[0].Confirmada then
    QryVenda.FieldByName('NFE_TRANSMITIDO').AsString   := 'SIM'
  else
    QryVenda.FieldByName('NFE_TRANSMITIDO').AsString   := 'OFFLINE';
  QryVenda.Post;
end;

procedure TFrmPrincipal.SatEnviar;
var
  tini, tfim: TDateTime;
  mMensagem : String;
  iErrors : Integer;
begin
  if FTipoVendaFiscal = false then // se nao for fiscal
    exit;
  if FNaturezaFiscal <> 'SAT' then
    exit;
  iErrors := 0;
  try
    try
      ACBrSAT1.EnviarDadosVenda;
      mMensagem := Trim(MensagemCodigoRetorno(ACBrSAT1.Resposta.codigoDeRetorno));
    except
      on E: Exception do
      begin
        raise Exception.CreateFmt('Ocorreu o seguinte erro ao tentar enviar o CF-e:' + sLineBreak +
                                  E.Message + sLineBreak + sLineBreak +
                                 '%d - %s', [ACBrSAT1.Resposta.codigoDeErro, ACBrSAT1.Resposta.mensagemRetorno]);
      end;
    end;
    if ACBrSAT1.Resposta.codigoDeRetorno = 6000 then
    begin
      try
        ACBrSAT1.ImprimirExtrato;
      except
      end;
      ReabrirTabela;

      QryVenda.Edit;
      QryVenda.FieldByName('NFE_ARQUIVO').AsString       := ACBrSAT1.CFe.NomeArquivo;
      QryVenda.FieldByName('NFE_CHAVEACESSO').AsString   := ACBrSAT1.CFe.infCFe.ID;
      QryVenda.FieldByName('NFE_TRANSMITIDO').AsString   := 'SIM';
      QryVenda.Post;

    end
    else
    begin
      Informar(mMensagem+sLineBreak+Format('%d - %s', [ACBrSAT1.Resposta.codigoDeErro, ACBrSAT1.Resposta.mensagemRetorno]),'Erro ao enviar SAT',True);
    end;
  finally
    ACBrPosPrinter1.Desativar;
  end;
end;

procedure TFrmPrincipal.NFCeGerar(aNumeroNota: integer);
var
  mCartao : TCartaoPagamento;
  LOKResp : Boolean;
  mCompraItemFiscal : TCompraItemFiscal;
  mID_CST_PIS    : Integer;
  mID_CST_COFINS : Integer;
  mIDSTOrigem  : Integer;
  mID_ST_ICMS    : Integer;
  mID_OrigemPro : Integer;
  mID_CSOSN_ICMS : Integer;
  mInd_Escala   : Integer;
  mCodANP      : String;
  mIDTransp    : Integer;
  mQTDE        : Real;
  mValorUnit   : Real;
  mVlrTotal    : Real;
  nSequencia   : integer;
  ConverteOk   : Boolean;
  mVrLParcelas : Double;

  VlrProdutos, VlrTotalDesconto, VlrTotalOutros, VlrTotalNF, VlrBaseICMS, VlrICMS, VlrPis, VlrCofins: Double;
  vlrTribFederal, vlrTribEstadual, VlrTotalPago: Double;
  vlrTTTotTrib, vlrTTTribFederal, vlrTTTribEstadual, vTotTrib: Double;
begin
  if FTipoVendaFiscal = false then // se nao for fiscal
    exit;
  if FNaturezaFiscal <> 'NFCE' then
    exit;
  vlrTribFederal    := 0;
  vlrTribEstadual   := 0;
  vlrTTTotTrib      := 0;
  vlrTTTribFederal  := 0;
  vlrTTTribEstadual := 0;
  VlrTotalPago      := 0;
  vTotTrib          := 0;
  VlrProdutos       := 0;
  VlrTotalDesconto  := 0;
  VlrTotalOutros    := 0;
  VlrTotalNF        := 0;
  VlrBaseICMS       := 0;
  VlrICMS           := 0;
  VlrPis            := 0;
  VlrCofins         := 0;
  mVrLParcelas      := 0;

  //------------------------------------------------------
  //
  //------------------------------------------------------
  try
    ReabrirTabela;
    if not (QryVenda.state in [dsedit,dsinsert] ) then
      QryVenda.edit;
    QryVenda.FieldByName('NOTAFISCAL').AsInteger := aNumeroNota;
    if (QryVenda.state in [dsedit,dsinsert] ) then
      QryVenda.Post;
  finally
    ReabrirTabela;
  end;
  //------------------------------------------------------
  //
  //------------------------------------------------------
  mCompraItemFiscal := TCompraItemFiscal.Create;
  ACBrValidador1.TipoDocto := docGTIN;
  ACBrNFe1.NotasFiscais.Clear;
  nSequencia := 0;

  try
    with ACBrNFe1.NotasFiscais.Add.NFe do
    begin
        if (StrToIntDef(FConfiguracao.RespTec_IDCSRT,0)>0) and (FConfiguracao.RespTec_CSRT <> '') then
        begin
          ACBrNFe1.Configuracoes.RespTec.IdCSRT  := StrToIntDef(FConfiguracao.RespTec_IDCSRT,0);    // Conforme indicação
          ACBrNFe1.Configuracoes.RespTec.CSRT    := FConfiguracao.RespTec_CSRT;        // Conforme indicação
          infRespTec.idCSRT := StrToIntDef(FConfiguracao.RespTec_IDCSRT,0);;     // Conforme indicação
        end;
        infRespTec.CNPJ     := OnlyNumber(FConfiguracao.RespTec_CNPJ);
        infRespTec.xContato := FConfiguracao.RespTec_xContato;
        infRespTec.email    := FConfiguracao.RespTec_email;
        infRespTec.fone     := OnlyNumber(FConfiguracao.RespTec_Fone);
        //--------------------------------------------------------------------------
        //
        //--------------------------------------------------------------------------
        Ide.natOp         := 'VENDA CONSUMIDOR';
        Ide.modelo        := 65;
        Ide.serie         := 1;
        Ide.nNF           := aNumeroNota;
        Ide.cNF           := GerarCodigoDFe(aNumeroNota);
        Ide.dEmi          := now;
        Ide.dSaiEnt       := now;
        Ide.hSaiEnt       := now;
        Ide.tpNF          := tnSaida;

        Ide.verProc       := 'ACBr'; // Versão do seu sistema
        Ide.cUF           := UFtoCUF(FConfiguracao.UF);
        Ide.cMunFG        := FConfiguracao.CidadeID;
        Ide.finNFe        := fnNormal;
        Ide.tpImp         := tiNFCe;
        Ide.indFinal      := cfConsumidorFinal;
        Ide.indPres       := pcPresencial;
        Transp.modFrete   := mfSemFrete; // Sem frete

        //----------------------------------------------------------------------
        // Se for modo contigencia
        //----------------------------------------------------------------------
        Ide.tpEmis := teNormal;
        if FContigencia then
        begin
          Ide.tpEmis := teOffLine;
          Ide.dhCont := Now;
          Ide.xJust  := 'ERRO ACESSO WEBSERVICE';
        end;
        ACBrNFe1.Configuracoes.Geral.FormaEmissao := Ide.tpEmis;

        //--------------------------------------------------------------------------------------------------
        //
        //--------------------------------------------------------------------------------------------------
        Emit.CNPJCPF           := FConfiguracao.CNPJ;
        Emit.IE                := FConfiguracao.IE;
        Emit.xNome             := FConfiguracao.RazaoSocial;
        Emit.xFant             := FConfiguracao.NomeFantasia;
        Emit.EnderEmit.fone    := FConfiguracao.Telefone;
        Emit.EnderEmit.CEP     := FConfiguracao.CEP;
        Emit.EnderEmit.xLgr    := FConfiguracao.Endereco;
        Emit.EnderEmit.nro     := FConfiguracao.Numero;
        Emit.EnderEmit.xCpl    := FConfiguracao.Complemento;
        Emit.EnderEmit.xBairro := FConfiguracao.Endereco;
        Emit.EnderEmit.cMun    := FConfiguracao.CidadeID;
        Emit.EnderEmit.xMun    := FConfiguracao.Cidade;
        Emit.EnderEmit.UF      := FConfiguracao.UF;
        Emit.enderEmit.cPais   := 1058;
        Emit.enderEmit.xPais   := 'BRASIL';
        Emit.IEST  := '';
        Emit.CNAE  := FConfiguracao.CNAE;
        Emit.IM    := FConfiguracao.IM;

        //Emit.CRT   := TpcnCRT(FConfiguracao.RegimeTributario); // TpcnCRT = (crtSimplesNacional, crtSimplesExcessoReceita, crtRegimeNormal);
        Emit.CRT   := StrToCRT(ConverteOk, FConfiguracao.RegimeTributario.ToString); // TpcnCRT = (crtSimplesNacional, crtSimplesExcessoReceita, crtRegimeNormal);

        //--------------------------------------------------------------------------------------------------
        // Dados do Cliente
        // (veja função TeclaF9InformarDocumento)
        //--------------------------------------------------------------------------------------------------
        Dest.CNPJCPF           := mCliente.Documento;
        Dest.xNome             := mCliente.Nome;
        Dest.ISUF              := ''; // Não é suframa (zona franca)
        Dest.EnderDest.Fone    := mCliente.FONE;
        Dest.EnderDest.xLgr    := mCliente.ENDERECO;
        Dest.EnderDest.nro     := mCliente.NUMERO;
        Dest.EnderDest.xCpl    := mCliente.COMPLEMENTO;
        Dest.EnderDest.xBairro := mCliente.BAIRRO;
        Dest.EnderDest.xMun    := mCliente.CIDADE;
        Dest.EnderDest.cMun    := mCliente.IDCidade;
        Dest.EnderDest.UF      := mCliente.UF;
        Dest.EnderDest.CEP     := mCliente.CEP;
        Dest.EnderDest.cPais   := mCliente.IDPais;
        Dest.EnderDest.xPais   := mCliente.Pais;
        Dest.indIEDest         := inNaoContribuinte;

        //--------------------------------------------------------------------------------------------------
        // Adicionando Produtos
        //--------------------------------------------------------------------------------------------------
        QryVendaItem.First;

        while not QryVendaItem.Eof do
        begin
           mQTDE         := 0;
           mValorUnit    := 0;
           mVlrTotal     := 0;
           mCompraItemFiscal := GetCompraItemFiscal(QryVendaItem.FieldByName('IDPRODUTO').AsString);
           with Det.Add do
           begin
              inc(nSequencia);
              mID_CST_PIS    := StrToIntDef(GetProdutoCampo(QryVendaItem.FieldByName('IDPRODUTO').AsString,'IDCSTPIS'),0);
              mID_CST_COFINS := StrToIntDef(GetProdutoCampo(QryVendaItem.FieldByName('IDPRODUTO').AsString,'IDCSTCOFINS'),0);
              mID_OrigemPro  := StrToIntDef(GetProdutoCampo(QryVendaItem.FieldByName('IDPRODUTO').AsString,'IDCSTORIGEM'),0);
              mID_ST_ICMS    := StrToIntDef(GetProdutoCampo(QryVendaItem.FieldByName('IDPRODUTO').AsString,'IDCSTICMS'),0);
              mID_CSOSN_ICMS := StrToIntDef(GetProdutoCampo(QryVendaItem.FieldByName('IDPRODUTO').AsString,'IDCSOSNICMS'),0);
              mInd_Escala    := StrToIntDef(GetProdutoCampo(QryVendaItem.FieldByName('IDPRODUTO').AsString,'INDESCALA'),0);
              mCodANP        := GetProdutoCampo(QryVendaItem.FieldByName('IDPRODUTO').AsString,'IDANP');

              Prod.CEST    := '';
              Prod.CFOP    := QryVendaItem.FieldByName('CFOP').AsString;
              Prod.NCM     := QryVendaItem.FieldByName('NCM').AsString;
              Prod.nItem      := QryVendaItem.FieldByName('ITEM').AsInteger; // Número sequencial, para cada item deve ser incrementado
              Prod.cProd      := QryVendaItem.FieldByName('IDPRODUTO').AsString;
              Prod.xProd      := QryVendaItem.FieldByName('DESCRICAO').AsString;
              Prod.EXTIPI    := '';

              mQTDE         := QryVendaItem.FieldByName('QUANTIDADE').AsFloat;
              mValorUnit    := QryVendaItem.FieldByName('VLR_UNIT').AsFloat;
              mVlrTotal     := RoundABNT((mQTDE * mValorUnit ),2);

              Prod.uCom      := QryVendaItem.FieldByName('UND').AsString;
              Prod.uTrib     := QryVendaItem.FieldByName('UND').AsString;
              Prod.qCom      := mQTDE ;
              Prod.qTrib     := mQTDE;
              Prod.vUnCom    := mValorUnit;
              Prod.vUnTrib   := mValorUnit;
              Prod.vProd     := mVlrTotal;
              Prod.vDesc     := RoundABNT(QryVendaItem.FieldByName('VLR_DESCONTO').AsFloat,2);
              Prod.IndTot    := itSomaTotalNFe;

              //-----------------------------------------------------------------------
              // Tributacao
              //-----------------------------------------------------------------------

              // calculos de totais
              VlrProdutos       := VlrProdutos + Prod.vProd;
              VlrTotalNF        := VlrTotalNF  + (Prod.vProd - Prod.vDesc + Prod.vOutro);
              VlrTotalDesconto  := VlrTotalDesconto + Prod.vDesc;
              VlrTotalOutros    := VlrTotalOutros + Prod.vOutro;

              // calculos de impostos da note aproximados
              vlrTribFederal    := RoundABNT(QryVendaItem.FieldByName('IN_VL_FEDERAL').AsCurrency, 2);
              vlrTribEstadual   := RoundABNT(QryVendaItem.FieldByName('IN_VL_ESTADUAL').AsCurrency, 2);

              // totais de impostos aproximados
              vlrTTTribFederal  := vlrTTTribFederal   + vlrTribFederal;
              vlrTTTribEstadual := vlrTTTribEstadual  + vlrTribEstadual;

              with Imposto do
              begin
                 vTotTrib     := vlrTribFederal + vlrTribEstadual;
                 vlrTTTotTrib := vlrTTTotTrib + vTotTrib;
                 ICMS.orig      := StrToOrig(LOKResp, FormatFloat('0',mID_OrigemPro) );;
                 with ICMS do
                 begin
                    //--------------------------------------------------------------------------------------------
                    // Regime Tributario "Normal"
                    // CST = é utilizado pelos contribuintes que optam pelo regime normal de tributação
                    // CSOSN = é utilizado pelos contribuintes optantes pelo regime do Simples Nacional.
                    //--------------------------------------------------------------------------------------------
                    if Emit.CRT = crtRegimeNormal then
                    begin
                      ICMS.CST := StrToCSTICMS(ConverteOk, mID_ST_ICMS.ToString);
                      if not ConverteOk then
                        raise EDatabaseError.CreateFmt('Situação tributária "%s" desconhecida.',[mID_ST_ICMS.ToString]);
                      if Imposto.ICMS.CST in [cst10, cst30, cst60, cst70, cst90] then
                        Prod.CEST  := QryVendaItem.FieldByName('CEST').AsString;
                      ICMS.modBC   := dbiValorOperacao;

                      //--------------------------------------------------------------------------------------------
                      // Caso CST seja 60, base de calculo deve ser 0 (zero)
                      //--------------------------------------------------------------------------------------------
                      if ICMS.CST = cst60 then
                        ICMS.vBC := 0
                      else
                        ICMS.vBC       := mVlrTotal;

                      ICMS.pICMS   := QryVendaItem.FieldByName('ICMS').AsFloat;
                      ICMS.vICMS   := QryVendaItem.FieldByName('VLR_ICMS').AsFloat;
                      ICMS.pRedBC  := 0.00;

                      if ICMS.vBC > 0 then
                      begin
                        VlrBaseICMS := VlrBaseICMS + ICMS.vBC;
                        VlrICMS     := VlrICMS     + ICMS.vICMS;
                      end;
                    end
                    else
                    begin
                      //--------------------------------------------------------------------------------------------
                      // Regime Tributario "Simples Nacional"
                      // CST = é utilizado pelos contribuintes que optam pelo regime normal de tributação
                      // CSOSN = é utilizado pelos contribuintes optantes pelo regime do Simples Nacional.
                      //--------------------------------------------------------------------------------------------
                      ICMS.CSOSN := StrToCSOSNIcms(ConverteOk, mID_CSOSN_ICMS.ToString);
                      if not ConverteOk then
                        raise EDatabaseError.CreateFmt('Situação tributária no simples nacional "%s" desconhecida.', [mID_CSOSN_ICMS.ToString]);

                      if Imposto.ICMS.CSOSN in [csosn201, csosn202, csosn203, csosn500,csosn900] then
                        Prod.CEST := QryVendaItem.FieldByName('CEST').AsString;

                      ICMS.pCredSN     := QryVendaItem.FieldByName('SN_ALIQCREDITO').AsFloat;
                      ICMS.vCredICMSSN := QryVendaItem.FieldByName('SN_VCREDITO').AsFloat;
                    end;
                    ICMS.pFCP      := 0; //Verificar Posteriormente.
                    //-----------------------------------------------------------------------
                    // Essas tags foram adicionadas em: maio/2019 atendendo "NT 2019/001".
                    // Tributação ICMS cobrado anteriormente por substituição tributária
                    // (CST=60) ou Tributação ICMS pelo Simples Nacional (CSOSN=500);
                    //-----------------------------------------------------------------------
                    //if (FConfiguracao.RegimeTributario in [2, 3]) then
                    if (Emit.CRT in [crtRegimeNormal]) then
                    begin
                      if ((TpcnCSTIcms(mID_ST_ICMS) in [cst60]) or (ICMS.CSOSN in [csosn500])) then
                      begin
                        if (Ide.indFinal = cfNao) then
                        begin
                          ICMS.pST             := QryVendaItem.FieldByName('ICMS').AsFloat + ICMS.pFCP;
                          ICMS.vBCSTRet        := (mCompraItemFiscal.VBCST * mQTDE);
                          ICMS.vICMSSTRet      := (mCompraItemFiscal.vICMSSTRet * mQTDE);
                          ICMS.vICMSSubstituto := (mCompraItemFiscal.VICMS * mQTDE);
                        end;
                      end;
                    end;
                 end;
                 PIS.CST := StrToCSTPIS(ConverteOk, FormatFloat('00', mID_CST_PIS));
                 if not ConverteOk then
                   raise EDatabaseError.CreateFmt('Situação tributária do PIS "%s" desconhecida.', [mID_CST_PIS]);

                 PIS.vBC  := mVlrTotal;
                 PIS.pPIS := QryVendaItem.FieldByName('PPIS').AsFloat;
                 PIS.vPIS := QryVendaItem.FieldByName('VPIS').AsFloat;

                 // imposto do cofins
                 COFINS.CST := StrToCSTCOFINS(ConverteOk, FormatFloat('00', mID_CST_COFINS));
                 if not ConverteOk then
                   raise EDatabaseError.CreateFmt('Situação tributária do COFINS "%s" desconhecida.', [mID_CST_COFINS]);

                 COFINS.vBC     := mVlrTotal;
                 COFINS.pCOFINS := QryVendaItem.FieldByName('PCOFINS').AsFloat;
                 COFINS.vCOFINS := QryVendaItem.FieldByName('VCOFINS').AsFloat;
                 VlrPis      := VlrPis      + PIS.vPIS;
                 VlrCofins   := VlrCofins   + COFINS.vCOFINS;
              end;
              //-----------------------------------------------------------------------
              //
              //-----------------------------------------------------------------------
              Prod.indEscala := StrToIndEscala(LOKResp,mInd_Escala.ToString); // Atenção: Se for "N" (NÃO) é obrigatório informar o CNPJ do fabricante.
              if (Prod.indEscala = ieNaoRelevante) then
              begin
                Prod.CNPJFab := GetCNPJFabricante(QryVendaItem.FieldByName('IDPRODUTO').AsString);
              end;

              //-----------------------------------------------------------------------
              // Normativa SEFAZ: informar codigo ANP em caso de uso da CFOP 5.656
              //-----------------------------------------------------------------------
              //if (QryVenda.FieldByName('CFOP').AsInteger in [5656,6656]) then
              if ((QryVenda.FieldByName('CFOP').AsInteger  = 5656) or (QryVenda.FieldByName('CFOP').AsInteger  = 6656)) then
              begin
                Prod.comb.cProdANP := StrToIntDef(mCodANP,0);
                Prod.comb.UFcons   := FConfiguracao.UF;
              end;
              mCodANP := '';

              Prod.cEAN       := GetProdutoCampo(QryVendaItem.FieldByName('IDPRODUTO').AsString,'CODIGO_BARRA');
              Prod.cEANTrib   := Prod.cEAN;
              ACBrValidador1.Documento := Prod.cEAN;
              if ACBrValidador1.Validar = False then
              begin
                Prod.cEAN := 'SEM GTIN';
                Prod.cEANTrib := 'SEM GTIN';
              end;
           end;
           QryVendaItem.next;
        End;

        Total.ICMSTot.vBC      := VlrBaseICMS;
        Total.ICMSTot.vICMS    := VlrICMS;
        Total.ICMSTot.vFrete   := 0.00;
        Total.ICMSTot.vSeg     := 0.00;
        Total.ICMSTot.vOutro   := VlrTotalOutros;
        Total.ICMSTot.vBCST    := 0.00;
        Total.ICMSTot.vST      := 0.00;
        Total.ICMSTot.vII      := 0.00;
        Total.ICMSTot.vIPI     := 0.00;
        Total.ICMSTot.vPIS     := VlrPis;
        Total.ICMSTot.vCOFINS  := VlrCofins;
        Total.ICMSTot.vProd    := VlrProdutos;
        Total.ICMSTot.vDesc    := VlrTotalDesconto;
        Total.ICMSTot.vTotTrib := vlrTTTotTrib;
        Total.ICMSTot.vNF      := VlrTotalNF;

        // tributos aproximados incidentes sobre a nota
        ACBrNFe1.DANFE.ImprimeTributos := TpcnTributos.trbSeparadamente;
        ACBrNFe1.DANFE.vTribFed        := vlrTTTribFederal;
        ACBrNFe1.DANFE.vTribEst        := vlrTTTribEstadual;
        ACBrNFe1.DANFE.vTribMun        := 0.00;
        ACBrNFe1.DANFE.FonteTributos   := 'IBPT'; //ACBrIBPTax1.Fonte;
        ACBrNFe1.DANFE.ChaveTributos   := '';     //ACBrIBPTax1.ChaveArquivo;

        //---------------------------------------------------------------------
        // Informacoes de pagamento
        //---------------------------------------------------------------------
        {*****************************************************************************
        |  ATENÇÃO DESENVOLVEDOR/PROGRAMADOR: SOBRE PARCELAS GERADAS (CREDIARIO)     |
        |____________________________________________________________________________|
        |  Não implementei para sair impresso, fica por sua conta                    |
        |                                                                            |
        *****************************************************************************}

        if QryVenda.FieldByName('VALORDINHEIRO').AsFloat>0 then
        begin
          with pag.Add do
           begin
             tPag := fpDinheiro;
             vPag := QryVenda.FieldByName('VALORDINHEIRO').AsFloat;
           end;
        end;
        mVrLParcelas := SQLGetValorParcelas(QryVenda.FieldByName('CODIGO').AsInteger);
        if  mVrLParcelas > 0 then
        begin
          with pag.Add do
           begin
             tPag := fpCreditoLoja;
             vPag := mVrLParcelas;
           end;
        end;

        {*****************************************************************************
        |  ATENÇÃO DESENVOLVEDOR/PROGRAMADOR: SOBRE CARTÕES                          |
        |____________________________________________________________________________|
        |  Referente a pagamento por cartão DÉBITO/CRÉDITO:                          |
        |  =>  POS = Pagamento com cartão não integrado a sistema.                   |
        |  =>  TEF = Pagamento com cartão integrado a sistema.                       |
        |                                                                            |
        | Nesse sistema eu desenvolvi pra usar POS. Por falta de equipamento         |
        | para desenvolver TEF. Se você tiver condições técnicas integrar TEF fica   |
        | por sua conta.                                                             |
        |                                                                            |
        | Criei um objeto "TCartaoPagamento" para controlar esses lançamentos.       |
        |                                                                            |
        *****************************************************************************}
        for mCartao in FCartaoPagamento do // Percorrer vetor (array) de cartões (se houver)
        begin
          with pag.Add do
           begin
             tPag      := mCartao.FormaPagamento;
             vPag      := mCartao.ValorTransacao;
             indPag    := ipVista;   // TpcnIndicadorPagamento = (ipVista, ipPrazo, ipOutras, ipNenhum);
             tpIntegra := tiPagNaoIntegrado; // Alguns estados não aceitam não Integrado, então nesse caso informe "tiPagIntegrado"
             CNPJ      := mCartao.BandeiraCNPJ;
             tBand     := mCartao.BandeiraCartao;
             cAut      := mCartao.Autorizacao;
           end;
        end;
        Pag.vTroco := 0.00;
        if QryVenda.FieldByName('TROCO').AsFloat > 0 then
        begin
          Pag.vTroco := RoundABNT(QryVenda.FieldByName('TROCO').AsFloat, 2);
        end;
        InfAdic.infCpl     :=  '';
        InfAdic.infAdFisco :=  '';
     end;
     ACBrNFe1.NotasFiscais.GerarNFe;
  finally
    mCompraItemFiscal.Free;
  end;
end;

procedure TFrmPrincipal.SATGerar(aNumeroNota: integer);
var
  mCartao : TCartaoPagamento;
  mNumeroSAT : Integer;
  TotalItem, TotalGeral, Pagto1: Double;
  A: Integer;
  CodigoGTIN : String;
  MsgErroGTIN : String;
  ConverteOk   : Boolean;
  mID_CST_PIS    : Integer;
  mID_CST_COFINS : Integer;
  mIDSTOrigem  : Integer;
  mID_ST_ICMS    : Integer;
  mID_OrigemPro : Integer;
  mID_CSOSN_ICMS : Integer;
  mInd_Escala   : Integer;
  mCodANP      : String;
  mVrLParcelas : Double;

  vlrTribFederal, vlrTribEstadual, vlrTTTotTrib, vlrTTTribFederal, vlrTTTribEstadual, vTotTrib: Double;
  mvCFeLei12741 : Double;
begin
  if FTipoVendaFiscal = false then // se nao for fiscal
    exit;
  if FNaturezaFiscal <> 'SAT' then
    exit;

  vlrTribFederal    := 0;
  vlrTribEstadual   := 0;
  vlrTTTotTrib      := 0;
  vlrTTTribFederal  := 0;
  vlrTTTribEstadual := 0;
  vTotTrib          := 0;
  mvCFeLei12741 := 0;

  mNumeroSAT := 0;
  TotalGeral := 0;
  TotalItem := 0;
  TotalGeral := 0;
  Pagto1 := 0;
  mVrLParcelas      := 0;

  mNumeroSAT :=QryVenda.FieldByName('NOTAFISCAL').AsInteger;
  if mNumeroSAT < 1 then
    mNumeroSAT := GetNumeroSAT();
  ACBrSAT1.InicializaCFe;
  with ACBrSAT1.CFe do
  begin
    ACBrSAT1.InicializaCFe;
    ide.numeroCaixa := FConfiguracao.TerminalPDV;
    Ide.cNF  := GerarCodigoDFe(mNumeroSAT);

    //--------------------------------------------------------------------------------------------------
    // Dados do Cliente
    // (veja função TeclaF9InformarDocumento)
    //--------------------------------------------------------------------------------------------------
    Dest.CNPJCPF    := mCliente.Documento;
    Dest.xNome      := mCliente.Nome;
    Entrega.xLgr    := mCliente.Endereco;
    Entrega.nro     := mCliente.Numero;
    Entrega.xCpl    := mCliente.Complemento;
    Entrega.xBairro := mCliente.Bairro;
    Entrega.xMun    := mCliente.Cidade;
    Entrega.UF      := mCliente.UF;

    //--------------------------------------------------------------------------------------------------
    // Adicionando Produtos
    //--------------------------------------------------------------------------------------------------
    QryVendaItem.First;
    try
      while not QryVendaItem.Eof do
      begin
        mID_CST_PIS    := StrToIntDef(GetProdutoCampo(QryVendaItem.FieldByName('IDPRODUTO').AsString,'IDCSTPIS'),0);
        mID_CST_COFINS := StrToIntDef(GetProdutoCampo(QryVendaItem.FieldByName('IDPRODUTO').AsString,'IDCSTCOFINS'),0);
        mID_OrigemPro  := StrToIntDef(GetProdutoCampo(QryVendaItem.FieldByName('IDPRODUTO').AsString,'IDCSTORIGEM'),0);
        mID_ST_ICMS    := StrToIntDef(GetProdutoCampo(QryVendaItem.FieldByName('IDPRODUTO').AsString,'IDCSTICMS'),0);
        mID_CSOSN_ICMS := StrToIntDef(GetProdutoCampo(QryVendaItem.FieldByName('IDPRODUTO').AsString,'IDCSOSNICMS'),0);
        mInd_Escala    := StrToIntDef(GetProdutoCampo(QryVendaItem.FieldByName('IDPRODUTO').AsString,'INDESCALA'),0);
        with Det.Add do
        begin
           CodigoGTIN := Trim(OnlyNumber(GetProdutoCampo(QryVendaItem.FieldByName('IDPRODUTO').AsString,'CODIGO_BARRA')));
           if CodigoGTIN <> '' then
           begin
             MsgErroGTIN := Trim(ACBrValidador.ValidarGTIN(CodigoGTIN));
             if MsgErroGTIN <> '' then
               CodigoGTIN := '';
           end
           else
             CodigoGTIN := '';
           nItem := QryVendaItem.FieldByName('ITEM').AsInteger; // Número sequencial, para cada item deve ser incrementado
           Prod.cProd     := QryVendaItem.FieldByName('CODIGOBARRA').AsString; // não necessariamente significa codigo de barras.
           Prod.cEAN      := CodigoGTIN;
           Prod.xProd     := QryVendaItem.FieldByName('DESCRICAO').AsString;
           Prod.NCM       := QryVendaItem.FieldByName('NCM').AsString;
           Prod.CFOP      := QryVendaItem.FieldByName('CFOP').AsString;
           Prod.uCom      := QryVendaItem.FieldByName('UND').AsString;
           Prod.indRegra  := irTruncamento;
           Prod.qCom      := QryVendaItem.FieldByName('QUANTIDADE').AsFloat;
           Prod.vUnCom    := QryVendaItem.FieldByName('VLR_UNIT').AsFloat;
           Prod.CEST      := '';
           Prod.vDesc     := QryVendaItem.FieldByName('VLR_DESCONTO').AsFloat;
           Prod.vOutro    := 0;
           infAdProd      := '';
           TotalItem      := RoundABNT((Prod.qCom * Prod.vUnCom) + Prod.vOutro - Prod.vDesc,2);
           TotalGeral     := TotalGeral + TotalItem;

           // ICMS ********************************************************
            Imposto.ICMS.orig  := StrToOrig(ConverteOk, mID_OrigemPro.ToString );
            if ConverteOk = False then
            begin
              raise Exception.CreateFmt('Código origem "%d" inválida para o item "%s - %s"',[mID_OrigemPro.ToString, Prod.cProd, Prod.xProd]);
            end;
           if ACBrSAT1.Config.emit_cRegTrib = RTRegimeNormal then
           begin
             Imposto.ICMS.CST := StrToCSTICMS(ConverteOk, mID_ST_ICMS.ToString);
             if ConverteOk = false then
             begin
               raise Exception.CreateFmt('Código do CST "%s" inválido para o item "%s - %s"',[mID_ST_ICMS.ToString, Prod.cProd, Prod.xProd]);
             end;

             Imposto.ICMS.pICMS := QryVendaItem.FieldByName('ICMS').AsFloat;
           end
           else
           begin
             Imposto.ICMS.CSOSN := StrToCSOSNIcms(ConverteOk, mID_CSOSN_ICMS.ToString);
             if ConverteOk = false then
             begin
               raise Exception.CreateFmt('Código do CSOSN "%s" inválido para o item "%s - %s"',[mID_CSOSN_ICMS.ToString, Prod.cProd, Prod.xProd]);
             end;
           end;
          // PIS *********************************************************
          with Imposto.PIS do
          begin
            if (Imposto.ICMS.CSOSN = csosn500) or (ACBrSAT1.Config.emit_cRegTrib = RTSimplesNacional) then
              CST := pis49
            else
              CST := StrToCSTPIS(ConverteOk, mID_CST_PIS.ToString);

            if ConverteOk = false then
            begin
              raise Exception.CreateFmt('Código CST do Pis "%d" inválido para o item "%s - %s"',[mID_CST_PIS.ToString, Prod.cProd, Prod.xProd]);
            end;
            if QryVendaItem.FieldByName('PPIS').AsFloat > 0 then
            begin
              vBC  := TotalItem;
              pPIS := QryVendaItem.FieldByName('PPIS').AsFloat / 100;
              qBCProd   := 0;
              vAliqProd := 0;
            end
            else
            begin
              vBC       := 0;
              pPIS      := 0;
              qBCProd   := 0;
              vAliqProd := 0;
            end;
          end;
          // COFINS ******************************************************
          with Imposto.COFINS do
          begin
            if (Imposto.ICMS.CSOSN = csosn500) or (ACBrSAT1.Config.emit_cRegTrib = RTSimplesNacional) then
              CST := cof49
            else
              CST := StrToCSTCOFINS(ConverteOk, mID_CST_COFINS.ToString);
            if ConverteOk = false then
            begin
              raise Exception.CreateFmt('Código CST do Cofins "%d" inválido para o item "%s - %s"',[mID_CST_COFINS.ToString, Prod.cProd, Prod.xProd]);
            end;

            if QryVendaItem.FieldByName('PCOFINS').AsFloat > 0 then
            begin
              vBC     := TotalItem;
              pCOFINS := QryVendaItem.FieldByName('PCOFINS').AsFloat / 100;
              qBCProd   := 0;
              vAliqProd := 0;
            end
            else
            begin
              vBC       := 0;
              pCOFINS   := 0;
              qBCProd   := 0;
              vAliqProd := 0;
            end;
          end;
          // imposto aproximado
          Imposto.vItem12741 := RoundABNT(QryVendaItem.FieldByName('IN_VL_FEDERAL').AsFloat +
                                          QryVendaItem.FieldByName('IN_VL_ESTADUAL').AsFloat +
                                          QryVendaItem.FieldByName('IN_VL_MUNICIPAL').AsFloat,2) ;

          mvCFeLei12741 := mvCFeLei12741 + Imposto.vItem12741;
        end;
        QryVendaItem.Next;
      end;
    finally
      QryVendaItem.First;
    end;
    Total.DescAcrEntr.vDescSubtot := QryVenda.FieldByName('VLR_DESCONTO').AsFloat;
    Total.vCFeLei12741 := mvCFeLei12741;
    //---------------------------------------------------------------------
    // Informacoes de pagamento
    // Cartões
    //---------------------------------------------------------------------
    for mCartao in FCartaoPagamento do // Percorrer vetor (array) de cartões (se houver)
    begin
       with Pagto.Add do
       begin
         cMP      := TpcnCodigoMP(mCartao.FormaPagamento);
         vMP      := mCartao.ValorTransacao;
       end;
    end;

    //---------------------------------------------------------------------
    // Informacoes de pagamento
    // Dinheiro
    //---------------------------------------------------------------------
    if QryVenda.FieldByName('VALORDINHEIRO').AsFloat>0 then
    begin
      with Pagto.Add do
       begin
         cMP := mpDinheiro;
         vMP := QryVenda.FieldByName('VALORDINHEIRO').AsFloat;
       end;
    end;

    mVrLParcelas := SQLGetValorParcelas(QryVenda.FieldByName('CODIGO').AsInteger);
    if  mVrLParcelas > 0 then
    begin
      with Pagto.Add do
       begin
         cMP := mpCreditoLoja;
         vMP := mVrLParcelas;
       end;
    end;

  end;
  mLog.Lines.Add('SAT gerado no ACBr.');
end;

{******************************************************************************
  Captions Botoes
******************************************************************************}
procedure TFrmPrincipal.CriarPastas;
var
  mNFe        : String;
  mNFCe       : String;
  mSAT        : String;
  mIntegrador : String;
begin
  mNFe  := '';
  mNFCe := '';
  mSAT  := '';
  mIntegrador := '';

  //--------------------------------------------------------------------
  // Criar subpastas NF-e
  // Add: abril/2019
  //--------------------------------------------------------------------
  for mNFe in _NFe_LOCAL_PASTAS do
  begin
    ForceDirectories( mNFe );
  end;

  //--------------------------------------------------------------------
  // Criar subpastas NFC-e
  // Modificado em: abril/2019
  //--------------------------------------------------------------------
  for mNFCe in _NFCe_LOCAL_PASTAS do
  begin
    ForceDirectories( mNFCe );
  end;

  //--------------------------------------------------------------------
  // Criar subpastas SAT
  // Add: abril/2019
  //--------------------------------------------------------------------
  for mSAT in _SAT_LOCAL_PASTAS do
  begin
    ForceDirectories( mSAT );
  end;

  //--------------------------------------------------------------------
  // Criar subpastas Integrador
  // Add: abril/2019
  //--------------------------------------------------------------------
  for mIntegrador in _INTEGRADOR_LOCAL_PASTAS do
  begin
    ForceDirectories( mIntegrador );
  end;

  //----------------------------------------------------------------------
  // NFC-e: Configurações de subpastas
  //----------------------------------------------------------------------
  ACBrNFe1.Configuracoes.Arquivos.PathSchemas  := _NFCe_LOCAL_PASTAS[0];               // Veja no Vetor 0 - Schemas
  ACBrNFe1.Configuracoes.Arquivos.PathInu      := _NFCe_LOCAL_PASTAS[1];               // Veja no Vetor 1 - Inutilizadas
  ACBrNFe1.Configuracoes.Arquivos.PathNFe      := _NFCe_LOCAL_PASTAS[2];               // Veja no Vetor 2 - Geradas
  ACBrNFe1.Configuracoes.Arquivos.PathEvento   := _NFCe_LOCAL_PASTAS[3];               // Veja no Vetor 3 - Eventos
  ACBrNFe1.Configuracoes.Arquivos.PathSalvar   := _NFCe_LOCAL_PASTAS[4];               // Veja no Vetor 4 - Salvar

end;

{******************************************************************************
  Captions Botoes
******************************************************************************}
procedure TFrmPrincipal.AtualizarCaption;
begin
  lblEmpresa.Caption := FConfiguracao.NomeFantasia;
  btnBotao1.Caption   := 'Nova Venda' + sLineBreak + '(F3)';
  btnBotao2.Caption   := 'Limpar Campo ' + sLineBreak + '(Delete)';
  btnBotao3.Caption   := 'Multiplicar' + sLineBreak + '(*)';
  btnBotao4.Caption   := 'Cancelar Item' + sLineBreak + '(F4)';
  btnBotao5.Caption   := 'Pagamento' + sLineBreak + '(F5)';
  btnBotao6.Caption   := 'Cancelar Venda' + sLineBreak + '(F6)';
  btnBotao7.Caption   := 'Funções' + sLineBreak + ' (F7)';
  btnDesconto.Caption := 'Desconto Item' + sLineBreak + ' (F11)';
  btnPedido.Caption   := '(Pedido)' + sLineBreak + ' (F12)';
  btnInformarCliente.Caption   := 'Informar CPF' + sLineBreak + ' (F9)';
  btnBotao8.Caption   := 'Sair do Sistema' + sLineBreak + '(Ctrl + X)';

end;

procedure TFrmPrincipal.btnBotao1Click(Sender: TObject);
begin
 TeclaF3NovaVenda();
end;

procedure TFrmPrincipal.btnBotao2Click(Sender: TObject);
begin
  TeclaLimparCampo();
end;

procedure TFrmPrincipal.btnBotao3Click(Sender: TObject);
begin
  TeclaFMultiplicar();
end;

procedure TFrmPrincipal.btnBotao4Click(Sender: TObject);
begin
  TeclaF4CancelarItem();
end;

procedure TFrmPrincipal.btnBotao5Click(Sender: TObject);
begin
  TeclaF5Pagamento();
end;

procedure TFrmPrincipal.btnBotao6Click(Sender: TObject);
begin
  TeclaF6CancelarVenda();
end;

procedure TFrmPrincipal.btnBotao7Click(Sender: TObject);
begin
  TeclaF7Funcoes();
end;

procedure TFrmPrincipal.btnBotao8Click(Sender: TObject);
begin
  TeclaCtrlxFecharSistema();
end;

procedure TFrmPrincipal.btnDescontoClick(Sender: TObject);
begin
  TeclaF11DescontoItem();
end;

procedure TFrmPrincipal.btnInformarClienteClick(Sender: TObject);
begin
  TeclaF9InformarCPF();
end;

procedure TFrmPrincipal.btnPedidoClick(Sender: TObject);
begin
  TeclaF12ImportarPedido();
end;

//------------------------------------------------------------------------------------
// SAT CF-e - Configurar
// Add: Abril/2019
//------------------------------------------------------------------------------------
procedure TFrmPrincipal.GetsignAC(var Chave: AnsiString);
begin
  Chave := AnsiString( FAssinatura );
end;

procedure TFrmPrincipal.GetcodigoDeAtivacao(var Chave: AnsiString);
begin
  Chave := AnsiString( FCodAtivacao );
end;

{******************************************************************************
  Obter dados principais para emissão da NFC-e
************  ******************************************************************}
procedure TFrmPrincipal.GetInformacoes;
var
  mCEP : String;
begin
  FConfiguracao.Loja           := GetEmpresa();
  FConfiguracao.TerminalPDV    := GetTerminalPDV; // Defina aqui a identificação do PDV (Dica, buscar de alguma tabela do banco de dados, que você definir)
  FConfiguracao.HDDSerie       := HDDSerie(); // Capturar numero de serie do HD
  FConfiguracao.Operador       := 0;
  FConfiguracao.OperadorNome   := '';

  if QryMovimento.FieldByName('STATUS').AsString ='ABERTO' then
  begin
    FConfiguracao.Operador      := QryMovimento.FieldByName('IDOPERADOR').AsInteger;
    FConfiguracao.OperadorNome  := GetOperador(FConfiguracao.Operador);
  end;

  FConfiguracao.ColunasNormal               := 48;
  FConfiguracao.ColunasCondensado           := 64;

  QryConfiguracoes.Close;
  QryConfiguracoes.Open;
  try
    FConfiguracao.ModeloEscPos      := QryConfiguracoes.FieldByName('MODELOESCPOS').AsString;
    FConfiguracao.PortaImpressora   := QryConfiguracoes.FieldByName('PORTAESCPOS').AsString;
    FConfiguracao.AbrirGaveta       := (QryConfiguracoes.FieldByName('ABRIRGAVETA').AsString = 'S');
    FConfiguracao.CNPJ              := QryConfiguracoes.FieldByName('CNPJ').AsString;
    FConfiguracao.IE                := QryConfiguracoes.FieldByName('IE').AsString;
    FConfiguracao.IM                := QryConfiguracoes.FieldByName('IM').AsString;
    FConfiguracao.CNAE              := QryConfiguracoes.FieldByName('CNAE').AsString;
    FConfiguracao.RazaoSocial       := QryConfiguracoes.FieldByName('NOME').AsString;;
    FConfiguracao.NomeFantasia      := QryConfiguracoes.FieldByName('NOMEFANTASIA').AsString;
    FConfiguracao.Endereco          := QryConfiguracoes.FieldByName('ENDERECO').AsString;
    FConfiguracao.Numero            := QryConfiguracoes.FieldByName('NUMERO').AsString;
    FConfiguracao.Bairro            := QryConfiguracoes.FieldByName('BAIRRO').AsString;
    FConfiguracao.CidadeID          := QryConfiguracoes.FieldByName('IDCIDADE').AsInteger;
    FConfiguracao.Cidade            := QryConfiguracoes.FieldByName('CIDADE').AsString;
    FConfiguracao.CEP               := StrToIntDef(SoNumero(QryConfiguracoes.FieldByName('CEP').AsString),0);
    FConfiguracao.UFID              := QryConfiguracoes.FieldByName('IDUF').AsInteger;
    FConfiguracao.UF                := QryConfiguracoes.FieldByName('UF').AsString;
    FConfiguracao.Telefone          := QryConfiguracoes.FieldByName('FONE').AsString;
    FConfiguracao.Site              := QryConfiguracoes.FieldByName('SITE').AsString;;
    FConfiguracao.Email             := QryConfiguracoes.FieldByName('EMAIL').AsString;
    FConfiguracao.RegimeTributario  := QryConfiguracoes.FieldByName('REGIME_TRIB').AsInteger; // TpcnCRT = (crtSimplesNacional, crtSimplesExcessoReceita, crtRegimeNormal);
    FConfiguracao.TIPO_IMPRESSAO    := QryConfiguracoes.FieldByName('NFCE_DANFE').AsString;
    if FConfiguracao.TIPO_IMPRESSAO.IsEmpty then
      FConfiguracao.TIPO_IMPRESSAO  := 'TELA';
    FConfiguracao.NFECertArquivo    := QryConfiguracoes.FieldByName('NFE_CERTIFICADO_LOCAL').AsString;
    FConfiguracao.NFECertSenha      := QryConfiguracoes.FieldByName('NFE_CERTIFICADO_SENHA').AsString;
    FConfiguracao.NFECertSerie      := QryConfiguracoes.FieldByName('NFE_CERTIFICADO_NUMSERIE').AsString;
    FContigencia                    := StrToIntDef(QryConfiguracoes.FieldByName('NFE_FORMAEMISSAO').AsString,0)=2  ; // 1=Normal / 2=Contigencia
    FConfiguracao.NFEAmbiente       := QryConfiguracoes.FieldByName('NFE_AMBIENTE').AsInteger; // 0=taProducao / 1=taHomologacao
    FConfiguracao.VersaoQRCode      := QryConfiguracoes.FieldByName('NFCE_QRCODE').AsInteger;

    FConfiguracao.PIS               := QryConfiguracoes.FieldByName('ALIQPIS').AsFloat;
    FConfiguracao.COFINS            := QryConfiguracoes.FieldByName('ALIQCOFINS').AsFloat;

    FConfiguracao.RespTec_IDCSRT    := QryConfiguracoes.FieldByName('RESPTEC_IDCSRT').AsString;
    FConfiguracao.RespTec_CSRT      := QryConfiguracoes.FieldByName('RESPTEC_CSRT').AsString;
    FConfiguracao.RespTec_CNPJ      := QryConfiguracoes.FieldByName('RESPTEC_CNPJ').AsString;
    FConfiguracao.RespTec_xContato  := QryConfiguracoes.FieldByName('RESPTEC_XCONTATO').AsString;
    FConfiguracao.RespTec_email     := QryConfiguracoes.FieldByName('RESPTEC_EMAIL').AsString;
    FConfiguracao.RespTec_Fone      := QryConfiguracoes.FieldByName('RESPTEC_FONE').AsString;

    ConfigurarBalanca();

    //------------------------------------------------------------------------------------
    // >> ATENCAO PROGRAMADOR <<
    // ESSA INFORMAÇÃO SOMENTE É POSSIVEL CONSEGUIR NA RECEITA ESTADUAL DE SEU ESTADO
    // É O SEU CLIENTE O RESPONSAVEL POR CONSEGUIR  "IdCSC" e "CSC".
    // "ATENCAO: SEM ESSAS INFORMACOES NÃO CONSEGUIRÁ  EMITIR NFC-E."
    //------------------------------------------------------------------------------------
    FConfiguracao.NFEIdToken      := QryConfiguracoes.FieldByName('NFCE_IDCSC').AsString; // ATENCAO: SEM ESSA INFORMACAO [IdCSC] VOCÊ NÃO CONSEGUIRA  EMITIR NFC-E.
    FConfiguracao.NFETokenCSC     := QryConfiguracoes.FieldByName('NFCE_CSC').AsString;   // ATENCAO: SEM ESSA INFORMACAO [CSC] VOCÊ NÃO CONSEGUIRA  EMITIR NFC-E.
    FConfiguracao.NFESSLTipo      := QryConfiguracoes.FieldByName('SSL_TIPO').AsString;
    FConfiguracao.NFETSL_TIPO     := QryConfiguracoes.FieldByName('TSL_TIPO').AsString;
    FConfiguracao.MFE_Chave       := QryConfiguracoes.FieldByName('MFE_CHAVEACESSO').AsString;



    FConfiguracao.CFOP := 0;
    FTipoVendaFiscal := QryConfiguracoes.FieldByName('PDVTIPOFISCAL').AsString = 'FISCAL';
    FNaturezaFiscal := QryConfiguracoes.FieldByName('SATNFCE').AsString; // "NFCE" ou "SAT"
    lblTipoDFe.Caption := 'VENDA'; // 'PDV' = BOBINA (IMPRESSORA NAO FISCAL)
    if FNaturezaFiscal = '' then
      FNaturezaFiscal := 'NFCE';
    if FNaturezaFiscal = 'NFCE' then
    begin
      if FTipoVendaFiscal then
      begin
        lblTipoDFe.Caption := 'NFC-e';
        FConfiguracao.CFOP := QryConfiguracoes.FieldByName('NFCE_CFOP').AsInteger;
      end;
    end;
    //------------------------------------------------------------------------------------
    // SAT CF-e
    //------------------------------------------------------------------------------------
    if FNaturezaFiscal = 'SAT' then
    begin
      if FTipoVendaFiscal then
      begin
        lblTipoDFe.Caption := 'SAT';
        FConfiguracao.CFOP := QryConfiguracoes.FieldByName('SAT_CFOP').AsInteger;
      end;
    end;
    if FTipoVendaFiscal = false then
      lblTipoDFe.Caption := 'PDV'; // 'PDV' = BOBINA (IMPRESSORA NAO FISCAL)

    //------------------------------------------------------------------------------------
    // Setar Titulo do Aplicativo Comercial de acordo com a configuração
    //------------------------------------------------------------------------------------
    Self.Caption := lblTipoDFe.Caption;
    Application.Title := lblTipoDFe.Caption;
    //------------------------------------------------------------------------------------
    //
    //------------------------------------------------------------------------------------
    FAssinatura     := QryConfiguracoes.FieldByName('SATASSINATURA').AsWideString;
    FCodAtivacao    := QryConfiguracoes.FieldByName('SATCODATIV').AsWideString;

    ACBrSAT1.OnGetsignAC := GetsignAC;
    ACBrSAT1.OnGetcodigoDeAtivacao := GetcodigoDeAtivacao;
    SATConfigurar(FConfiguracao.TerminalPDV);
  finally
    QryConfiguracoes.Close;
  end;

end;

procedure TFrmPrincipal.SetCertificado;
begin
  if ((Trim(FConfiguracao.NFECertArquivo) > '') and (FTipoVendaFiscal = True)) then
  begin
    if not FilesExists(FConfiguracao.NFECertArquivo) then
    begin
      informar('Atenção: Certificado digital não encontrado. '+sLineBreak+
               'Informe Certificado e senha no sistema '+_SISTEMA_NOME+': '+
               '1. Menu Configurações.'+sLineBreak+
               '2. Parametros do sistema.'+sLineBreak+
               '3. Parametros Operacionais.'+sLineBreak+
               '--Certificado Digital--');
    end;
  end;

  ACBrNFe1.SSL.DescarregarCertificado;
  ACBrNFe1.NotasFiscais.Clear;
  ACBrNFe1.DANFE.TipoDANFE  := tiRetrato;
  //  ACBrNFe1.DANFE := ACBrNFeDANFCeFortes1;
  //  if FConfiguracao.NFCEDANFE <> 'PDV' then // 'PDV' = BOBINA (IMPRESSORA NAO FISCAL)
  //  begin
  //    // Mostrar na Tela
  //    ACBrNFe1.DANFE := ACBrNFeDANFCeFortesA41;
  //  end;
  ACBrNFe1.Configuracoes.Geral.ModeloDF           := moNFCe;
  ACBrNFe1.Configuracoes.Geral.VersaoDF           := ve400;
  ACBrNFe1.Configuracoes.Geral.VersaoQRCode       := TpcnVersaoQrCode(FConfiguracao.VersaoQRCode);
  ACBrNFe1.Configuracoes.Certificados.ArquivoPFX  := FConfiguracao.NFECertArquivo;
  ACBrNFe1.Configuracoes.Certificados.NumeroSerie := FConfiguracao.NFECertSerie;
  ACBrNFe1.Configuracoes.Certificados.Senha       := FConfiguracao.NFECertSenha;
  ACBrNFe1.Configuracoes.Geral.IdCSC              := FConfiguracao.NFEIdToken;
  ACBrNFe1.Configuracoes.Geral.CSC                := FConfiguracao.NFETokenCSC;

  //----------------------------------------------------------------------
  // Verificar ambiente (se em producao ou homologacao)
  //----------------------------------------------------------------------
  ACBrNFe1.Configuracoes.WebServices.Ambiente := TpcnTipoAmbiente(FConfiguracao.NFEAmbiente);


  //----------------------------------------------------------------------
  // WebServices
  //----------------------------------------------------------------------
  ACBrNFe1.Configuracoes.WebServices.UF := FConfiguracao.UF;
  ACBrNFe1.Configuracoes.WebServices.AguardarConsultaRet      := 5000;   // tempo padrão que vai aguardar para consultar após enviar a NF-e
  ACBrNFe1.Configuracoes.WebServices.TimeOut                  := 18000;  // tempo limite de espera pelo webservice
  ACBrNFe1.Configuracoes.WebServices.IntervaloTentativas      := 3000;   // Intervalo entre as tentativas de envio
  ACBrNFe1.Configuracoes.WebServices.Tentativas               := 10;     // quantidade de tentativas de envio
  ACBrNFe1.Configuracoes.WebServices.AjustaAguardaConsultaRet := True;   // ajustar "AguardarConsultaRet" com o valor retornado pelo webservice
  ACBrNFe1.Configuracoes.WebServices.Visualizar := False;
  //----------------------------------------------------------------------
  //
  //----------------------------------------------------------------------
  ACBrNFe1.Configuracoes.Geral.ExibirErroSchema := False;
  ACBrNFe1.Configuracoes.Geral.FormatoAlerta    := '[ %TAGNIVEL%%TAG% ] %DESCRICAO% - %MSG%';

  //----------------------------------------------------------------------
  // Se for modo contigencia
  //----------------------------------------------------------------------
  if FContigencia then
    ACBrNFe1.Configuracoes.Geral.FormaEmissao := teOffLine
  else
    ACBrNFe1.Configuracoes.Geral.FormaEmissao := teNormal;

  //----------------------------------------------------------------------
  // Protocolo SSL
  //----------------------------------------------------------------------
   SetCertificadoDigital(ACBrNFe1,FConfiguracao.NFESSLTipo);
   SetCertificadoSeguranca(ACBrNFe1,FConfiguracao.NFETSL_TIPO);

end;

{******************************************************************************
  Habilitar Campo Codigo
******************************************************************************}
procedure TFrmPrincipal.HabilitarCampoCodigo(aValue : Boolean);
begin
  EditCodigo.Enabled := aValue;
  if aValue then
  begin
    EditCodigo.Color := clWindow;
    EditCodigo.SetFocus;
  end
  else
    EditCodigo.Color := clGray;
end;

{******************************************************************************
  Inicia nova venda
******************************************************************************}
procedure TFrmPrincipal.NovaVenda(aPedidoVenda: Boolean = False);
var
  mRecCliente  : TClienteRecord;
  mPendente    : Boolean;
  mIDPedido    : Integer;
begin
  mRecCliente.Limpar;
  if FVendaIniciada then
    exit;
  FItemID   := 0;
  mIDPedido := 0;
  mPendente := False;
  mPendente := VerificaVendaPendente(mIDPedido);
  try
    if (mPendente) and (aPedidoVenda = False) then
    begin
      if Pergunta('Há uma venda pendente... Deseja restaurar?',True) = false then
      begin
        ConnectFirebird.ExecSQL('DELETE FROM VENDAS WHERE STATUS='+QuotedStr('ABERTO')+' AND  OPERADOR='+FConfiguracao.Operador.ToString+' AND  TERMINAL='+FConfiguracao.TerminalPDV.ToString  );
        SQLExcluirVenda(mIDPedido);
        EncerrarVenda(aPedidoVenda);
      end
      else
      begin
        FVendaIniciada := True;
        CarregarVendaPendente();
        HabilitarCampoCodigo(True);
        CalcularVenda();
        Identificadores();
        QryVendaItem.Last;
        ChecaProdutoPesado();
        exit;
      end;
    end
    else
    begin
      if (mPendente) and (aPedidoVenda) then
      begin
        SQLExcluirVenda(mIDPedido);
        EncerrarVenda(aPedidoVenda);
      end
    end;


    // codigo 1 é para cliente consumidor final, não identificado
    mRecCliente.GetByID(1);


    QryVenda.Close;
    QryVendaItem.Close;

    QryVenda.Open;

    QryVenda.Append;
    QryVenda.FieldByName('EMPRESA').AsInteger     := FConfiguracao.Loja;
    if FConfiguracao.CFOP > 0 then
    begin
      QryVenda.FieldByName('CFOP').AsInteger        := FConfiguracao.CFOP;
    end;

    if mRecCliente.Nome > '' then
    begin
      QryVenda.FieldByName('CLIENTE').AsInteger    := mRecCliente.IDCliente;
    end;

    QryVenda.FieldByName('EMISSAO').AsDateTime    := Date;
    QryVenda.FieldByName('DATA_ENTRADASAIDA').AsDateTime  := Date;
    QryVenda.FieldByName('HORA').AsDateTime       := Time;
    QryVenda.FieldByName('TERMINAL').AsInteger    := FConfiguracao.TerminalPDV;
    QryVenda.FieldByName('OPERADOR').AsInteger    := FConfiguracao.Operador;
    QryVenda.FieldByName('HDDSERIE').AsString     := FConfiguracao.HDDSerie;
    QryVenda.FieldByName('OPERACAO').AsString     := 'S';
    QryVenda.FieldByName('CUPOM').AsString        := 'S';
    QryVenda.FieldByName('STATUS').AsString       := 'ABERTO';  // ABERTO

    if FTipoVendaFiscal then
    begin
      if FNaturezaFiscal = 'NFCE' then
      begin
        QryVenda.FieldByName('TIPONF').AsString       := 'NFCE'; // NFCE ou SAT
        QryVenda.FieldByName('MODELO').AsString       := '65';
        QryVenda.FieldByName('SERIE').AsString        := '1';
      end;
      if FNaturezaFiscal = 'SAT' then // Add: Abril/2019
      begin
        QryVenda.FieldByName('TIPONF').AsString     := 'SAT';
        QryVenda.FieldByName('MODELO').AsString     := '59';
        QryVenda.FieldByName('SERIE').AsString      := '';
      end;
    end;
    if FTipoVendaFiscal = False then
    begin
      QryVenda.FieldByName('TIPONF').AsString     := 'PDV'; // 'PDV' = BOBINA (IMPRESSORA NAO FISCAL)
      QryVenda.FieldByName('MODELO').AsString     := 'PDV'; // 'PDV' = BOBINA (IMPRESSORA NAO FISCAL)
      QryVenda.FieldByName('SERIE').AsString      := 'PDV'; // 'PDV' = BOBINA (IMPRESSORA NAO FISCAL)
    end;

    QryVenda.Post;

    QryVenda.Close;
    QryVenda.ParamByName('IDTERMINAL').AsInteger  := FConfiguracao.TerminalPDV;
    QryVenda.Open;
    TabelaItemFecharAbrir();

    FVendaIniciada := True;
    HabilitarCampoCodigo(True);
    Identificadores();

    //----------------------------------------------------------------------
    // Instanciar Formulario de Pagamento
    // Ao finalizar a venda, deverá ser liberado (destruido) da memoria.
    //----------------------------------------------------------------------
    FPagamentoIniciado := False;
    QryVendaItem.Last;
  finally
    EditCodigo.Text :='';
    EditQtde.Text := '1';
  end;
end;


procedure TFrmPrincipal.pnOutrosClick(Sender: TObject);
begin

end;

{******************************************************************************
  Inicia nova venda
******************************************************************************}
procedure TFrmPrincipal.Identificadores;
begin
  {
  lblCaixa.Caption    := 'Caixa: Fechado';
  lblOperador.Caption := 'Operador(a):';
  if FConfiguracao.TerminalPDV>0 then
    lblCaixa.Caption    := 'Caixa: '+FormatFloat('000',FConfiguracao.TerminalPDV);
  if FConfiguracao.Operador>0 then
    lblOperador.Caption := 'Operador(a): '+FConfiguracao.OperadorNome;
  }
end;


{******************************************************************************
  É a ultima etapa, limpar registros e excluir arquivo
******************************************************************************}
procedure TFrmPrincipal.EditCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  mProduto : String;
begin
  if Key=VK_F8 then
  begin
    Key := 0;
    if dbProcurarProduto.Execute = False then
    begin
      EditCodigo.SetFocus;
      Exit;
    end;
    mProduto := dbProcurarProduto.ResultFieldAsString('REFERENCIA');

    EditCodigo.Text := mProduto;
    LerCodigoProduto();
  end;
end;

procedure TFrmPrincipal.EditCodigoKeyPress(Sender: TObject; var Key: Char);
var
  mCodigo : String;
  mQtde, FPeso   : Double;
begin
  mQtde := 0;
  FPeso := 0;
  FLeituraPeso := False;
  case Key of
    '-': begin
           Key := #0;
           TeclaLimparCampo();
         end;
    '*': begin
           Key := #0;
           //----------------------------------------------------------------------------------------------
           // PARA MULTIPLICAR:
           // 1 - digite (manualmente) quantidade
           // 2 - Pressione: * (asterisco)
           // 3 - Passe o produto no leitor de codigo de barras
           //    ou digite o codigo do produto (e tecle ENTER após digitar)
           //----------------------------------------------------------------------------------------------
           TeclaFMultiplicar();
         end;

    #13: begin
           Key := #0;
           LerCodigoProduto();
         end;

    '/': begin
           Key := #0;
           if QryVendaItem.IsEmpty then
           begin
             exit;
           end;
           if QryVendaItem.FieldByName('BALANCA').AsString <> 'S' then
           begin
             Informar('Peso não se aplica a esse produto.','Balança',True);
             exit;
           end;

           ConfigurarBalanca();
           if ACBrBAL1.Modelo <> balNenhum then
           begin
             ACBrBAL1.MonitorarBalanca := True;
             ACBrBAL1.Ativar;
             FLeituraPeso := True;
             try
               MensagemTopo('Aguardando leitura da balança...');
               FPeso := ACBrBAL1.LePeso(10000);
               if FPeso > 0 then
               begin
                 EditCodigo.Text   := QryVendaItem.FieldByName('CODIGOBARRA').AsString;
                 EditQtde.Text     := FloatToStr(FPeso);
                 EditQtde.SelStart := Length(EditQtde.Text);
                 ExcluirItem(QryVenda.FieldByName('CODIGO').AsInteger,
                             QryVendaItem.FieldByName('ITEM').AsInteger,
                             QryVendaItem.FieldByName('CODIGOBARRA').AsString,
                             QryVendaItem.FieldByName('DESCRICAO').AsString);
                 LerCodigoProduto();
                 MensagemTopo('');
                 MensagemRodape('');
               end
               else
               begin
                 case Trunc(FPeso) of
                     0: Informar('TimeOut (coloque o produto sobre a Balança)'+sLineBreak+'Tente nova leitura do peso.','Balança',True);
                    -1: Informar('Peso Instável.'+sLineBreak+'Tente nova leitura do peso.','Balança',True);
                    -2: Informar('Peso Negativo.','Balança',True);
                    -9: Informar('Peso não foi recebido.','Balança',True);
                   -10: Informar('Sobrecarga de Peso.','Balança',True);
                 end;
               end;
             finally
               FLeituraPeso := False;
               ACBrBAL1.Desativar;
               ACBrBAL1.MonitorarBalanca := False;
             end;
           end
           else
           begin
             FLeituraPeso := True;
             FPeso := LerBalancaManualmente();
             if FPeso > 0 then
             begin
               EditCodigo.Text   := QryVendaItem.FieldByName('CODIGOBARRA').AsString;
               EditQtde.Text     := FloatToStr(FPeso);
               EditQtde.SelStart := Length(EditQtde.Text);
               ExcluirItem(QryVenda.FieldByName('CODIGO').AsInteger,
                           QryVendaItem.FieldByName('ITEM').AsInteger,
                           QryVendaItem.FieldByName('CODIGOBARRA').AsString,
                           QryVendaItem.FieldByName('DESCRICAO').AsString);
               LerCodigoProduto();
               MensagemTopo('');
               MensagemRodape('');
             end;

           end;
         end;
 end;
end;

function TFrmPrincipal.LerBalancaManualmente(): Double;
var
  mCancelar  : Boolean;
  mIDProduto : String;
  mDescricao : String;
  mIDVenda   : Integer;
  mPeso     : Double;
begin
  Result := 0;
  mCancelar := False;
  mPeso := 0;
  if QryVendaItem.IsEmpty then
    Exit;
  if not FVendaIniciada then
    Exit;
  try
    FrmInformarPesoManual := TFrmInformarPesoManual.Create(Self);
    mCancelar := FrmInformarPesoManual.ShowModal = mrOk; // se retornou "mrOk", processar finalização da venda.
    if mCancelar =  False then
      Exit;
    mPeso := StrToFloatDef(FrmInformarPesoManual.EditPeso.Text,0);
    if mPeso < 0 then
      exit;
    Result := mPeso;
  finally
    FrmExcluirItem.Free;
  end;
end;

procedure TFrmPrincipal.TeclaFMultiplicar();
begin
    //----------------------------------------------------------------------------------------------
    // PARA MULTIPLICAR:
    // 1 - digite (manualmente) quantidade
    // 2 - Pressione: * (asterisco)
    // 3 - Passe o produto no leitor de codigo de barras
    //    ou digite o codigo do produto (e tecle ENTER após digitar)
    //----------------------------------------------------------------------------------------------
  if Trim(EditCodigo.Text).Length>6 then
  begin
    // não pode ser maior que 6 digitos
    Informar('Quantidade inválida.');
    exit;
  end;
  EditQtde.Text := EditCodigo.Text; // copia a quantidade digitada para a variavel invisivel que armazena quantidade
  EditCodigo.Text := ''; // Fica aguardando informar o codigo produto
end;

procedure TFrmPrincipal.CupomNaoFiscal(aNumeroNota: integer);
var
  mTexto           : TStringList;
  mComprovante     : String;
  mLinha           : String;
  mLinhaParcela    : String;
  mMascara         : String;
  mQrCode          : String;
  mInfoCliente     : String;
  mIDVenda         : String;
  mScript          : String;
  FNomeFormaPagto  : String;
  FValorParcelas   : Double;
  mLinhaVlrPago    : Boolean;
begin
  mIDVenda := ZeroEsquerda(aNumeroNota.ToString,6);
  mTexto  := TStringList.Create;
  mComprovante := 'COMPROVANTE DE VENDA: '+mIDVenda;
  mInfoCliente := '';
  FNomeFormaPagto := '';
  FValorParcelas := 0;
  mLinhaVlrPago := False;
  mScript := QryVenda.SQL.Text;
  if (mCliente.Documento = '') or (StrToIntDef(mCliente.Documento,0) = 0) then
  begin
    if FVendaIniciada = false then
    begin
      QryVenda.SQL.Text := 'SELECT * FROM VENDAS WHERE CODIGO=:CODIGO';
      QryVenda.ParamByName('CODIGO').AsInteger := aNumeroNota;
      ReabrirTabela();
    end;
    if QryVenda.FieldByName('CLIENTE').AsInteger > 0 then
      GetDadosCliente(QryVenda.FieldByName('CLIENTE').AsInteger);
  end;
  if mCliente.IDCliente > 0 then
  begin
    mInfoCliente := 'CNPJ/CPF: '+mCliente.Documento;
    if mCliente.Nome <> '' then
      mInfoCliente := mInfoCliente + ' - Nome: '+mCliente.Nome;
  end;
  try
    //-----------------------------------------------------------------------
    // Preparar texto para impressao
    //-----------------------------------------------------------------------
    mTexto.Clear;
    //-----------------------------------------------------------------------
    // Cabeçalho
    //-----------------------------------------------------------------------
    mTexto.Add(StringOfChar('-',FConfiguracao.ColunasCondensado));
    mTexto.Add(PadCenter(FConfiguracao.RazaoSocial,FConfiguracao.ColunasCondensado,' '));

    mTexto.Add(PadCenter('CNPJ: '+FConfiguracao.CNPJ +' - IE: '+ FConfiguracao.IE,FConfiguracao.ColunasCondensado,' '));
    mTexto.Add(PadCenter(FConfiguracao.Endereco+' - '+FConfiguracao.Bairro+' - '+FConfiguracao.Cidade+' - '+FConfiguracao.UF,FConfiguracao.ColunasCondensado,' ')     );
    mTexto.Add(StringOfChar('-',FConfiguracao.ColunasCondensado));
    mTexto.Add(PadCenter(mComprovante,FConfiguracao.ColunasCondensado,' '));
    mTexto.Add(PadCenter(' Data: '+datetostr(date())+ ' - Hora: '+timetostr(time()),FConfiguracao.ColunasCondensado,' ') );
    if mInfoCliente <> '' then
      mTexto.Add(PadCenter(mInfoCliente,FConfiguracao.ColunasCondensado,' '));
    mTexto.Add(StringOfChar('=',FConfiguracao.ColunasCondensado));
    //-----------------------------------------------------------------------
    // Itens
    //-----------------------------------------------------------------------
    mTexto.Add(PadCenter('ITEM CODIGO        DESCRICAO        UN  QTDE   VL UNIT  VL TOTAL',FConfiguracao.ColunasCondensado,' ') );
    mTexto.Add(StringOfChar('-',FConfiguracao.ColunasCondensado));
    QryVenda.Open();
    QryVendaItem.First;
    while not QryVendaItem.Eof do
    begin
      mMascara := '##0';
      if QryVendaItem.FieldByName('BALANCA').AsString='S' then
        mMascara := '##0.##0';
        mLinha :=  AlinhaEsquerda(FormatFloat('0000',QryVendaItem.FieldByName('ITEM').AsInteger),                 _ITEM) + ' '+
                   AlinhaEsquerda(QryVendaItem.FieldByName('CODIGOBARRA').AsString,                        _CODIGOBARRA) + ' '+
                   AlinhaEsquerda(QryVendaItem.FieldByName('DESCRICAO').AsString,                            _DESCRICAO) + ' '+
                   AlinhaEsquerda(QryVendaItem.FieldByName('UND').AsString,                                        _UND) + ' '+
                   AlinhaDireita(FormatFloat(mMascara,  QryVendaItem.FieldByName('QUANTIDADE').AsFloat),          _QTDE) + ' '+
                   AlinhaDireita(FormatFloat('###,##0.00',QryVendaItem.FieldByName('VLR_UNIT').AsFloat),       _VLRUNIT) +
                   AlinhaDireita(FormatFloat('###,##0.00',QryVendaItem.FieldByName('VLR_TOTAL').AsFloat),     _VLRTOTAL) + ' ';

      mTexto.Add(PadCenter(Trim(mLinha),FConfiguracao.ColunasCondensado,' '));
      QryVendaItem.Next;
      mLinha := '';
    end;

    //-----------------------------------------------------------------------
    // Resumo cupom
    //-----------------------------------------------------------------------
    mTexto.Add(StringOfChar('-',FConfiguracao.ColunasCondensado));

    mTexto.Add(AlinhaEsquerda(' QTDE. TOTAL DE ITENS:', 54) + AlinhaDireita(FormatFloat('###,##0',QryVenda.FieldByName('QTDE_PRODUTOS').AsInteger),         8));
    mTexto.Add(AlinhaEsquerda(' VALOR TOTAL R$:',       54) + AlinhaDireita(FormatFloat('###,##0.00',QryVenda.FieldByName('VALOR_PRODUTOS').AsFloat),      8));
    if QryVenda.FieldByName('VALORACRESCIMO').AsFloat>0 then
      mTexto.Add(AlinhaEsquerda(' ACRÉSCIMOS ('+LeftStr(QryVenda.FieldByName('NATUREZAACRESCIMO').AsString,40)+'): ',         54) + AlinhaDireita(FormatFloat('###,##0.00',QryVenda.FieldByName('VALORACRESCIMO').AsFloat),  8));
    if QryVenda.FieldByName('VLR_DESCONTO').AsFloat>0 then
      mTexto.Add(AlinhaEsquerda(' DESCONTOS:',          54) + AlinhaDireita(FormatFloat('###,##0.00',QryVenda.FieldByName('VLR_DESCONTO').AsFloat),  8));
    mTexto.Add(AlinhaEsquerda(' VALOR A PAGAR R$:',     54) + AlinhaDireita(FormatFloat('###,##0.00',QryVenda.FieldByName('TOTAL_NF').AsFloat),     8));

    mLinhaVlrPago := ( (QryVenda.FieldByName('VALORDINHEIRO').AsFloat > 0) or (QryVenda.FieldByName('VALORCARTAODEBITO').AsFloat>0) or (QryVenda.FieldByName('VALORCARTAODEBITO').AsFloat>0) or (QryVenda.FieldByName('VALORCARTAOCREDITO').AsFloat>0) or (QryVenda.FieldByName('TROCO').AsFloat>0) );

    if mLinhaVlrPago then
    begin
      mTexto.Add(StringOfChar('-',FConfiguracao.ColunasCondensado));
      mTexto.Add(AlinhaEsquerda(' FORMA PAGAMENTO:',   20 )+ AlinhaDireita('VALOR PAGO:',43 ));
    end;

    if QryVenda.FieldByName('VALORDINHEIRO').AsFloat>0 then
      mTexto.Add(AlinhaEsquerda(' Dinheiro', 54) + AlinhaDireita(FormatFloat('###,##0.00',QryVenda.FieldByName('VALORDINHEIRO').AsFloat),     8));

    if QryVenda.FieldByName('VALORCARTAODEBITO').AsFloat>0 then
      mTexto.Add(AlinhaEsquerda(' Cartão Débito', 54) + AlinhaDireita(FormatFloat('###,##0.00',QryVenda.FieldByName('VALORCARTAODEBITO').AsFloat),     8));

    if QryVenda.FieldByName('VALORCARTAOCREDITO').AsFloat>0 then
      mTexto.Add(AlinhaEsquerda(' Cartão Crédito', 54) + AlinhaDireita(FormatFloat('###,##0.00',QryVenda.FieldByName('VALORCARTAOCREDITO').AsFloat),     8));

    if QryVenda.FieldByName('TROCO').AsFloat>0 then
      mTexto.Add(AlinhaEsquerda(' Troco R$:', 54) + AlinhaDireita(FormatFloat('###,##0.00',QryVenda.FieldByName('TROCO').AsFloat),     8));

    //-----------------------------------------------------------------------
    // Contas a Receber
    //-----------------------------------------------------------------------
    QryCtaReceber.Close;
    QryCtaReceber.ParamByName('EMPRESA').AsInteger := FConfiguracao.Loja;
    QryCtaReceber.ParamByName('NOTAFISCAL').AsInteger := aNumeroNota;
    QryCtaReceber.Open;
    FNomeFormaPagto := GetFormaPagamento(QryVenda.FieldByName('FORMAPAGTO').AsInteger);
    FValorParcelas := SQLGetValorParcelas(aNumeroNota);
    if (FNomeFormaPagto > '') then
    begin
      mTexto.Add(StringOfChar('-',FConfiguracao.ColunasCondensado));
      mTexto.Add(AlinhaEsquerda(' PARCELAMENTO:',   23 )+ AlinhaDireita('VALOR A PAGAR:',40 ));
      mTexto.Add(AlinhaEsquerda(FNomeFormaPagto, 53) + AlinhaDireita(FormatFloat('###,##0.00',FValorParcelas),     8)+'  ');

      mTexto.Add(StringOfChar('-',FConfiguracao.ColunasCondensado));
      mTexto.Add(AlinhaEsquerda(' PARCELA:        VENCIMENTO:          VALOR:' ,FConfiguracao.ColunasCondensado) );

      QryCtaReceber.First;
      while not QryCtaReceber.eof do
      begin
        mLinhaParcela := ' '+
                         AlinhaEsquerda(QryCtaReceber.FieldByName('DOCUMENTO').AsString, 12) +
                         StringOfChar(' ',4)+
                         AlinhaEsquerda(QryCtaReceber.FieldByName('VENCIMENTO').AsString, 10)+
                         StringOfChar(' ',6)+
                         AlinhaDireita(FormatFloat('###,##0.00',QryCtaReceber.FieldByName('VALOR').AsFloat),   10);
        mTexto.Add(mLinhaParcela);
        QryCtaReceber.Next;
      end;
      mTexto.Add(' ');
      mTexto.Add(' ');
      mTexto.Add(' ');
      mTexto.Add(StringOfChar('-',50));
      mTexto.Add(AlinhaEsquerda(' ASSINATURA DO CLIENTE:', 50));
      mTexto.Add(' ');
    end;
    //-----------------------------------------------------------------------
    // Rodape
    //-----------------------------------------------------------------------
    mTexto.Add(StringOfChar('-',FConfiguracao.ColunasCondensado));
    mTexto.Add(' LOJA: '+FormatFloat('000',FConfiguracao.Loja) + ' - CAIXA: '+FormatFloat('000',FConfiguracao.TerminalPDV) + ' - OPERADOR(A): '+FConfiguracao.OperadorNome);
    mTexto.Add(StringOfChar('=',FConfiguracao.ColunasCondensado));
    mTexto.Add(_SISTEMA_EMISSOR );
    mTexto.Add(_SISTEMA_DESENVOLVEDOR );
    mTexto.Add(StringOfChar('=',FConfiguracao.ColunasCondensado));
    mTexto.Add(' ');
    mTexto.Add(' ');
    mTexto.Add(' ');
  finally
    if FVendaIniciada = false then
    begin
      QryVenda.Close;
      QryVenda.SQL.Text := mScript;
      QryCtaReceber.Close;
    end;
    QryVenda.ParamByName('IDTERMINAL').AsInteger  := FConfiguracao.TerminalPDV;
  end;

  //-----------------------------------------------------------------------
  // Imprimir
  //-----------------------------------------------------------------------
  try
    PDVVisualizar(mTexto);
  finally
    mTexto.Free;
  end;
end;

procedure TFrmPrincipal.ChecaProdutoPesado;
var
  mDescricao       : String;
begin
  if QryVendaItem.FieldByName('BALANCA').AsString = 'S' then
  begin
    if QryVendaItem.FieldByName('QUANTIDADE').AsFloat <= 0 then
    begin
      mDescricao := QryVendaItem.FieldByName('DESCRICAO').AsString;
      MensagemTopo('Aguardando leitura da balança...');
      MensagemRodape('Coloque produto na balança. E pressione / ');
      Informar('Produto ['+mDescricao+'] ainda não foi pesado na balança','Balança',True);
      Abort;
    end;
  end;
end;


procedure TFrmPrincipal.LerCodigoProduto;
var
  mIDVenda         : Integer;
  mCodigoID        : String;
  mQtde            : Double;
  FCodigoBalanca   : Boolean;
  mUsaBalanca      : String;
  mUsaCodBarra     : Boolean;
  mCodigoDesembrar : String;
  mAtuEstoque      : Boolean;
  mIBPT            : TIBPTRecord;
  mDescricao       : String;
begin
    mAtuEstoque := False;
    FCodigoBalanca   := False;
    mCodigoDesembrar := '';
    mUsaBalanca := '';
    FVlrUnitBalanca := 0;
    if not FVendaIniciada then
    begin
      mCodigoID := '';
      Informar('Inicie uma nova venda, pressionando F3');
      exit;
    end;
    mCodigoID   := '';
    mQtde     := 0;

    mCodigoID   := Trim(EditCodigo.Text);
    EditCodigo.Text :='';
    if mCodigoID.IsEmpty then
      exit;
    ChecaProdutoPesado();
    mCodigoDesembrar := mCodigoID;
    mQtde := StrToFloatDef(EditQtde.Text,0);
    EditQtde.Text := '1';
    if mQtde<=0 then
      mQtde := 1;
    if (length(mCodigoDesembrar) >= 13) then // GTIN/EAN13
    begin
      FCodigoBalanca   := ACBrInStore1.Prefixo = mCodigoID[1]; // Se iniciar com 2 identifica que é balança
      mCodigoID := GetIDCodigoBarra(mCodigoID);
      if (mCodigoID.Trim.IsEmpty) and (FCodigoBalanca) then
        mCodigoID := Copy(mCodigoDesembrar,2,_TAMANHOCODIGOBALANCA);
      if Trim(mCodigoID) = '' then
        mCodigoID := mCodigoDesembrar;
    end;
    mUsaBalanca      := GetProdutoCampo(mCodigoID,'BALANCA');
    FVlrUnitBalanca  := 0;
    if ((FCodigoBalanca) and ((mUsaBalanca = 'S') or (mUsaBalanca = 'SIM')) ) then
    begin
      if Length(mCodigoDesembrar) < 13 then
      begin
        Informar('Código "'+mCodigoID+'" inválido.','GTIN/EAN inválido',True);
        abort;
      end;
    end;
    if ((FCodigoBalanca = False) and ((mUsaBalanca = 'S') or (mUsaBalanca = 'SIM')) ) then
    begin
      if FLeituraPeso = False then
      begin
        mQtde := 0;
        MensagemTopo('Aguardando leitura da balança...');
        MensagemRodape('Coloque produto na balança. E pressione / ');
      end;
    end;
    QryVendaItem.DisableControls;
    try
      QryFBProduto.Close();
      QryFBProduto.ParamByName('CBARRA').AsString := mCodigoID;
      QryFBProduto.Open();

      if FCodigoBalanca then
      begin
        FVlrUnitBalanca := QryFBProduto.FieldByName('PRC_VENDA').AsFloat;
        ACBrInStore1.Desmembrar(mCodigoDesembrar);
        mCodigoID        := ACBrInStore1.Codigo;
        mQtde            := ACBrInStore1.Peso;
        FVlrUnitBalanca  := ACBrInStore1.Total;
        EditQtde.Text    := FormatFloat('##0,000',ACBrInStore1.Peso);
      end;
      mCodigoDesembrar := '';
      mIDVenda := QryVenda.FieldByName('CODIGO').AsInteger;
      if QryFBProduto.IsEmpty then
      begin
        Informar('Produto "'+mCodigoID+'" informado não existe.');
        exit;
      end;
      inc(FItemID);
      mAtuEstoque := SQLInserirItemVenda(FConfiguracao.Loja,
                          mIDVenda,
                          FItemID,
                          mQtde,
                          QryFBProduto,
                          FCodigoBalanca // True=Balança
                          );
     //--------------------------------------------------------------------
     //
     //--------------------------------------------------------------------
      TabelaItemFecharAbrir();
      CalcularVenda();
    finally
      QryFBProduto.Close;
      EditQtde.Text := '1';
      FCodigoBalanca := False;
      FVlrUnitBalanca := 0;
      QryVendaItem.Last;
      QryVendaItem.EnableControls;
    end;
end;

function TFrmPrincipal.RelatorioGerencial(aTipo: String; aDataHoje: TDate = 0): TStringList;
var
  mStringList : TStringList;
  vimptotal,
  bctotal,
  vendabruta,
  descontos,
  mVendaCancelada,
  vendaliquida,
  vendaliquidaCanc,
  vreforco,
  vsangria,
  Dinheiro,
  vimp,
  troco,
  TEFPosCredito,
  TEFPosDebito,
  mVLiquido  : double;
  mQtdVenda,
  mQtdVendaCanc,
  qtreforco,
  qtsangria,
  qtrecebimento,
  qtoutros        : integer;
  nTotais: double;
  aliq : string;
  //mDataHoje : TDate;
  mQryVenda   : TFDQuery;
  mQrySangria : TFDQuery;
  mQryReforco : TFDQuery;
begin
  //Result.Text :='';
  mQryVenda   := TFDQuery.Create(Nil);
  mQrySangria := TFDQuery.Create(Nil);
  mQryReforco := TFDQuery.Create(Nil);
  mQryVenda.Connection := ConnectFirebird;
  mQrySangria.Connection := ConnectFirebird;
  mQryReforco.Connection := ConnectFirebird;

  if aDataHoje = 0 then
  begin
    aDataHoje := Date;
  end;

  //mDataHoje     := Date;
  vendabruta    := 0;
  descontos     := 0;
  mVendaCancelada := 0;
  vendaliquida  := 0;
  vendaliquidaCanc := 0;
  mQtdVendaCanc    := 0;
  Dinheiro      := 0;
  troco         := 0;
  mVLiquido     := 0;
  mQtdVenda     := 0;
  qtreforco     := 0;
  qtsangria     := 0;
  vreforco      := 0;
  vsangria      := 0;
  TEFPosCredito := 0;
  TEFPosDebito  := 0;
  try

    mQryVenda.Close;
    mQryVenda.SQL.Add('SELECT ');
    mQryVenda.SQL.Add('COUNT(VENDAS.CODIGO) AS QTDEVENDA ');
    mQryVenda.SQL.Add(',COALESCE(SUM(VENDAS.TROCO),0) AS VVALORTROCO');
    mQryVenda.SQL.Add(',COALESCE(SUM(VENDAS.TOTAL_NF),0) AS VVALORTOTAL');
    mQryVenda.SQL.Add(',COALESCE(SUM(VENDAS.VLR_DESCONTO),0) AS VVALORDESCONTO');
    mQryVenda.SQL.Add(',COALESCE(SUM(VENDAS.VALORDINHEIRO),0) AS VVALORDINHEIRO');
    mQryVenda.SQL.Add(',COALESCE(SUM(VENDAS.VALORCARTAOCREDITO),0) AS VVALORCARTAOCREDITO');
    mQryVenda.SQL.Add(',COALESCE(SUM(VENDAS.VALORCARTAODEBITO),0) AS VVALORCARTAODEBITO');
    mQryVenda.SQL.Add('FROM VENDAS');
    mQryVenda.SQL.Add('WHERE');
    mQryVenda.sql.Add(' CAST(VENDAS.EMISSAO AS DATE)=:DTHOJE ' );
    mQryVenda.SQL.Add(' AND VENDAS.OPERACAO=:VSTATUS ');
    mQryVenda.SQL.Add(' AND VENDAS.CUPOM=' + QuotedStr('S') );
    mQryVenda.ParamByName('DTHOJE').AsDate := aDataHoje;
    if FConfiguracao.Operador>0 then
    begin
      mQryVenda.SQL.Add('AND VENDAS.OPERADOR='+FConfiguracao.Operador.ToString);
    end;
    if FConfiguracao.TerminalPDV>0 then
    begin
      mQryVenda.SQL.Add('AND VENDAS.TERMINAL='+FConfiguracao.TerminalPDV.ToString);
    end;
    mQryVenda.ParamByName('VSTATUS').AsString := 'S'; // CANCELADO
    mQryVenda.Open();

    mQtdVenda     := mQryVenda.FieldByName('QTDEVENDA').AsInteger;
    troco         := mQryVenda.FieldByName('VVALORTROCO').AsFloat;
    vendaliquida  := mQryVenda.FieldByName('VVALORTOTAL').AsFloat;
    descontos     := mQryVenda.FieldByName('VVALORDESCONTO').AsFloat;
    Dinheiro      := mQryVenda.FieldByName('VVALORDINHEIRO').AsFloat;
    TEFPosCredito := mQryVenda.FieldByName('VVALORCARTAOCREDITO').AsFloat;
    TEFPosDebito  := mQryVenda.FieldByName('VVALORCARTAODEBITO').AsFloat;
    mVLiquido     := mQryVenda.FieldByName('VVALORDINHEIRO').AsFloat - mQryVenda.FieldByName('VVALORTROCO').AsFloat;

    mQryVenda.Close;
    mQryVenda.ParamByName('VSTATUS').AsString := 'C'; // CANCELADO
    mQryVenda.Open();

    mQtdVendaCanc   := mQryVenda.FieldByName('QTDEVENDA').AsInteger;
    mVendaCancelada := mQryVenda.FieldByName('VVALORTOTAL').AsFloat;
    vendabruta      := vendaliquida + mVendaCancelada + descontos;

    qtreforco     := 0;
    qtsangria     := 0;
    qtoutros      := 0;

    //IMPRESSAO

    mStringList := TStringList.Create;
    if aTipo='OPERADOR' then
    begin
      mStringList.Add('SAIDA DE OPERADOR');
      mStringList.Add('Operador: '+FConfiguracao.Operador.ToString+' '+FConfiguracao.OperadorNome);
    end;
    if aTipo='CAIXA' then
    begin
      mStringList.Add('FECHAMENTO DO CAIXA');
    end;
    if aTipo='RESUMO' then
    begin
      mStringList.Add('RESUMO FINANCEIRO');
    end;
    mStringList.Add('MOVIMENTO DO DIA: '+FormatDateTime('c',Now));

    //---------------------------------------------------------------------
    //-------------- TOTALIZADORES                               ----------
    //---------------------------------------------------------------------
    mStringList.Add('');

    mStringList.Add(PadCenter(' TOTALIZADORES ',FConfiguracao.ColunasCondensado,'-'));
    mStringList.Add(AlinhaEsquerda('=Venda Bruta',    50) + ' ' + AlinhaDireita(FormatFloat('###,##0.00', vendabruta),     10) );
    mStringList.Add(AlinhaEsquerda('-Descontos',      50) + ' ' + AlinhaDireita(FormatFloat('###,##0.00', descontos),      10) );
    mStringList.Add(AlinhaEsquerda('-Cancelamentos',  50) + ' ' + AlinhaDireita(FormatFloat('###,##0.00', mVendaCancelada),  10) );
    mStringList.Add(AlinhaEsquerda('=Venda Liquida',  50) + ' ' + AlinhaDireita(FormatFloat('###,##0.00', vendaliquida),   10) );
    mStringList.Add(' ');

    mStringList.Add(PadCenter(' I C M S ',FConfiguracao.ColunasCondensado,'-'));

    mStringList.Add(AlinhaEsquerda('TOTALIZADOR',          30) +  AlinhaEsquerda('   Imposto',                      15) + StringOfChar(' ',5) + AlinhaEsquerda('Base Calculo',                    12) );
    mQryVenda.Close;
    mQryVenda.sql.clear;
    mQryVenda.sql.ADD('SELECT ');
    mQryVenda.sql.ADD(' SUM(VENDAS_ITENS.VLR_TOTAL) AS VLR_TOTAL, ');
    mQryVenda.sql.ADD(' SUM(VENDAS_ITENS.VLR_ICMS) AS VICMS, ');
    mQryVenda.sql.ADD(' VENDAS_ITENS.ICMS ');
    mQryVenda.sql.ADD(' FROM VENDAS_ITENS INNER JOIN VENDAS ');
    mQryVenda.sql.ADD(' ON VENDAS.CODIGO = VENDAS_ITENS.CODIGO ');
    mQryVenda.sql.ADD(' WHERE  ');
    mQryVenda.sql.Add(' CAST(VENDAS.EMISSAO AS DATE)=:DTHOJE ' );
    mQryVenda.sql.ADD(' AND  VENDAS.STATUS=''S''  ');

    if FConfiguracao.Operador>0 then
    begin
      mQryVenda.sql.ADD(' AND VENDAS.OPERADOR='''+FConfiguracao.Operador.ToString+''' ');
    end;
    if FConfiguracao.TerminalPDV>0 then
    begin
      mQryVenda.SQL.Add('AND VENDAS.TERMINAL='+FConfiguracao.TerminalPDV.ToString);
    end;


    mQryVenda.sql.ADD(' GROUP BY  VENDAS_ITENS.ICMS ');
    mQryVenda.ParamByName('DTHOJE').AsDate := aDataHoje;
    mQryVenda.Open;

    mQryVenda.First;
    vimptotal:=0;
    bctotal:=0;
    while not mQryVenda.eof do
    begin
      aliq:=AlinhaEsquerda(FormatFloat('###,##0.00',mQryVenda.FieldByName('ICMS').AsFloat), 06);
      vimp :=mQryVenda.FieldByName('VICMS').AsFloat;
      vimptotal:=vimptotal+vimp;
      bctotal:=bctotal+mQryVenda.FieldByName('VLR_TOTAL').AsFloat;
      mStringList.Add(AlinhaEsquerda(aliq, 30) +  AlinhaDireita(FormatFloat('###,##0.00', vimp),  10) + StringOfChar(' ',9) + AlinhaDireita(FormatFloat('###,##0.00', mQryVenda.FieldByName('VLR_TOTAL').AsFloat),  12) );
      mQryVenda.Next;
    end;

    mStringList.Add(AlinhaEsquerda(' ',                    30) +  AlinhaDireita(StringOfChar('-',10),               10) + StringOfChar(' ',9) + AlinhaEsquerda(StringOfChar('-',15),              12) );
    mStringList.Add(AlinhaEsquerda('TOTAL',                30) +  AlinhaDireita(FormatFloat('###,##0.00', vimptotal),  10) + StringOfChar(' ',9) + AlinhaDireita(FormatFloat('###,##0.00', bctotal),  12) );
    mStringList.Add(' ');

    mStringList.Add(PadCenter(' REGISTRADORES NAO FISCAIS ',FConfiguracao.ColunasCondensado,'-'));
    mQryReforco.Close;
    mQryReforco.sql.clear;
    mQryReforco.sql.ADD('select  count(REFORCO.IDMOVIMENTO) as qtref,  COALESCE(sum(REFORCO.valor),0) as vdinheiro  from REFORCO ');
    mQryReforco.sql.Add('where');
    mQryReforco.sql.Add('REFORCO.IDCAIXA='+FConfiguracao.TerminalPDV.ToString);
    mQryReforco.sql.Add('AND ');
    mQryReforco.sql.Add(' CAST(REFORCO.DATA AS DATE)=:DTHOJE ' );
    if FConfiguracao.Operador>0 then
    begin
      mQryReforco.sql.Add('AND ');
      mQryReforco.sql.Add('REFORCO.IDOPERADOR='+FConfiguracao.Operador.ToString);
    end;
    mQryReforco.ParamByName('DTHOJE').AsDate := aDataHoje;
    mQryReforco.Open;
    qtreforco:=mQryReforco.FieldByName('qtref').AsInteger;
    vreforco:=mQryReforco.FieldByName('vdinheiro').AsFloat;

    mQrySangria.Close;
    mQrySangria.sql.clear;
    mQrySangria.sql.add(' SELECT  ');
    mQrySangria.sql.add(' COUNT(RETIRADA.IDMOVIMENTO) AS QTSANG, ');
    mQrySangria.sql.add(' COALESCE(SUM(RETIRADA.VALOR),0) AS VSANGRIA ');
    mQrySangria.sql.add(' FROM RETIRADA ');
    mQrySangria.sql.add(' WHERE ');
    mQrySangria.sql.add(' CAST(RETIRADA.DATA AS DATE)=:DTHOJE  ');
    mQrySangria.sql.Add(' AND RETIRADA.IDCAIXA='+FConfiguracao.TerminalPDV.ToString);
    if FConfiguracao.Operador>0 then
    begin
      mQrySangria.sql.add(' and  RETIRADA.IDOPERADOR = '+FConfiguracao.Operador.ToString);
    end;
    mQrySangria.ParamByName('DTHOJE').AsDate := aDataHoje;
    mQrySangria.Open;
    qtsangria:=mQrySangria.FieldByName('qtsang').AsInteger;
    vsangria:=mQrySangria.FieldByName('vsangria').AsFloat;

    mStringList.Add(AlinhaEsquerda('REFORCO',        25) +  AlinhaDireita(FormatFloat('0000', qtreforco),       11) + StringOfChar(' ',15) + AlinhaDireita(FormatFloat('###,##0.00',   vreforco),      10) );
    mStringList.Add(AlinhaEsquerda('SANGRIA',        25) +  AlinhaDireita(FormatFloat('0000', qtsangria),       11) + StringOfChar(' ',15) + AlinhaDireita(FormatFloat('###,##0.00',   vsangria),      10) );
    mStringList.Add(AlinhaDireita(StringOfChar('-',12),  61));
    nTotais :=0;

    nTotais :=(vreforco) - vsangria;
    mStringList.Add(AlinhaEsquerda('TOTAL',              51) + AlinhaDireita(FormatFloat('###,##0.00',   nTotais),       10) );
    mStringList.Add(' ');

    Dinheiro           := (mVLiquido + vreforco) - vsangria;
    TefPosCredito:=(TefPosCredito);
    TefPosDebito:=(TefPosDebito);

    nTotais            :=Dinheiro+TEFPosCredito+TEFPosDebito;

    mStringList.Add(PadCenter(' REGISTRADORES DE PAGAMENTO ',FConfiguracao.ColunasCondensado,'-'));
    mStringList.Add(AlinhaEsquerda('Dinheiro',          50) + ' ' + AlinhaDireita(FormatFloat('###,##0.00', Dinheiro),          10) );
    mStringList.Add(AlinhaEsquerda('TEFPos-Credito',    50) + ' ' + AlinhaDireita(FormatFloat('###,##0.00', TEFPosCredito),     10) );
    mStringList.Add(AlinhaEsquerda('TEFPos-Debito',     50) + ' ' + AlinhaDireita(FormatFloat('###,##0.00', TEFPosDebito),      10) );
    mStringList.Add(AlinhaEsquerda('-Troco',            50) + ' ' + AlinhaDireita(FormatFloat('###,##0.00', troco),             10) );
    mStringList.Add(AlinhaDireita(StringOfChar('-',12), 61));
    mStringList.Add(AlinhaEsquerda('TOTAL DA GAVETA',   50) + ' ' + AlinhaDireita(FormatFloat('###,##0.00', nTotais),           10) );
    mStringList.Add(' ');
    mStringList.Add(' ');
    mStringList.Add(' ');

    if aTipo='OPERADOR' then
    begin
      mStringList.Add(PadCenter('_________________________________________',FConfiguracao.ColunasCondensado));
      mStringList.Add(PadCenter('Assinatura',FConfiguracao.ColunasCondensado));
    end;
    mStringList.Add(' ');
    mStringList.Add(' ');
    mStringList.Add(' ');

    Result :=  mStringList;
  finally
    mQryVenda.Close;
    mQryVenda.Free;
    mQrySangria.Close;
    mQrySangria.Free;
    mQryReforco.Close;
    mQryReforco.Free;
  end;

end;

{******************************************************************************
  Reabrir tabela itens
******************************************************************************}
procedure TFrmPrincipal.TabelaItemFecharAbrir;
begin
  QryVendaItem.Close;
  QryVendaItem.ParamByName('ID').AsInteger  := QryVenda.FieldByName('CODIGO').AsInteger;
  QryVendaItem.Open;
  QryVendaItem.Last;
  FItemID := QryVendaItem.FieldByName('ITEM').AsInteger;
end;

{******************************************************************************
  Calcular venda
******************************************************************************}
procedure TFrmPrincipal.ACBrInStore1GetPrecoUnitario(const Codigo: string;
  var PrecoUnitario: Double);
begin
  PrecoUnitario := FVlrUnitBalanca;
end;

procedure TFrmPrincipal.ACBrNFe1StatusChange(Sender: TObject);
var
  Mensagem: String;
begin
  Mensagem := '';
  case ACBrNFe1.Status of
    stIdle:             MsgEsperar('','',False);
    stNFeStatusServico: Mensagem := 'Verificando status do serviço...';
    stNFeRecepcao:      Mensagem := 'Enviando dados da NFC-e...';
    stNfeRetRecepcao:   Mensagem := 'Recebendo dados da NFC-e...';
    stNfeConsulta:      Mensagem := 'Consultando NFe...';
    stNfeCancelamento:  Mensagem := 'Enviando cancelamento de NFC-e...';
    stNfeInutilizacao:  Mensagem := 'Enviando pedido de inutilização...';
    stNFeRecibo:        Mensagem := 'Consultando recibo de lote...';
    stNFeCadastro:      Mensagem := 'Consultando cadastro...';
    stNFeEmail:         Mensagem := 'Enviando nota eletrônica por e-mail...';
    stNFeCCe:           Mensagem := 'Enviando carta de correção eletrônica...';
    stNFeEvento:        Mensagem := 'Enviando evento...';
  end;
  if Mensagem <> '' then
  begin
    MsgEsperar('Enviando NFC-e', Mensagem,True);
  end
  else
  begin
    MsgEsperar('','',False);
  end;
  Application.ProcessMessages;
end;

procedure TFrmPrincipal.ACBrSAT1CalcPath(var APath: string; ACNPJ: string;
  AData: TDateTime);
begin
  mLog.Lines.Add('O Path para o CNPJ: '+ACNPJ+' Data: '+DateToStr(AData)+' é: '+APath);
end;

procedure TFrmPrincipal.ACBrSAT1GetcodigoDeAtivacao(var Chave: AnsiString);
begin
  Chave := AnsiString(FCodAtivacao);
end;

procedure TFrmPrincipal.ACBrSAT1GetsignAC(var Chave: AnsiString);
begin
  Chave := AnsiString(FAssinatura);
end;

procedure TFrmPrincipal.ACBrSAT1GravarLog(const ALogLine: string;
  var Tratado: Boolean);
begin
  mLog.Lines.Add(ALogLine);
end;

procedure TFrmPrincipal.ACBrSAT1MensagemSEFAZ(ACod: Integer; AMensagem: string);
begin
  Informar(IntToStr(ACod)+'-'+AMensagem,'Aviso',True);
end;

procedure TFrmPrincipal.CalcularVenda();
var
  mVlrTotalPagar : Double;
  mMascara       : String;
begin
  lblQtde.Text := '0';
  lblPrecoUnit.Text := '0';
  lblTotalItem.Text := '0';
  lblValorTotal.Text := '0';
  mVlrTotalPagar := 0;
  if FVendaIniciada = False then
    exit;
  if QryVendaItem.IsEmpty then
    exit;
  mVlrTotalPagar := 0;
  mMascara := '##0';
  if QryVendaItem.FieldByName('BALANCA').AsString='S' then
    mMascara := '##0.##0';
  try
    QryCalcularVenda.Close;
    QryCalcularVenda.ParamByName('ID').AsInteger := QryVenda.FieldByName('CODIGO').AsInteger;
    QryCalcularVenda.Open;
    mVlrTotalPagar := QryCalcularVenda.FieldByName('VALORPRODUTOS').AsFloat;
    mVlrTotalPagar := (mVlrTotalPagar + QryVenda.FieldByName('VALORACRESCIMO').AsFloat);

    QryVenda.Edit;
    QryVenda.FieldByName('QTDE_PRODUTOS').AsInteger      := QryCalcularVenda.FieldByName('QTDITENS').AsInteger;
    QryVenda.FieldByName('VALOR_PRODUTOS').AsFloat       := QryCalcularVenda.FieldByName('VALORPRODUTOS').AsFloat;
    QryVenda.FieldByName('QTDITENSCANCELADOS').AsInteger := QryCalcularVenda.FieldByName('QTDITENSCANCELADOS').AsInteger;
    QryVenda.FieldByName('QTDITENSBALANCA').AsInteger    := QryCalcularVenda.FieldByName('QTDITENSBALANCA').AsInteger;
    if (QryCalcularVenda.FieldByName('VLRDESCONTO').AsFloat > 0) then
    begin
      if QryVenda.FieldByName('DESCONTO').AsFloat > 0 then // se houver percentual aqui significa que foi aplicado desconto em outra circunstancia com telca F9. Se não pode sobrecrever o desconto já aplicado.
      begin
        QryVenda.FieldByName('VLR_DESCONTO').AsFloat := QryVenda.FieldByName('VLR_DESCONTO').AsFloat + QryCalcularVenda.FieldByName('VLRDESCONTO').AsFloat;
      end
      else
      begin
        QryVenda.FieldByName('VLR_DESCONTO').AsFloat := QryCalcularVenda.FieldByName('VLRDESCONTO').AsFloat;
      end;
    end
    else
    begin
      QryVenda.FieldByName('DESCONTO').AsFloat := 0;
      QryVenda.FieldByName('VLR_DESCONTO').AsFloat := 0;
    end;
    mVlrTotalPagar := (mVlrTotalPagar - QryVenda.FieldByName('VLR_DESCONTO').AsFloat);
    QryVenda.FieldByName('TOTAL_NF').AsFloat             := mVlrTotalPagar;
    QryVenda.FieldByName('VPIS').AsFloat                 := QryCalcularVenda.FieldByName('VALORPIS').AsFloat;
    QryVenda.FieldByName('VCOFINS').AsFloat              := QryCalcularVenda.FieldByName('VALORCOFINS').AsFloat;
    QryVenda.FieldByName('ICMS_VALOR').AsFloat           := QryCalcularVenda.FieldByName('VALORICMS').AsFloat;
    QryVenda.Post;

    AtualizaGradeItens();
  finally
    QryCalcularVenda.Close;
    ReabrirTabela();
  end;
end;

{******************************************************************************
  Verificar Sair
******************************************************************************}
procedure TFrmPrincipal.AtualizaGradeItens;
var
  mMascara       : String;
begin
  lblQtde.Text         := '0';
  lblPrecoUnit.Text    := '0';
  lblTotalItem.Text    := '0';
  lblValorTotal.Text   := '0';
  if FVendaIniciada = False then
    exit;
  if QryVendaItem.IsEmpty then
    exit;
  mMascara := '##0';
  if QryVendaItem.FieldByName('BALANCA').AsString='S' then
    mMascara := '##0.##0';
  if QryVenda.FieldByName('VALOR_PRODUTOS').AsFloat>0 then
  begin
    if QryVendaItem.FieldByName('STATUS').AsString<>'C' then
    begin
      lblQtde.Text := FormatFloat(mMascara,  QryVendaItem.FieldByName('QUANTIDADE').AsFloat);
      lblPrecoUnit.Text := FormatFloat('###,##0.00',QryVendaItem.FieldByName('VLR_UNIT').AsFloat);
      lblTotalItem.Text := FormatFloat('###,##0.00',QryVendaItem.FieldByName('VLR_TOTAL').AsFloat);
    end;
  end;
  lblValorTotal.Text := 'R$ '+FormatFloat('###,##0.00',  QryVenda.FieldByName('TOTAL_NF').AsFloat);
end;

{******************************************************************************
  Verificar Sair
******************************************************************************}
procedure TFrmPrincipal.ChecarSair;
begin
  //--------------------------------------------------------------------------
  // Se venda foi iniciada mas não possui itens, deve excluir (encerrar);
  //--------------------------------------------------------------------------
  if not QryVenda.IsEmpty then
  begin
    if QryVendaItem.IsEmpty then
      EncerrarVenda(False);
  end;
end;

procedure TFrmPrincipal.NFCePreparaImpressora;
begin
  ACBrNFeDANFeESCPOS1.PosPrinter := ACBrPosPrinter1;
  ACBrNFeDANFeESCPOS1.Sistema := 'ACBr';
  ACBrNFe1.DANFE                       := ACBrNFeDANFeESCPOS1;
  ACBrPosPrinter1.Modelo               := StrToModeloPosPrinter(FConfiguracao.ModeloEscPos);
  ACBrPosPrinter1.Porta                := FConfiguracao.PortaImpressora;
  ACBrPosPrinter1.Device.Porta         := FConfiguracao.PortaImpressora; //cdsConfiguracaoIMP_PORTA.AsString;
  ACBrPosPrinter1.ColunasFonteNormal   := FConfiguracao.ColunasNormal;
  ACBrPosPrinter1.EspacoEntreLinhas    := 0;
  ACBrPosPrinter1.LinhasBuffer         := 0;
  ACBrPosPrinter1.LinhasEntreCupons    := 7;
  ACBrPosPrinter1.Device.TimeOut       := 10000;
  ACBrPosPrinter1.ControlePorta        := True;
  ACBrPosPrinter1.CortaPapel           := True;
  ACBrPosPrinter1.IgnorarTags          := False;
  ACBrPosPrinter1.TraduzirTags         := True;
  ACBrPosPrinter1.VerificarImpressora  := False;
end;

// É utilizado por varias outras telas
procedure ImprimirDiversos(aTitulo, aTexto: String);
var
  mTexto           : TStringList;
  mLinha           : String;
  mMascara         : String;
  mQrCode          : String;
  mURLQRCode       : String;
begin
  mTexto  := TStringList.Create;
  mTexto.Clear;

  try
    //-----------------------------------------------------------------------
    // Preparar texto para impressao
    //-----------------------------------------------------------------------
    mTexto.Add(''); // limpar formatacao da impressora

    //-----------------------------------------------------------------------
    // Cabeçalho
    //-----------------------------------------------------------------------
    mTexto.Add(PadCenter(FConfiguracao.RazaoSocial,FConfiguracao.ColunasCondensado));
    mTexto.Add(PadCenter('CNPJ: '+FConfiguracao.CNPJ +' - IE: '+ FConfiguracao.IE,FConfiguracao.ColunasCondensado) );
    mTexto.Add(PadCenter(FConfiguracao.Endereco+' - '+FConfiguracao.Bairro+' - '+FConfiguracao.Cidade+' - '+FConfiguracao.UF,FConfiguracao.ColunasCondensado) );
    mTexto.Add('');
    mTexto.Add(PadCenter(aTitulo,FConfiguracao.ColunasCondensado));
    mTexto.Add('');
    mTexto.Add(''); // Ligar modo condensado
    mTexto.Add(aTexto);
    mTexto.Add(' ');
    mTexto.Add(' ');
    //-----------------------------------------------------------------------
    // Imprimir
    //-----------------------------------------------------------------------
    PDVVisualizar(mTexto);
  finally
    mTexto.Free;
  end;
end;

Procedure TFrmPrincipal.EncerrarVenda(aPedidoVenda: Boolean);
begin
  try
    if FrmPagamento <> Nil then
    begin
      FrmPagamento.Free;
      FrmPagamento := Nil;
    end;
    //if aPedidoVenda then
    //  SQLExcluirVenda(QryVenda.FieldByName('CODIGO').AsInteger);
    QryVenda.Close;
    QryVendaItem.Close;
    LimparCartaoPagamento();
    HabilitarCampoCodigo(False);
    AtualizaGradeItens();
    mCliente.Limpar();
    MensagemTopo('');
    MensagemRodape('');
  finally
    FVendaIniciada  := False;
    FPagamentoIniciado := False;
    FItemID := 0;
    if aPedidoVenda = False then
      FecharConexoes();
  end;
end;

procedure TFrmPrincipal.FecharConexoes;
begin
  ConnectConfigPDV.Close;
  ConnectFirebird.Close;
end;

function TFrmPrincipal.VerificaVendaPendente(out aIDPedido: Integer): Boolean;
var
  mTabela : TFDQuery;
begin
  Result := False;
  mTabela := TFDQuery.Create(Nil);
  mTabela.Connection := ConnectFirebird;
  try
    mTabela.SQL.Clear;
    mTabela.SQL.Add('SELECT * FROM VENDAS WHERE STATUS='+QuotedStr('ABERTO')+' AND  OPERADOR='+FConfiguracao.Operador.ToString+' AND  TERMINAL='+FConfiguracao.TerminalPDV.ToString  );
    mTabela.Open;
    aIDPedido := mTabela.FieldByName('CODIGO').AsInteger;
    Result := mTabela.RecordCount>0;
  finally
    mTabela.Close;
    mTabela.Free;
  end;
end;

{******************************************************************************
  A finalidade é restaurar a venda atual (cliente no caixa) em caso de
  problemas técnicos.
******************************************************************************}
procedure TFrmPrincipal.CarregarVendaPendente();
begin
  QryVenda.Close;
  QryVenda.ParamByName('IDTERMINAL').AsInteger  := FConfiguracao.TerminalPDV;
  QryVenda.Open;
  FPagamentoIniciado := QryVenda.FieldByName('VALORRECEBIDO').AsFloat > 0; // Variavel "FPagamentoIniciado" possibilita algumas validações no processo de venda.
  TabelaItemFecharAbrir();
  if QryVenda.FieldByName('CLIENTE').AsInteger > 0 then
    GetDadosCliente(QryVenda.FieldByName('CLIENTE').AsInteger);
  QryVendaItem.Last;
  LimparPagamentosRecebidos();
end;

procedure TFrmPrincipal.LimparPagamentosRecebidos();
begin
  try
    SQLExcluirCtaReceber(QryVenda.FieldByName('CODIGO').AsInteger);
    ReabrirTabela();

    QryVenda.Edit;
    QryVenda.FieldByName('VALORRECEBIDO').AsFloat := 0;
    QryVenda.FieldByName('VALORDINHEIRO').AsFloat := 0;
    QryVenda.FieldByName('TROCO').AsFloat := 0;
    QryVenda.FieldByName('VALORCARTAODEBITO').AsFloat := 0;
    QryVenda.FieldByName('VALORCARTAOCREDITO').AsFloat := 0;
    QryVenda.Post;

    FPagamentoIniciado := False;
  finally
    ReabrirTabela();
  end;
end;

procedure TFrmPrincipal.AbrirGaveta;
begin
  if FTipoVendaFiscal = False then  //(FCupomFiscal=false significa cupom nao fiscal)
    exit;
  if FConfiguracao.AbrirGaveta = False then
    exit;
  try
    ACBrPosPrinter1.Ativar;
    ACBrPosPrinter1.AbrirGaveta;
  finally
    ACBrPosPrinter1.Desativar;
  end;
end;

//---------------------------------------------------------------------------------------------
//
//---------------------------------------------------------------------------------------------
procedure TFrmPrincipal.TeclaF11DescontoItem;
var
  mCancelar  : Boolean;
  mIDProduto : String;
  mIDVenda   : Integer;
  mItem      : Integer;
  mPercDesc  : Double;
  mModal     : Boolean;
begin
  //function SQLUpdateItemVenda(aIDEmpresa, aIDVenda, aItemSeq: Integer; aQtde: Double): Boolean;
  mPercDesc := 0;
  mCancelar := False;
  if QryVendaItem.IsEmpty then
    Exit;
  if not FVendaIniciada then
    Exit;
  if FPagamentoIniciado then
  begin
    Informar('Pagamento já foi iniciado. Desconto não é mais pertido.');
    exit;
  end;

  try
    FrmDescontoVenda := TFrmDescontoVenda.Create(nil); // Formulario "FrmPagamento" sera destruido apenas quando finalizar venda.
    FrmDescontoVenda.EditDesconto.Value := QryVendaItem.FieldByName('DESCONTO').AsFloat;
    FrmDescontoVenda.FReceber := QryVendaItem.FieldByName('VLR_TOTAL').AsFloat;
    mModal := FrmDescontoVenda.ShowModal = mrOk; // se retornou "mrOk", processar finalização da venda.
    if mModal = False then
      exit;
    mPercDesc := RoundABNT(FrmDescontoVenda.EditDesconto.Value,2);

    mIDVenda   := QryVenda.FieldByName('CODIGO').AsInteger;
    mItem      := QryVendaItem.FieldByName('ITEM').AsInteger;
    mIDProduto := QryVendaItem.FieldByName('CODIGOBARRA').AsString;
    SQLUpdateDescontoItem(mIDVenda,mItem,mIDProduto,mPercDesc);

    TabelaItemFecharAbrir();
    CalcularVenda();
  finally
    MensagemTopo('');
    MensagemRodape('');
    FrmDescontoVenda.Free;
  end;
end;

procedure TFrmPrincipal.TeclaF12ImportarPedido;
Var
  mTexto : String;
  mIDPedido : Integer;
begin
  if FVendaIniciada then
  begin
    Informar('Venda já foi iniciada. Conclua ou cancele a venda atual antes de importar Pedido de Venda.','Importação de Pedido');
    exit;
  end;
  if FPagamentoIniciado then
  begin
    Informar('Pagamento já foi iniciado. Conclua ou cancele a venda atual antes de importar Pedido de Venda.','Importação de Pedido');
    exit;
  end;
  if not PedidoProcurar.Execute then
     exit;
  mIDPedido := PedidoProcurar.ResultFieldAsInteger('CODIGO');
  if mIDPedido = 0 then
     exit;
  mTexto := 'PEDIDO.......: ' + PedidoProcurar.ResultFieldAsString('CODIGO') + sLineBreak +
            'DATA.........: ' + PedidoProcurar.ResultFieldAsString('DATA') + sLineBreak +
            'DATA ENTREGA.: ' + PedidoProcurar.ResultFieldAsString('DATA_ENTREGA') + sLineBreak +
            'CLIENTE......: ' + PedidoProcurar.ResultFieldAsString('CLIENTE_NOME') + sLineBreak +
            'VALOR TOTAL..: ' + FormatFloat('###,##0.00',PedidoProcurar.ResultFieldAsFloat('VLR_TOTAL'));
  if Pergunta(mTexto,True,'Importar Pedido de Venda',True) = false then
    exit;
  if ImportarPedido(mIDPedido) = False then
      exit;
  AtualizaVendaPedido(mIDPedido);
  QryVendaItem.Last;
  Informar('Pedido importado com sucesso. '+sLineBreak+'Conclua o pagamento da venda.','Importação de Pedido ['+mIDPedido.ToString+']');
end;

Function TFrmPrincipal.ImportarPedido(aIDPedido: Integer): Boolean;
Var
  mProduto    : TProdutoRecord;
  mIDVenda    : Integer;
  mCodProprio : String;
  mQtde       : Currency;
  mValUnit    : Currency;
begin
   Result := False;
   mIDVenda := 0;
   mCodProprio := '';
   mQtde := 0;
   mValUnit := 0;
   try
     QryPedidoVenda.DisableControls;
     QryPedidoVendaItens.DisableControls;
     QryFBProduto.DisableControls;
     QryVendaItem.DisableControls;
     QryPedidoVendaItens.Close;
     QryPedidoVendaItens.ParamByName('CODIGO').AsInteger := aIDPedido;
     QryPedidoVendaItens.Open;
     if QryPedidoVendaItens.IsEmpty then
     begin
       Informar('Não há itens no pedido de venda.','Importação de Pedido ['+aIDPedido.ToString+']',True);
       Exit; // Ao sair do Try...Finally, passa para o proximo registro
     end;
     //--------------------------------------------------------------------
     //
     //--------------------------------------------------------------------
     NovaVenda(True);
     mIDVenda := QryVenda.FieldByName('CODIGO').AsInteger;
     FItemID := 0;
     //--------------------------------------------------------------------
     //
     //--------------------------------------------------------------------
     QryPedidoVendaItens.First;
     while not QryPedidoVendaItens.Eof do
     begin
       mCodProprio := QryPedidoVendaItens.FieldByName('REFERENCIA').AsString;
       mQtde := QryPedidoVendaItens.FieldByName('QUANTIDADE').AsFloat;
       mValUnit := QryPedidoVendaItens.FieldByName('VALOR_UNIT').AsFloat;
       try
         QryFBProduto.Close();
         QryFBProduto.ParamByName('CBARRA').AsString := mCodProprio;
         QryFBProduto.Open();
         if QryFBProduto.IsEmpty then
         begin
           Informar('Produto "'+mCodProprio+'" informado não existe.','Importação de Pedido ['+aIDPedido.ToString+']',True);
           Exit; // Ao sair do Try...Finally, passa para o proximo registro
         end;
         inc(FItemID);
         SQLInserirItemVenda(FConfiguracao.Loja,
                             mIDVenda,
                             FItemID,
                             mQtde,
                             QryFBProduto,
                             False, // True=Balança
                             mValUnit
                             );
         //--------------------------------------------------------------------
         //
         //--------------------------------------------------------------------
       finally
         QryFBProduto.Close;
       end;
       QryPedidoVendaItens.Next;
     end;
     TabelaItemFecharAbrir();
     CalcularVenda();
     Result := True;
   finally
     QryPedidoVenda.Close;
     QryPedidoVendaItens.Close;
     QryPedidoVenda.EnableControls;
     QryPedidoVendaItens.EnableControls;
     QryFBProduto.EnableControls;
     QryVendaItem.EnableControls;
   end;
end;

function TFrmPrincipal.VerificaCertificado(): Boolean;
begin
  Result := True;
  if FTipoVendaFiscal = False then
    exit;
  if FNaturezaFiscal = 'NFCE' then
  begin
    if ((FConfiguracao.NFECertArquivo = '') and (FConfiguracao.NFECertSerie = '') and (FTipoVendaFiscal = True)) then
    begin
      Informar('Não há Certificado Digital configurado no '+_SISTEMA_NOME+' (retaguarda). Não será possivel concluir a NFC-e. ','Certificado Digital');
      Result := False;
    end;
  end;
end;

procedure TFrmPrincipal.TeclaF3NovaVenda();
begin
  VerificaCertificado();
  CheckCaixaFechado();
  CheckOperador();
  if FVendaIniciada then
    exit;
  if FPagamentoIniciado then
  begin
    Informar('Pagamento já foi iniciado. Conclua essa venda primeiro e depois faça outra.');
    exit;
  end;
  NovaVenda();
end;

procedure TFrmPrincipal.TeclaLimparCampo();
begin
  EditCodigo.Text := '';
  EditQtde.Text   := '1';
  MensagemRodape();
end;

procedure TFrmPrincipal.TeclaF4CancelarItem();
var
  mCancelar  : Boolean;
  mIDProduto : String;
  mDescricao : String;
  mIDVenda   : Integer;
  mItem      : Integer;
begin
  mCancelar := False;
  if QryVendaItem.IsEmpty then
    Exit;
  if not FVendaIniciada then
    Exit;
  if FPagamentoIniciado then
  begin
    Informar('Pagamento já foi iniciado. Exclua todos pagamentos realizados antes de cancelar item.'+sLineBreak+sLineBreak+
             'Dica: pressione F5 para abrir tela de pagamentos.');
    exit;
  end;

  try
    FrmExcluirItem := TFrmExcluirItem.Create(Self);
    mCancelar := FrmExcluirItem.ShowModal = mrOk; // se retornou "mrOk", processar finalização da venda.
    if mCancelar =  False then
      Exit;
    mItem := StrToIntDef(FrmExcluirItem.EditNumItem.Text,0);
    if mItem = 0 then
      exit;
    QryVendaItem.First;
    if QryVendaItem.Locate('ITEM',mItem,[]) = False then
      exit; // Se não encontrar o item informado, não prosseguir

    mIDVenda   := QryVenda.FieldByName('CODIGO').AsInteger;
    mIDProduto := QryVendaItem.FieldByName('CODIGOBARRA').AsString;
    mDescricao := QryVendaItem.FieldByName('DESCRICAO').AsString;
    ExcluirItem(mIDVenda,mItem,mIDProduto,mDescricao);
  finally
    FrmExcluirItem.Free;
  end;
end;

procedure TFrmPrincipal.ExcluirItem(mIDVenda, mItem: Integer; mIDProduto, mDescricao: String);
var
  mCancelar  : Boolean;
begin
  try
    SQLCancelarItemVenda(mIDVenda,
                         mItem,
                         mIDProduto,
                         mDescricao);
    SQLUpdateNumItem(mIDVenda); // Atualizar sequencia do Item
    TabelaItemFecharAbrir();
    CalcularVenda();
    MensagemTopo('');
    MensagemRodape('');
  finally
    QryVendaItem.Last;
    ChecaProdutoPesado();
  end;
end;

function TFrmPrincipal.InformarCPFCNPJ(): String;
var
  mValidado  : Boolean;
  //mCPF : String;
begin
  Result := '';
  mValidado := False;
  if not FVendaIniciada then
    Exit;
  try
    FrmCPFCNPJ := TFrmCPFCNPJ.Create(Self);
    mValidado := FrmCPFCNPJ.ShowModal = mrOk; // se retornou "mrOk", processar finalização da venda.
    if mValidado =  False then
      Exit;
    FCPF := FrmCPFCNPJ.EditDocumento.Text;
    Result := FCPF;
  finally
    FrmCPFCNPJ.Free;
  end;
end;

procedure TFrmPrincipal.TeclaF5Pagamento();
var
  mSucesso : Boolean;
  mIDVenda : Integer;
  iErrors : Integer;
begin
  mIDVenda := 0;
  iErrors := 0;
  mSucesso := False;
  if not FVendaIniciada then
    exit;
  if QryVenda.FieldByName('TOTAL_NF').AsFloat <= 0 then
  begin
    informar('Não há valor a receber.');
    exit;
  end;
  ChecaProdutoPesado();
  mIDVenda := QryVenda.FieldByName('CODIGO').AsInteger;
  if FrmPagamento=Nil then
    FrmPagamento := TFrmPagamento.Create(nil); // Formulario "FrmPagamento" sera destruido apenas quando finalizar venda.
  FrmPagamento.FIDVenda       := QryVenda.FieldByName('CODIGO').AsInteger;
  FrmPagamento.FParcelas      :=  SQLGetValorParcelas(FrmPagamento.FIDVenda);
  FrmPagamento.FValorProdutos := RoundABNT(QryVenda.FieldByName('VALOR_PRODUTOS').AsFloat,2);
  FrmPagamento.FValorVenda   := RoundABNT(QryVenda.FieldByName('TOTAL_NF').AsFloat,2);
  FrmPagamento.FRecebido     := RoundABNT(QryVenda.FieldByName('VALORRECEBIDO').AsFloat,2);
  FrmPagamento.FDinheiro     := RoundABNT(QryVenda.FieldByName('VALORDINHEIRO').AsFloat,2);
  FrmPagamento.FTroco        := RoundABNT(QryVenda.FieldByName('TROCO').AsFloat,2);
  FrmPagamento.FDebito       := RoundABNT(QryVenda.FieldByName('VALORCARTAODEBITO').AsFloat,2);
  FrmPagamento.FCredito      := RoundABNT(QryVenda.FieldByName('VALORCARTAOCREDITO').AsFloat,2);
  FrmPagamento.FValDesconto  := RoundABNT(QryVenda.FieldByName('VLR_DESCONTO').AsFloat,2);
  FPagamentoIniciado := FrmPagamento.ShowModal = mrOk; // se retornou "mrOk", processar finalização da venda.
  if FPagamentoIniciado then
  begin
    if RoundABNT(FrmPagamento.FRecebido,2) <= 0 then
    begin
      FPagamentoIniciado := False;
      Informar('Nenhum pagamento informado.','Venda não concluída.',True);
    end;
  end;
  FPagamentoIniciado := ((FPagamentoIniciado) and (RoundABNT(FrmPagamento.FRecebido,2) > 0)  );
  if FPagamentoIniciado then
  begin
    ReabrirTabela();

    QryVenda.Edit;
    QryVenda.FieldByName('VALORRECEBIDO').AsFloat := RoundABNT(FrmPagamento.FRecebido,2);
    QryVenda.FieldByName('VALORDINHEIRO').AsFloat := RoundABNT(FrmPagamento.FDinheiro,2);
    QryVenda.FieldByName('TROCO').AsFloat := RoundABNT(FrmPagamento.FTroco,2);
    QryVenda.FieldByName('VALORCARTAODEBITO').AsFloat := RoundABNT(FrmPagamento.FDebito,2);
    QryVenda.FieldByName('VALORCARTAOCREDITO').AsFloat := RoundABNT(FrmPagamento.FCredito,2);
    QryVenda.FieldByName('TOTAL_NF').AsFloat := RoundABNT((QryVenda.FieldByName('TOTAL_NF').AsFloat),2);
    QryVenda.Post;

  end;
  if FPagamentoIniciado = False then
  begin
    LimparPagamentosRecebidos();
    Exit;
  end;
  if (RoundABNT(QryVenda.FieldByName('TOTAL_NF').AsFloat,2) < (RoundABNT(QryVenda.FieldByName('TOTAL_NF').AsFloat,2))) then
  begin
    Informar('Pagamento recebido é menor que o valor da venda.','Pendência na venda.',True);
    Abort;
  end;
  if FPagamentoIniciado then
  begin
    try
      //------------------------------------------------------------------------
      // Transmitir Documento
      //------------------------------------------------------------------------
      if FTipoVendaFiscal then // se for fiscal
      begin
        if FNaturezaFiscal = 'NFCE' then
        begin
          mSucesso := NFCeEnviar();
          mSucesso := True;
        end;
        if FNaturezaFiscal = 'SAT' then
        begin
          SATGerar();
          SatEnviar();
          mSucesso := True;
        end;
      end
      else
      begin
        CupomNaoFiscal(mIDVenda);  // se não for fiscal
        mSucesso := True;
      end;

      if mSucesso = false then
      begin
        Informar('[Venda Pendente] Uma exceção impediu a conclusão da venda.','Venda não concluída.',True);
        Exit;
      end;
      if mSucesso then
      begin
        QryVenda.Close;
        QryVenda.ParamByName('IDTERMINAL').AsInteger  := FConfiguracao.TerminalPDV;
        QryVenda.Open;

        if not (QryVenda.state in [dsedit,dsinsert] ) then
          QryVenda.edit;

        QryVenda.FieldByName('STATUS').AsString := 'S';
        if (QryVenda.state in [dsedit,dsinsert] ) then
          QryVenda.Post;

        if mSucesso then
        begin
          //--------------------------------------------------------------------
          // Atualizar Estoque (SQL)
          //--------------------------------------------------------------------
          if SQLEstoqueAtualiza(mIDVenda,'-') = false then
          begin
            Informar('Sem retorno ao atualizar estoque.','Conclusão de Venda',True);
            Exit;
          end;
          if RegistrarCtaReceber() = false then
          begin
            Informar('Sem retorno ao registrar Contas a Receber.','Conclusão de Venda',True);
            Exit;
          end;
          if RegistrarCaixa() = false then
          begin
            Informar('Sem retorno ao registrar Control do Caixa.','Conclusão de Venda',True);
            Exit;
          end;
          SQLUpdateVendaIDCliente(mIDVenda, mCliente.IDCliente, mCliente.Documento);
          SQLAtualizaCtaReceber(mIDVenda, mCliente.IDCliente, FConfiguracao.Operador, FConfiguracao.TerminalPDV, QryVenda.FieldByName('NOTAFISCAL').AsInteger, QryVenda.FieldByName('NOTAFISCAL').AsString);
          SQLUpdatePedidoStatus(QryVenda.FieldByName('PEDIDO').AsInteger,'S'); // Baixar pedido de venda
          EncerrarVenda(False);
          AbrirGaveta;
        end;
      end;
    finally

      if mSucesso then
      begin
        AtualizaGradeItens(); // Limpar os campos (ja que não tem nada para mostrar)
      end;
    end;
  end;
end;

procedure TFrmPrincipal.TeclaF6CancelarVenda();
begin
  if not FVendaIniciada then
    exit;
  if pergunta('Deseja cancelar venda atual?') = false then
    exit;
  ConnectFirebird.ExecSQL('DELETE FROM VENDAS WHERE STATUS='+QuotedStr('ABERTO')+' AND  OPERADOR='+FConfiguracao.Operador.ToString+' AND  TERMINAL='+FConfiguracao.TerminalPDV.ToString  );
  SQLExcluirVenda(QryVenda.FieldByName('CODIGO').AsInteger);
  EncerrarVenda(False);
end;

procedure TFrmPrincipal.TeclaF7Funcoes();
begin
  if FVendaIniciada then
  begin
    Informar('Venda já foi iniciada. Conclua ou cancele a venda atual antes abrir tela de funcionalidades.','Venda Pendente',True);
    exit;
  end;
  try
    FrmOutrasFuncoes := TFrmOutrasFuncoes.Create(nil);
    FrmOutrasFuncoes.ShowModal;
    FecharConexoes();
  finally
    FrmOutrasFuncoes.Free;
  end;
end;

procedure TFrmPrincipal.TeclaF9InformarCPF;
var
  mCPF : String;
begin
  if not FVendaIniciada then
    exit;
  mCPF := InformarCPFCNPJ();
  mCliente.GetCliente(mCPF);
  MensagemTopo(''); // apagar
  if mCliente.Documento <> '' then
  begin
    MensagemTopo('[CPF foi informado pelo Cliente]');
    if mCliente.Nome <> '' then
      MensagemTopo('CLIENTE: '+mCliente.Nome);
  end;
  try
    SQLUpdateVendaIDCliente(QryVenda.FieldByName('CODIGO').AsInteger, mCliente.IDCliente, mCliente.Documento);
  finally
    ReabrirTabela;
  end;
end;

procedure TFrmPrincipal.TeclaCtrlxFecharSistema();
begin
  if QryVenda.IsEmpty = False then
  begin
    if Pergunta('Sair do sistema?') = False then
      exit;
  end;
  Close;
end;

function  TFrmPrincipal.GetIDCartao(aFormaPagto: TpcnFormaPagamento): NativeInt;
var
  mCartao : TCartaoPagamento;
begin
  Result := 0;
  for mCartao in FCartaoPagamento do // Percorrer vetor (array) de cartões (se houver)
  begin
    if (mCartao.FormaPagamento = aFormaPagto) then
    begin
      Result := mCartao.IDBandeiraCartao;
      Break;
    end;
  end;
end;


function TFrmPrincipal.RegistrarCtaReceber: Boolean;
var
  mOrigemVenda : String;
  mIDCartao    : Integer;
begin
  Result := False;
  mOrigemVenda := FNaturezaFiscal;
  if FTipoVendaFiscal = False then
    mOrigemVenda := 'PDV';
  mIDCartao := 0;
  try
    //-------------------------------------------------------------------------
    // Registrar dinheiro
    //-------------------------------------------------------------------------
    if QryVenda.FieldByName('VALORDINHEIRO').AsFloat > 0 then
    begin
      mIDCartao := GetIDCartao(fpDinheiro);
      SQLInserirCtaReceber(QryVenda.FieldByName('CODIGO').AsInteger, // Obrigatorio para validar o insert.
                           QryVenda.FieldByName('NOTAFISCAL').AsInteger, // NUMERO DA NOTA FISCAL
                           QryVenda.FieldByName('CLIENTE').AsInteger, // ID cLiente
                           FConfiguracao.TerminalPDV, // ID do Terminal
                           FConfiguracao.Operador, // ID do operador
                           Date, // Vencimento
                           QryVenda.FieldByName('VALORDINHEIRO').AsFloat, // VALOR RECEBIDO
                           'A VISTA', // prazo de pagamento
                           mOrigemVenda, // origem da venda
                           'DINHEIRO', // ESPECIE
                           'S', // QUITADO (S/N)
                           mIDCartao
                          );
    end;
    //-------------------------------------------------------------------------
    // Registrar cartão debito
    //-------------------------------------------------------------------------
    if QryVenda.FieldByName('VALORCARTAODEBITO').AsFloat > 0 then
    begin
      mIDCartao := GetIDCartao(fpCartaoDebito);
      SQLInserirCtaReceber(QryVenda.FieldByName('CODIGO').AsInteger, // Obrigatorio para validar o insert.
                           QryVenda.FieldByName('NOTAFISCAL').AsInteger, // NUMERO DA NOTA FISCAL
                           QryVenda.FieldByName('CLIENTE').AsInteger, // ID cLiente
                           FConfiguracao.TerminalPDV, // ID do Terminal
                           FConfiguracao.Operador, // ID do operador
                           Date, // Vencimento
                           QryVenda.FieldByName('VALORCARTAODEBITO').AsFloat, // VALOR RECEBIDO
                           'CARTÃO DÉBITO', // prazo de pagamento
                           mOrigemVenda, // origem da venda
                           'C-DEBITO', // ESPECIE
                           'S', // QUITADO (S/N)
                           mIDCartao
                          );
    end;
    //-------------------------------------------------------------------------
    // Registrar cartão debito
    //-------------------------------------------------------------------------
    if QryVenda.FieldByName('VALORCARTAOCREDITO').AsFloat > 0 then
    begin
      mIDCartao := GetIDCartao(fpCartaoCredito);
      SQLInserirCtaReceber(QryVenda.FieldByName('CODIGO').AsInteger, // Obrigatorio para validar o insert.
                           QryVenda.FieldByName('NOTAFISCAL').AsInteger, // NUMERO DA NOTA FISCAL
                           QryVenda.FieldByName('CLIENTE').AsInteger, // ID cLiente
                           FConfiguracao.TerminalPDV, // ID do Terminal
                           FConfiguracao.Operador, // ID do operador
                           Date, // Vencimento
                           QryVenda.FieldByName('VALORCARTAOCREDITO').AsFloat, // VALOR RECEBIDO
                           'CARTÃO CRÉDITO', // prazo de pagamento
                           mOrigemVenda, // origem da venda
                           'C-CREDITO', // ESPECIE
                           'S', // QUITADO (S/N)
                           mIDCartao
                          );
    end;
    Result := True;
  finally
   //
  end;
end;

function TFrmPrincipal.RegistrarCaixa: Boolean;
var
  mOrigemVenda : String;
  mIDCartao    : Integer;
begin
  Result := False;
  mOrigemVenda := FNaturezaFiscal;
  mIDCartao := 0;
  if FTipoVendaFiscal = False then
    mOrigemVenda := 'PDV';
  //-------------------------------------------------------------------------
  // Registrar dinheiro
  //-------------------------------------------------------------------------
  if QryVenda.FieldByName('VALORDINHEIRO').AsFloat > 0 then
  begin
    mIDCartao := GetIDCartao(fpDinheiro);
    SQLInserirControleCaixa(QryVenda.FieldByName('CODIGO').AsInteger, // ID DA VENDA.
                            FConfiguracao.TerminalPDV, // ID do Terminal
                            FConfiguracao.Operador, // ID do operador
                            QryVenda.FieldByName('VALORDINHEIRO').AsFloat, // VALOR RECEBIDO
                            mOrigemVenda, // origem da venda
                            'CREDITO', // CREDITO OU DEBITO
                            'DINHEIRO', // TIPO DE PAGAMENTO
                            'DINHEIRO',
                            mIDCartao
                            );
  end;
  //-------------------------------------------------------------------------
  // Registrar cartão debito
  //-------------------------------------------------------------------------
  if QryVenda.FieldByName('VALORCARTAODEBITO').AsFloat > 0 then
  begin
    mIDCartao := GetIDCartao(fpCartaoDebito);
    SQLInserirControleCaixa(QryVenda.FieldByName('CODIGO').AsInteger, // ID DA VENDA.
                            FConfiguracao.TerminalPDV, // ID do Terminal
                            FConfiguracao.Operador, // ID do operador
                            QryVenda.FieldByName('VALORCARTAODEBITO').AsFloat, // VALOR RECEBIDO
                            mOrigemVenda, // origem da venda
                            'CREDITO', // CREDITO OU DEBITO
                            'CARTÃO DÉBITO', // TIPO DE PAGAMENTO
                            'CARTAO DE DEBITO',
                            mIDCartao
                            );
  end;
  //-------------------------------------------------------------------------
  // Registrar cartão debito
  //-------------------------------------------------------------------------
  if QryVenda.FieldByName('VALORCARTAOCREDITO').AsFloat > 0 then
  begin
    mIDCartao := GetIDCartao(fpCartaoCredito);
    SQLInserirControleCaixa(QryVenda.FieldByName('CODIGO').AsInteger, // ID DA VENDA.
                            FConfiguracao.TerminalPDV, // ID do Terminal
                            FConfiguracao.Operador, // ID do operador
                            QryVenda.FieldByName('VALORCARTAOCREDITO').AsFloat, // VALOR RECEBIDO
                            mOrigemVenda, // origem da venda
                            'CREDITO', // CREDITO OU DEBITO
                            'CARTÃO CRÉDITO', // TIPO DE PAGAMENTO
                            'CARTAO DE CREDITO',
                            mIDCartao
                            );
  end;
  //-------------------------------------------------------------------------
  // Registrar troco pago
  //-------------------------------------------------------------------------
  if QryVenda.FieldByName('TROCO').AsFloat > 0 then
  begin
    SQLInserirControleCaixa(QryVenda.FieldByName('CODIGO').AsInteger, // ID DA VENDA.
                            FConfiguracao.TerminalPDV, // ID do Terminal
                            FConfiguracao.Operador, // ID do operador
                            QryVenda.FieldByName('TROCO').AsFloat, // TROCO PAGO
                            mOrigemVenda, // origem da venda
                            'DEBITO',
                            'TROCO PARA O CLIENTE', // TIPO DE PAGAMENTO
                            'TROCO', // TROCO PARA CLIENTE
                            0
                            );
  end;
  Result := True;

end;

procedure TFrmPrincipal.GetDadosCliente(aID: Integer);
var
  mCPF : String;
begin
  mCPF := SoNumero( GetClienteCampo(aID, 'CPF_CNPJ') );
  mCliente.Limpar();
  mCliente.GetCliente(mCPF);
end;

procedure TFrmPrincipal.AtualizaVendaPedido(aIDPedido: Integer);
var
  mCPF : String;
begin
  if aIDPedido < 1 then
    exit;
  ReabrirTabela();
  try
    QryPedidoVenda.Close;
    QryPedidoVenda.ParamByName('CODIGO').AsInteger := aIDPedido;
    QryPedidoVenda.Open;
    //-------------------------------------------------------------------------------
    // Salvar dados da Venda
    //-------------------------------------------------------------------------------
    QryVenda.Edit;
    if aIDPedido > 0 then
      QryVenda.FieldByName('PEDIDO').AsInteger := aIDPedido;
    if QryPedidoVenda.FieldByName('CLIENTE').AsInteger > 0 then
       QryVenda.FieldByName('CLIENTE').AsInteger :=  QryPedidoVenda.FieldByName('CLIENTE').AsInteger;
    QryVenda.Post;
  finally
    QryPedidoVenda.Close;
    ReabrirTabela();
  end;
end;

//------------------------------------------------------------------------------------
// NFC-e - Integrador para o estado do Ceará
// Add: dezembro/2019
//------------------------------------------------------------------------------------
procedure TFrmPrincipal.ConfigurarIntegradorCeara;
var
  mActive : Boolean;
begin
  if FTipoVendaFiscal = false then // se nao for fiscal
    exit;

  if FConfiguracao.UF <> 'CE' then // se nao estado do Ceará
    exit;

  FACBrIntegradorCeara.PastaInput  := _INTEGRADOR_LOCAL_PASTAS[0]; // Veja no Vetor 0 - Input
  FACBrIntegradorCeara.PastaOutput := _INTEGRADOR_LOCAL_PASTAS[1]; // Veja no Vetor 1 - Output
  FACBrIntegradorCeara.Timeout     := _INTEGRADOR_TIMEOUT;         // 30 segundos
  ACBrNFe1.Integrador := FACBrIntegradorCeara;
  ACBrSAT1.Integrador := FACBrIntegradorCeara;

end;

procedure TFrmPrincipal.ConfigurarLog;
begin
  ACBrSAT1.ArqLOG             := _PASTALOG + FormatDateTime('"SAT_"yyyymmdd".log"', DATE);
  ACBrPosPrinter1.ArqLOG      := _PASTALOG + FormatDateTime('"POSPRINTER_"yyyymmdd".log"', Date);
  FACBrIntegradorCeara.ArqLOG := _PASTALOG + FormatDateTime('"INTEGRADOR_"yyyymmdd".log"', Date);
  ACBrBAL1.ArqLOG             := _PASTALOG + FormatDateTime('"BALANCA_"yyyymmdd".log"', Date);;
  ACBrBAL1.Device.ArqLOG      := _PASTALOG + FormatDateTime('"BALANCA_DEVICE_"yyyymmdd".log"', Date);;
end;

end.

