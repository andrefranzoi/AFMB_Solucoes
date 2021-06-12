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

unit FPrincipal;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Winapi.ShellAPI, System.StrUtils,
   Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
   cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, dxRibbonSkins,
   dxRibbonCustomizationForm, FireDAC.Stan.Intf, FireDAC.Stan.Option,
   FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
   FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
   FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
   FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, cxTextEdit, cxDropDownEdit,
   dxScreenTip, dxBar, cxBarEditItem, cxClasses, System.ImageList, Vcl.ImgList,
   cxImageList, Vcl.ActnList, FireDAC.Phys.IBBase, FireDAC.Comp.Client, Data.DB,
   frxClass, frxDBSet, FireDAC.Comp.DataSet, System.Actions,
   Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, dxRibbon, dxStatusBar,
   dxGDIPlusClasses, dxRibbonForm;

type
   TFrmPrincipal = class(TdxRibbonForm)
      db_empresa: TFDQuery;
      DBConexao: TFDConnection;
      FDTransacao: TFDTransaction;
      dxStatusBar1: TdxStatusBar;
      FDPhysFBDriverLink: TFDPhysFBDriverLink;
      ActionRibbon: TActionList;
      acCliPessoaJuridica: TAction;
      acCliPessoaFisica: TAction;
      acCliRelatorio: TAction;
      acForCadastro: TAction;
      acForRelatorio: TAction;
      acVenPessoaJuridicaFisica: TAction;
      acCadBcoCadastro: TAction;
      acCadBcoContaCorrente: TAction;
      acCadFormaPagto: TAction;
      acCadRamoAtividade: TAction;
      acCfgOpcoes: TAction;
      acCfgUsuario: TAction;
      acCfgServidor: TAction;
      acCadCFOP: TAction;
      acCadTabelaPreco: TAction;
      acTrpCadastro: TAction;
      acProdMarca: TAction;
      acProdGrupo: TAction;
      acProdSubgrupo: TAction;
      acProdProdCadastro: TAction;
      acProdAtualizarEstoque: TAction;
      acProdPesquisaEstoquePreco: TAction;
      acProdRelatorio: TAction;
      acHelpLogOff: TAction;
      acHelpMudarEmpresa: TAction;
      acHelpSistema: TAction;
      acCompraPedidoCompra: TAction;
      acCompraEntradaXML: TAction;
      acCompraRelatorio: TAction;
      acVPedPedido: TAction;
      acVendaPedRelatorio: TAction;
      acVendaExpressa: TAction;
      acProdNCMCEST: TAction;
      acFatNotaFiscal: TAction;
      acFatNotaEmitida: TAction;
      acFatRelatorio: TAction;
      acFinRecLancamento: TAction;
      acFinRecBaixa: TAction;
      acFinRecBoleto: TAction;
      acFinRecCarne: TAction;
      acFinRecRelatorio: TAction;
      acFinPagLancamento: TAction;
      acFinPagBaixar: TAction;
      acFinPagRelatorio: TAction;
      acChqReceber: TAction;
      acChqPagar: TAction;
      acFinBcoControle: TAction;
      acFinBcoTranferencia: TAction;
      acFinCXFluxoCaixa: TAction;
      acFinDivRecibo: TAction;
      ilRibbonApp: TcxImageList;
      dxRibbon: TdxRibbon;
      rbConfigurar: TdxRibbonTab;
      rbCadastro: TdxRibbonTab;
      rbProduto: TdxRibbonTab;
      rbVenda: TdxRibbonTab;
      rbFinanceiro: TdxRibbonTab;
      dxBarManager1: TdxBarManager;
      dxBarAcessoRapido: TdxBar;
      dxBarTabAreaToolBar: TdxBar;
      dxBarConfigSistema: TdxBar;
      dxBarConfigUsuario: TdxBar;
      dxBarConfigServidor: TdxBar;
      dxBarCadCliente: TdxBar;
      dxBarCadFornecedor: TdxBar;
      dxBarCadTransportadora: TdxBar;
      dxBarCadVendedor: TdxBar;
      dxBarCadVenda: TdxBar;
      dxBarCadDiverso: TdxBar;
      dxBarCadBanco: TdxBar;
      dxBarProdCad: TdxBar;
      dxBarProdMov: TdxBar;
      dxBarPedidoVenda: TdxBar;
      dxBarVendaMovimento: TdxBar;
      dxBarFinCtaReceber: TdxBar;
      dxBarFinCtaPagar: TdxBar;
      dxBarFinMovCaixa: TdxBar;
      cxBarEditItem1: TcxBarEditItem;
      dxBarLargeButton1: TdxBarLargeButton;
      dxBarLargeButton3: TdxBarLargeButton;
      dxBarLargeButton4: TdxBarLargeButton;
      dxBarLargeButton5: TdxBarLargeButton;
      btnClientePJ: TdxBarLargeButton;
      dxBarLargeButton6: TdxBarLargeButton;
      btnClientePF: TdxBarLargeButton;
      dxBarLargeButton8: TdxBarLargeButton;
      dxBarLargeButton9: TdxBarLargeButton;
      dxBarLargeButton10: TdxBarLargeButton;
      dxBarLargeButton11: TdxBarLargeButton;
      dxBarLargeButton12: TdxBarLargeButton;
      dxBarLargeButton13: TdxBarLargeButton;
      dxBarLargeButton14: TdxBarLargeButton;
      dxBarLargeButton15: TdxBarLargeButton;
      dxBarLargeButton16: TdxBarLargeButton;
      dxBarLargeButton17: TdxBarLargeButton;
      dxBarLargeButton18: TdxBarLargeButton;
      dxBarLargeButton19: TdxBarLargeButton;
      dxBarLargeButton20: TdxBarLargeButton;
      dxBarLargeButton21: TdxBarLargeButton;
      dxBarLargeButton22: TdxBarLargeButton;
      dxBarLargeButton23: TdxBarLargeButton;
      dxBarLargeButton24: TdxBarLargeButton;
      dxBarLargeButton25: TdxBarLargeButton;
      dxBarLargeButton27: TdxBarLargeButton;
      dxBarLargeButton28: TdxBarLargeButton;
      dxBarLargeButton29: TdxBarLargeButton;
      dxBarLargeButton30: TdxBarLargeButton;
      dxBarLargeButton31: TdxBarLargeButton;
      dxBarLargeButton32: TdxBarLargeButton;
      dxBarLargeButton33: TdxBarLargeButton;
      dxBarLargeButton34: TdxBarLargeButton;
      dxBarLargeButton35: TdxBarLargeButton;
      dxBarLargeButton36: TdxBarLargeButton;
      dxBarLargeButton37: TdxBarLargeButton;
      dxBarLargeButton38: TdxBarLargeButton;
      dxBarLargeButton39: TdxBarLargeButton;
      dxBarLargeButton40: TdxBarLargeButton;
      dxBarLargeButton41: TdxBarLargeButton;
      dxBarLargeButton42: TdxBarLargeButton;
      dxBarLargeButton43: TdxBarLargeButton;
      dxBarLargeButton44: TdxBarLargeButton;
      dxBarLargeButton45: TdxBarLargeButton;
      dxBarLargeButton46: TdxBarLargeButton;
      dxBarLargeButton47: TdxBarLargeButton;
      dxBarLargeButton48: TdxBarLargeButton;
      dxBarLargeButton49: TdxBarLargeButton;
      dxBarLargeButton50: TdxBarLargeButton;
      dxBarLargeButton51: TdxBarLargeButton;
      dxBarLargeButton52: TdxBarLargeButton;
      dxBarLargeButton53: TdxBarLargeButton;
      dxBarLargeButton54: TdxBarLargeButton;
      dxBarLargeButton55: TdxBarLargeButton;
      dxBarLargeButton56: TdxBarLargeButton;
      dxBarLargeButton57: TdxBarLargeButton;
      dxBarLargeButton58: TdxBarLargeButton;
      dxBarLargeButton59: TdxBarLargeButton;
      dxBarLargeButton60: TdxBarLargeButton;
      dxBarLargeButton61: TdxBarLargeButton;
      dxBarLargeButton62: TdxBarLargeButton;
      dxBarLargeButton63: TdxBarLargeButton;
      dxBarLargeButton64: TdxBarLargeButton;
      dxBarLargeButton65: TdxBarLargeButton;
      dxBarLargeButton66: TdxBarLargeButton;
      dxBarLargeButton67: TdxBarLargeButton;
      dxBarLargeButton68: TdxBarLargeButton;
      dxBarLargeButton69: TdxBarLargeButton;
      dxBarLargeButton70: TdxBarLargeButton;
      dxBarLargeButton71: TdxBarLargeButton;
      dxBarLargeButton72: TdxBarLargeButton;
      dxBarLargeButton73: TdxBarLargeButton;
      dxBarLargeButton74: TdxBarLargeButton;
      dxBarLargeButton75: TdxBarLargeButton;
      dxBarLargeButton76: TdxBarLargeButton;
      dxBarLargeButton77: TdxBarLargeButton;
      dxBarLargeButton78: TdxBarLargeButton;
      dxBarLargeButton79: TdxBarLargeButton;
      dxBarLargeButton80: TdxBarLargeButton;
      dxBarLargeButton81: TdxBarLargeButton;
      dxBarLargeButton82: TdxBarLargeButton;
      dxBarLargeButton83: TdxBarLargeButton;
      dxBarLargeButton84: TdxBarLargeButton;
      dxBarLargeButton85: TdxBarLargeButton;
      dxBarLargeButton86: TdxBarLargeButton;
      dxBarLargeButton87: TdxBarLargeButton;
      dxBarLargeButton88: TdxBarLargeButton;
      dxBarLargeButton89: TdxBarLargeButton;
      dxBarLargeButton90: TdxBarLargeButton;
      dxBarLargeButton91: TdxBarLargeButton;
      dxBarLargeButton92: TdxBarLargeButton;
      dxBarLargeButton93: TdxBarLargeButton;
      dxBarLargeButton94: TdxBarLargeButton;
      dxBarLargeButton95: TdxBarLargeButton;
      dxBarLargeButton96: TdxBarLargeButton;
      dxBarLargeButton97: TdxBarLargeButton;
      dxBarLargeButton98: TdxBarLargeButton;
      dxBarLargeButton99: TdxBarLargeButton;
      dxBarLargeButton100: TdxBarLargeButton;
      dxBarLargeButton101: TdxBarLargeButton;
      dxBarLargeButton102: TdxBarLargeButton;
      dxBarLargeButton26: TdxBarLargeButton;
      ilRibbon: TcxImageList;
      acCfgBoleto: TAction;
      acCfgWindows: TAction;
      dxBarLargeButton103: TdxBarLargeButton;
      dxBarLargeButton104: TdxBarLargeButton;
      dxBarLargeButton105: TdxBarLargeButton;
      dxBarLargeButton106: TdxBarLargeButton;
      dxBarLargeButton107: TdxBarLargeButton;
      dxBarLargeButton108: TdxBarLargeButton;
      dxBarLargeButton109: TdxBarLargeButton;
      dxBarLargeButton110: TdxBarLargeButton;
      dxBarLargeButton111: TdxBarLargeButton;
      dxBarLargeButton112: TdxBarLargeButton;
      dxBarLargeButton113: TdxBarLargeButton;
      dxBarLargeButton114: TdxBarLargeButton;
      dxBarLargeButton115: TdxBarLargeButton;
      dxBarLargeButton116: TdxBarLargeButton;
      dxBarLargeButton117: TdxBarLargeButton;
      dxBarLargeButton118: TdxBarLargeButton;
      dxBarLargeButton119: TdxBarLargeButton;
      dxBarLargeButton120: TdxBarLargeButton;
      dxBarLargeButton121: TdxBarLargeButton;
      dxBarLargeButton122: TdxBarLargeButton;
      acCadPlanoContas: TAction;
      dxBarLargeButton123: TdxBarLargeButton;
      dxBarLargeButton124: TdxBarLargeButton;
      dxBarLargeButton125: TdxBarLargeButton;
      dxBarLargeButton126: TdxBarLargeButton;
      dxBarLargeButton127: TdxBarLargeButton;
      dxBarLargeButton128: TdxBarLargeButton;
      acExpedicaoEtiqueta: TAction;
      acExpedicaoRomaneio: TAction;
      acExpedicaoRelatorio: TAction;
      dxBarLargeButton129: TdxBarLargeButton;
      dxBarLargeButton130: TdxBarLargeButton;
      dxBarLargeButton131: TdxBarLargeButton;
      dxBarLargeButton132: TdxBarLargeButton;
      dxBarLargeButton133: TdxBarLargeButton;
      ActionApp: TActionList;
      acAppLogoff: TAction;
      acAppSair: TAction;
      acAppDesenvolvedor: TAction;
      dxBarLargeButton134: TdxBarLargeButton;
      dxBarLargeButton135: TdxBarLargeButton;
      dxBarLargeButton136: TdxBarLargeButton;
      acFinComissao: TAction;
      acFinComissaoRelatorio: TAction;
      dxBarComissao: TdxBar;
      dxBarLargeButton137: TdxBarLargeButton;
      dxBarLargeButton138: TdxBarLargeButton;
      dxBarBtnPedidoAprovar: TdxBarLargeButton;
      dxBarCombo1: TdxBarCombo;
      dxBarListItem1: TdxBarListItem;
      cxBarEditItem2: TcxBarEditItem;
      dxBarSubItem1: TdxBarSubItem;
      dxBarLargeButton140: TdxBarLargeButton;
      dxBarLargeButton141: TdxBarLargeButton;
      dxScreenTipRepository1: TdxScreenTipRepository;
      dsHintMenuComercio: TdxScreenTip;
      dsHintMenuIndustria: TdxScreenTip;
      acCompraEntradaManual: TAction;
      dxBarLargeButton139: TdxBarLargeButton;
      acFinCXControle: TAction;
      dxBarLargeButton142: TdxBarLargeButton;
      dxBarLargeButton143: TdxBarLargeButton;
      dxBarLargeButton144: TdxBarLargeButton;
      acCadContaCaixa: TAction;
      dxBarLargeButton145: TdxBarLargeButton;
      acCadCentroCusto: TAction;
      rbDashboard: TdxRibbonTab;
      actGraficoCtaReceber: TAction;
      dxBarGraficos: TdxBar;
      dxBarLargeButton146: TdxBarLargeButton;
      actGraficoCtaPagar: TAction;
      dxBarLargeButton147: TdxBarLargeButton;
      dxBarLargeButton148: TdxBarLargeButton;
      dxBarLargeButton149: TdxBarLargeButton;
      actGraficoCtaReceberTotais: TAction;
      actGraficoCtaPagarTotais: TAction;
      dxBarLargeButton150: TdxBarLargeButton;
      dxBarCompras: TdxBar;
      dxBarLargeButton2: TdxBarLargeButton;
      dxBarLargeButton7: TdxBarLargeButton;
      dxBarButton1: TdxBarButton;
      acAppAutor: TAction;
      dxBarLargeButton151: TdxBarLargeButton;
      dxBarLargeButton152: TdxBarLargeButton;
      frx_dsEmpresa: TfrxDBDataset;
      dxBarLargeButton153: TdxBarLargeButton;
      dxBarLargeButton154: TdxBarLargeButton;
      ImagemLogo: TImage;

      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure actConfigurarWindowsExecute(Sender: TObject);
      procedure DBConexaoAfterConnect(Sender: TObject);
      procedure AppMenuSairExecute(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure DBConexaoAfterDisconnect(Sender: TObject);
      procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
      procedure acAppLogoffExecute(Sender: TObject);
      procedure acAppSairExecute(Sender: TObject);
      procedure acCfgUsuarioExecute(Sender: TObject);
      procedure acCfgServidorExecute(Sender: TObject);
      procedure acCfgBoletoExecute(Sender: TObject);
      procedure acCfgWindowsExecute(Sender: TObject);
      procedure acCliPessoaJuridicaExecute(Sender: TObject);
      procedure acCliPessoaFisicaExecute(Sender: TObject);
      procedure acCliRelatorioExecute(Sender: TObject);
      procedure acForCadastroExecute(Sender: TObject);
      procedure acForRelatorioExecute(Sender: TObject);
      procedure acCadRamoAtividadeExecute(Sender: TObject);
      procedure acCadBcoCadastroExecute(Sender: TObject);
      procedure acCadBcoContaCorrenteExecute(Sender: TObject);
      procedure acVenPessoaJuridicaFisicaExecute(Sender: TObject);
      procedure acCadPlanoContasExecute(Sender: TObject);
      procedure acCadTabelaPrecoExecute(Sender: TObject);
      procedure acCompraPedidoCompraExecute(Sender: TObject);
      procedure acCompraEntradaXMLExecute(Sender: TObject);
      procedure acTrpCadastroExecute(Sender: TObject);
      procedure acExpedicaoRomaneioExecute(Sender: TObject);
      procedure acExpedicaoRelatorioExecute(Sender: TObject);
      procedure acProdGrupoExecute(Sender: TObject);
      procedure acProdSubgrupoExecute(Sender: TObject);
      procedure acCadFormaPagtoExecute(Sender: TObject);
      procedure acCadCFOPExecute(Sender: TObject);
      procedure acProdNCMCESTExecute(Sender: TObject);
      procedure acProdAtualizarEstoqueExecute(Sender: TObject);
      procedure acProdPesquisaEstoquePrecoExecute(Sender: TObject);
      procedure acProdRelatorioExecute(Sender: TObject);
      procedure acVPedPedidoExecute(Sender: TObject);
      procedure acVendaExpressaExecute(Sender: TObject);
      procedure acFatRelatorioExecute(Sender: TObject);
      procedure acVendaPedRelatorioExecute(Sender: TObject);
      procedure acFatNotaFiscalExecute(Sender: TObject);
      procedure acFatNotaEmitidaExecute(Sender: TObject);
      procedure acFinRecLancamentoExecute(Sender: TObject);
      procedure acFinRecBaixaExecute(Sender: TObject);
      procedure acFinRecCarneExecute(Sender: TObject);
      procedure acFinRecRelatorioExecute(Sender: TObject);
      procedure acFinPagLancamentoExecute(Sender: TObject);
      procedure acFinPagBaixarExecute(Sender: TObject);
      procedure acFinPagRelatorioExecute(Sender: TObject);
      procedure acFinComissaoExecute(Sender: TObject);
      procedure acFinComissaoRelatorioExecute(Sender: TObject);
      procedure acChqReceberExecute(Sender: TObject);
      procedure acChqPagarExecute(Sender: TObject);
      procedure acFinBcoControleExecute(Sender: TObject);
      procedure acFinBcoTranferenciaExecute(Sender: TObject);
      procedure acFinCXFluxoCaixaExecute(Sender: TObject);
      procedure acFinRecBoletoExecute(Sender: TObject);
      procedure acFinDivReciboExecute(Sender: TObject);
      procedure acProdProdCadastroExecute(Sender: TObject);
      procedure acCompraEntradaManualExecute(Sender: TObject);
      procedure acCfgOpcoesExecute(Sender: TObject);
      procedure acCompraRelatorioExecute(Sender: TObject);
      procedure acExpedicaoEtiquetaExecute(Sender: TObject);
      procedure acFinCXControleExecute(Sender: TObject);
      procedure acCadContaCaixaExecute(Sender: TObject);
      procedure acCadCentroCustoExecute(Sender: TObject);
      procedure actGraficoCtaReceberExecute(Sender: TObject);
      procedure actGraficoCtaPagarExecute(Sender: TObject);
      procedure actGraficoCtaReceberTotaisExecute(Sender: TObject);
      procedure actGraficoCtaPagarTotaisExecute(Sender: TObject);
      procedure acAppAutorExecute(Sender: TObject);
      procedure DBConexaoError(ASender, AInitiator: TObject;
        var AException: Exception);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

   Strict Private
      { Strict Private declarations }
      procedure AbrirFormMDI(FClass: TFormClass; var Instance);
   Private
      { Private declarations }
      FErroConectaDB: Boolean;
      FDirPrincipal: Boolean;
      procedure InstanciarDBFirebird;
      Procedure ConfigurarInicio;
      Procedure CarregarUltimaEtapa;
      Procedure InstanciarDataModule;

      procedure ShowHintPersonalizado(var HintStr: string; var CanShow: Boolean;
        var HintInfo: THintInfo);
      procedure AppException(Sender: TObject; E: Exception);
      procedure LogOn;
      procedure LogOff;
      procedure StatusCarregar(aMensagem: String);
      procedure CriarPastas;
      procedure MenusHabilitar;
      procedure VerificarLicenca();
      procedure VerificarPastas;
      procedure CarregarDadosEmpresa;
      procedure VerificarPastasErro(aPasta: String);
      procedure VerificarTelaGrafico;
      procedure DBTratarErro(const aMensagemErro: String);
   Public
      { Public declarations }
      // FTipoCliente : String;
      FDiasAtivar: Integer;
      Procedure SetarEmpresa;
      Procedure CarregarEmpresa;
      procedure cfg_EmpresaGravar(lnEmpresa: Integer);
      function cfg_EmpresaLer: Integer;

   end;

Procedure TerminarAplicacao;
procedure ActionVisivel(const aItemMenu: String; aVisivel: Boolean);
procedure ActionHabilitar(const aItemMenu: String; aHabilitar: Boolean);

var
   FrmPrincipal: TFrmPrincipal;
   FProsseguir: Boolean;
   FProgramador: Boolean;
   FTipoCliente: String;
   FCadCliIni: Boolean;

implementation

{$R *.dfm}

uses
   Classe.GetConnect, App.SQL, Classe.Global, Global, Biblioteca,
   App.Constantes,
   FSplash, FBaseDados, FBaseComponentes, FTransportadoras, FAboutBox, FBancos,
   FContaCorrente, FCFOP, FFormaPagto, FPlanoContas,
   FAtividades, FTabelaPreco, FConfigurar, FServidorSistema, FUsuarios,
   FControleChequesEmitidos, FControleChequesRecebidos, FCadClientes,
   FRelClientes, FCompraEntrada, FCompra, FPedidoCompra, FRelCompras,
   FEtiquetacaixa, FRelEntregas, FRomaneio, FNotaFiscalEmitidas, FNotaFiscal,
   FRelFaturamento, FControleBancario, FTransferenciaContas, FComissoes,
   FComissoesRelatorios, FControleCaixa, FRelFluxoCaixa, FRecibo,
   FCtaPagarBaixas, FCtaPagar, FRelCtaPagar, FCtaReceberBaixas, FBoletoBancario,
   FCarneImprimir, FCtaReceber, FRelCtaReceber, FFornecedores,
   FProdutosQuantidade, FGrupos, FTabelaNCM, FProdutosPesquisaPreco, FProdutos,
   FRelEstoque, FSubGrupos, FVendaExpressa, FRelPedidos, FColaborador,
   FPedidoVenda, FAcesso, FAtivarSistema, FConta, App.Funcoes, FDepartamentos,
   FGraficos;

procedure TerminarAplicacao;
begin
   { 14/07/2019: revisado e testado }
   Application.Terminate;
   TerminateProcess(GetCurrentProcess, 0);
end;

Procedure TFrmPrincipal.DBTratarErro(const aMensagemErro: String);
var
   mTitulo: String;
   mMessage: String;
begin
   mTitulo := 'Ação do usuário';
   mMessage := aMensagemErro;

   if AnsiContainsStr(aMensagemErro, 'UNIQUE KEY') then
   begin
      mTitulo := 'Duplicidade';
      mMessage :=
        'O processo que você está realizando, está tentando duplicar um registro que já existe.';
   end;

   if AnsiContainsStr(aMensagemErro, 'Foreign key') then
   begin
      if AnsiContainsStr(aMensagemErro, 'present for the record') then
      begin
         mTitulo := 'Exclusão';
         mMessage :=
           'Não pode ser excluido. Está sendo utilizado por outro registro.';
      end;

      if AnsiContainsStr(aMensagemErro, 'target does not exist') then
      begin
         mTitulo := 'Inexistência';
         mMessage := 'O codigo digitado não existe.';
      end;

   end;

   if AnsiContainsStr(aMensagemErro, 'must have a value') then
   begin
      mTitulo := 'Campo obrigatório';
      mMessage := 'Informe os campos obrigatórios.';
   end;

   ErroDB(mTitulo, mMessage);
   Abort;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   { 14/07/2019: revisado e testado }
   if Assigned(BaseDados) then
      BaseDados.Free;
   if Assigned(dmBaseComponentes) then
      dmBaseComponentes.Free;
   DestruirObjetos;
   TerminarAplicacao;
   Action := cafree;
end;

procedure TFrmPrincipal.VerificarPastas();
var
   mLocalFDB: String;
begin
   mLocalFDB := FInfFile.LerCaminhoFDB;

   { 14/07/2019: revisado e testado }
   FDirPrincipal := True;
   if (DirectoryExists(_PASTASISTEMA) = False) then
   begin
      VerificarPastasErro(_PASTASISTEMA);
      FDirPrincipal := False;
   end;

   if (DirectoryExists(_APP_PASTA_BINARIO) = False) and (FDirPrincipal) then
   begin
      VerificarPastasErro(_APP_PASTA_BINARIO);
      FDirPrincipal := False;
   end;

   if (DirectoryExists(_PASTASISTEMA_DB) = False) and (FDirPrincipal) then
   begin
      VerificarPastasErro(_PASTASISTEMA_DB);
      FDirPrincipal := False;
   end;

   // Tenta encontrar o banco de dados .FDB indicado no arquivo .INI
   if (FileExists(mLocalFDB) = False) and (FDirPrincipal) then
   begin
      // Se não encontrou, tenta encontrar no local padrão
      if (FileExists(_BANCODADOS_PADRAO) = False) then
      begin
         VerificarPastasErro(mLocalFDB);
         FDirPrincipal := False;
      end;
   end;

end;

procedure TFrmPrincipal.VerificarPastasErro(aPasta: String);
begin
   Erro('Pasta (ou arquivo) não existe' + sLineBreak + '"' + aPasta + '"' +
     sLineBreak + sLineBreak +
     'Programador, esteja atento a esses detalhes (básicos).' + sLineBreak +
     sLineBreak + 'Dica: Use o instalador do ' + _SISTEMA_NOME +
     ' para criar toda estrutura de pastas');
end;

procedure TFrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   { 14/07/2019: revisado e testado }
   DBConexao.Connected := False;
end;

procedure TFrmPrincipal.AppException(Sender: TObject; E: Exception);
begin
   LogException(Sender, E);
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
Const
   FTabVisivel = 1;
   // Aqui define qual menu (Ribbon) é ficar visivel primeiro (o padrão é zero - primeiro)
begin
   { 14/07/2019: revisado e testado }
   Application.OnException := AppException;

   DisableAero := True;
   FProgramador := False;
   if dxRibbon.Tabs.Items[FTabVisivel].Visible then
      dxRibbon.Tabs.Items[FTabVisivel].Active := True;

   FDirPrincipal := True;
   // Indica a principio que o diretorio principal existe.
   FDiasAtivar := 0;
   DBConexao.Connected := False;
   FProgramador := FileExists(LowerCase(_DEVELOPER_));
   // se "arquivo secreto" existir, retorna "True".
   blnUsuarioAutorizado := FProgramador;
   // ------------------------------------------------------------------------
   //
   // ------------------------------------------------------------------------
   DBConexao.Close;
   StatusCarregar('Checando configurações...');
   DBConexao.Connected := False;
   FErroConectaDB := False;

   // ------------------------------------------------------------------------
   // Configurações do sistema (Windows)
   // ------------------------------------------------------------------------
   FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
   FormatSettings.ShortTimeFormat := 'hh:mm:ss';
   FormatSettings.DecimalSeparator := ',';

   // ------------------------------------------------------------------------
   //
   // ------------------------------------------------------------------------
   CriarObjetos;

   // ------------------------------------------------------------------------
   //
   // ------------------------------------------------------------------------
   if not FileExists(_LOCALINI) then
      FInfFile.GravarINI; // Força criar um novo ".INI"
   FInfFile.CarregarINI;

   // ------------------------------------------------------------------------
   // Verificar consistencia das pastas e banco de dados
   // ------------------------------------------------------------------------
   FProsseguir := True;
   VerificarPastas();

   if FDirPrincipal = False then
   begin
      FProsseguir := False;
      Erro('[Fechando sistema]' + sLineBreak + sLineBreak +
        'Motivo: Diretório do sistema não existe.' + sLineBreak + sLineBreak +
        'Sugestão: Instale o ' + _SISTEMA_NOME + ' corretamente.');
      Close;
      TerminarAplicacao;

   end;

   // ----------------------------------------------------------
   // Conexão com banco de dados
   // ----------------------------------------------------------
   if FProsseguir then
      CarregarEmpresa;

   // ----------------------------------------------------------
   // Conexão com banco de dados
   // ----------------------------------------------------------
   if FProsseguir then
      InstanciarDBFirebird;

   if FProsseguir then
   begin
      if FErroConectaDB then
      begin
         DBConexao.Close;
         FProsseguir := False;
         TerminarAplicacao;
         Exit;
      end;
   end;

   if FProsseguir then
   begin
      InstanciarDataModule;
      BaseDados.SetCertificados();
   end;

End;

procedure TFrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = vk_f12 then
   begin
      Key := 0;
      // Se estiver em modo desenvolvedor (se o arquivo estiver nasta especificada),
      // altera a resolução da tela para 1366 x 768.
      // Isso server para verificar como ficará em notebooks de 14" (que tem tela com resolução 1366 x 768);
      // Eu recomento resolução maior. É por conta do (seu) cliente providenciar uma monitor com resolução maior.
      if FileExists(_ARQUIVOAUTENTICASENHA) then
      begin
         WindowState := wsNormal;
         Width := 1366; // largura do formulario
         Height := 768; // altura do formulário
      end;
   end;

end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   StatusCarregar('Checando conexão com banco de dados...');
   CriarPastas();

   FConexao := DBConexao;
   FProsseguir := True;

   Cursor := crSQLWait;
   Try
      // se não for ambiente de desenvolvimento, deverá validar diretorio padrão do sistema
      if not FileExists(_ARQUIVOAUTENTICASENHA) then
      begin
         if not FileExists(LowerCase(_BANCODADOS_PADRAO)) then
         begin
            FProsseguir := False;
            VerificarPastasErro(_BANCODADOS_PADRAO);
            TerminarAplicacao;
         end;
      end;

      // --------------------------------------------------------------------------
      // LICENÇA DE USO: checar autorização de uso
      // --------------------------------------------------------------------------
      //
      //
      // ATENÇÃO LEIA ISSO TUDO AQUI:
      //
      //
      // Modo release (inclusive deixa o executável menor), é o que você manda
      // para o seu cliente. A licença somente será verificada se você compilar
      // em modo RELEASE. MUITA ATENÇÃO. Se compila em modo DEBUG, não fará essa
      // Verificação.
      // Para compilar em modo release:
      // 1) - Menu View->Tool Windows->Projects
      // 2) - Em Build Configurations, de um duplo clique em Release
      // 3) - Salve o projeto. E compile. Pronto. Assim compilou em modo Release.
      // --------------------------------------------------------------------------
{$IFDEF RELEASE}
      // VerificarLicenca(); // Checar licença de uso do sistema
{$ENDIF}
      // ----------------------------------------------------------------------
      //
      // ----------------------------------------------------------------------
      StatusCarregar('Checando configurações iniciais...');
      if FProsseguir then
         ConfigurarInicio;
      // -------------------------------------------------------------------
      // Sendo ambinte de desenvolvimento não pedirá login no sistema
      // (do contrario, pedirá login)
      // -------------------------------------------------------------------
      if FProsseguir then
         StatusCarregar('Abrindo tela de Login...');

      if not FProgramador then
      begin
         FProsseguir := True;
         blnUsuarioAutorizado := True;
         // ------------------------------------------------------------------------
         // Definir dados na barra de status
         // ------------------------------------------------------------------------
         dxStatusBar1.Panels[0].Text := Concat(' Usuário: ', FUsuario.Nome);

         if FProsseguir then
            LogOn; // Solicitar Login
      end;

      if FProsseguir then
         CarregarDadosEmpresa();

      if FProsseguir then
         SetParametrosAtualizaDados;

      if FProsseguir then
         SetarEmpresa;

      if FProsseguir then
         StatusCarregar('Verificações finais...');

      if FProsseguir then
         CarregarUltimaEtapa;

      if FProgramador then
      begin
         FUsuario.Nome := 'Desenvolvedor';
         dxStatusBar1.Panels[0].Text :=
           Concat(' Usuário: ', FUsuario.Nome + ' (Desenvolvedor)');
      end;
      // ----------------------------------------------------------------------
      // Configurar menus x usuario
      // ----------------------------------------------------------------------
      MenusHabilitar();
      FUsuario.LogUsuario('Sistema', 'acessou sistema ' + Application.Title);
   Finally
      Cursor := crDefault;
   End;
end;

{ ******************************************************************************
  Criar pastas
  ****************************************************************************** }
procedure TFrmPrincipal.CriarPastas;
begin
   { 14/07/2019: revisado e testado }
   ForceDirectories(_NFE_LOCAL_GERADAS);
   ForceDirectories(_NFE_LOCAL_SCHEMA);
   ForceDirectories(_NFE_LOCAL_PDF);
   ForceDirectories(_NFE_LOCAL_INUTILIZADAS);
   ForceDirectories(_NFE_LOCAL_GERADAS);
   ForceDirectories(_NFE_LOCAL_EVENTO);
   ForceDirectories(_NFE_LOCAL_SALVAR);
   ForceDirectories(_NFCE_LOCAL_GERADAS);
   ForceDirectories(_NFE_LOCAL_ZIPADOS);
   Sleep(500);
end;

procedure TFrmPrincipal.cfg_EmpresaGravar(lnEmpresa: Integer);
Begin
   { 14/07/2019: revisado e testado }
   FInfFile.GravarItemINI('PARAMETROS', 'Empresa', lnEmpresa);
   if lnEmpresa < 1 then
      lnEmpresa := 1;
End;

Function TFrmPrincipal.cfg_EmpresaLer: Integer;
Begin
   { 14/07/2019: revisado e testado }
   Result := FInfFile.LerItemINI('PARAMETROS', 'Empresa', 1);
End;

procedure TFrmPrincipal.acTrpCadastroExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmTransportadoras, FrmTransportadoras);
end;

procedure TFrmPrincipal.AppMenuSairExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   Close;
end;

procedure TFrmPrincipal.actConfigurarWindowsExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   WinExec('RunDLL32.exe Shell32.DLL,Control_RunDLL Intl.cpl', SW_Show);
end;

procedure TFrmPrincipal.actGraficoCtaPagarExecute(Sender: TObject);
begin
   { 25/09/2019: revisado e testado }
   VerificarTelaGrafico();
   FrmDashboardGrafico := TFrmDashboardGrafico.Create(Nil);
   FrmDashboardGrafico.cxLevelCtaPagar.Visible := True;
   FrmDashboardGrafico.Show;
end;

procedure TFrmPrincipal.actGraficoCtaPagarTotaisExecute(Sender: TObject);
begin
   { 25/09/2019: revisado e testado }
   VerificarTelaGrafico();
   FrmDashboardGrafico := TFrmDashboardGrafico.Create(Nil);
   FrmDashboardGrafico.cxLevelCtaPagarTotais.Visible := True;
   FrmDashboardGrafico.Show;
end;

procedure TFrmPrincipal.actGraficoCtaReceberExecute(Sender: TObject);
begin
   { 25/09/2019: revisado e testado }
   VerificarTelaGrafico();
   FrmDashboardGrafico := TFrmDashboardGrafico.Create(Nil);
   FrmDashboardGrafico.cxLevelCtaReceber.Visible := True;
   FrmDashboardGrafico.Show;
end;

procedure TFrmPrincipal.actGraficoCtaReceberTotaisExecute(Sender: TObject);
begin
   { 25/09/2019: revisado e testado }
   VerificarTelaGrafico();
   FrmDashboardGrafico := TFrmDashboardGrafico.Create(Nil);
   FrmDashboardGrafico.cxLevelCtaReceberTotais.Visible := True;
   FrmDashboardGrafico.Show;
end;

procedure TFrmPrincipal.VerificarTelaGrafico;
begin
   { 25/09/2019: revisado e testado }
   if FrmDashboardGrafico <> Nil then
   begin
      FrmDashboardGrafico.Close;
      FrmDashboardGrafico.Free;
      if FrmDashboardGrafico <> Nil then
         FrmDashboardGrafico := Nil;
   end;
end;

procedure TFrmPrincipal.acCadCentroCustoExecute(Sender: TObject);
begin
   { 03/09/2019: revisado e testado }
   AbrirFormMDI(TFrmDepartamentos, FrmDepartamentos);
end;

procedure TFrmPrincipal.acAppAutorExecute(Sender: TObject);
begin
   try
      FrmAboutBox := TFrmAboutBox.Create(nil);
      FrmAboutBox.ShowModal;
   finally
      FrmAboutBox.Free;
   end;
end;

procedure TFrmPrincipal.acAppLogoffExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   LogOff;
end;

procedure TFrmPrincipal.acAppSairExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   TerminarAplicacao;
end;

procedure TFrmPrincipal.acCadBcoCadastroExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmBancos, FrmBancos);
end;

procedure TFrmPrincipal.acCadBcoContaCorrenteExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmContaCorrente, FrmContaCorrente); // ok
end;

procedure TFrmPrincipal.acCadCFOPExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmCFOP, FrmCFOP);
end;

procedure TFrmPrincipal.acCadContaCaixaExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmConta, FrmConta); // ok
end;

procedure TFrmPrincipal.acCadFormaPagtoExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmFormaPagto, FrmFormaPagto);
end;

procedure TFrmPrincipal.acCadPlanoContasExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   try
      FrmPlanoContas := TFrmPlanoContas.Create(self);
      FrmPlanoContas.ShowModal;
   finally
      FrmPlanoContas.Free;
   end;
end;

procedure TFrmPrincipal.acCadRamoAtividadeExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmAtividades, FrmAtividades);
end;

procedure TFrmPrincipal.acCadTabelaPrecoExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmTabelaPreco, FrmTabelaPreco);
end;

procedure TFrmPrincipal.acCfgBoletoExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmContaCorrente, FrmContaCorrente); // ok
end;

procedure TFrmPrincipal.acCfgOpcoesExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   try
      FrmConfigurar := TFrmConfigurar.Create(self);
      FrmConfigurar.ShowModal;
   finally
      FrmConfigurar.Free;
   end;
end;

procedure TFrmPrincipal.acCfgServidorExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   FrmServidorSistema := TFrmServidorSistema.Create(self);
   FrmServidorSistema.ShowModal;
end;

procedure TFrmPrincipal.acCfgUsuarioExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmUsuarios, FrmUsuarios);
end;

procedure TFrmPrincipal.acCfgWindowsExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   WinExec('RunDLL32.exe Shell32.DLL,Control_RunDLL Intl.cpl', SW_Show);
end;

procedure TFrmPrincipal.acChqPagarExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmChequesEmitidos, FrmChequesEmitidos);
end;

procedure TFrmPrincipal.acChqReceberExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmChequesRecebidos, FrmChequesRecebidos);
end;

procedure TFrmPrincipal.acCliPessoaJuridicaExecute(Sender: TObject);
begin
   { 08/01/2020: revisado e testado }
   if FCadCliIni then
      Exit;
   FTipoCliente := 'J';
   try
      FCadCliIni := True;
      AbrirFormMDI(TFrmClientes, FrmClientes);
   finally
      FTipoCliente := '';
   end;
end;

procedure TFrmPrincipal.acCliPessoaFisicaExecute(Sender: TObject);
begin
   { 08/01/2020: revisado e testado }
   if FCadCliIni then
      Exit;
   FTipoCliente := 'F';
   try
      FCadCliIni := True;
      AbrirFormMDI(TFrmClientes, FrmClientes);
   finally
      FTipoCliente := '';
   end;
end;

procedure TFrmPrincipal.acCliRelatorioExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   try
      FrmRelClientes := TFrmRelClientes.Create(self);
      FrmRelClientes.pgControle.Pages[1].Free;
      FrmRelClientes.Caption := 'Relatório de Cliente';
      FrmRelClientes.TipoRelatorio := 'CLIENTE';
      FrmRelClientes.ShowModal;
   finally
      FrmRelClientes.Free;
   end;
end;

procedure TFrmPrincipal.acCompraEntradaManualExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmCompraEntrada, FrmCompraEntrada);
end;

procedure TFrmPrincipal.acCompraEntradaXMLExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmCompra, FrmCompra);
end;

procedure TFrmPrincipal.acCompraPedidoCompraExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmPedidoCompra, FrmPedidoCompra);
end;

procedure TFrmPrincipal.acCompraRelatorioExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   try
      FrmRelCompras := TFrmRelCompras.Create(Nil);
      FrmRelCompras.ShowModal;
   finally
      FrmRelCompras.Free;
   end;
end;

procedure TFrmPrincipal.acExpedicaoEtiquetaExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   try
      FrmEtiquetacaixa := TFrmEtiquetacaixa.Create(Nil);
      FrmEtiquetacaixa.ShowModal;
   finally
      FrmEtiquetacaixa.Free;
   end;
end;

procedure TFrmPrincipal.acExpedicaoRelatorioExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   try
      FrmRelEntregas := TFrmRelEntregas.Create(self);
      FrmRelEntregas.ShowModal;
   finally
      FrmRelEntregas.Free;
   end;

end;

procedure TFrmPrincipal.acExpedicaoRomaneioExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   try
      FrmRomaneio := TFrmRomaneio.Create(Nil);
      FrmRomaneio.ShowModal;
   finally
      FrmRomaneio.Free;
   end;
end;

procedure TFrmPrincipal.acFatNotaEmitidaExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmNotaFiscalEmitidas, FrmNotaFiscalEmitidas);
end;

procedure TFrmPrincipal.acFatNotaFiscalExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmNotaFiscal, FrmNotaFiscal);
end;

procedure TFrmPrincipal.acFatRelatorioExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   try
      FrmRelFaturamento := TFrmRelFaturamento.Create(self);
      FrmRelFaturamento.ShowModal;
   finally
      FrmRelFaturamento.Free;
   end;
end;

procedure TFrmPrincipal.acFinBcoControleExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmControleBancario, FrmControleBancario);
end;

procedure TFrmPrincipal.acFinBcoTranferenciaExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmTransferenciaContas, FrmTransferenciaContas);
end;

procedure TFrmPrincipal.acFinComissaoExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmComissoes, FrmComissoes);
end;

procedure TFrmPrincipal.acFinComissaoRelatorioExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   try
      FrmComissoesRelatorios := TFrmComissoesRelatorios.Create(nil);
      FrmComissoesRelatorios.ShowModal;
   finally
      FrmComissoesRelatorios.Free;
   end;
end;

procedure TFrmPrincipal.acFinCXControleExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmControleCaixa, FrmControleCaixa);
end;

procedure TFrmPrincipal.acFinCXFluxoCaixaExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmRelFluxoCaixa, FrmRelFluxoCaixa);
end;

procedure TFrmPrincipal.acFinDivReciboExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   try
      FrmRecibo := TFrmRecibo.Create(self);
      FrmRecibo.ShowModal;
   finally
      FrmRecibo.Free;
   end;
end;

procedure TFrmPrincipal.acFinPagBaixarExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmCtaPagarBaixas, FrmCtaPagarBaixas);
end;

procedure TFrmPrincipal.acFinPagLancamentoExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmCtaPagar, FrmCtaPagar);
end;

procedure TFrmPrincipal.acFinPagRelatorioExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   try
      FrmRelCtaPagar := TFrmRelCtaPagar.Create(self);
      FrmRelCtaPagar.ShowModal;
   finally
      FrmRelCtaPagar.Free;
   end;
end;

procedure TFrmPrincipal.acFinRecBaixaExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmCtaReceberBaixas, FrmCtaReceberBaixas);
end;

procedure TFrmPrincipal.acFinRecBoletoExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmBoletoBancario, FrmBoletoBancario);
end;

procedure TFrmPrincipal.acFinRecCarneExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmCarneImprimir, FrmCarneImprimir);
end;

procedure TFrmPrincipal.acFinRecLancamentoExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmCtaReceber, FrmCtaReceber);
end;

procedure TFrmPrincipal.acFinRecRelatorioExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   try
      FrmRelCtaReceber := TFrmRelCtaReceber.Create(self);
      FrmRelCtaReceber.ShowModal;
   finally
      FrmRelCtaReceber.Free;
   end;

end;

procedure TFrmPrincipal.acForCadastroExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmFornecedores, FrmFornecedores);
end;

procedure TFrmPrincipal.acForRelatorioExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   try
      FrmRelClientes := TFrmRelClientes.Create(self);
      FrmRelClientes.pgControle.Pages[0].Free;
      FrmRelClientes.Caption := 'Relatório de Fornecedor';
      FrmRelClientes.TipoRelatorio := 'FORNECEDOR';
      FrmRelClientes.ShowModal;
   finally
      FrmRelClientes.Free;
   end;
end;

procedure TFrmPrincipal.acProdAtualizarEstoqueExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   try
      FrmProdutosQuantidade := TFrmProdutosQuantidade.Create(self);
      FrmProdutosQuantidade.ShowModal;
   finally
      FrmProdutosQuantidade.Free;
   end;
end;

procedure TFrmPrincipal.acProdGrupoExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmGrupos, FrmGrupos);
end;

procedure TFrmPrincipal.acProdNCMCESTExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmTabelaNCM, FrmTabelaNCM);
end;

procedure TFrmPrincipal.acProdPesquisaEstoquePrecoExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   try
      FrmProdutosPesquisaPreco := TFrmProdutosPesquisaPreco.Create(self);
      FrmProdutosPesquisaPreco.ShowModal;
   finally
      FrmProdutosPesquisaPreco.Free;
   end;

end;

procedure TFrmPrincipal.acProdProdCadastroExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmProdutos, FrmProdutos);
end;

procedure TFrmPrincipal.acProdRelatorioExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   try
      FrmRelEstoque := TFrmRelEstoque.Create(self);
      FrmRelEstoque.ShowModal;
   finally
      FrmRelEstoque.Free;
   end;
end;

procedure TFrmPrincipal.acProdSubgrupoExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmSubGrupos, FrmSubGrupos);
end;

procedure TFrmPrincipal.acVendaExpressaExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmVendaExpressa, FrmVendaExpressa);
end;

procedure TFrmPrincipal.acVendaPedRelatorioExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   try
      FrmRelPedidos := TFrmRelPedidos.Create(self);
      FrmRelPedidos.ShowModal;
   finally
      FrmRelPedidos.Free;
   end;
end;

procedure TFrmPrincipal.acVenPessoaJuridicaFisicaExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmColaborador, FrmColaborador);
end;

procedure TFrmPrincipal.acVPedPedidoExecute(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   AbrirFormMDI(TFrmPedidoVenda, FrmPedidoVenda);
end;

procedure TFrmPrincipal.LogOff;
begin
   { 14/07/2019: revisado e testado }
   FUsuario.Resetar;
   LogOn;
end;

procedure TFrmPrincipal.LogOn;
begin
   { 14/07/2019: revisado e testado }
   // ------------------------------------------------------------------------
   // Acessa tela de LOGIN
   // ------------------------------------------------------------------------
   FrmAcesso := TFrmAcesso.Create(self);
   FrmAcesso.ShowModal;

   // blnUsuarioAutorizado :=true;
   if blnUsuarioAutorizado = False then
   begin
      // fechar sistema
      FProsseguir := False;
      TerminarAplicacao;
   end;

   if not FProsseguir then
      Exit;

   if FProsseguir then
      cfg_EmpresaGravar(FSistema.Empresa);

   // ------------------------------------------------------------------------
   // Definir dados na barra de status
   // ------------------------------------------------------------------------
   FUsuario.Nome := fncPrimeiraLetra(FUsuario.Nome);
   dxStatusBar1.Panels[0].Text := Concat(' Usuário: ', FUsuario.Nome);

   // ------------------------------------------------------------------------
   // Define acesso ao menus
   // ------------------------------------------------------------------------
   FUsuario.LogUsuario('Sistema', 'acessou sistema ' + Application.Title);
   MenusHabilitar();

end;

procedure TFrmPrincipal.ConfigurarInicio;
var
   iActMenus: Integer;
   ac: TAction;
begin
   Application.OnShowHint := ShowHintPersonalizado;
   FSistema.ExeName := Uppercase(ExtractName(Application.ExeName));
   // ------------------------------------------------------------------------
   // Checa se a LOGO existe, se exitir carrega no formulário principal
   // ------------------------------------------------------------------------
   if FileExists(FSistema.PastaPadrao + '\logo.jpg') then
   Begin
      ImagemLogo.Picture.LoadFromFile(FSistema.PastaPadrao + '\logo.jpg');
   End;
   Update;
   ImagemLogo.Align := alClient;
   // ------------------------------------------------------------------------
   // Fechar formulário SPLASH depois que tudo foi carregado e configurado
   // ------------------------------------------------------------------------
   FrmSplash.Close;
   if FrmSplash <> Nil then
      FrmSplash.Free;

end;

procedure TFrmPrincipal.DBConexaoAfterConnect(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   dxStatusBar1.Panels[1].Text := 'Base de dados: Conectado';
end;

procedure TFrmPrincipal.DBConexaoAfterDisconnect(Sender: TObject);
begin
   { 14/07/2019: revisado e testado }
   if dxStatusBar1 <> nil then
   begin
      dxStatusBar1.Panels[1].Text := 'Base de dados: Desconectado';
   end;
end;

procedure TFrmPrincipal.DBConexaoError(ASender, AInitiator: TObject;
  var AException: Exception);
begin
   DBTratarErro(AException.Message);
end;

// ------------------------------------------------------------------------
// conectar ao servidor...
// ------------------------------------------------------------------------
procedure TFrmPrincipal.CarregarEmpresa;
begin
   { 14/07/2019: revisado e testado }
   FSistema.Empresa := cfg_EmpresaLer;
end;

procedure TFrmPrincipal.SetarEmpresa;
begin
   { 14/07/2019: revisado e testado }
   cfg_EmpresaGravar(FSistema.Empresa);
   dxStatusBar1.Panels[2].Text := Concat('Loja: ', IntToStr(FSistema.Empresa),
     '  ', FParametros.Empresa.NomeFantasia);
end;

procedure TFrmPrincipal.InstanciarDBFirebird;
var
   mCursor: TCursor;
   mVersaoFB: String;
begin
   { 14/07/2019: revisado e testado }
   {
     if not FileExists(FBancoDados.BancoDados) then
     begin
     try
     VerificarPastasErro(FBancoDados.BancoDados);
     finally
     TerminarAplicacao;
     end;
     end;
   }
   mVersaoFB := DATABASE_GERENCIADOR + '  ' + DATABASE_VERSAO;

   mCursor := Cursor;
   FErroConectaDB := False;
   DBConexao.Close;
   GetConfigFB(DBConexao);
   Try
      Cursor := crSQLWait;
      Try
         DBConexao.Open;
      Except
         FProsseguir := False;
         FErroConectaDB := True;
         Erro('[Fechando sistema]' + sLineBreak + 'Erro no ' + mVersaoFB + '.' +
           sLineBreak + sLineBreak + 'Banco de dados exigido: ' + mVersaoFB +
           sLineBreak + sLineBreak + 'Sugestão: ' + sLineBreak + 'Instale o ' +
           mVersaoFB + sLineBreak + sLineBreak +
           'Sem outra versão do FB no mesmo computador.');
         Close;
         TerminarAplicacao;

      End;
   Finally
      mCursor := Cursor;
   End;
end;

procedure TFrmPrincipal.InstanciarDataModule;
begin
   { 14/07/2019: revisado e testado }
   BaseDados := TBaseDados.Create(self);
   dmBaseComponentes := TdmBaseComponentes.Create(self);

   /// ------------------------------------------------------------------------
   /// Enviar ao servidor dados de registros
   /// ------------------------------------------------------------------------
   BaseDados.db_Parametros.Close;
   BaseDados.db_Parametros.Open;
end;

procedure TFrmPrincipal.CarregarDadosEmpresa;
begin
   { 14/07/2019: revisado e testado }
   // ------------------------------------------------------------------------
   // Abrir tabela de configurações
   // ------------------------------------------------------------------------
   if BaseDados <> Nil then
   begin
      BaseDados.db_Parametros.Close;
      BaseDados.db_Parametros.ParamByName('EMPRESA').Clear;
      BaseDados.db_Parametros.ParamByName('EMPRESA').AsInteger :=
        FSistema.Empresa;
      BaseDados.db_Parametros.Open;
   end;
   db_empresa.Close;
   db_empresa.ParamByName('EMPRESA').Clear;
   db_empresa.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   db_empresa.Open;

end;

procedure TFrmPrincipal.CarregarUltimaEtapa;
begin
   { 14/07/2019: revisado e testado }
   CarregarDadosEmpresa();

   // ------------------------------------------------------------------------
   // carregar papel de parede
   // ------------------------------------------------------------------------
   if BaseDados.db_Parametros.FieldByName('INF_IMGPRINCIPAL').AsString > '' then
   begin
      If FileExists(BaseDados.db_Parametros.FieldByName('INF_IMGPRINCIPAL')
        .AsString) then
      Begin
         ImagemLogo.Picture.LoadFromFile
           (BaseDados.db_Parametros.FieldByName('INF_IMGPRINCIPAL').AsString);
      End;
   end;

   if blnUsuarioAutorizado = False then
   begin
      // fechar sistema
      TerminarAplicacao;
   end;

   BaseDados.db_Parametros.Close;
   BaseDados.db_Parametros.Open;

   db_empresa.Close;
   db_empresa.Open;
end;

procedure TFrmPrincipal.ShowHintPersonalizado(var HintStr: string;
  var CanShow: Boolean; var HintInfo: THintInfo);
var
   I: Integer;
begin
   { 14/07/2019: revisado e testado }
   for I := 0 to (Application.ComponentCount - 1) do
   Begin
      if Application.Components[I] is THintWindow then
         with THintWindow(Application.Components[I]).Canvas do
         begin
            Font.Name := 'Segoe UI';
            Font.Size := 8;
            Font.Style := [fsBold];
            HintInfo.HintColor := clYellow;
         End;
   End;
end;

procedure TFrmPrincipal.StatusCarregar(aMensagem: String);
begin
   { 14/07/2019: revisado e testado }
   if FrmSplash = nil then
      Exit;

   FrmSplash.lblStatus.Caption := '[' + Trim(aMensagem) + ']';
   Application.ProcessMessages;
end;

procedure TFrmPrincipal.AbrirFormMDI(FClass: TFormClass; var Instance);
begin
   { 14/07/2019: revisado e testado }
   if (TForm(Instance) <> Nil) then
   begin
      TForm(Instance).BringToFront;
      TForm(Instance).Show;
   end
   else
   begin
      Application.CreateForm(FClass, Instance);
   end;
end;

// --------------------------------------------------------------------------
// LICENÇA DE USO: checar autorização de uso
// --------------------------------------------------------------------------
// ATENÇÃO:
// Modo release (inclusive deixa o executável menor), é o que você manda
// para o seu cliente. A licença somente será verificada se você compilar
// em modo RELEASE. MUITA ATENÇÃO. Se compila em modo DEBUG, não fará essa
// Verificação.
// Para compilar em modo release:
// 1) - Menu View->Tool Windows->Projects
// 2) - Em Build Configurations, de um duplo clique em Release
// 3) - Salve o projeto. E compile. Pronto. Assim compilou em modo Release.
// --------------------------------------------------------------------------
procedure TFrmPrincipal.VerificarLicenca();
var
   mMensagem: String;
begin
   { 06/08/2020: revisado e testado }
   StatusCarregar('Checando licença de uso...');
   FProsseguir := True;
   if not FSistema.ChecarLicencaUso then
      Exit;
   mMensagem := Format(_LICENCA_EXPIROU, [SITE_EMPRESA, FONE_EMPRESA,
     EMAIL_EMPRESA]) + sLineBreak + sLineBreak +
     ' Você já tem uma chave de ativação?';
   if pergunta(mMensagem) = False then
      TerminarAplicacao();
   try
      FrmAtivarSistema := TFrmAtivarSistema.Create(self);
      FProsseguir := FrmAtivarSistema.ShowModal = mrOk;
   finally
      FrmAtivarSistema.Free;
   end;
   if FProsseguir = False then
      TerminarAplicacao();
end;

// --------------------------------------------------------------------------
// Habilitar/Desabilitar item de menu
// --------------------------------------------------------------------------
procedure TFrmPrincipal.MenusHabilitar;
var
   mQuery: TFDQuery;
   mVisivel: Boolean;
begin
   { 14/07/2019: revisado e testado }
   mVisivel := False;
   try
      mQuery := TFDQuery.Create(self);
      mQuery.Connection := DBConexao;

      mQuery.Close;
      mQuery.SQL.Clear;
      mQuery.SQL.Add(' SELECT * FROM USUARIO   ');
      mQuery.SQL.Add(' WHERE  ');
      mQuery.SQL.Add(' ID=' + IntToStr(FUsuario.ID));
      mQuery.Open;
      mVisivel := (mQuery.FieldByName('ACESSOVISIVEL').AsString = 'SIM');

      mQuery.Close;
      mQuery.SQL.Clear;
      mQuery.SQL.Add
        (' SELECT ID, CATEGORIA, MENU, TITULO, ACESSO FROM USUARIOACESSO   ');
      mQuery.SQL.Add(' WHERE  ');
      mQuery.SQL.Add(' ID=' + IntToStr(FUsuario.ID));
      mQuery.Open;
      while not mQuery.eof do
      begin
         if mVisivel then
         begin
            ActionHabilitar(mQuery.FieldByName('MENU').AsString,
              mQuery.FieldByName('ACESSO').AsString = 'SIM');
         end
         else
         begin
            ActionVisivel(mQuery.FieldByName('MENU').AsString,
              mQuery.FieldByName('ACESSO').AsString = 'SIM');
         end;
         mQuery.next;
      end;
   finally
      mQuery.Close;
      mQuery.Free;
   end;

end;

// --------------------------------------------------------------------------
// Habilitar/Desabilitar acesso Items do ActionMenus (TActionList)
// --------------------------------------------------------------------------
procedure ActionHabilitar(const aItemMenu: String; aHabilitar: Boolean);
var
   I: Integer;
   mAction: TAction;
begin
   { 14/07/2019: revisado e testado }
   for I := 0 to Pred(FrmPrincipal.ActionRibbon.ActionCount) do
   begin
      mAction := TAction(FrmPrincipal.ActionRibbon.Actions[I]);
      if LowerCase(mAction.Name) = LowerCase(Trim(aItemMenu)) then
      begin
         if mAction.Visible then
         begin
            mAction.Enabled := aHabilitar;
         end;
      end;
   end;
end;

// --------------------------------------------------------------------------
// Habilitar/Desabilitar visibilidade do Items do ActionMenus (TActionList)
// --------------------------------------------------------------------------
procedure ActionVisivel(const aItemMenu: String; aVisivel: Boolean);
var
   I: Integer;
   mAction: TAction;
begin
   { 14/07/2019: revisado e testado }
   for I := 0 to Pred(FrmPrincipal.ActionRibbon.ActionCount) do
   begin
      mAction := TAction(FrmPrincipal.ActionRibbon.Actions[I]);
      if LowerCase(mAction.Name) = LowerCase(Trim(aItemMenu)) then
      begin
         mAction.Visible := aVisivel;
      end;
   end;
end;

end.
