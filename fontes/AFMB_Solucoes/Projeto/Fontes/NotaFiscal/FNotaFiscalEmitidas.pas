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

unit FNotaFiscalEmitidas;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, FFrameBarra, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids,
   ACBrNFeDANFEClass, ACBrNFe, pcnConversao, DB,
     ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   uEstSearchDialogZeos,
   classe.global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCurrencyEdit,
  ACBrNFeDANFEFR,
   FNotaFiscalCancelar, dxDateRanges, ACBrBase, ACBrDFeReport,
  ACBrDFeDANFeReport, ACBrDANFCeFortesFr,
  pcnConversaoNFe, dxSkinsCore, dxSkinsDefaultPainters;

type

   TFrmNotaFiscalEmitidas = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
      Panel1: TPanel;
      Panel2: TPanel;
      BtnSair: TBitBtn;
    BtnDANFE: TBitBtn;
    BtnSituacaoSEFAZ: TBitBtn;
    BtnCancelarNFe: TBitBtn;
    BtnInutilizarNFe: TBitBtn;
    BtnEnviarEMailNFe: TBitBtn;
    db_Vendas_NFE: TFDQuery;
    DS_Vendas: TDataSource;
    BtnCartaCorrecao: TBitBtn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    cxGrid1DBTableView1Column10: TcxGridDBColumn;
    cxGrid1DBTableView1Column11: TcxGridDBColumn;
    ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes;
    btnReenviar: TBitBtn;
    SP_NFE_CALCULA: TFDStoredProc;
    SPNFE_PROCESSAR: TFDStoredProc;
      procedure BtnSairClick(Sender: TObject);
      procedure BtnDANFEClick(Sender: TObject);
      procedure BtnSituacaoSEFAZClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure db_Vendas_NFEAfterPost(DataSet: TDataSet);
      procedure BtnCancelarNFeClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnInutilizarNFeClick(Sender: TObject);
    procedure BtnEnviarEMailNFeClick(Sender: TObject);
    procedure db_Vendas_NFEBeforeOpen(DataSet: TDataSet);
    procedure BtnCartaCorrecaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnReenviarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
   private
      { Private declarations }
      mLogRegistro : String;
      procedure FecharTabelas;
      procedure AbrirTabelas;
    procedure ChecaArquivoXML;
    procedure SituacaoNFE;
   public
      { Public declarations }
     inVenda : Integer;
     inNotaFiscal : Integer;
   end;

var
   FrmNotaFiscalEmitidas: TFrmNotaFiscalEmitidas;
    strSimNao : String = '';

implementation

uses FPrincipal, App.SQL, Biblioteca, Global, FBaseDados,
  FNotaFiscal, FNotaFiscalSituacaoSEFAZ, Classe.Usuarios,
  App.Funcoes, FNotaFiscalCartaCorrecao, FNotaFiscalInutilizar;

{$R *.dfm}

procedure TFrmNotaFiscalEmitidas.AbrirTabelas;
begin
   db_Vendas_NFE.Open;
end;

procedure TFrmNotaFiscalEmitidas.BtnEnviarEMailNFeClick(Sender: TObject);
begin
  ChecaArquivoXML();
  EnviarEmailNF(db_Vendas_NFE.FieldByName('CODIGO').AsInteger,BaseDados.ACBrNFe1,True);
end;

procedure TFrmNotaFiscalEmitidas.ChecaArquivoXML;
var
 mArquivo : String;
begin
  inNotaFiscal := db_Vendas_NFE.FieldByName('NOTAFISCAL').AsInteger;
  mArquivo := db_Vendas_NFE.FieldByName('NFE_ARQUIVO').AsString;
  if mArquivo = '' then
    mArquivo := '<não encontrado>';

  if not FileExists(Trim(mArquivo)) then
  begin
    AvisoSistemaErro('Arquivo XML não foi encontrado.'+
                     sLineBreak+
                     'Arquivo: '+mArquivo);
    abort;
  end;
end;

procedure TFrmNotaFiscalEmitidas.BtnDANFEClick(Sender: TObject);
begin
   ChecaArquivoXML();
   try
     if UpperCase(db_Vendas_NFE.FieldByName('TIPONF').AsString) = 'NFCE' then
       BaseDados.ACBrNFe1.DANFE  := ACBrNFeDANFCeFortes1;

     BaseDados.ACBrNFe1.NotasFiscais.Clear;
     BaseDados.ACBrNFe1.NotasFiscais.LoadFromFile(Trim(db_Vendas_NFE.FieldByName('NFE_ARQUIVO').AsString));
     BaseDados.prcDANFELogo;


     if BaseDados.ACBrNFe1.DANFE.Protocolo='' then
        BaseDados.ACBrNFe1.DANFE.Protocolo            := db_Vendas_NFE.FieldByName('NFE_PROTOCOLOUSO').AsString;

     if BaseDados.ACBrNFe1.WebServices.Retorno.Recibo='' then
        BaseDados.ACBrNFe1.WebServices.Retorno.Recibo    := db_Vendas_NFE.FieldByName('NFE_RECIBO').AsString;

     if BaseDados.ACBrNFe1.WebServices.Retorno.ChaveNFe='' then
        BaseDados.ACBrNFe1.WebServices.Retorno.ChaveNFe  := db_Vendas_NFE.FieldByName('NFE_CHAVEACESSO').AsString;

     BaseDados.ACBrNFe1.NotasFiscais.Imprimir;
   finally
     BaseDados.ACBrNFe1.DANFE  := BaseDados.DANFE_FortesReport;
   end;

   //end;

   db_Vendas_NFE.Edit;
   db_Vendas_NFE.FieldByName('NFE_DANFEIMPRESSA').AsString := 'SIM';
   db_Vendas_NFE.Post;
   db_Vendas_NFE.Refresh;

   mLogRegistro := 'Imprimiu DANFE da Nota Fiscal Eletrônica '+db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString;
   FUsuario.LogUsuario('Processamento de Nota Fiscal Eletrônica',mLogRegistro);

end;

procedure TFrmNotaFiscalEmitidas.SituacaoNFE;
begin
   ChecaArquivoXML();

   BaseDados.ACBrNFe1.NotasFiscais.Clear;
   BaseDados.ACBrNFe1.NotasFiscais.LoadFromFile(Trim(db_Vendas_NFE.FieldByName('NFE_ARQUIVO').AsString));
   BaseDados.ACBrNFe1.Consultar;

   // LoadXML(MemoResp, WBResposta);
   FrmNotaFiscalSituacaoSEFAZ := TFrmNotaFiscalSituacaoSEFAZ.create(self);

   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Clear;
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('');
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('SITUAÇÃO DA NOTA FICAL NA SEFAZ:');
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('Chave............: ' + BaseDados.ACBrNFe1.WebServices.Consulta.NFeChave);
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('Protocolo........: ' + BaseDados.ACBrNFe1.WebServices.Consulta.Protocolo);
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('Código Retorno...: ' + IntToStr(BaseDados.ACBrNFe1.WebServices.Consulta.cStat));
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('Situação.........: ' + BaseDados.ACBrNFe1.WebServices.Consulta.xMotivo);
   FrmNotaFiscalSituacaoSEFAZ.Showmodal;
   mLogRegistro := 'Verificou na SEFAZ situação da Nota Fiscal Eletrônica '+db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString;
   FUsuario.LogUsuario('Processamento de Nota Fiscal Eletrônica',mLogRegistro);

end;

procedure TFrmNotaFiscalEmitidas.BtnSituacaoSEFAZClick(Sender: TObject);
begin
  SituacaoNFE();
end;

procedure TFrmNotaFiscalEmitidas.BtnCartaCorrecaoClick(Sender: TObject);
var
  mIDLote : String;
  DataHoraEvento: TDateTime;
begin
   ChecaArquivoXML();
   strJustificativa := '';
   mIDLote := '';
   If (db_Vendas_NFE.FieldByName('NFE_TRANSMITIDO').AsString <> 'SIM') then
   begin
      Atencao('Essa Nota Fiscal não foi enviada para a SEFAZ. ' +
                   'Não há necessidade de emitir Carta de Correção.');
      Exit;
   end;
   If (db_Vendas_NFE.FieldByName('OPERACAO').AsString ='C') then
   begin
      Atencao('Essa Nota Fiscal já foi cancelada.');
      Exit;
   end;

   strSimNao := '';
   try
     FrmNotaFiscalCartaCorrecao := TFrmNotaFiscalCartaCorrecao.create(self);
     FrmNotaFiscalCartaCorrecao.ShowModal;
   finally
     FrmNotaFiscalCartaCorrecao.Free;
   end;
   if strSimNao = '' then
   begin
      FUsuario.LogUsuario('Nota Fiscal | Cancelar','Desistiu de Enviar Carta de Correção para a NF-e ' + ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6)+ ', após abrir tela que solicita justificativa. '  );
      exit;
   end;

   // -------------------------------------------------------------------------
   // ------                                                              -----
   // -------------------------------------------------------------------------
   if pergunta('Tem certeza que deseja Enviar Carta de Correção?')=false then
   begin
      FUsuario.LogUsuario('Nota Fiscal | Cancelar','Desistiu de enviar Carta de Correção para a NF-e ' + ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6)+ ' após pergunta de confirmação. '  );
      exit;
   end;
   FUsuario.LogUsuario('Nota Fiscal | Cancelar','O sistema perguntou se desejava enviar Carta de Correção para a NF-e ' + ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6)  );
   try
     MsgEsperar('Carta de Correção NF-e: '+ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6),
                      'Aguarde... Enviando Carta de Correção NF-e.',
                      True);

     // -------------------------------------------------------------------------
     // ------ Envir solicitação de cancelamento para a SEFAZ              -----
     // -------------------------------------------------------------------------
     DataHoraEvento := NOW;
     mIDLote := GerarLoteNFe();
     BaseDados.ACBrNFe1.NotasFiscais.Clear;
     BaseDados.ACBrNFe1.NotasFiscais.LoadFromFile(Trim(db_Vendas_NFE.FieldByName('NFE_ARQUIVO').AsWideString));

     BaseDados.ACBrNFe1.EventoNFe.Evento.Clear;
     BaseDados.ACBrNFe1.EventoNFe.idLote := StrToIntDef(mIDLote,1);

     with BaseDados.ACBrNFe1.EventoNFe.Evento.Add do
     begin
       infEvento.CNPJ                := FParametros.Empresa.CNPJ;
       infEvento.dhEvento            := DataHoraEvento;
       infEvento.tpEvento            := teCCe;
       infEvento.chNFe               := BaseDados.ACBrNFe1.NotasFiscais[0].NFe.procNFe.chNFe;
       infEvento.nSeqEvento          := 1;
       infEvento.detEvento.xCorrecao := strJustificativa;
     end;

     if BaseDados.ACBrNFe1.EnviarEvento(StrToIntDef(mIDLote,1)) then
     begin
       if BaseDados.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat <> 135 then
       begin
         FUsuario.LogUsuario('Nota Fiscal | Carta de Correção','Não foi possivel enviar Carta de Correção para NF-e ' + ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6)
                        +sLineBreak
                        +sLineBreak
                        +'O servidor da SEFAZ retornou a seguinte mensagem: '
                        +sLineBreak
                        +BaseDados.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo);

         raise Exception.CreateFmt('Ocorreu o seguinte erro enviar a correção da nota fiscal eletrônica:'  + sLineBreak +
            'Código:%d' + sLineBreak + 'Motivo: %s',
            [BaseDados.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat,
             BaseDados.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo ]);
       end;
     end;
   finally
     MsgEsperar('','',False);
   end;
   // -------------------------------------------------------------------------
   // ------                                                              -----
   // -------------------------------------------------------------------------
   db_Vendas_NFE.Edit;
   db_Vendas_NFE.FieldByName('NFE_SITUACAOSEFAZ').AsWideString := db_Vendas_NFE.FieldByName('NFE_SITUACAOSEFAZ').AsWideString + ' [Carta de Correção Enviada]' ;
   db_Vendas_NFE.Post;

   // -------------------------------------------------------------------------
   // ------                                                              -----
   // -------------------------------------------------------------------------
   Aviso('Nota Fiscal '+ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6)+' Carta de Correção enviada com sucesso.');
   mLogRegistro := 'Fez Carta de Correção de NF-e '+ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6);
   FUsuario.LogUsuario('Processamento de Nota Fiscal Eletrônica',mLogRegistro);
end;

procedure TFrmNotaFiscalEmitidas.btnReenviarClick(Sender: TObject);
begin
  ChecaArquivoXML();
  If (db_Vendas_NFE.FieldByName('OPERACAO').AsString ='C') then
  begin
    Atencao('Essa Nota Fiscal já foi cancelada.');
    Exit;
  end;

  if pergunta('Deseja enviar essa '+db_Vendas_NFE.FieldByName('TIPONF').AsString+' ?') = false then
    exit;
   try
     MsgEsperar('Enviando NF-e: '+ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6),
                      'Aguarde... transmitindo NF-e',
                      True);
     BaseDados.SetCertificados();
     BaseDados.ACBrNFe1.DANFE := ACBrNFeDANFCeFortes1;
     if UpperCase(db_Vendas_NFE.FieldByName('TIPONF').AsString) = 'NFCE' then
     begin
       BaseDados.ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
     end
     else
     begin
       BaseDados.ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;
     end;

     BaseDados.ACBrNFe1.NotasFiscais.Clear;
     BaseDados.ACBrNFe1.NotasFiscais.LoadFromFile(Trim(db_Vendas_NFE.FieldByName('NFE_ARQUIVO').AsString));

     if not BaseDados.FContigencia then
     begin
       BaseDados.ACBrNFe1.Enviar(GerarLoteNFe());
       Sleep(500);
     end
     else
     begin
       BaseDados.ACBrNFe1.Configuracoes.Geral.FormaEmissao  := teOffLine;
       BaseDados.ACBrNFe1.NotasFiscais.Assinar;
       BaseDados.ACBrNFe1.NotasFiscais.Validar;
       BaseDados.ACBrNFe1.NotasFiscais.Imprimir;
     end;

     try
       db_Vendas_NFE.Edit;
       db_Vendas_NFE.FieldByName('NFE_CERTIFICADO').AsString        := BaseDados.ACBrNFe1.Configuracoes.Certificados.NumeroSerie;
       db_Vendas_NFE.FieldByName('NFE_ARQUIVO').AsString            := BaseDados.ACBrNFe1.NotasFiscais.Items[0].NomeArq;
       db_Vendas_NFE.FieldByName('NFE_ARQUIVO').AsString            := BaseDados.ACBrNFe1.NotasFiscais.Items[0].NomeArq;
       db_Vendas_NFE.FieldByName('NFE_RECIBO').AsString             := BaseDados.ACBrNFe1.WebServices.Retorno.Recibo;
       db_Vendas_NFE.FieldByName('NFE_CHAVEACESSO').AsString        := BaseDados.ACBrNFe1.WebServices.Retorno.ChaveNFe;
       db_Vendas_NFE.FieldByName('NFE_PROTOCOLOUSO').AsString       := BaseDados.ACBrNFe1.WebServices.Retorno.Protocolo;
       db_Vendas_NFE.FieldByName('NFE_SITUACAOCODIGO').AsInteger    := BaseDados.ACBrNFe1.WebServices.Retorno.cStat;
       db_Vendas_NFE.FieldByName('NFE_SITUACAOSEFAZ').AsString      := BaseDados.ACBrNFe1.WebServices.Retorno.xMotivo;
       db_Vendas_NFE.FieldByName('NFE_ARQUIVO').AsString            := BaseDados.ACBrNFe1.NotasFiscais.Items[0].NomeArq;
       db_Vendas_NFE.FieldByName('NFE_VALIDADO').AsString           := 'SIM';
       db_Vendas_NFE.FieldByName('NFE_ASSINADO').AsString           := 'SIM';
       if BaseDados.ACBrNFe1.NotasFiscais.Items[0].Confirmada then
       begin
         db_Vendas_NFE.FieldByName('NFE_TRANSMITIDO').AsString      := 'SIM'
       end
       else
       begin
         db_Vendas_NFE.FieldByName('NFE_TRANSMITIDO').AsString      := 'CONTINGENCIA';
         if UpperCase(db_Vendas_NFE.FieldByName('TIPONF').AsString) = 'NFCE' then
           db_Vendas_NFE.FieldByName('NFE_TRANSMITIDO').AsString      := 'OFFLINE';
       end;
       db_Vendas_NFE.Post;
     finally
       db_Vendas_NFE.Refresh;
     end;

     mLogRegistro := 'Transmitiu para o servidor da SEFAZ a Nota Fiscal Eletrônica '+db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString;
     FUsuario.LogUsuario('Processamento de Nota Fiscal Eletrônica',mLogRegistro);

   finally
     MsgEsperar('','',False);
   end;

end;

procedure TFrmNotaFiscalEmitidas.BtnCancelarNFeClick(Sender: TObject);
var
  mIDLote : String;
  DataHoraEvento: TDateTime;
begin
   ChecaArquivoXML();
   strJustificativa := '';
   mIDLote := '';
   If (db_Vendas_NFE.FieldByName('NFE_TRANSMITIDO').AsString <> 'SIM') then
   begin
      Atencao('Essa Nota Fiscal não foi enviada para a SEFAZ. ' +
                   'Não há necessidade de cancelar na SEFAZ.');
      Exit;
   end;

   If (db_Vendas_NFE.FieldByName('OPERACAO').AsString ='C') then
   begin
      Atencao('Essa Nota Fiscal já foi cancelada.');
      Exit;
   end;

   strSimNao := '';
   try
     FrmNotaFiscalCancelar :=TFrmNotaFiscalCancelar.create(self);
     FrmNotaFiscalCancelar.ShowModal;
   finally
     FrmNotaFiscalCancelar.Free;
   end;
   if strSimNao = '' then
   begin
      FUsuario.LogUsuario('Nota Fiscal | Cancelar','Desistiu de cancelar a NF-e numero ' + ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6)+ ', após abrir tela que solicita justificativa. '  );
      exit;
   end;

   // -------------------------------------------------------------------------
   // ------                                                              -----
   // -------------------------------------------------------------------------
   if pergunta('Tem certeza que deseja CANCELAR esta NF-e?')=false then
   begin
      FUsuario.LogUsuario('Nota Fiscal | Cancelar','Desistiu de cancelar a NF-e numero ' + ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6)+ ' após pergunta de confirmação. '  );
      exit;
   end;
   FUsuario.LogUsuario('Nota Fiscal | Cancelar','O sistema perguntou se desejava cancelar a NF-e numero ' + ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6)  );
   try
     MsgEsperar('Cancelar NF-e: '+ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6),
                      'Aguarde... cancelando NF-e.',
                      True);

     // -------------------------------------------------------------------------
     // ------ Envir solicitação de cancelamento para a SEFAZ              -----
     // -------------------------------------------------------------------------
     DataHoraEvento := NOW;
     mIDLote := GerarLoteNFe();
     BaseDados.ACBrNFe1.NotasFiscais.Clear;
     BaseDados.ACBrNFe1.NotasFiscais.LoadFromFile(Trim(db_Vendas_NFE.FieldByName('NFE_ARQUIVO').AsWideString));

     BaseDados.ACBrNFe1.EventoNFe.Evento.Clear;
     BaseDados.ACBrNFe1.EventoNFe.idLote := StrToIntDef(mIDLote,1);

     with BaseDados.ACBrNFe1.EventoNFe.Evento.Add do
     begin
        infEvento.CNPJ            := FParametros.Empresa.CNPJ;
        infEvento.dhEvento        := DataHoraEvento;
        infEvento.tpEvento        := teCancelamento;
        infEvento.chNFe           := BaseDados.ACBrNFe1.NotasFiscais[0].NFe.procNFe.chNFe;
        infEvento.detEvento.nProt := BaseDados.ACBrNFe1.NotasFiscais[0].NFe.procNFe.nProt;
        infEvento.detEvento.xJust := strJustificativa;
     end;
     if BaseDados.ACBrNFe1.EnviarEvento(StrToIntDef(mIDLote,1)) then
     begin
       if BaseDados.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat <> 135 then
       begin
         FUsuario.LogUsuario('Nota Fiscal | Cancelar','Não foi possivel cancelar NF-e numero ' + ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6)
                        +sLineBreak
                        +sLineBreak
                        +'O servidor da SEFAZ retornou a seguinte mensagem: '
                        +sLineBreak
                        +BaseDados.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo);

         raise Exception.CreateFmt('Ocorreu o seguinte erro ao cancelar a nota fiscal eletrônica:'  + sLineBreak +
            'Código:%d' + sLineBreak + 'Motivo: %s',
              [BaseDados.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat,
                BaseDados.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo]);
       end;

       // -------------------------------------------------------------------------
       // ------                                                              -----
       // -------------------------------------------------------------------------
       db_Vendas_NFE.Edit;
       db_Vendas_NFE.FieldByName('OPERACAO').AsString := 'C';
       db_Vendas_NFE.FieldByName('CANCELAMENTO_DATA').AsDateTime  := Now;
       db_Vendas_NFE.FieldByName('CANCELAMENTO_USUARIO').AsWideString  := FUsuario.Nome;
       db_Vendas_NFE.FieldByName('CANCELAMENTO_CODIGORETORNO').AsInteger := BaseDados.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
       db_Vendas_NFE.FieldByName('CANCELAMENTO_PROTOCOLO').AsWideString := BaseDados.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
       db_Vendas_NFE.FieldByName('CANCELAMENTO_SITUACAO').AsWideString := BaseDados.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;
       db_Vendas_NFE.FieldByName('NFE_SITUACAOSEFAZ').AsWideString := 'Cancelada na SEFAZ';
       db_Vendas_NFE.Post;

       // -------------------------------------------------------------------------
       // ------                                                              -----
       // -------------------------------------------------------------------------
       SPNFE_PROCESSAR.ParamByName('NEMPRESA').AsInteger   := FSistema.Empresa;
       SPNFE_PROCESSAR.ParamByName('NVENDA').AsInteger     := db_Vendas_NFE.FieldByName('CODIGO').AsInteger;
       SPNFE_PROCESSAR.ParamByName('ACAO').AsString        := 'ABRIR';
       SPNFE_PROCESSAR.ExecProc;
     end;
   finally
     MsgEsperar('','',False);
   end;
   // -------------------------------------------------------------------------
   // ------                                                              -----
   // -------------------------------------------------------------------------
   Aviso('Nota Fiscal '+ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6)+' cancelada com sucesso.');
   SituacaoNFE();

   // -------------------------------------------------------------------------
   // ------                                                              -----
   // -------------------------------------------------------------------------
   mLogRegistro := 'Cancelou a Nota Fiscal Eletrônica '+ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6);
   FUsuario.LogUsuario('Processamento de Nota Fiscal Eletrônica',mLogRegistro);

end;

procedure TFrmNotaFiscalEmitidas.BtnInutilizarNFeClick(Sender: TObject);
var
  mIDLote : String;
  DataHoraEvento: TDateTime;
  mAno, mNFInicial, mNFFinal : Integer;
begin
   ChecaArquivoXML();
   strJustificativa := '';
   mIDLote := '';
   mAno  := 0;
   mNFInicial := 0;
   mNFFinal := 0;
   If (db_Vendas_NFE.FieldByName('NFE_TRANSMITIDO').AsString <> 'SIM') then
   begin
      Atencao('Essa Nota Fiscal não foi enviada para a SEFAZ. ' +
              'Não há necessidade de emitir Carta de Correção.');
      Exit;
   end;

   If (db_Vendas_NFE.FieldByName('OPERACAO').AsString ='I') then
   begin
      Atencao('Essa Nota Fiscal já foi Inutilizada.');
      Exit;
   end;

   strSimNao := '';
   try
     FrmNotaFiscalInutilizar := TFrmNotaFiscalInutilizar.create(self);
     FrmNotaFiscalInutilizar.ShowModal;
     if strSimNao <> '' then
     begin
       mAno := FrmNotaFiscalInutilizar.EditAno.Value;
       mNFInicial := FrmNotaFiscalInutilizar.EditNumInicial.Value;
       mNFFinal := FrmNotaFiscalInutilizar.EditNumFinal.Value;
     end;
   finally
     FrmNotaFiscalInutilizar.Free;
   end;
   if strSimNao='' then
   begin
      FUsuario.LogUsuario('Nota Fiscal | Cancelar','Desistiu de Inutilizar NF-e de "' + ZeroEsquerda(mNFInicial.ToString,6)+' a '+ ZeroEsquerda(mNFFinal.ToString,6)+ '", após abrir tela que solicita justificativa. '  );
      exit;
   end;

   // -------------------------------------------------------------------------
   // ------                                                              -----
   // -------------------------------------------------------------------------
   if pergunta('Tem certeza que deseja Enviar Carta de Correção?')=false then
   begin
      FUsuario.LogUsuario('Nota Fiscal | Inutilizar','Desistiu de Inutilizar NF-e de "' + ZeroEsquerda(mNFInicial.ToString,6)+' a '+ ZeroEsquerda(mNFFinal.ToString,6)+ '", após pergunta de confirmação. '  );
      exit;
   end;
   FUsuario.LogUsuario('Nota Fiscal | Inutilizar','O sistema perguntou se desejava Inutilizar NF-e de "' + ZeroEsquerda(mNFInicial.ToString,6)+' a '+ ZeroEsquerda(mNFFinal.ToString,6) +'"');

   try
     MsgEsperar('Inutilizar de Correção NF-e de "' + ZeroEsquerda(mNFInicial.ToString,6)+' a '+ ZeroEsquerda(mNFFinal.ToString,6) +'"',
                      'Aguarde... Enviando Inutilização.',
                      True);

     // -------------------------------------------------------------------------
     // ------ Envir solicitação de cancelamento para a SEFAZ              -----
     // -------------------------------------------------------------------------
     DataHoraEvento := NOW;
     mIDLote := GerarLoteNFe();
     BaseDados.ACBrNFe1.NotasFiscais.Clear;
     BaseDados.ACBrNFe1.NotasFiscais.LoadFromFile(Trim(db_Vendas_NFE.FieldByName('NFE_ARQUIVO').AsWideString));

     BaseDados.ACBrNFe1.EventoNFe.Evento.Clear;
     BaseDados.ACBrNFe1.EventoNFe.idLote := StrToIntDef(mIDLote,1);

     with BaseDados.ACBrNFe1.EventoNFe.Evento.Add do
     begin
       infEvento.CNPJ                := FParametros.Empresa.CNPJ;
       infEvento.dhEvento            := DataHoraEvento;
       infEvento.tpEvento            := teCCe;
       infEvento.chNFe               := BaseDados.ACBrNFe1.NotasFiscais[0].NFe.procNFe.chNFe;
       infEvento.nSeqEvento          := 1;
       infEvento.detEvento.xCorrecao := strJustificativa;
     end;

//       mAno := FrmNotaFiscalInutilizar.EditAno.Value;
//       mNFInicial := FrmNotaFiscalInutilizar.EditNumInicial.Value;
//       mNFFinal := FrmNotaFiscalInutilizar.EditNumFinal.Value;

     BaseDados.ACBrNFe1.WebServices.Inutiliza(
       FParametros.Empresa.CNPJ,
       strJustificativa,
       mAno,
       55,
       FParametros.NFE.Serie.ToInteger,
       mNFInicial,
       mNFFinal
      );

     if BaseDados.ACBrNFe1.WebServices.Inutilizacao.cStat = 102 then
     begin
       db_Vendas_NFE.Edit;
       db_Vendas_NFE.FieldByName('OPERACAO').AsString := 'I';
       db_Vendas_NFE.FieldByName('CANCELAMENTO_DATA').AsDateTime  := Now;
       db_Vendas_NFE.FieldByName('CANCELAMENTO_USUARIO').AsWideString  := FUsuario.Nome;
       db_Vendas_NFE.FieldByName('CANCELAMENTO_CODIGORETORNO').AsInteger := BaseDados.ACBrNFe1.WebServices.Inutilizacao.cStat;
       db_Vendas_NFE.FieldByName('CANCELAMENTO_PROTOCOLO').AsWideString := BaseDados.ACBrNFe1.WebServices.Inutilizacao.Protocolo;
       db_Vendas_NFE.FieldByName('NFE_SITUACAOSEFAZ').AsWideString := 'Inutilizada na SEFAZ';
       db_Vendas_NFE.Post;
     end
     else
     begin
       raise EDatabaseError.CreateFmt(
         'Código:%d' + sLineBreak + 'Motivo: %s', [
           BaseDados.ACBrNFe1.WebServices.Inutilizacao.cStat,
           BaseDados.ACBrNFe1.WebServices.Inutilizacao.xMotivo
       ]);
     end;

   finally
     MsgEsperar('','',False);
   end;

   // -------------------------------------------------------------------------
   // ------                                                              -----
   // -------------------------------------------------------------------------
   Aviso('Inutilização enviada com sucesso.');
   mLogRegistro := 'Inutilizou a NF-e '+ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6);
   FUsuario.LogUsuario('Processamento de Nota Fiscal Eletrônica',mLogRegistro);
end;

procedure TFrmNotaFiscalEmitidas.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmNotaFiscalEmitidas.db_Vendas_NFEAfterPost(DataSet: TDataSet);
begin
   db_Vendas_NFE.Refresh;
end;

procedure TFrmNotaFiscalEmitidas.db_Vendas_NFEBeforeOpen(DataSet: TDataSet);
begin
   db_Vendas_NFE.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TFrmNotaFiscalEmitidas.FecharTabelas;
begin
   db_Vendas_NFE.close;
end;

procedure TFrmNotaFiscalEmitidas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   mLogRegistro := 'Saiu do módulo Processamento de Nota Fiscal Eletrônica' ;
   FUsuario.LogUsuario('Processamento de Nota Fiscal Eletrônica',mLogRegistro);
   db_Vendas_NFE.close;
   Action := CaFree;
end;

procedure TFrmNotaFiscalEmitidas.FormCreate(Sender: TObject);
begin
   mLogRegistro := 'Acessou o módulo Processamento de Nota Fiscal Eletrônica' ;
   FUsuario.LogUsuario('Processamento de Nota Fiscal Eletrônica',mLogRegistro);
   db_Vendas_NFE.Open;
end;

procedure TFrmNotaFiscalEmitidas.FormDestroy(Sender: TObject);
begin
  FrmNotaFiscalEmitidas := Nil;
end;

procedure TFrmNotaFiscalEmitidas.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    close;
end;

procedure TFrmNotaFiscalEmitidas.FormShow(Sender: TObject);
begin
   BaseDados.SetGerarDANFE();
   BaseDados.SetCertificados();
end;

end.





