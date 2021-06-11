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

unit FNotaFiscal;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, FFrameBarra, FFrameBotoes, ISFEdit, ISFEditbtn, ISFdbEditbtn,
   IDBEdit, uEstSearchDialogZeos, DB, DBCtrls, StdCtrls, Mask, ExtCtrls, Grids,
   DBGrids, Buttons, ACBrNFeDANFEClass,
   ACBrNFe, pcnConversao,
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
   cxGraphics, cxControls,
   cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
   cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
   cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
   cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
   cxGridTableView, cxGridDBTableView, cxGrid, cxCurrencyEdit, cxContainer,
   cxGroupBox, cxButtonEdit, System.StrUtils, dxSkinsCore,
   dxSkinsDefaultPainters,

   ACBrNFeDANFEFRDM, ACBrNFeDANFEFR, ACBrBase, ACBrDFe,
   pcnNFe, ACBrValidador, ACBrUtil, ACBrDFeSSL,
   ACBrNFeDANFeRLClass, ACBrDFeUtil, ACBrSAT, ACBrSATExtratoESCPOS,
   ACBrDFeReport, ACBrSATExtratoClass, ACBrSATExtratoReportClass, ACBrSATClass,
   ACBrSATExtratoFortesFr, ACBrIntegrador, ACBrPosPrinter,
   pcnConversaoNFe,
   System.Diagnostics;

type
   TFrmNotaFiscal = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
      FrmFrameBotoes1: TFrmFrameBotoes;
      Panel1: TPanel;
      ScrollBoxNF: TScrollBox;
      gbxProduto: TcxGroupBox;
      BoxCalculo: TGroupBox;
      Label21: TLabel;
      Label17: TLabel;
      Label16: TLabel;
      Label15: TLabel;
      Label20: TLabel;
      Label19: TLabel;
      Label18: TLabel;
      Label13: TLabel;
      Label29: TLabel;
      Label39: TLabel;
      EFrete: TDBEdit;
      ebase: TDBEdit;
      DbEditICMSSubst: TDBEdit;
      eseguro: TDBEdit;
      eoutras: TDBEdit;
      eprod: TDBEdit;
      enota: TDBEdit;
      DBEdit3: TDBEdit;
      DBEdit4: TDBEdit;
      DBEdit5: TDBEdit;
      BoxTransportadora: TGroupBox;
      Label30: TLabel;
      Label31: TLabel;
      Label32: TLabel;
      Label33: TLabel;
      Label34: TLabel;
      Label35: TLabel;
      Eqtde: TDBEdit;
      Eliquido: TDBEdit;
      Eespecie: TDBEdit;
      Emarca: TDBEdit;
      Enumero: TDBEdit;
      Ebruto: TDBEdit;
      DBRadioGroup1: TDBRadioGroup;
      BoxObs_Fisco: TGroupBox;
      DBMemo_Fisco: TDBMemo;
      DBMemo_OBS: TDBMemo;
      GroupBox2: TGroupBox;
      EditNomeCliente: TEdit;
      EditNomeVendedor: TEdit;
      EditCliente: TIDBEditDialog;
      EstSearchDialogZeos2: TIDBEditDialog;
      EditNomeFormaPagto: TEdit;
      EditPagamento: TIDBEditDialog;
      GroupBox1: TGroupBox;
      EditCFOP: TIDBEditDialog;
      NomeCFOP: TEdit;
      db_PedidosConferencia: TFDQuery;
      db_PedidosConferenciaItens: TFDQuery;
      dbProcurarProduto: TIDBEditDialog;
      dbProcurarNFe: TIDBEditDialog;
      EditNomeTrasportadora: TEdit;
      EditTransportadora: TIDBEditDialog;
      DBEdit14: TDBEdit;
      Label11: TLabel;
      QryPedidoVenda: TFDQuery;
      QryPedidoVendaItens: TFDQuery;
      QryFaturas: TFDQuery;
      Label4: TLabel;
      DBEdit6: TDBEdit;
      DBEdit1: TDBEdit;
      Label1: TLabel;
      cxGrid1: TcxGrid;
      cxGridProduto: TcxGridDBTableView;
      cxGridColProduto: TcxGridDBColumn;
      cxGridColDescricao: TcxGridDBColumn;
      cxGridColNCM: TcxGridDBColumn;
      cxGridColCEST: TcxGridDBColumn;
      cxGridColCFOP: TcxGridDBColumn;
      cxGridColUND: TcxGridDBColumn;
      cxGridColQTD: TcxGridDBColumn;
      cxGridColVlUnit: TcxGridDBColumn;
      cxGridColVlDesconto: TcxGridDBColumn;
      cxGridColVlrTotal: TcxGridDBColumn;
      cxGridColICMS: TcxGridDBColumn;
      cxGridColIPI: TcxGridDBColumn;
      cxGrid1Level1: TcxGridLevel;
      PedidoProcurar: TIDBEditDialog;
      gpTotais: TGroupBox;
      Panel4: TPanel;
      Label3: TLabel;
      Label6: TLabel;
      Label7: TLabel;
      Label8: TLabel;
      Label9: TLabel;
      DBEdit8: TDBEdit;
      DBEdit9: TDBEdit;
      DBEdit10: TDBEdit;
      DBEdit11: TDBEdit;
      DBEdit12: TDBEdit;
      Panel2: TPanel;
      Label2: TLabel;
      DBText1: TDBText;
      QryVenda: TFDQuery;
      QryVendaItem: TFDQuery;
      dsVenda: TDataSource;
      dsVendaItem: TDataSource;
      SPNFE_PROCESSAR: TFDStoredProc;
      db_Parametros: TFDQuery;
      QrySomaProduto: TFDQuery;
      procedure FormCreate(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
      procedure GroupBox2Exit(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExtraClick(Sender: TObject);
      procedure cxGrid1Enter(Sender: TObject);
      procedure cxGridColProdutoPropertiesButtonClick(Sender: TObject;
        AButtonIndex: Integer);
      procedure cxGridProdutoKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure cxGridColQTDPropertiesEditValueChanged(Sender: TObject);
      procedure cxGridColVlUnitPropertiesEditValueChanged(Sender: TObject);
      procedure FormDestroy(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure gbxProdutoEnter(Sender: TObject);
      procedure GroupBox1Exit(Sender: TObject);
      procedure QryVendaAfterClose(DataSet: TDataSet);
      procedure QryVendaAfterOpen(DataSet: TDataSet);
      procedure QryVendaAfterPost(DataSet: TDataSet);
      procedure QryVendaBeforeOpen(DataSet: TDataSet);
      procedure QryVendaBeforePost(DataSet: TDataSet);
      procedure QryVendaNewRecord(DataSet: TDataSet);
      procedure QryVendaItemBeforePost(DataSet: TDataSet);
      procedure QryVendaItemAfterOpen(DataSet: TDataSet);
      procedure QryVendaItemAfterPost(DataSet: TDataSet);
      procedure db_ParametrosBeforeOpen(DataSet: TDataSet);
      procedure dsVendaStateChange(Sender: TObject);

   private
      { Private declarations }
      FCodProduto: String;
      mLogRegistro: String;
      FContigencia: Boolean;
      FClienteMesmaUF: Boolean;
      inVenda: Integer;
      inNotaFiscal: Integer;
      procedure ImportarPedido(nlPedido: Integer);
      procedure FinalizarNotaFiscal;
      procedure prcProcurarProduto;
      procedure Validar;
      procedure NFeGerarEnviar;
      procedure GerarFaturas;
      function GetCodigoProduto(): Integer;
      procedure SetDadosProduto;
      procedure ChecaCFOPUFCliente;
      procedure GravarStatusNFe;
      procedure SetBaseCalculo;
      procedure CalcularDesconto;
      function GerarNumeroNFe(nVenda: Integer): Integer;
      function GerarNumeroNotaFiscal(nVenda: Integer): Integer;
      procedure CalcularImposto;
   public
      { Public declarations }
      procedure FecharTabelas;
      procedure AbrirTabelas;
   end;

var
   FrmNotaFiscal: TFrmNotaFiscal;
   nValorInteiro, nValorParcial, nValorDesconto, nTotalNFReal, nValorRealPedido
     : Currency;
   LStopWatch: TStopWatch;

implementation

uses FPrincipal, App.SQL, Biblioteca, Global, FBaseDados,
   FOpcaoVenda, Classe.Usuarios, App.Constantes, App.Funcoes, FGeraParcelaNFe;

{$R *.dfm}

procedure TFrmNotaFiscal.prcProcurarProduto;
begin
   dbProcurarProduto.SearchQuery.Clear;
   dbProcurarProduto.SearchQuery.Add('SELECT *  FROM VIEW_REFERENCIAS');
   dbProcurarProduto.SearchQuery.Add('WHERE');
   dbProcurarProduto.SearchQuery.Add('EMPRESA=' + IntToStr(FSistema.Empresa));
   dbProcurarProduto.SearchQuery.Add('AND');
   dbProcurarProduto.SearchQuery.Add('%WHERE%');
   dbProcurarProduto.SearchQuery.Add('');
   if dbProcurarProduto.Execute then
   begin
      If not(QryVendaItem.state in [dsEdit]) then
         QryVendaItem.Edit;
      QryVendaItem.FieldByName('IDPRODUTO').AsInteger :=
        dbProcurarProduto.ResultFieldAsInteger('CODIGO');
      QryVendaItem.FieldByName('PRODUTO').AsString :=
        dbProcurarProduto.ResultFieldAsString('REFERENCIA');
      SetDadosProduto();
   end;
end;

procedure TFrmNotaFiscal.QryVendaAfterClose(DataSet: TDataSet);
begin
   QryVenda.ParamByName('CODIGO').Clear;
end;

procedure TFrmNotaFiscal.QryVendaAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(QryVenda);
end;

procedure TFrmNotaFiscal.QryVendaAfterPost(DataSet: TDataSet);
begin
   QryVenda.ParamByName('CODIGO').AsInteger := QryVenda.FieldByName('CODIGO')
     .AsInteger;
end;

procedure TFrmNotaFiscal.QryVendaBeforeOpen(DataSet: TDataSet);
begin
   QryVenda.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TFrmNotaFiscal.QryVendaBeforePost(DataSet: TDataSet);
begin
   if QryVenda.FieldByName('CFOP').AsInteger < 1 then
      QryVenda.FieldByName('CFOP').AsInteger := GetCFOP(0);
   if QryVenda.FieldByName('CFOP').AsInteger < 1 then
      QryVenda.FieldByName('CFOP').Clear;
   SetBaseCalculo();
end;

procedure TFrmNotaFiscal.QryVendaItemAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(QryVendaItem);
end;

procedure TFrmNotaFiscal.QryVendaItemAfterPost(DataSet: TDataSet);
Var
   nVenda: Integer;
begin
   nVenda := QryVenda.FieldByName('CODIGO').AsInteger;
   QryVendaItem.Refresh;
   {
     SP_NFE_CALCULA.ParamByName('NEMPRESA').AsInteger   := FSistema.Empresa;
     SP_NFE_CALCULA.ParamByName('NCODIGO').AsInteger     := nVenda;
     SP_NFE_CALCULA.ParamByName('ACAO').AsString        := 'SAIDA';
     SP_NFE_CALCULA.ExecProc;
   }
   QryVenda.ParamByName('CODIGO').AsInteger := nVenda;
   QryVenda.Refresh;
   QryVenda.ParamByName('CODIGO').AsInteger := nVenda;
   QryVendaItem.Refresh;

   try
      if (QryVenda.state in [dsInsert, dsEdit]) = False then
         QryVenda.Edit;
      SetBaseCalculo();
   finally
      if (QryVenda.state in [dsInsert, dsEdit]) then
         QryVenda.Post;
   end;
end;

procedure TFrmNotaFiscal.QryVendaItemBeforePost(DataSet: TDataSet);
var
   mProduto: String;
   mDescricao: String;
begin
   mProduto := (QryVendaItem.FieldByName('PRODUTO').AsString);
   mDescricao := GetProdutoCampo(mProduto, 'DESCRICAO');

   if mDescricao = '' then
   begin
      Erro('Produto informado "' + mProduto + '" n�o existe');
      QryVendaItem.Cancel;
      Exit;
   end;

   inCliente := QryVenda.FieldByName('CLIENTE').AsInteger;
   QryVendaItem.FieldByName('CODIGO').AsInteger :=
     QryVenda.FieldByName('CODIGO').AsInteger;
   QryVendaItem.FieldByName('EMPRESA').AsInteger :=
     QryVenda.FieldByName('EMPRESA').AsInteger;
   QryVendaItem.FieldByName('NOTAFISCAL').AsInteger :=
     QryVenda.FieldByName('NOTAFISCAL').AsInteger;
   QryVendaItem.FieldByName('MODELO').AsString :=
     QryVenda.FieldByName('MODELO').AsString;
   QryVendaItem.FieldByName('SERIE').AsString :=
     QryVenda.FieldByName('SERIE').AsString;
   QryVendaItem.FieldByName('TIPONF').AsString :=
     QryVenda.FieldByName('TIPONF').AsString;
   QryVendaItem.FieldByName('EMISSAO').AsDateTime :=
     QryVenda.FieldByName('EMISSAO').AsDateTime;
   QryVendaItem.FieldByName('OPERACAO').AsString :=
     QryVenda.FieldByName('OPERACAO').AsString;
   QryVendaItem.FieldByName('CLIENTE').AsInteger :=
     QryVenda.FieldByName('CLIENTE').AsInteger;
   QryVendaItem.FieldByName('VENDEDOR').AsInteger :=
     QryVenda.FieldByName('VENDEDOR').AsInteger;
   QryVendaItem.FieldByName('TABELA').AsInteger :=
     QryVenda.FieldByName('TABELA').AsInteger;
   QryVendaItem.FieldByName('FORMAPAGTO').AsInteger :=
     QryVenda.FieldByName('FORMAPAGTO').AsInteger;
   QryVendaItem.FieldByName('TRANSPORTADORA').AsInteger :=
     QryVenda.FieldByName('TRANSPORTADORA').AsInteger;
   if QryVendaItem.FieldByName('UND').AsString = '' then
      QryVendaItem.FieldByName('UND').AsString := 'UN';

   SetDadosProduto();
   CalcularDesconto();
   CalcularImposto();
end;

procedure TFrmNotaFiscal.QryVendaNewRecord(DataSet: TDataSet);
begin
   QryVenda.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;
   QryVenda.FieldByName('NOTAFISCAL').AsInteger := 0;
   if FParametros.Venda.Cliente > 0 then
      QryVenda.FieldByName('CLIENTE').AsInteger := FParametros.Venda.Cliente;
   if FParametros.Venda.IDPagto > 0 then
      QryVenda.FieldByName('FORMAPAGTO').AsInteger := FParametros.Venda.IDPagto;
   if FParametros.Venda.Vendedor > 0 then
      QryVenda.FieldByName('VENDEDOR').AsInteger := FParametros.Venda.Vendedor;
   QryVenda.FieldByName('FRETE').AsInteger := FParametros.Frete.Padrao;
   QryVenda.FieldByName('FRETE_ESPECIE').AsString := 'CAIXA';
   QryVenda.FieldByName('EMISSAO').AsDateTime := Date;
   QryVenda.FieldByName('DATA_ENTRADASAIDA').AsDateTime := Date;
   QryVenda.FieldByName('HORA').AsDateTime := Time;
   QryVenda.FieldByName('OPERACAO').AsString := 'S';
   QryVenda.FieldByName('MODELO').AsString := '1';
   QryVenda.FieldByName('SERIE').AsString := '1';
   QryVenda.FieldByName('TIPONF').AsString := 'NFE';
   QryVenda.FieldByName('CUPOM').AsString := 'N';
   QryVenda.FieldByName('STATUS').AsString := 'N';

   if OpcaoNumeroFiscal = 'NFE' then
   begin
      QryVenda.FieldByName('MODELO').AsString := FParametros.NFE.Modelo;
      QryVenda.FieldByName('SERIE').AsString := FParametros.NFE.Serie;
      QryVenda.FieldByName('NFE_TRANSMITIDO').AsString := 'NAO';
   end;

end;

procedure TFrmNotaFiscal.SetDadosProduto;
var
   mIDProduto: Integer;
   mUND: String;
begin
   mIDProduto := 0;
   inCliente := QryVenda.FieldByName('CLIENTE').AsInteger;
   if (QryVendaItem.FieldByName('PRODUTO').AsString = '') or
     (QryVendaItem.FieldByName('PRODUTO').AsString = '0') then
      Exit;
   FCodProduto := QryVendaItem.FieldByName('PRODUTO').AsString;
   mIDProduto := QryVendaItem.FieldByName('IDPRODUTO').AsInteger;
   if QryVendaItem.FieldByName('IDPRODUTO').AsInteger < 1 then
   begin
      FCodProduto := QryVendaItem.FieldByName('PRODUTO').AsString;
      mIDProduto := GetCodigoProduto();
      if mIDProduto > 0 then
         QryVendaItem.FieldByName('IDPRODUTO').AsInteger := mIDProduto;
   end;
   if Trim(QryVendaItem.FieldByName('DESCRICAO').AsString) = '' then
      QryVendaItem.FieldByName('DESCRICAO').AsString :=
        GetProdutoCampo(QryVendaItem.FieldByName('PRODUTO').AsString,
        'DESCRICAO');
   if QryVendaItem.FieldByName('QUANTIDADE').AsFloat <= 0 then
      QryVendaItem.FieldByName('QUANTIDADE').AsFloat := 1;
   if Trim(QryVendaItem.FieldByName('NCM').AsString) = '' then
      QryVendaItem.FieldByName('NCM').AsString :=
        GetProdutoCampo(IntToStr(mIDProduto), 'IDNCM');
   if Trim(QryVendaItem.FieldByName('CEST').AsString) = '' then
      QryVendaItem.FieldByName('CEST').AsString :=
        GetProdutoCampo(IntToStr(mIDProduto), 'IDCEST');
   if Trim(QryVendaItem.FieldByName('ICMS').AsString) = '' then
      QryVendaItem.FieldByName('ICMS').AsString :=
        GetProdutoCampo(IntToStr(mIDProduto), 'ICMS');
   if QryVendaItem.FieldByName('CFOP').AsInteger < 1 then
      QryVendaItem.FieldByName('CFOP').AsInteger :=
        GetCFOPProduto(mIDProduto, FClienteMesmaUF);
   if Trim(QryVendaItem.FieldByName('UND').AsString) = '' then
   begin
      mUND := GetProdutoCampo(IntToStr(GetCodigoProduto()), 'UNIDADE');
      QryVendaItem.FieldByName('UND').AsString := ifthen(mUND = '', 'PC', mUND);
   end;
   if QryVendaItem.FieldByName('VLR_UNIT').AsFloat <= 0 then
      QryVendaItem.FieldByName('VLR_UNIT').AsFloat :=
        (StrToFloatDef(GetProdutoCampo(IntToStr(GetCodigoProduto()),
        'PRC_VENDA'), 0));
end;

procedure TFrmNotaFiscal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FecharTabelas();
   Action := Cafree;
end;

procedure TFrmNotaFiscal.FormCreate(Sender: TObject);
begin
   db_Parametros.Open;
   FrmFrameBotoes1.DataSource := dsVenda;
   ScrollBoxNF.VertScrollBar.Position := 0;

   QryVendaItem.Close;
   QryVenda.Close;
   QryVenda.ParamByName('CODIGO').Clear;
   QryVenda.Open;
   QryVendaItem.Open;

end;

procedure TFrmNotaFiscal.FormDestroy(Sender: TObject);
begin
   FrmNotaFiscal := Nil;
end;

procedure TFrmNotaFiscal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   IF Key = VK_PRIOR THEN
   Begin
      ScrollBoxNF.VertScrollBar.Position :=
        ScrollBoxNF.VertScrollBar.Position - 20;
   End;

   IF Key = VK_NEXT THEN
   Begin
      ScrollBoxNF.VertScrollBar.Position :=
        ScrollBoxNF.VertScrollBar.Position + 20;
   End;

   IF Key = VK_F7 Then
   Begin
      GerarFaturas();
   End;

end;

procedure TFrmNotaFiscal.FormShow(Sender: TObject);
begin
   dbProcurarNFe.SearchQuery.Text := ' SELECT * FROM VIEW_NOTAFISCAL ' +
     ' WHERE' + ' EMPRESA=' + FSistema.Empresa.ToString + ' AND   ' + ' TIPONF='
     + QuotedStr('NFE') + ' AND   ' + ' %WHERE%   ' +
     ' ORDER BY EMISSAO DESC, NOTAFISCAL DESC';

   PedidoProcurar.SearchQuery.Text := ' SELECT * FROM VIEW_PEDIDOSVENDAS ' +
     ' WHERE' + ' EMPRESA=' + FSistema.Empresa.ToString + ' AND   ' +
     ' %WHERE%   ' + ' ORDER BY DATA DESC';

   BaseDados.SetGerarDANFE();
end;

procedure TFrmNotaFiscal.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
var
   mPedido: Integer;
begin
   QryVendaItem.Close;

   QryVenda.Close;
   QryVenda.ParamByName('CODIGO').Clear;
   QryVenda.Open;

   QryVendaItem.Open;
   OpcaoNumeroFiscal := 'NFE';

   FrmOpcaoVenda := TFrmOpcaoVenda.create(self);
   FrmOpcaoVenda.Showmodal;

   // Venda Normal
   If OpcaoVenda = 'N' then
   Begin
      AbrirTabelas;

      nTotalNFReal := 0;
      FrmFrameBotoes1.SpbAdicionarClick(Sender);

      EditCFOP.SetFocus;
   End;

   wTexto[0] := 'S';
   // Venda Baseado em Pedidos
   If OpcaoVenda = 'P' then
   Begin

      if not PedidoProcurar.Execute then
         Exit;
      if PedidoProcurar.ResultFieldAsInteger('CODIGO') = 0 then
         Exit;
      mPedido := PedidoProcurar.ResultFieldAsInteger('CODIGO');
      if ConfirmarAcao('IMPORTAR PEDIDO ', 'PEDIDO......: ' +
        PedidoProcurar.ResultFieldAsString('CODIGO') + #13 + #10 +
        'DATA........: ' + PedidoProcurar.ResultFieldAsString('DATA') + #13 +
        #10 + 'CLIENTE.....: ' + PedidoProcurar.ResultFieldAsString
        ('CLIENTE_NOME') + #13 + #10 + 'VALOR TOTAL.: ' +
        FormatFloat('###,##0.00', PedidoProcurar.ResultFieldAsFloat('VLR_TOTAL')
        )) = False then
         Exit;

      nTotalNFReal := 0;
      ImportarPedido(mPedido);
      EditCFOP.SetFocus;

   End;

   If OpcaoVenda = 'D' then
   Begin
      if dbProcurarNFe.Execute then
      begin
         FecharTabelas;
         QryVenda.ParamByName('CODIGO').AsInteger :=
           dbProcurarNFe.ResultFieldAsInteger('CODIGO');
         AbrirTabelas;

         if ConfirmarAcao('DEVOLU��O DE PRODUTOS ',
           'Venda.......: ' + IntToStr(iAchar[0]) + #13 + #10 + 'Data........: '
           + Achar[1] + #13 + #10 + 'Cliente.....: ' + Achar[2] + #13 + #10 +
           'Valor.......: ' + Achar[3]) = False then
            Exit;
      End;
      if iAchar[0] = 0 then
      Begin
         AvisoSistema('Voc� n�o selecionou venda');
         Exit;
      End;
      FecharTabelas;
      QryVenda.ParamByName('CODIGO').AsInteger := iAchar[0];
      AbrirTabelas;
   End;

   // Opcaoes canceladas
   If OpcaoVenda = 'S' then
   Begin
      FrmFrameBotoes1.SpbCancelarClick(Sender);
      Abort;
   End;

end;

procedure TFrmNotaFiscal.ImportarPedido(nlPedido: Integer);
Var
   iconta: Integer;
begin

   AbrirTabelas;

   // ---------------------------------------------------------------
   // PEDIDO
   // ---------------------------------------------------------------
   QryPedidoVenda.Close;
   QryPedidoVenda.ParamByName('CODIGO').AsInteger := nlPedido;
   QryPedidoVenda.Open;

   QryPedidoVendaItens.Close;
   QryPedidoVendaItens.ParamByName('CODIGO').AsInteger := nlPedido;
   QryPedidoVendaItens.Open;

   inCliente := QryPedidoVenda.FieldByName('CLIENTE').AsInteger;
   if ChecarCreditoCliente(inCliente) Then
   begin
      AvisoSistema('Venda n�o autorizada!' + #13 + #10 +
        'O cliente que voc� selecionou est� com cr�dito bloqueado');
      QryVenda.Cancel;
      QryVendaItem.Cancel;
      Abort;
   end;

   FrmFrameBotoes1.SpbAdicionarClick(self);

   QryVenda.FieldByName('PEDIDO').AsInteger :=
     QryPedidoVenda.FieldByName('CODIGO').AsInteger;
   QryVenda.FieldByName('CONFERENCIA').AsInteger := 0;
   QryVenda.FieldByName('CLIENTE').AsInteger :=
     QryPedidoVenda.FieldByName('CLIENTE').AsInteger;
   QryVenda.FieldByName('CFOP').AsInteger :=
     GetCFOP(StrToIntDef(EditCliente.Text, 0));
   if QryVenda.FieldByName('CFOP').AsInteger < 1 then
      QryVenda.FieldByName('CFOP').Clear;
   QryVenda.FieldByName('VENDEDOR').AsInteger :=
     QryPedidoVenda.FieldByName('VENDEDOR').AsInteger;
   QryVenda.FieldByName('FORMAPAGTO').AsInteger :=
     QryPedidoVenda.FieldByName('FORMA_PAGTO').AsInteger;
   QryVenda.FieldByName('TRANSPORTADORA').AsInteger :=
     QryPedidoVenda.FieldByName('TRANSPORTADORA').AsInteger;

   QryVenda.FieldByName('FRETE_QUANTIDADE').AsInteger := 0;
   QryVenda.FieldByName('FRETE_ESPECIE').AsString := '';
   QryVenda.FieldByName('FRETE_MARCA').AsString := '';
   QryVenda.FieldByName('OBS1').AsString := '';
   // qryVenda.FieldByName('DESCONTO').AsFloat := QryPedidoVenda.FieldByName('DESCONTO').AsFloat;

   nTotalNFReal := QryPedidoVenda.FieldByName('VLR_TOTAL').AsFloat;

   if QryVenda.FieldByName('OBS1').AsString = '' then
      QryVenda.FieldByName('OBS1').AsString := '.';

   If (QryVenda.state in [dsEdit, dsInsert]) then
   Begin
      QryVenda.Post;
   End;
   iAchar[0] := QryVenda.FieldByName('CODIGO').AsInteger;

   QryVenda.Close;
   QryVendaItem.Close;
   QryVenda.ParamByName('CODIGO').AsInteger := iAchar[0];

   QryVenda.Open;
   QryVendaItem.Open;

   While not QryPedidoVendaItens.eof do
   begin

      nValorInteiro := 0;
      nValorParcial := 0;
      nValorDesconto := 0;
      FCodProduto := QryPedidoVendaItens.FieldByName('REFERENCIA').AsString;

      QryVendaItem.Append;
      QryVendaItem.FieldByName('PRODUTO').AsString :=
        QryPedidoVendaItens.FieldByName('REFERENCIA').AsString;
      QryVendaItem.FieldByName('DESCRICAO').AsString :=
        QryPedidoVendaItens.FieldByName('DESCRICAO').AsString;
      QryVendaItem.FieldByName('NCM').AsString :=
        GetProdutoCampo(IntToStr(GetCodigoProduto()), 'IDNCM');
      QryVendaItem.FieldByName('QUANTIDADE').AsFloat :=
        QryPedidoVendaItens.FieldByName('QUANTIDADE').AsFloat;
      nValorInteiro := QryPedidoVendaItens.FieldByName('VALOR_UNIT').AsFloat;
      QryVendaItem.FieldByName('VLR_UNIT').AsFloat := nValorInteiro;
      inCliente := QryVenda.FieldByName('CLIENTE').AsInteger;
      FCodProduto := QryPedidoVendaItens.FieldByName('REFERENCIA').AsString;
      inCFOP := QryVenda.FieldByName('CFOP').AsInteger;
      SetDadosProduto();
      QryVendaItem.Post;
      inc(iconta);
      QryPedidoVendaItens.next;
      Update;
   end;

   db_Parametros.Refresh;
   QryVenda.Edit;
   QryVenda.FieldByName('OBS1').AsString :=
     UpperCase(GetCFOPDetalhe(QryVenda.FieldByName('CFOP').AsInteger));
   QryVenda.FieldByName('OBS1').AsString :=
     UpperCase(SubstituirCampoTexto(QryVenda.FieldByName('OBS1').AsString,
     '%VSIMPLES%', FormatFloat('###,##0.00',
     QryVenda.FieldByName('SIMPLESNACIONAL_VALOR').AsFloat)));

end;

procedure TFrmNotaFiscal.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   Validar;
   if QryVenda.IsEmpty then
      Exit;
   FrmFrameBotoes1.DesativaEdicao;
   if (QryVenda.state in [dsEdit, dsInsert]) = False then
      Exit;
   FrmFrameBotoes1.SpbSalvarClick(Sender);
   if (QryVendaItem.state in [dsEdit, dsInsert]) then
      QryVendaItem.Post;
   QryVenda.Refresh;
end;

procedure TFrmNotaFiscal.ChecaCFOPUFCliente;
begin
   FClienteMesmaUF := GetChecarMesmaUF(StrToIntDef(EditCliente.Text, 0));
end;

procedure TFrmNotaFiscal.gbxProdutoEnter(Sender: TObject);
begin
   Validar();
   if (QryVenda.state in [dsInsert, dsEdit]) = False then
      Exit;

   ChecaCFOPUFCliente();
   if QryVenda.FieldByName('CFOP').AsInteger < 1 then
      QryVenda.FieldByName('CFOP').AsInteger :=
        GetCFOP(StrToIntDef(EditCliente.Text, 0));
   if QryVenda.FieldByName('CFOP').AsInteger < 1 then
      QryVenda.FieldByName('CFOP').Clear;

end;

procedure TFrmNotaFiscal.GroupBox1Exit(Sender: TObject);
begin
   FrmFrameBotoes1SpbSalvarClick(Sender);
end;

procedure TFrmNotaFiscal.GroupBox2Exit(Sender: TObject);
begin
   FrmFrameBotoes1SpbSalvarClick(Sender);
end;

procedure TFrmNotaFiscal.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   if QryVenda.IsEmpty then
      Exit;
   // -------------------------------------------------------------------------
   // ------        perguntar                                             -----
   // -------------------------------------------------------------------------
   if not FProgramador then
      If QryVenda.FieldByName('STATUS').AsString = 'S' then
      Begin
         Informar('Venda j� foi concluida. N�o � permitido alterar.');
         Exit;
      end;

   FrmFrameBotoes1.SpbEditarClick(Sender);
   QryVendaItem.Edit;

end;

procedure TFrmNotaFiscal.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   QryVendaItem.Cancel;

end;

procedure TFrmNotaFiscal.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
var
   mIDVenda: Integer;
begin
   if QryVenda.IsEmpty then
      Exit;

   mIDVenda := QryVenda.FieldByName('CODIGO').AsInteger;

   if mIDVenda < 1 then
      Exit;

   if not FProgramador then
      If QryVenda.FieldByName('STATUS').AsString = 'C' then
      Begin
         Informar('Venda j� foi Cancelada. ');
         Exit;
      end;

   if not FProgramador then
      if (QryVenda.FieldByName('NOTAFISCAL').AsInteger > 0) and
        (QryVenda.FieldByName('STATUS').AsString = 'S') then
      Begin
         AvisoSistemaErro('Venda j� foi faturada. N�o � permitido excluir.' +
           sLineBreak + sLineBreak + 'Voc� poder� somente cancelar a NF-e.');
         Exit;
      End;

   if not FProgramador then
      If (QryVenda.FieldByName('NFE_TRANSMITIDO').AsString = 'SIM') then
      begin
         AvisoSistema
           ('Esta Nota Fiscal Eletr�nica j� foi enviada para a SEFAZ. ' +
           sLineBreak + sLineBreak +
           'N�o � permitido excluir. Somente "Cancelar".');
         Exit;
      end;

   // -------------------------------------------------------------------------
   // ------                                                              -----
   // -------------------------------------------------------------------------
   if pergunta('Tem certeza que deseja excluir este registro?') = False then
      Exit;

   try
      SPNFE_PROCESSAR.ParamByName('NEMPRESA').AsInteger := FSistema.Empresa;
      SPNFE_PROCESSAR.ParamByName('NVENDA').AsInteger := mIDVenda;
      SPNFE_PROCESSAR.ParamByName('ACAO').AsString := 'CANCELARTUDO';
      SPNFE_PROCESSAR.ExecProc;

      SQLExcluirVenda(mIDVenda);

      // -------------------------------------------------------------------------
      // ------                                                              -----
      // -------------------------------------------------------------------------

   finally
      FecharTabelas;
      AbrirTabelas;
   end;

end;

procedure TFrmNotaFiscal.FrmFrameBotoes1SpbExtraClick(Sender: TObject);
begin
   GerarFaturas();
end;

procedure TFrmNotaFiscal.GerarFaturas;
var
   mModalResultOk: Boolean;
begin
   if QryVenda.IsEmpty then
      Exit;
   FrmFrameBotoes1.SpbSalvar.Click;

   try
      FrmGeraParcelaNFe := TFrmGeraParcelaNFe.create(nil);
      FrmGeraParcelaNFe.FIDVenda := QryVenda.FieldByName('CODIGO').AsInteger;
      FrmGeraParcelaNFe.FINotaFiscal := QryVenda.FieldByName('NOTAFISCAL')
        .AsInteger;
      FrmGeraParcelaNFe.FValorReceber :=
        QryVenda.FieldByName('TOTAL_NF').AsFloat;
      mModalResultOk := FrmGeraParcelaNFe.Showmodal = mrOk;
   finally
      FrmGeraParcelaNFe.Free;
   end;
end;

procedure TFrmNotaFiscal.cxGrid1Enter(Sender: TObject);
begin
   Validar();
end;

procedure TFrmNotaFiscal.cxGridColProdutoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   prcProcurarProduto;
end;

procedure TFrmNotaFiscal.cxGridColQTDPropertiesEditValueChanged
  (Sender: TObject);
begin
   // Calcular_VendaItens();
end;

procedure TFrmNotaFiscal.cxGridColVlUnitPropertiesEditValueChanged
  (Sender: TObject);
begin
   // Calcular_VendaItens();
end;

function TFrmNotaFiscal.GetCodigoProduto(): Integer;
begin
   Result := 0;
   Result := QryVendaItem.FieldByName('IDPRODUTO').AsInteger;
   if Result <= 0 then
      Result := GetIDProduto(QryVendaItem.FieldByName('PRODUTO').AsString);
end;

procedure TFrmNotaFiscal.cxGridProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_F8 Then
   begin
      prcProcurarProduto;
   end;
end;

procedure TFrmNotaFiscal.db_ParametrosBeforeOpen(DataSet: TDataSet);
begin
   db_Parametros.ParamByName('EMPRESA').Clear;
   db_Parametros.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TFrmNotaFiscal.dsVendaStateChange(Sender: TObject);
begin
   if (FrmFrameBotoes1.DataSource.state in [dsInsert, dsEdit]) then
      FrmFrameBotoes1.AtivaEdicao
   else
      FrmFrameBotoes1.DesativaEdicao;
end;

procedure TFrmNotaFiscal.GravarStatusNFe;
begin
   try
      QryVenda.Edit;
      QryVenda.FieldByName('NFE_ARQUIVO').AsString :=
        BaseDados.ACBrNFe1.NotasFiscais[0].NomeArq;
      QryVenda.FieldByName('NFE_CHAVEACESSO').AsString :=
        BaseDados.ACBrNFe1.NotasFiscais[0].NFE.procNFe.chNFe;
      QryVenda.FieldByName('NFE_VALIDADO').AsString := 'SIM';
      QryVenda.FieldByName('NFE_RECIBO').AsString :=
        BaseDados.ACBrNFe1.NotasFiscais[0].NFE.procNFe.nProt;
      QryVenda.FieldByName('NFE_SITUACAOSEFAZ').AsString :=
        BaseDados.ACBrNFe1.NotasFiscais[0].NFE.procNFe.xMotivo;
      QryVenda.FieldByName('NFE_SITUACAOCODIGO').AsInteger :=
        BaseDados.ACBrNFe1.NotasFiscais[0].NFE.procNFe.cStat;
      QryVenda.FieldByName('NFE_CERTIFICADO').AsString :=
        BaseDados.ACBrNFe1.Configuracoes.Certificados.NumeroSerie;
      QryVenda.FieldByName('NFE_ASSINADO').AsString := 'SIM';
      QryVenda.FieldByName('NFE_TRANSMITIDO').AsString := 'NAO';

      if BaseDados.ACBrNFe1.NotasFiscais[0].Confirmada then
         QryVenda.FieldByName('NFE_TRANSMITIDO').AsString := 'SIM';

      QryVenda.Post;
   finally
      QryVenda.Refresh;
   end;
end;

procedure TFrmNotaFiscal.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
begin
   if QryVenda.IsEmpty then
      Exit;
   NFeGerarEnviar();
end;

procedure TFrmNotaFiscal.NFeGerarEnviar;
var
   StatusNFCe: Integer;
   MsgMotivo: String;
   ErrosRegrasNegocios: String;
   mLote: String;
begin
   StatusNFCe := 0;
   if QryVenda.IsEmpty then
   begin
      AvisoSistema('Selecione uma NFe para enviar a SEFAZ.');
      FrmFrameBotoes1.SpbProcurar.Click;
      Exit;
   end;
   If (QryVenda.state in [dsEdit, dsInsert]) then
      QryVenda.Post;

   inVenda := 0;
   inVenda := QryVenda.FieldByName('CODIGO').AsInteger;

   FinalizarNotaFiscal;
   GerarNumeroNotaFiscal(inVenda);
   FrmFrameBotoes1.SpbSalvar.Click;
   // -------------------------------------------------------------------------
   //
   // -------------------------------------------------------------------------
   if QryVenda.FieldByName('FORMAPAGTO').AsInteger > 0 then
   begin
      try
         GetFaturaNFe(QryFaturas, FSistema.Empresa,
           QryVenda.FieldByName('CODIGO').AsInteger);
         if QryFaturas.RecordCount < 1 then
         begin
            Informar('Por favor, gere as parcelas do faturamento (F7 - Faturas).');
            Exit;
         end;
      finally
         QryFaturas.Close;
      end;
   end;
   FecharTabelas;
   QryVenda.ParamByName('CODIGO').AsInteger := inVenda;
   AbrirTabelas;
   // -----------------------------------------------------------------------------
   //
   // -----------------------------------------------------------------------------
   try
      BaseDados.GerarNFe(QryVenda.FieldByName('NOTAFISCAL').AsInteger);
      // -----------------------------------------------------------------------------
      // Checar estrutura NF-e
      // -----------------------------------------------------------------------------
      BaseDados.ACBrNFe1.NotasFiscais.Assinar;
      BaseDados.ACBrNFe1.NotasFiscais.Validar;

      // verificar se n�o existem erros de regras de neg�cio conforme o manual da NF-e
      if not BaseDados.ACBrNFe1.NotasFiscais.ValidarRegrasdeNegocios
        (ErrosRegrasNegocios) then
      begin
         Erro(ErrosRegrasNegocios);
         Abort;
      end;

      if BaseDados.ACBrNFe1.NotasFiscais.Items[0].NFE.Ide.tpEmis = teContingencia
      then
      begin
         // mudar para offline o XML se ainda n�o for e gerar novamente o XML
         if BaseDados.ACBrNFe1.NotasFiscais[0].NFE.Ide.tpEmis <> teContingencia
         then
         begin
            BaseDados.ACBrNFe1.NotasFiscais[0].NFE.Ide.tpEmis := teContingencia;
            BaseDados.ACBrNFe1.NotasFiscais[0].NFE.Ide.dhCont := Now;
            BaseDados.ACBrNFe1.NotasFiscais[0].NFE.Ide.xJust :=
              'ERRO ACESSO WEBSERVICE';
            BaseDados.ACBrNFe1.NotasFiscais.GerarNFe;
         end;
         // GravarStatusNFe();
      end
      else
      begin
         mLote := GerarLoteNFe();
         // if BaseDados.ACBrNFe1.Enviar(mLote, False, True) then
         if BaseDados.ACBrNFe1.Enviar(mLote, False, False) then
         begin
            StatusNFCe := BaseDados.ACBrNFe1.WebServices.Enviar.cStat;
            MsgMotivo := BaseDados.ACBrNFe1.WebServices.Enviar.xMotivo;

            // nota duplicada, via correta � o retorno de status
            if StatusNFCe = 204 then
            begin
               BaseDados.ACBrNFe1.Consultar;
               StatusNFCe := BaseDados.ACBrNFe1.WebServices.Consulta.cStat;
               MsgMotivo := BaseDados.ACBrNFe1.WebServices.Consulta.xMotivo;
            end;
            if ContemNumero(StatusNFCe, [100, 110, 150, 301, 302, 105, 104]) = False
            then
            begin
               Atencao(Format('%d - %s',
                 [BaseDados.ACBrNFe1.WebServices.Enviar.cStat,
                 BaseDados.ACBrNFe1.WebServices.Enviar.xMotivo]));
            end;
            BaseDados.ACBrNFe1.NotasFiscais.Imprimir;
            EnviarEmailNF(QryVenda.FieldByName('CODIGO').AsInteger,
              BaseDados.ACBrNFe1);
         end;
      end;
      Sleep(500); // meio segundo
      mLogRegistro :=
        'Transmitiu para o servidor da SEFAZ a Nota Fiscal Eletr�nica ' +
        QryVenda.FieldByName('NOTAFISCAL').AsString;
      FUsuario.LogUsuario('Processamento de Nota Fiscal Eletr�nica',
        mLogRegistro);
   finally
      BaseDados.ACBrNFe1.NotasFiscais.GravarXML();
      GravarStatusNFe();
      MsgEsperar('', '', False);
   end;
end;

procedure TFrmNotaFiscal.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   dbProcurarNFe.SearchQuery.Clear;
   dbProcurarNFe.SearchQuery.Add('SELECT * FROM VIEW_NOTAFISCAL');
   dbProcurarNFe.SearchQuery.Add('WHERE');
   dbProcurarNFe.SearchQuery.Add('EMPRESA=' + IntToStr(FSistema.Empresa));
   dbProcurarNFe.SearchQuery.Add('AND');
   dbProcurarNFe.SearchQuery.Add('TIPONF=' + QuotedStr('NFE'));
   dbProcurarNFe.SearchQuery.Add('AND');
   dbProcurarNFe.SearchQuery.Add('%WHERE%');
   dbProcurarNFe.SearchQuery.Add('ORDER BY EMISSAO DESC');
   dbProcurarNFe.SearchQuery.Add('');

   if dbProcurarNFe.Execute then
   begin
      FecharTabelas;
      QryVenda.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
      QryVenda.ParamByName('CODIGO').AsInteger :=
        dbProcurarNFe.ResultFieldAsInteger('CODIGO');
      AbrirTabelas;
   end;
end;

procedure TFrmNotaFiscal.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmNotaFiscal.AbrirTabelas;
begin
   QryVenda.Open;
   QryVendaItem.Open;
end;

procedure TFrmNotaFiscal.Validar;
begin
   if (StrToIntDef(EditCFOP.Text, 0) = 0) then
   begin
      Atencao('Informe o campo CFOP');
      EditCFOP.SetFocus;
      Abort;
   end;

   if (StrToIntDef(EditCliente.Text, 0) = 0) then
   begin
      Atencao('Informe o campo Cliente');
      EditCliente.SetFocus;
      Abort;
   end;
   if (QryVenda.state in [dsEdit, dsInsert]) then
      QryVenda.Post;

end;

procedure TFrmNotaFiscal.FecharTabelas;
begin
   QryVenda.Close;
   QryVendaItem.Close;
   db_Parametros.Close;
end;

procedure TFrmNotaFiscal.FinalizarNotaFiscal;
begin

   // se nao houver numero de nota fiscal, ent�o gere.
   inVenda := QryVenda.FieldByName('CODIGO').AsInteger;

   If QryVenda.FieldByName('STATUS').AsString = 'S' then
      Exit;
   if pergunta('Finalizar Nota Fiscal e baixar estoque?') = False then
   begin
      AvisoSistema
        ('Voc� cancelou a opera��o. Para processeguir � necess�rio finalizar a nota fiscal.');
      Abort;
   end;

   GerarNumeroNotaFiscal(inVenda);

   QryVenda.Close;
   QryVenda.ParamByName('CODIGO').AsInteger := inVenda;
   QryVenda.Open;

   SPNFE_PROCESSAR.ParamByName('NEMPRESA').AsInteger := FSistema.Empresa;
   SPNFE_PROCESSAR.ParamByName('NVENDA').AsInteger := inVenda;
   SPNFE_PROCESSAR.ParamByName('ACAO').AsString := 'FECHAR';
   SPNFE_PROCESSAR.ExecProc;

   QryVenda.Close;
   QryVenda.ParamByName('CODIGO').AsInteger := inVenda;
   QryVenda.Open;

end;

procedure TFrmNotaFiscal.SetBaseCalculo;
var
   mIDProduto: Integer;
   mBaseCalculo: Currency;
begin
   mBaseCalculo := 0;

   mIDProduto := QryVendaItem.FieldByName('IDPRODUTO').AsInteger;

   QryVendaItem.DisableControls;
   QryVendaItem.First;
   try
      while not QryVendaItem.eof do
      begin
         // Se houver valor de ICMS,  somar.
         if QryVendaItem.FieldByName('VLR_ICMS').AsFloat > 0 then
         begin
            mBaseCalculo := mBaseCalculo + QryVendaItem.FieldByName
              ('VLR_TOTAL').AsFloat;
         end;
         QryVendaItem.next;
      end;
   finally
      QryVendaItem.First;
      QryVendaItem.Locate('IDPRODUTO', mIDProduto, []);
      QryVendaItem.EnableControls;
   end;

   QrySomaProduto.Close;
   QrySomaProduto.ParamByName('IDVENDA').AsInteger :=
     QryVenda.FieldByName('CODIGO').AsInteger;
   QrySomaProduto.Open();
   try
      QryVenda.FieldByName('VLR_DESCONTO').AsFloat :=
        QrySomaProduto.FieldByName('TOT_VDESC').AsFloat;
      QryVenda.FieldByName('QTDE_PRODUTOS').AsFloat :=
        QrySomaProduto.FieldByName('TOT_QTDE').AsFloat;
      QryVenda.FieldByName('VALOR_PRODUTOS').AsFloat :=
        QrySomaProduto.FieldByName('TOT_VTOTAL').AsFloat;
      QryVenda.FieldByName('ICMS_VALOR').AsFloat :=
        QrySomaProduto.FieldByName('TOT_VICMS').AsFloat;

      QryVenda.FieldByName('ICMS_BASECALCULO').AsFloat := mBaseCalculo;

      if mBaseCalculo > 0 then
      begin
         QryVenda.FieldByName('ICMS_BASECALCULO').AsFloat :=
           QryVenda.FieldByName('ICMS_BASECALCULO').AsFloat +
           QryVenda.FieldByName('VLR_FRETE').AsFloat +
           QryVenda.FieldByName('VLR_DESPESAS_ASSESSORIAS').AsFloat;
      end;

      QryVenda.FieldByName('TOTAL_NF').AsFloat :=
        (QryVenda.FieldByName('VALOR_PRODUTOS').AsFloat +
        QryVenda.FieldByName('ICMS_BASECALCULO_SUBSTITUICAO_V').AsFloat +
        QryVenda.FieldByName('VLR_FRETE').AsFloat + QryVenda.FieldByName
        ('VLR_SEGURO').AsFloat + QryVenda.FieldByName('IPI_VALOR').AsFloat +
        QryVenda.FieldByName('VLR_DESPESAS_ASSESSORIAS').AsFloat);
   finally
      QrySomaProduto.Close;
   end;
end;

procedure TFrmNotaFiscal.CalcularDesconto;
var
   mVQtde: Currency;
   mVUnit: Currency;
   mVUnitDesc: Currency;
   mPDesconto: Currency;
   mVDesconto: Currency;
Begin
   mVQtde := 0;
   mVUnit := 0;
   mVUnitDesc := 0;
   mPDesconto := 0;
   mVDesconto := 0;

   if QryVendaItem.FieldByName('QUANTIDADE').AsFloat <= 0 then
      QryVendaItem.FieldByName('QUANTIDADE').AsFloat := 1;

   mVQtde := RoundABNT(QryVendaItem.FieldByName('QUANTIDADE').AsFloat, 4);
   mVUnit := RoundABNT(QryVendaItem.FieldByName('VLR_UNIT').AsFloat, 2);
   mPDesconto := RoundABNT(QryVendaItem.FieldByName('DESCONTO').AsFloat, 2);

   mVDesconto := RoundABNT(GetValorPercentual(mVUnit, mPDesconto), 2);
   mVUnitDesc := RoundABNT((mVUnit - mVDesconto), 2);

   QryVendaItem.FieldByName('VLR_DESCONTO').AsFloat :=
     RoundABNT((mVDesconto * mVQtde), 2);
   QryVendaItem.FieldByName('VLR_TOTAL').AsFloat :=
     RoundABNT((mVUnitDesc * mVQtde), 2);
   mPDesconto := 0;

End;

procedure TFrmNotaFiscal.CalcularImposto;
var
   pICMS: Currency;
   vICMS: Currency;
   vICMSProd: Currency;
   mVQtde: Currency;
   mVUnit: Currency;
   mVUnitDesc: Currency;
   mValorDesc: Currency;

Begin
   mVQtde := 0;
   mVUnit := 0;
   mVUnitDesc := 0;
   pICMS := 0;
   vICMS := 0;
   vICMSProd := 0;
   mValorDesc := 0;

   mVQtde := RoundABNT(QryVendaItem.FieldByName('QUANTIDADE').AsFloat, 4);
   mValorDesc := RoundABNT((QryVendaItem.FieldByName('VLR_DESCONTO').AsFloat /
     mVQtde), 4);
   mVUnit := RoundABNT(QryVendaItem.FieldByName('VLR_UNIT').AsFloat, 4);
   vICMSProd := RoundABNT(mVUnit - mValorDesc, 4);
   pICMS := RoundABNT(QryVendaItem.FieldByName('ICMS').AsFloat, 4);
   vICMS := RoundABNT(GetValorPercentual(vICMSProd, pICMS), 4);

   QryVendaItem.FieldByName('VLR_ICMS').AsFloat :=
     RoundABNT((vICMS * mVQtde), 3);
   vICMS := 0;

End;

Function TFrmNotaFiscal.GerarNumeroNotaFiscal(nVenda: Integer): Integer;
begin
   /// ////////////////////////////////////////////////////////////////////
   /// Checar se ja possui numero de nota fiscal. Nao possui, gerar.
   /// ////////////////////////////////////////////////////////////////////
   QryVenda.Close;
   QryVenda.ParamByName('CODIGO').AsInteger := nVenda;
   QryVenda.Open;
   Result := GerarNumeroNFe(nVenda);
end;

function TFrmNotaFiscal.GerarNumeroNFe(nVenda: Integer): Integer;
begin
   BaseDados.SetCertificados();
   if (QryVenda.FieldByName('NOTAFISCAL').AsInteger > 0) Then
      Exit;
   /// continuar e gerar o proximo numero de nota fiscal.

   if not db_Parametros.active then
      db_Parametros.Open;

   db_Parametros.Refresh;
   db_Parametros.Edit;
   db_Parametros.FieldByName('NFE_SEQUENCIA').AsInteger :=
     db_Parametros.FieldByName('NFE_SEQUENCIA').AsInteger + 1;
   db_Parametros.Post;
   db_Parametros.Refresh;

   QryVenda.Edit;
   QryVenda.FieldByName('NOTAFISCAL').AsInteger :=
     db_Parametros.FieldByName('NFE_SEQUENCIA').AsInteger;

   // Atualizar data e hora.
   QryVenda.FieldByName('EMISSAO').AsDateTime := Date;
   QryVenda.FieldByName('DATA_ENTRADASAIDA').AsDateTime := Date;
   QryVenda.FieldByName('HORA').AsDateTime := Time;
   QryVenda.Post;
   QryVenda.Refresh;
   Result := db_Parametros.FieldByName('NFE_SEQUENCIA').AsInteger;
   prcRegistrarUltimaVenda(QryVenda.FieldByName('CLIENTE').AsInteger, 'NFE');
end;

end.
