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

unit FManutencaoNFe;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, System.StrUtils,
   ACBrNFeDANFEClass, ACBrNFe, pcnConversao, DB,
   FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCurrencyEdit,
  ACBrNFeDANFEFR,
   dxDateRanges, ACBrBase, ACBrDFeReport,
  ACBrDFeDANFeReport, ACBrDANFCeFortesFr,
  pcnConversaoNFe, dxSkinsCore, dxSkinsDefaultPainters, ACBrDANFCeFortesFrA4,
  cxGridLevel, cxClasses,
  ACBrUtil;

type

   TFrmManutencaoNFe = class(TForm)
      Panel1: TPanel;
      Panel2: TPanel;
      BtnSair: TBitBtn;
    BtnDANFE: TBitBtn;
    btnReimprimir: TBitBtn;
    BtnSituacaoSEFAZ: TBitBtn;
    BtnCancelarNFe: TBitBtn;
    QryNFe: TFDQuery;
    dsNFe: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxColunaData: TcxGridDBColumn;
    cxColunaDocumento: TcxGridDBColumn;
    cxColunaModelo: TcxGridDBColumn;
    cxColunaValor: TcxGridDBColumn;
    cxColunaSituacao: TcxGridDBColumn;
    cxColunaChaveNF: TcxGridDBColumn;
    cxColunaQTDE: TcxGridDBColumn;
    cxColunaTipo: TcxGridDBColumn;
    cxColunaEnviado: TcxGridDBColumn;
    btnReenviar: TBitBtn;
    pnTitulo: TPanel;
    Shape2: TShape;
    lblTitulo: TLabel;
    btnSATStatus: TBitBtn;
    QryVendaItem: TFDQuery;
      procedure BtnSairClick(Sender: TObject);
      procedure BtnDANFEClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure QryNFeAfterPost(DataSet: TDataSet);
      procedure BtnCancelarNFeClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnReenviarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnReimprimirClick(Sender: TObject);
    procedure btnSATStatusClick(Sender: TObject);
    procedure BtnSituacaoSEFAZClick(Sender: TObject);
   private
      { Private declarations }
      mLogRegistro : String;
      procedure FecharTabelas;
      procedure AbrirTabelas;
      procedure ChecaArquivoXML;
      procedure InformacoesGerais(aTipo: String);

      function CancelarNFCe(): Boolean;
      function CancelarSAT(): Boolean;
      function CancelarPDV(): Boolean;

      procedure ReenviarNFCe();

      procedure ReimprimirNFCe();
      procedure ReimprimirPDV();
      procedure ReimprimirSAT();

      procedure DanfeNFCe();
      procedure DanfeSAT();
    procedure GravarDadosNF;


   public
      { Public declarations }
      FTipoNF : String;
      FIDOperador : Integer;
      FIDTerminal : Integer;
   end;
var
   FrmManutencaoNFe: TFrmManutencaoNFe;

implementation

uses FPrincipal, AppSQL,   AppFuncoes, FInformacaoNF, FPDVPrint,
  FNotaFiscalCancelar, FOutrasFuncoes, AppConstantes;

{$R *.dfm}



procedure TFrmManutencaoNFe.FormCreate(Sender: TObject);
begin
  FTipoNF := '';
  FIDOperador := 0;
  FIDTerminal := 0;
  QryNFe.Close;

  //--------------------------------------------------------------------------------
  // Se for NFC-e ou SAT, os botões abaixo ficarão visiveis. Natureza fiscal
  // Se for venda não fiscal, os botões ficarão invisiveis. Natureza não fiscal.
  //--------------------------------------------------------------------------------
  BtnSituacaoSEFAZ.Visible := FrmPrincipal.FTipoVendaFiscal;
  BtnDANFE.Visible := FrmPrincipal.FTipoVendaFiscal;
  //BtnCancelarNFe.Visible := FrmPrincipal.FTipoVendaFiscal;
  BtnSituacaoSEFAZ.Visible := FrmPrincipal.FTipoVendaFiscal;
  btnReenviar.Visible := FrmPrincipal.FTipoVendaFiscal;
  btnSATStatus.Visible := FrmPrincipal.FTipoVendaFiscal;
  //--------------------------------------------------------------------------------
  // Titulo da Janela pelo tipo de documento
  //--------------------------------------------------------------------------------
  if FrmPrincipal.FNaturezaFiscal = 'NFCE' then
  begin
    if FrmPrincipal.FTipoVendaFiscal then
    begin
      lblTitulo.Caption := 'Vendas Emitidas (NFC-e)'
    end;
  end;
  if FrmPrincipal.FNaturezaFiscal = 'SAT' then
  begin
    if FrmPrincipal.FTipoVendaFiscal then
    begin
      lblTitulo.Caption := 'Vendas Emitidas (SAT)';
    end;
  end;
  if FrmPrincipal.FTipoVendaFiscal = false then
  begin
    lblTitulo.Caption := 'Vendas Emitidas (PDV)';
    cxColunaDocumento.Caption := 'Venda';
    cxColunaDocumento.DataBinding.FieldName := 'CODIGO';
    cxColunaModelo.Visible := False;
    cxColunaEnviado.Visible := False;
    cxColunaChaveNF.Visible := False;
    //cxColunaSituacao.Visible := False;
  end;
  //--------------------------------------------------------------------------------
  //
  //--------------------------------------------------------------------------------

end;

procedure TFrmManutencaoNFe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QryNFe.Close;
  Action := CaFree;
end;

procedure TFrmManutencaoNFe.FormDestroy(Sender: TObject);
begin
  FrmManutencaoNFe := Nil;
end;

procedure TFrmManutencaoNFe.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TFrmManutencaoNFe.FormShow(Sender: TObject);
var
  _mSQL_  : String;
  _mTIPO_ : String;
begin
  FTipoNF := FrmPrincipal.FNaturezaFiscal;
  if FrmPrincipal.FTipoVendaFiscal = False then
    FTipoNF := 'PDV';
  if FTipoNF = 'PDV' then
    _mTIPO_ := 'TIPONF='+QuotedStr(FTipoNF)
  else
    _mTIPO_ := 'TIPONF IN ('+QuotedStr('NFCE')+','+QuotedStr('SAT')+')' ;

  _mSQL_ :='SELECT * FROM VENDAS '+
         'WHERE '+
         _mTIPO_+
         'AND TERMINAL=:IDTERMINAL '+
         'AND OPERADOR=:IDOPERADOR '+
         'ORDER BY CODIGO DESC, EMISSAO DESC, NOTAFISCAL DESC ';

  FIDOperador := FConfiguracao.Operador;
  FIDTerminal := FConfiguracao.TerminalPDV;

  FrmPrincipal.NFCePreparaImpressora();
  FrmPrincipal.SetCertificado();

  SetCertificadoDigital(FrmPrincipal.ACBrNFe1,FConfiguracao.NFESSLTipo);
  SetCertificadoSeguranca(FrmPrincipal.ACBrNFe1,FConfiguracao.NFETSL_TIPO);
  QryNFe.Close;
  QryNFe.SQL.Clear;
  QryNFe.SQL.Add(_mSQL_);
  QryNFe.ParamByName('IDTERMINAL').AsInteger := FIDTerminal;
  QryNFe.ParamByName('IDOPERADOR').AsInteger := FIDOperador;
  QryNFe.Open;
end;

procedure TFrmManutencaoNFe.AbrirTabelas;
begin
   QryNFe.Open;
end;

procedure TFrmManutencaoNFe.ChecaArquivoXML;
var
  mArquivo : String;
begin
  mArquivo := QryNFe.FieldByName('NFE_ARQUIVO').AsString;
  if (FileExists(Trim(mArquivo)) = False) or (mArquivo.Trim.IsEmpty) then
  begin
    Informar('Arquivo XML não foi encontrado.'+sLineBreak+mArquivo,'Documento Fiscal',True);
    abort;
  end;
end;

procedure TFrmManutencaoNFe.DanfeNFCe;
var
 mDANFE : TACBrDFeDANFeReport;
begin
  mDANFE :=FrmPrincipal.ACBrNFe1.DANFE;
  FrmPrincipal.ACBrNFe1.DANFE := FrmPrincipal.ACBrNFeDANFCeFortes1;
  try
    FrmPrincipal.ACBrNFe1.NotasFiscais.Clear;
    try
      FrmPrincipal.ACBrNFe1.NotasFiscais.LoadFromFile(Trim(QryNFe.FieldByName('NFE_ARQUIVO').AsString));
      FrmPrincipal.ACBrNFe1.NotasFiscais.Imprimir;
      QryNFe.Edit;
      QryNFe.FieldByName('NFE_DANFEIMPRESSA').AsString := 'SIM';
      QryNFe.Post;
      QryNFe.Refresh;
    finally
      FrmPrincipal.ACBrNFe1.NotasFiscais.Clear;
    end;
  finally
    FrmPrincipal.ACBrNFe1.DANFE := mDANFE;
  end;
end;

procedure TFrmManutencaoNFe.DanfeSAT;
begin
  if pergunta('Reimprimir SAT?') =  False then
    exit;
  FrmPrincipal.ACBrSAT1.CFe.Clear;
  try
    If (QryNFe.FieldByName('OPERACAO').AsString ='C') then
    begin
      FrmPrincipal.ACBrSAT1.CFe.LoadFromFile(Trim(QryNFe.FieldByName('NFE_ARQUIVO').AsString));
      FrmPrincipal.ACBrSAT1.ImprimirExtratoCancelamento;
    end
    else
    begin
      FrmPrincipal.ACBrSAT1.CFe.LoadFromFile(Trim(QryNFe.FieldByName('NFE_ARQUIVO').AsString));
      FrmPrincipal.ACBrPosPrinter1.ConfigLogo.IgnorarLogo := True;
      FrmPrincipal.ACBrSAT1.ImprimirExtrato;
    end;
    QryNFe.Edit;
    QryNFe.FieldByName('NFE_DANFEIMPRESSA').AsString := 'SIM';
    QryNFe.Post;
    QryNFe.Refresh;
  finally
    FrmPrincipal.ACBrNFe1.NotasFiscais.Clear;
  end;
end;

procedure TFrmManutencaoNFe.BtnDANFEClick(Sender: TObject);
begin
  ChecaArquivoXML();
  if FrmPrincipal.FNaturezaFiscal = 'NFCE' then
  begin
    if FrmPrincipal.FTipoVendaFiscal then
    begin
      DanfeNFCe();
    end;
  end;
  if FrmPrincipal.FNaturezaFiscal = 'SAT' then
  begin
    DanfeSAT();
  end;
end;

procedure TFrmManutencaoNFe.btnReenviarClick(Sender: TObject);
begin
  ChecaArquivoXML();
   If (QryNFe.FieldByName('NFE_TRANSMITIDO').AsString = 'SIM') then
   begin
     Informar('Documento já foi enviado para a SEFAZ.','Documento Fiscal',True);
     Exit;
   end;
   If (QryNFe.FieldByName('OPERACAO').AsString ='C') then
   begin
     Informar('Documento fiscal já foi cancelado e não pode ser reenviado.','Documento Fiscal',True);
     Exit;
   end;
  if FrmPrincipal.FNaturezaFiscal = 'NFCE' then
  begin
    if FrmPrincipal.FTipoVendaFiscal then
    begin
      ReenviarNFCe();
    end;
  end;
end;

procedure TFrmManutencaoNFe.btnReimprimirClick(Sender: TObject);
begin
  if FrmPrincipal.FTipoVendaFiscal then
  begin
    if FrmPrincipal.FNaturezaFiscal = 'NFCE' then
      ReimprimirNFCe();
    if FrmPrincipal.FNaturezaFiscal = 'SAT' then
      ReimprimirSAT();
  end;
  if FrmPrincipal.FTipoVendaFiscal = False then
  begin
    ReimprimirPDV();
  end;
end;

function TFrmManutencaoNFe.CancelarNFCe(): Boolean;
var
  mCancelar  : Boolean;
  mIDVenda : Integer;
  mIDNF : String;
  mTIPO : String;
  mMotivo : String;
  mArqXML : String;
  DataHoraEvento: TDateTime;
  NumeroLote: Integer;
  mIDLote : Integer;
  mMsgErro : String;
begin
   Result := False;
   mIDLote := 0;
   mIDVenda := QryNFe.FieldByName('CODIGO').AsInteger;
   mIDNF := ZeroEsquerda(QryNFe.FieldByName('NOTAFISCAL').AsString,6);
   mArqXML := Trim(QryNFe.FieldByName('NFE_ARQUIVO').AsWideString);

   ChecaArquivoXML();
   If (QryNFe.FieldByName('NFE_TRANSMITIDO').AsString <> 'SIM') then
   begin
     Informar('Documento fiscal ainda não foi transmitido.','Documento Fiscal',True);
     Exit;
   end;
   If (QryNFe.FieldByName('OPERACAO').AsString = 'C') then
   begin
     Informar('Documento fiscal já foi cancelado.','Cancelamento',True);
     Exit;
   end;
   If (QryNFe.FieldByName('OPERACAO').AsString = 'N') then
   begin
     Informar('Venda ainda não foi concluída.','Cancelamento',True);
     Exit;
   end;
   try
     FrmNotaFiscalCancelar :=TFrmNotaFiscalCancelar.create(self);
     FrmNotaFiscalCancelar.FIDVenda := QryNFe.FieldByName('CODIGO').AsString;
     FrmNotaFiscalCancelar.FIDNF := QryNFe.FieldByName('NOTAFISCAL').AsString;
     FrmNotaFiscalCancelar.FTipoNF := FrmPrincipal.FNaturezaFiscal;
     mCancelar := FrmNotaFiscalCancelar.ShowModal = mrOk;
     mMotivo := Trim(FrmNotaFiscalCancelar.dbMemoJustificar.Text);
   finally
     FrmNotaFiscalCancelar.Free;
   end;
   if mCancelar = False then
     exit;
   MsgEsperar('Cancelar Venda: '+mIDNF, 'Aguarde... cancelando NFC-e.',True);
   try
     DataHoraEvento := Now;
     mIDLote := GetLoteInteger();

     FrmPrincipal.ACBrNFe1.NotasFiscais.Clear;
     FrmPrincipal.ACBrNFe1.NotasFiscais.LoadFromFile(mArqXML);

      FrmPrincipal.ACBrNFe1.EventoNFe.Evento.Clear;
      FrmPrincipal.ACBrNFe1.EventoNFe.idLote := mIDLote;

      with FrmPrincipal.ACBrNFe1.EventoNFe.Evento.Add do
      begin
        infEvento.CNPJ            := FConfiguracao.CNPJ;
        infEvento.dhEvento        := DataHoraEvento;
        infEvento.tpEvento        := teCancelamento;
        infEvento.chNFe           := FrmPrincipal.ACBrNFe1.NotasFiscais[0].NFe.procNFe.chNFe;
        infEvento.detEvento.nProt := FrmPrincipal.ACBrNFe1.NotasFiscais[0].NFe.procNFe.nProt;
        infEvento.detEvento.xJust := mMotivo;
      end;

      if FrmPrincipal.ACBrNFe1.EnviarEvento(mIDLote) then
      begin
        with FrmPrincipal.ACBrNFe1.WebServices do
        begin
          if EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat <> 135 then
          begin
            MsgEsperar('','',False);
            mMsgErro := Format('Ocorreu o seguinte erro ao cancelar NFC-e:'  + sLineBreak +
                               'Código:%d' + sLineBreak +
                               'Motivo: %s', [EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat, EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo]);
            Informar(mMsgErro,'Cancelamento',True);
            Abort;
          end;
          try
            if (QryNFe.state in [dsedit,dsinsert]) = False then
              QryNFe.Edit;
            QryNFe.FieldByName('OPERACAO').AsString  := 'C';
            QryNFe.FieldByName('NFE_SITUACAOSEFAZ').AsString  := 'CANCELADA';
            QryNFe.FieldByName('CANCELAMENTO_DATA').AsDateTime  := DataHoraEvento;
            QryNFe.FieldByName('CANCELAMENTO_MOTIVO').AsWideString  := EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;
            QryNFe.FieldByName('CANCELAMENTO_CODIGORETORNO').AsInteger := FrmPrincipal.ACBrNFe1.WebServices.Consulta.cStat;
            QryNFe.FieldByName('CANCELAMENTO_PROTOCOLO').AsWideString  := EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
            if (QryNFe.state in [dsedit,dsinsert] ) then
              QryNFe.Post;
            Result := True;
          except
            on E: Exception do
            begin
              MsgEsperar('','',False);
              Informar('Ocorreram erros ao gravar o evento no banco de dados' + sLineBreak + E.Message,'Cancelamento',True);
              Abort;
            end;
          end;
        end;
      end;
   finally
     MsgEsperar('','',False);
   end;
   InformacoesGerais('STATUSNF');
end;

function TFrmManutencaoNFe.CancelarSAT(): Boolean;
var
  mIDVenda : Integer;
  mIDNF : String;
  mMsgErro : String;
begin
  Result := False;
  if QryNFe.FieldByName('OPERACAO').AsString <> 'S' then
  begin
    Informar('Documento fiscal ainda não foi transmitido.','Documento Fiscal',True);
    Abort;
  end;
  mIDNF := ZeroEsquerda(QryNFe.FieldByName('NOTAFISCAL').AsString,6);
  mIDVenda := QryNFe.FieldByName('CODIGO').AsInteger;

   If (QryNFe.FieldByName('OPERACAO').AsString = 'C') then
   begin
     Informar('Documento fiscal já foi cancelado.','Cancelamento',True);
     Exit;
   end;
   If (QryNFe.FieldByName('OPERACAO').AsString = 'N') then
   begin
     Informar('Venda ainda não foi concluída.','Cancelamento',True);
     Exit;
   end;

  if Pergunta('Tem certeza que deseja CANCELAR?') = false then
    exit;
  // ---------------------------------------------------------------------
  // ATENÇÃO: CANCELAMENTO DA VENDA (LIMITADO A 30 MINUTOS)
  // ---------------------------------------------------------------------
  MsgEsperar('Cancelar Venda: '+mIDNF, 'Aguarde... cancelando SAT.',True);
  try
    FrmPrincipal.ACBrSAT1.CFe.Clear;
    FrmPrincipal.ACBrSAT1.CFe.LoadFromFile(Trim(QryNFe.FieldByName('NFE_ARQUIVO').AsString));
    FrmPrincipal.ACBrSAT1.CancelarUltimaVenda;

    if FrmPrincipal.ACBrSAT1.Resposta.codigoDeRetorno = 7000 then
    begin
      try
        FrmPrincipal.ACBrSAT1.ImprimirExtratoCancelamento;
      except
      end;
        if (QryNFe.state in [dsedit,dsinsert]) = False then
          QryNFe.Edit;
        QryNFe.FieldByName('OPERACAO').AsString  := 'C';
        QryNFe.FieldByName('NFE_SITUACAOSEFAZ').AsString  := 'CANCELADA';
        QryNFe.FieldByName('CANCELAMENTO_DATA').AsDateTime  := Date;
        QryNFe.FieldByName('NFE_CHAVEACESSO').AsString  := FrmPrincipal.ACBrSAT1.CFe.infCFe.ID;;
        if (QryNFe.state in [dsedit,dsinsert] ) then
          QryNFe.Post;
        Result := True;
     end
    else
    begin
      MsgEsperar('','',False);
      mMsgErro := Format('%d - %s', [FrmPrincipal.ACBrSAT1.Resposta.codigoDeErro, FrmPrincipal.ACBrSAT1.Resposta.mensagemRetorno]);
      Informar(mMsgErro,'Cancelamento',True);
      Abort;
    end;
  finally
     MsgEsperar('','',False);
  end;
end;

function TFrmManutencaoNFe.CancelarPDV(): Boolean;
var
  mCancelar  : Boolean;
  mIDVenda : Integer;
  mIDNF : String;
  mTIPO : String;
  mMotivo : String;
  mArqXML : String;
  DataHoraEvento: TDateTime;
  NumeroLote: Integer;
  mIDLote : Integer;
  mMsgErro : String;
begin
   Result := False;
   mIDLote := 0;
   mIDVenda := QryNFe.FieldByName('CODIGO').AsInteger;
   mIDNF := ZeroEsquerda(QryNFe.FieldByName('CODIGO').AsString,6);
   If (QryNFe.FieldByName('OPERACAO').AsString = 'C') then
   begin
     Informar('Venda já foi cancelada.','Cancelamento',True);
     Exit;
   end;
   If (QryNFe.FieldByName('OPERACAO').AsString = 'N') then
   begin
     Informar('Venda ainda não foi concluída.','Cancelamento',True);
     Exit;
   end;
   if Pergunta('Deseja cancelar a venda '+mIDNF+' ?',True) = false then
     exit;
   MsgEsperar('Cancelar Venda: '+mIDNF, 'Aguarde... cancelando Venda.',True);
   try
     if (QryNFe.state in [dsedit,dsinsert]) = False then
       QryNFe.Edit;
       QryNFe.FieldByName('OPERACAO').AsString  := 'C';
       QryNFe.FieldByName('NFE_SITUACAOSEFAZ').AsString  := 'CANCELADA';
       QryNFe.FieldByName('CANCELAMENTO_DATA').AsDateTime  := DataHoraEvento;
     if (QryNFe.state in [dsedit,dsinsert] ) then
       QryNFe.Post;
     Result := True;
   finally
     MsgEsperar('','',False);
   end;
end;

procedure TFrmManutencaoNFe.BtnCancelarNFeClick(Sender: TObject);
var
  mIDVenda : Integer;
  mCancelar : Boolean;
  mIDNF : String;
begin
  mCancelar := False;
  mIDVenda := QryNFe.FieldByName('CODIGO').AsInteger;
  mIDNF := ZeroEsquerda(QryNFe.FieldByName('NOTAFISCAL').AsString,6);
  if (QryNFe.FieldByName('TIPONF').AsString = 'NFCE') then
  begin
    mCancelar := CancelarNFCe();
  end;
  if (QryNFe.FieldByName('TIPONF').AsString = 'SAT') then
  begin
    mCancelar := CancelarSAT();
  end;
  if (QryNFe.FieldByName('TIPONF').AsString = 'PDV') then
  begin
    mIDNF := ZeroEsquerda(QryNFe.FieldByName('CODIGO').AsString,6);
    mCancelar := CancelarPDV();
  end;
  if mCancelar then
  begin
    SQLEstoqueAtualiza(mIDVenda,'+');
    Informar('Venda cancelada com sucesso.','Cancelamento');
  end;
end;

procedure TFrmManutencaoNFe.BtnSairClick(Sender: TObject);
begin
 Close;
end;

procedure TFrmManutencaoNFe.btnSATStatusClick(Sender: TObject);
begin
   InformacoesGerais('INFOSAT');
end;

procedure TFrmManutencaoNFe.BtnSituacaoSEFAZClick(Sender: TObject);
begin
  ChecaArquivoXML();
  InformacoesGerais('STATUSNF');
end;

procedure TFrmManutencaoNFe.InformacoesGerais(aTipo: String);
begin
  ChecaArquivoXML();
  try
    FrmInformacaoNF := TFrmInformacaoNF.create(self);
    FrmInformacaoNF.FTipo := aTipo;
    FrmInformacaoNF.Showmodal;
  finally
    FrmPrincipal.ACBrNFe1.NotasFiscais.Clear;
    FrmInformacaoNF.Free;
  end;
end;

procedure TFrmManutencaoNFe.QryNFeAfterPost(DataSet: TDataSet);
begin
   QryNFe.Refresh;
end;

procedure TFrmManutencaoNFe.FecharTabelas;
begin
   QryNFe.close;
end;

procedure TFrmManutencaoNFe.ReenviarNFCe;
Var
  StatusNFCe : Integer;
  MsgMotivo : String;
  mIDNF, mArqXML : String;
  mMensagemErro : String;
begin
  ChecaArquivoXML();
  mIDNF := ZeroEsquerda(QryNFe.FieldByName('NOTAFISCAL').AsString,6);
  mArqXML := Trim(QryNFe.FieldByName('NFE_ARQUIVO').AsWideString);
  MsgEsperar('NFC-e: '+mIDNF+' emitida em modo off-line.', 'Aguarde... reenviando NFC-e.',True);
  try
    try
      FrmPrincipal.ACBrNFe1.NotasFiscais.Clear;
      FrmPrincipal.ACBrNFe1.NotasFiscais.LoadFromFile(mArqXML);


      if FrmPrincipal.ACBrNFe1.Enviar(GetLoteString(), False, True) then
      begin
        StatusNFCe := FrmPrincipal.ACBrNFe1.WebServices.Enviar.cStat;
        MsgMotivo  := FrmPrincipal.ACBrNFe1.WebServices.Enviar.xMotivo;

        if ContemNumero(StatusNFCe, [100, 110, 150, 301, 302]) then
        begin
          GravarDadosNF();
          MFE_EnviarRespostaFiscal();
        end
        else
        begin
          MsgEsperar('','',False);
          raise Exception.CreateFmt(
            '%d - %s', [
            FrmPrincipal.ACBrNFe1.WebServices.Enviar.cStat,
            FrmPrincipal.ACBrNFe1.WebServices.Enviar.xMotivo
          ]);
        end;
      end;
    except
      on E: Exception do
      begin
        MsgEsperar('','',False);
        StatusNFCe := FrmPrincipal.ACBrNFe1.WebServices.Enviar.cStat;
        MsgMotivo  := FrmPrincipal.ACBrNFe1.WebServices.Enviar.xMotivo;

        if StatusNFCe = 204 then
        begin
          // retorno para nota duplicada, então somente consultar e atualizar o XML
          if FrmPrincipal.ACBrNFe1.Consultar then
          begin
            StatusNFCe := FrmPrincipal.ACBrNFe1.WebServices.Consulta.cStat;
            MsgMotivo  := FrmPrincipal.ACBrNFe1.WebServices.Consulta.xMotivo;
            GravarDadosNF();
          end;
        end
        else
        if StatusNFCe = 539 then
        begin
          // quando a nota está off-line mas retornou duplicidade com diferença
          // de chave de acesso, isso acontece quando demora a responder e ele
          // entende que não deu certo.
          FrmPrincipal.ACBrNFe1.NotasFiscais[0].NFe.Ide.tpEmis := teNormal;
          FrmPrincipal.ACBrNFe1.NotasFiscais.GerarNFe;

          if FrmPrincipal.ACBrNFe1.Consultar then
          begin
            StatusNFCe := FrmPrincipal.ACBrNFe1.WebServices.Consulta.cStat;
            MsgMotivo  := FrmPrincipal.ACBrNFe1.WebServices.Consulta.xMotivo;
            GravarDadosNF();
          end;
        end;
      end;
    end;
  finally
    MsgEsperar('','',False);
  end;
end;

procedure TFrmManutencaoNFe.ReimprimirPDV;
var
  mTexto       : TStringList;
  mComprovante : String;
  mLinha       : String;
  mMascara     : String;
  mIDVenda     : String;
  mIDNF        : String;
begin
  mIDVenda := ZeroEsquerda(QryNFe.FieldByName('CODIGO').AsString,6);
  mIDNF := ZeroEsquerda(QryNFe.FieldByName('NOTAFISCAL').AsString,6);
  FrmPrincipal.CupomNaoFiscal(QryNFe.FieldByName('CODIGO').AsInteger);

//  mTexto  := TStringList.Create;
//  mComprovante := 'COMPROVANTE DE VENDA: '+mIDVenda;
//
//  QryVendaItem.Close;
//  QryVendaItem.ParamByName('ID').AsInteger := QryNFe.FieldByName('CODIGO').AsInteger;
//  QryVendaItem.Open;
//  try
//    //-----------------------------------------------------------------------
//    // Preparar texto para impressao
//    //-----------------------------------------------------------------------
//    mTexto.Clear;
//    //-----------------------------------------------------------------------
//    // Cabeçalho
//    //-----------------------------------------------------------------------
//    mTexto.Add(StringOfChar('-',FConfiguracao.ColunasCondensado));
//    mTexto.Add(PadCenter(FConfiguracao.RazaoSocial,FConfiguracao.ColunasCondensado,' '));
//
//    mTexto.Add(PadCenter('CNPJ: '+FConfiguracao.CNPJ +' - IE: '+ FConfiguracao.IE,FConfiguracao.ColunasCondensado,' '));
//    mTexto.Add(PadCenter(FConfiguracao.Endereco+' - '+FConfiguracao.Bairro+' - '+FConfiguracao.Cidade+' - '+FConfiguracao.UF,FConfiguracao.ColunasCondensado,' ')     );
//    mTexto.Add(StringOfChar('-',FConfiguracao.ColunasCondensado));
//    mTexto.Add(PadCenter(mComprovante,FConfiguracao.ColunasCondensado,' '));
//    mTexto.Add(PadCenter(' Data: '+datetostr(date())+ ' - Hora: '+timetostr(time()),FConfiguracao.ColunasCondensado,' ') );
//    mTexto.Add(StringOfChar('=',FConfiguracao.ColunasCondensado));
//    //-----------------------------------------------------------------------
//    // Itens
//    //-----------------------------------------------------------------------
//    mTexto.Add(PadCenter('ITEM CODIGO        DESCRICAO        UN  QTDE   VL UNIT  VL TOTAL',FConfiguracao.ColunasCondensado,' ') );
//    mTexto.Add(StringOfChar('-',FConfiguracao.ColunasCondensado));
//    QryVendaItem.First;
//    while not QryVendaItem.Eof do
//    begin
//      mMascara := '##0';
//      if QryVendaItem.FieldByName('BALANCA').AsString='S' then
//        mMascara := '##0.##0';
//        mLinha :=  AlinhaEsquerda(FormatFloat('0000',QryVendaItem.FieldByName('ITEM').AsInteger),                 _ITEM) + ' '+
//                   AlinhaEsquerda(QryVendaItem.FieldByName('CODIGOBARRA').AsString,                        _CODIGOBARRA) + ' '+
//                   AlinhaEsquerda(QryVendaItem.FieldByName('DESCRICAO').AsString,                            _DESCRICAO) + ' '+
//                   AlinhaEsquerda(QryVendaItem.FieldByName('UND').AsString,                                        _UND) + ' '+
//                   AlinhaDireita(FormatFloat(mMascara,  QryVendaItem.FieldByName('QUANTIDADE').AsFloat),          _QTDE) + ' '+
//                   AlinhaDireita(FormatFloat('###,##0.00',QryVendaItem.FieldByName('VLR_UNIT').AsFloat),       _VLRUNIT) +
//                   AlinhaDireita(FormatFloat('###,##0.00',QryVendaItem.FieldByName('VLR_TOTAL').AsFloat),     _VLRTOTAL) + ' ';
//
//
//      mTexto.Add(PadCenter(Trim(mLinha),FConfiguracao.ColunasCondensado,' '));
//      QryVendaItem.Next;
//      mLinha := '';
//    end;
//
//    //-----------------------------------------------------------------------
//    // Resumo cupom
//    //-----------------------------------------------------------------------
//    mTexto.Add(StringOfChar('-',FConfiguracao.ColunasCondensado));
//
//    mTexto.Add(AlinhaEsquerda(' QTDE. TOTAL DE ITENS:', 54) + AlinhaDireita(FormatFloat('###,##0',QryNFe.FieldByName('QTDE_PRODUTOS').AsInteger),         8));
//    mTexto.Add(AlinhaEsquerda(' VALOR TOTAL R$:',       54) + AlinhaDireita(FormatFloat('###,##0.00',QryNFe.FieldByName('VALOR_PRODUTOS').AsFloat),      8));
//    if QryNFe.FieldByName('VALORACRESCIMO').AsFloat>0 then
//      mTexto.Add(AlinhaEsquerda(' ACRÉSCIMOS ('+LeftStr(QryNFe.FieldByName('NATUREZAACRESCIMO').AsString,40)+'): ',         54) + AlinhaDireita(FormatFloat('###,##0.00',QryNFe.FieldByName('VALORACRESCIMO').AsFloat),  8));
//    if QryNFe.FieldByName('VLR_DESCONTO').AsFloat>0 then
//      mTexto.Add(AlinhaEsquerda(' DESCONTOS:',          54) + AlinhaDireita(FormatFloat('###,##0.00',QryNFe.FieldByName('VLR_DESCONTO').AsFloat),  8));
//    mTexto.Add(AlinhaEsquerda(' VALOR A PAGAR R$:',     54) + AlinhaDireita(FormatFloat('###,##0.00',QryNFe.FieldByName('TOTAL_NF').AsFloat),     8));
//    mTexto.Add(StringOfChar('-',FConfiguracao.ColunasCondensado));
//    mTexto.Add(AlinhaEsquerda(' FORMA PAGAMENTO:',   20 )+ AlinhaDireita('VALOR PAGO:',43 ));
//    if QryNFe.FieldByName('VALORDINHEIRO').AsFloat>0 then
//      mTexto.Add(AlinhaEsquerda(' Dinheiro', 54) + AlinhaDireita(FormatFloat('###,##0.00',QryNFe.FieldByName('VALORDINHEIRO').AsFloat),     8));
//    if QryNFe.FieldByName('VALORCARTAODEBITO').AsFloat>0 then
//      mTexto.Add(AlinhaEsquerda(' Cartão Débito', 54) + AlinhaDireita(FormatFloat('###,##0.00',QryNFe.FieldByName('VALORCARTAODEBITO').AsFloat),     8));
//    if QryNFe.FieldByName('VALORCARTAOCREDITO').AsFloat>0 then
//      mTexto.Add(AlinhaEsquerda(' Cartão Crédito', 54) + AlinhaDireita(FormatFloat('###,##0.00',QryNFe.FieldByName('VALORCARTAOCREDITO').AsFloat),     8));
//    if QryNFe.FieldByName('TROCO').AsFloat>0 then
//      mTexto.Add(AlinhaEsquerda(' Troco R$:', 54) + AlinhaDireita(FormatFloat('###,##0.00',QryNFe.FieldByName('TROCO').AsFloat),     8));
//
//    //-----------------------------------------------------------------------
//    // Rodape
//    //-----------------------------------------------------------------------
//    mTexto.Add(StringOfChar('-',FConfiguracao.ColunasCondensado));
//    mTexto.Add(' LOJA: '+FormatFloat('000',FConfiguracao.Loja) + ' - CAIXA: '+FormatFloat('000',FConfiguracao.TerminalPDV) + ' - OPERADOR(A): '+FConfiguracao.OperadorNome);
//    mTexto.Add(StringOfChar('=',FConfiguracao.ColunasCondensado));
//    mTexto.Add(_SISTEMA_EMISSOR );
//    mTexto.Add(_SISTEMA_DESENVOLVEDOR );
//    mTexto.Add(StringOfChar('=',FConfiguracao.ColunasCondensado));
//    mTexto.Add(' ');
//    mTexto.Add(' ');
//    mTexto.Add(' ');
//  finally
//    QryVendaItem.Close;
//  end;
//
//  //-----------------------------------------------------------------------
//  // Imprimir
//  //-----------------------------------------------------------------------
//  try
//    PDVVisualizar(mTexto);
//  finally
//    mTexto.Free;
//  end;
end;

procedure TFrmManutencaoNFe.ReimprimirNFCe;
var
  mPreviwPrint: Boolean;
  mArqXML : String;
begin
  ChecaArquivoXML();
  if Pergunta('Deseja reimprimir a NFC-e?') = False then
    exit;
  mArqXML := Trim(QryNFe.FieldByName('NFE_ARQUIVO').AsString);
  mPreviwPrint := FrmPrincipal.ACBrNFe1.DANFE.MostraPreview;
  FrmPrincipal.ACBrNFe1.DANFE.MostraPreview := True;
  try
    FrmPrincipal.ACBrNFe1.NotasFiscais.Clear;
    FrmPrincipal.ACBrNFe1.NotasFiscais.LoadFromFile(mArqXML);
    FrmPrincipal.ACBrNFe1.NotasFiscais.Imprimir;
  finally
    FrmPrincipal.ACBrNFe1.DANFE.MostraPreview := mPreviwPrint;
    FrmPrincipal.ACBrNFe1.NotasFiscais.Clear;
  end;
end;

procedure TFrmManutencaoNFe.ReimprimirSAT;
begin
  DanfeSAT();
end;

procedure TFrmManutencaoNFe.GravarDadosNF;
begin
  //-----------------------------------------------------------------
  // Salvar caminho do XML
  //-----------------------------------------------------------------
  QryNFe.Edit;
  QryNFe.FieldByName('NFE_ARQUIVO').AsString       := FrmPrincipal.ACBrNFe1.NotasFiscais[0].NomeArq;
  QryNFe.FieldByName('NFE_CHAVEACESSO').AsString   := FrmPrincipal.ACBrNFe1.NotasFiscais[0].NFe.procNFe.chNFe;
  QryNFe.FieldByName('NFE_VALIDADO').AsString      := 'SIM';
  QryNFe.FieldByName('NFE_RECIBO').AsString        := FrmPrincipal.ACBrNFe1.NotasFiscais[0].NFe.procNFe.nProt;
  QryNFe.FieldByName('NFE_SITUACAOSEFAZ').AsString := FrmPrincipal.ACBrNFe1.NotasFiscais[0].NFe.procNFe.xMotivo;
  if FrmPrincipal.ACBrNFe1.NotasFiscais.Items[0].Confirmada then
    QryNFe.FieldByName('NFE_TRANSMITIDO').AsString   := 'SIM'
  else
    QryNFe.FieldByName('NFE_TRANSMITIDO').AsString   := 'OFFLINE';
  QryNFe.Post;
end;


end.


