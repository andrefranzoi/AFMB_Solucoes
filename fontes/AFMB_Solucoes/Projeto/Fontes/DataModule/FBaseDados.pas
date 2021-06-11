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

unit FBaseDados;

interface

uses
   SysUtils, Classes, Forms, System.StrUtils, DB, DBClient, SimpleDS,
   ACBrNFe, frxClass, frxDBSet,
   ACBrNFeDANFEClass, ACBrNFeDANFEFR, Classe.Global, ACBrNFeDANFEFRDM, ACBrBase,
   ACBrDFe, ACBrMail, FireDAC.Stan.Intf, FireDAC.Stan.Option,
   FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
   pcnNFe, ACBrValidador, ACBrUtil, ACBrDFeSSL,
   ACBrNFeDANFeRLClass, ACBrDFeUtil, ACBrSAT, ACBrSATExtratoESCPOS,
   Vcl.Graphics,
   ACBrDFeReport, ACBrSATExtratoClass, ACBrSATExtratoReportClass, ACBrSATClass,
   ACBrSATExtratoFortesFr, ACBrIntegrador, ACBrPosPrinter,
   pcnConversao,
   pcnConversaoNFe;

type
   TBaseDados = class(TDataModule)
      db_Parametros: TFDQuery;
      db_ctaReceber: TFDQuery;
      ds_ctaReceber: TDataSource;
      db_CtaPagar: TFDQuery;
      DS_CtaPagar: TDataSource;
      ACBrNFe1: TACBrNFe;

      ACBrMail1: TACBrMail;
      ACBrValidador1: TACBrValidador;
      ACBrPosPrinter1: TACBrPosPrinter;
      ACBrSATExtratoFortes1: TACBrSATExtratoFortes;
      ACBrSATExtratoESCPOS1: TACBrSATExtratoESCPOS;
      ACBrSAT1: TACBrSAT;
      procedure db_ctaReceberNewRecord(DataSet: TDataSet);
      procedure db_CtaPagarNewRecord(DataSet: TDataSet);
      procedure db_CtaPagarBeforePost(DataSet: TDataSet);
      procedure db_ctaReceberBeforeOpen(DataSet: TDataSet);
      procedure db_CtaPagarBeforeOpen(DataSet: TDataSet);
      procedure db_ctaReceberAfterClose(DataSet: TDataSet);
      procedure db_CtaPagarAfterClose(DataSet: TDataSet);
      procedure DataModuleCreate(Sender: TObject);
      procedure db_ctaReceberAfterOpen(DataSet: TDataSet);
      procedure db_CtaPagarAfterOpen(DataSet: TDataSet);
      procedure db_ParametrosAfterOpen(DataSet: TDataSet);
      procedure ACBrNFe1StatusChange(Sender: TObject);
      procedure db_ParametrosBeforeOpen(DataSet: TDataSet);

   private
      { Private declarations }
   public
      { Public declarations }
      FContigencia: Boolean;
      DANFE_FortesReport: TACBrNFeDANFeRL;

      procedure prcDANFELogo;
      procedure SetGerarDANFE;
      procedure SetEmailConfig;
      procedure SetCertificados;
      procedure GerarNFe(NumNFe: integer);
   end;

var
   BaseDados: TBaseDados;

   LOKResp: Boolean;
   StreamMemo: TMemoryStream;

implementation

uses FPrincipal, Biblioteca, Global, FCadClientes,
   F_RelEst_Historico, FStatusNFe, App.SQL, FReciboImprimir,
   FNotaFiscal, App.Constantes, App.Funcoes, CompraClass;

{$R *.dfm}

procedure TBaseDados.DataModuleCreate(Sender: TObject);
begin
   ACBrValidador1.TipoDocto := docGTIN;
end;

procedure TBaseDados.SetGerarDANFE;
begin
   if (DANFE_FortesReport <> Nil) then
      Exit;
   if FParametros.NFE.GeradorDANFE = 'FORTESREPORT' then
   begin
      DANFE_FortesReport := TACBrNFeDANFeRL.Create(Self);
      ACBrNFe1.DANFE := DANFE_FortesReport;
      DANFE_FortesReport.PathPDF := _NFE_LOCAL_PDF;
      DANFE_FortesReport.PosCanhoto := prRodape;
      DANFE_FortesReport.CasasDecimais.MaskqCom := '###,###,###,##0.00';;
      DANFE_FortesReport.CasasDecimais.MaskvUnCom := '###,###,###,##0.00';;
   end;
   ACBrNFe1.Configuracoes.Arquivos.PathNFe := _NFE_LOCAL_GERADAS;
   ACBrNFe1.Configuracoes.Arquivos.PathInu := _NFE_LOCAL_INUTILIZADAS;
   ACBrNFe1.Configuracoes.Arquivos.PathEvento := _NFE_LOCAL_EVENTO;
   ACBrNFe1.Configuracoes.Arquivos.PathSalvar := _NFE_LOCAL_SALVAR;
   ACBrNFe1.Configuracoes.Arquivos.PathSchemas := _NFE_LOCAL_SCHEMA;
end;

procedure TBaseDados.SetCertificados;
var
   mVersaoDF: TpcnVersaoDF; // add: janeiro/2018
begin
   FContigencia := FParametros.NFE.FormaEmissao = '2';
   // 2=contigencia (nas configurações do sistema, na aba "NF-e" );
   mVersaoDF := TpcnVersaoDF(FParametros.NFE.VersaoNFe);

   ACBrNFe1.SSL.DescarregarCertificado;
   ACBrNFe1.NotasFiscais.Clear;
   if ACBrNFe1.DANFE <> nil then
      ACBrNFe1.DANFE.TipoDANFE := tiRetrato;
   ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;
   ACBrNFe1.Configuracoes.Geral.VersaoDF := mVersaoDF;
   ACBrNFe1.Configuracoes.Geral.VersaoQRCode :=
     TpcnVersaoQrCode(db_Parametros.FieldByName('NFCE_QRCODE').AsInteger);
   ACBrNFe1.Configuracoes.Certificados.ArquivoPFX :=
     FParametros.NFE.CertArquivo;
   ACBrNFe1.Configuracoes.Certificados.Senha := FParametros.NFE.CertSenha;
   ACBrNFe1.Configuracoes.Certificados.NumeroSerie := FParametros.NFE.CertSerie;
   // ----------------------------------------------------------------------
   // WebServices
   // ----------------------------------------------------------------------
   ACBrNFe1.Configuracoes.WebServices.UF := FParametros.Empresa.UF;
   ACBrNFe1.Configuracoes.WebServices.TimeOut := 18000;
   // tempo limite de espera pelo webservice
   ACBrNFe1.Configuracoes.WebServices.AguardarConsultaRet := 5000;
   // tempo padrão que vai aguardar para consultar após enviar a NF-e
   ACBrNFe1.Configuracoes.WebServices.IntervaloTentativas := 3000;
   // Intervalo entre as tentativas de envio
   ACBrNFe1.Configuracoes.WebServices.Tentativas := 10;
   // quantidade de tentativas de envio
   ACBrNFe1.Configuracoes.WebServices.AjustaAguardaConsultaRet := True;
   // ajustar "AguardarConsultaRet" com o valor retornado pelo webservice
   // webservices
   ACBrNFe1.Configuracoes.WebServices.Visualizar := False;

   // ----------------------------------------------------------------------
   //
   // ----------------------------------------------------------------------
   ACBrNFe1.Configuracoes.Geral.ExibirErroSchema := False;
   ACBrNFe1.Configuracoes.Geral.FormatoAlerta :=
     '[ %TAGNIVEL%%TAG% ] %DESCRICAO% - %MSG%';

   // ----------------------------------------------------------------------
   // Configuracoes de pastas esquemas
   // ----------------------------------------------------------------------
   ACBrNFe1.Configuracoes.Geral.IdCSC := db_Parametros.FieldByName
     ('NFCE_IDCSC').AsString;
   // ATENCAO: SEM ESSA INFORMACAO [IdCSC] VOCÊ NÃO CONSEGUIRA  EMITIR NFC-E.;
   ACBrNFe1.Configuracoes.Geral.CSC := db_Parametros.FieldByName
     ('NFCE_CSC').AsString;
   // ATENCAO: SEM ESSA INFORMACAO [CSC] VOCÊ NÃO CONSEGUIRA  EMITIR NFC-E.

   // ----------------------------------------------------------------------
   // Configuracoes de pastas esquemas
   // ----------------------------------------------------------------------
   ACBrNFe1.Configuracoes.Arquivos.PathNFe := _NFE_LOCAL_GERADAS;
   ACBrNFe1.Configuracoes.Arquivos.PathInu := _NFE_LOCAL_INUTILIZADAS;
   ACBrNFe1.Configuracoes.Arquivos.PathEvento := _NFE_LOCAL_EVENTO;
   ACBrNFe1.Configuracoes.Arquivos.PathSalvar := _NFE_LOCAL_SALVAR;
   ACBrNFe1.Configuracoes.Arquivos.PathSchemas := _NFE_LOCAL_SCHEMA;

   // ----------------------------------------------------------------------
   // Verificar ambiente (se em producao ou homologacao)
   // ----------------------------------------------------------------------
   ACBrNFe1.Configuracoes.WebServices.Ambiente :=
     TpcnTipoAmbiente(FParametros.NFE.Ambiente);

   // ----------------------------------------------------------------------
   // Se for modo contigencia
   // ----------------------------------------------------------------------
   if FContigencia then
      ACBrNFe1.Configuracoes.Geral.FormaEmissao := teContingencia
   else
      ACBrNFe1.Configuracoes.Geral.FormaEmissao := teNormal;

   // ----------------------------------------------------------------------
   //
   // ----------------------------------------------------------------------
   ACBrNFe1.Configuracoes.Geral.ForcarGerarTagRejeicao938 := fgtSempre;
   // ADD: MAIO/2019

   // ----------------------------------------------------------------------
   // Definir tipo de SSL
   // ----------------------------------------------------------------------
   SetCertificadoDigital(ACBrNFe1, db_Parametros.FieldByName('SSL_TIPO')
     .AsString);
   SetCertificadoSeguranca(ACBrNFe1, db_Parametros.FieldByName('TSL_TIPO')
     .AsString);

   SetEmailConfig();
end;

procedure TBaseDados.SetEmailConfig;
begin
   ACBrMail1.Host := FParametros.Email.SMTPHost;
   ACBrMail1.Port := FParametros.Email.SMTPPorta.ToString;
   ACBrMail1.Username := FParametros.Email.Usuario;
   ACBrMail1.Password := FParametros.Email.Senha;
   ACBrMail1.From := FParametros.Email.Usuario;
   ACBrMail1.SetSSL := FParametros.Email.SSLTSL; // SSL - ConexÃ£o Segura
   ACBrMail1.SetTLS := FParametros.Email.SSLTSL; // Auto TLS
   ACBrMail1.ReadingConfirmation := False;
   // Nao pedir confirmacao de leitura do email
   ACBrMail1.UseThread := False; // Aguarda Envio do Email(nao usa thread)
   ACBrMail1.FromName := FParametros.Email.Nome;
end;

procedure TBaseDados.prcDANFELogo;
begin
   if ACBrNFe1.DANFE <> nil then
   begin
      if FileExists(db_Parametros.FieldByName('INF_IMGIMPRIMIR').AsString) then
         ACBrNFe1.DANFE.Logo := db_Parametros.FieldByName
           ('INF_IMGIMPRIMIR').AsString;
   end;
end;

procedure TBaseDados.GerarNFe(NumNFe: integer);
var
   mRetornoOk: Boolean;
   nSequencia: integer;
   mFaturas: Boolean;
   mInscricao: String;
   mCNPJ: String;
   mNCM: String;
   mTipoPessoa: String;
   mTipoTributacao: string;
   mContribuinteICMS: string;
   mUF: integer;
   mParcela: String;
   mIDProduto: String;
   mCompraItemFiscal: TCompraItemFiscal;
   mIDSTOrigem: integer;
   mIDSTICMS: integer;
   mIDOrigemPro: integer;
   mIDCSOSNICMS: integer;
   mIndEscala: integer;
   mIDIPI: integer;
   mIDPIS: integer;
   mIDCOFINS: integer;
   pAliqDestino: integer;
   pICMSRegioes: integer;
   vDifAliq: integer;
   CalculaST: String;
   pIBPT: string;
   tIBPT: string;
   Interestadual: String;
   DifalSIMPLES: String;
   mSIMPLES_NACIONAL: String;
   vCreditoICMS: Currency;
   mCreditoICMS: String;
   inEmpresa: integer;
   inCliente: integer;
   inVenda: integer;
   inNotaFiscal: integer;

   pICMS: Currency;
   vICMS: Currency;
   // vICMSProd  : Currency;
   mVQtde: Currency;
   mVUnit: Currency;
   mVUnitDesc: Currency;
   // mValorDesc      : Currency;

   vBC_CRT1_900: Currency;
   vICMS_CRT1_900: Currency;
   vBC_TotvProd: Currency;
   v_TotvDesc: Currency;
   q_TotQTde: Currency;
   v_TOTvNF: Currency;

Begin
   mVQtde := 0;
   mVUnit := 0;
   mVUnitDesc := 0;
   pICMS := 0;
   vICMS := 0;
   // vICMSProd  := 0;
   // mValorDesc := 0;

   mIDIPI := 0;
   mIDPIS := 0;
   mIDCOFINS := 0;

   mCompraItemFiscal := TCompraItemFiscal.Create;
   mIDSTOrigem := 0;
   mIDSTICMS := 0;
   mIDOrigemPro := 0;
   mIDCSOSNICMS := 0;
   mIndEscala := 0;
   vBC_TotvProd := 0;
   v_TotvDesc := 0;
   q_TotQTde := 0;
   v_TOTvNF := 0;
   Interestadual := '';
   mFaturas := False;
   inNotaFiscal := FrmNotaFiscal.QryVenda.FieldByName('NOTAFISCAL').AsInteger;
   inCliente := FrmNotaFiscal.QryVenda.FieldByName('CLIENTE').AsInteger;
   inTransportadora := FrmNotaFiscal.QryVenda.FieldByName('TRANSPORTADORA')
     .AsInteger;
   prcDANFELogo;
   ACBrNFe1.NotasFiscais.Clear;
   SetGerarDANFE();
   SetCertificados();

   vBC_CRT1_900 := 0;
   vICMS_CRT1_900 := 0;
   try
      with ACBrNFe1.NotasFiscais.Add.NFE do
      begin
         if (StrToIntDef(FParametros.NFE.RespTec_IDCSRT, 0) > 0) and
           (FParametros.NFE.RespTec_CSRT <> '') then
         begin
            ACBrNFe1.Configuracoes.RespTec.IdCSRT :=
              StrToIntDef(FParametros.NFE.RespTec_IDCSRT, 0);
            // Conforme indicação
            ACBrNFe1.Configuracoes.RespTec.CSRT := FParametros.NFE.RespTec_CSRT;
            // Conforme indicação
            infRespTec.IdCSRT := StrToIntDef(FParametros.NFE.RespTec_IDCSRT,
              0);; // Conforme indicação
         end;
         infRespTec.CNPJ := OnlyNumber(FParametros.NFE.RespTec_CNPJ);
         infRespTec.xContato := FParametros.NFE.RespTec_xContato;
         infRespTec.Email := FParametros.NFE.RespTec_email;
         infRespTec.fone := OnlyNumber(FParametros.NFE.RespTec_Fone);
         // --------------------------------------------------------------------------
         //
         // --------------------------------------------------------------------------
         Ide.natOp := GetCFOPDescricao
           (FrmNotaFiscal.QryVenda.FieldByName('CFOP').AsInteger);
         Ide.modelo := db_Parametros.FieldByName('NFE_MODELO').AsInteger;
         Ide.serie := db_Parametros.FieldByName('NFE_SERIE').AsInteger;
         Ide.nNF := NumNFe;
         Ide.cNF := GerarCodigoDFe(NumNFe);
         // mudança em junho/2019 (para atender "Nota Técnica 2019/001")
         Ide.dEmi := FrmNotaFiscal.QryVenda.FieldByName('EMISSAO').AsDateTime;
         Ide.dSaiEnt := FrmNotaFiscal.QryVenda.FieldByName('DATA_ENTRADASAIDA')
           .AsDateTime;
         Ide.hSaiEnt := Time;
         if FrmNotaFiscal.QryVenda.FieldByName('OPERACAO').AsString = 'S' then
            Ide.tpNF := tnSaida;
         if FrmNotaFiscal.QryVenda.FieldByName('OPERACAO').AsString = 'E' then
            Ide.tpNF := tnEntrada;
         Ide.tpEmis := teNormal;
         if FContigencia then
         begin
            Ide.tpEmis := teContingencia;
            Ide.dhCont := now;
            Ide.xJust := 'Problema tecnico com a internet.';
         end
         else
         begin
            // Ide.tpEmis      := StrToTpEmis(Ok,  db_Parametros.FieldByName('NFE_FORMAEMISSAO').AsString);
            Ide.tpEmis := StrToTpEmis(LOKResp, FParametros.NFE.FormaEmissao);
         end;
         Ide.tpAmb := TpcnTipoAmbiente(FParametros.NFE.Ambiente);

         Ide.verProc := 'ACBr'; // Versão do seu sistema
         Ide.cUF := UFtoCUF(db_Parametros.FieldByName('UF').AsString);
         Ide.cMunFG := db_Parametros.FieldByName('IDCIDADE').AsInteger;
         Ide.indPres := TpcnPresencaComprador.pcPresencial; // 5
         Ide.finNFe := fnNormal;
         Emit.CNPJCPF := db_Parametros.FieldByName('CNPJ').AsString;
         Emit.IE := db_Parametros.FieldByName('IE').AsString;
         Emit.xNome := db_Parametros.FieldByName('NOME').AsString;
         Emit.xFant := db_Parametros.FieldByName('NOMEFANTASIA').AsString;
         Emit.EnderEmit.fone := db_Parametros.FieldByName('FONE').AsString;
         Emit.EnderEmit.CEP :=
           StrToInt(OnlyNumber(db_Parametros.FieldByName('CEP').AsString));
         Emit.EnderEmit.xLgr := db_Parametros.FieldByName('ENDERECO').AsString;
         Emit.EnderEmit.nro := db_Parametros.FieldByName('NUMERO').AsString;
         Emit.EnderEmit.xCpl := db_Parametros.FieldByName
           ('COMPLEMENTO').AsString;
         Emit.EnderEmit.xBairro := db_Parametros.FieldByName('BAIRRO').AsString;
         Emit.EnderEmit.cMun := db_Parametros.FieldByName('IDCIDADE').AsInteger;
         Emit.EnderEmit.xMun := db_Parametros.FieldByName('CIDADE').AsString;
         Emit.EnderEmit.UF := db_Parametros.FieldByName('UF').AsString;
         Emit.EnderEmit.cPais := db_Parametros.FieldByName('IDPAIS').AsInteger;
         Emit.EnderEmit.xPais := db_Parametros.FieldByName('NOMEPAIS').AsString;
         Emit.IEST := '';
         Emit.CNAE := db_Parametros.FieldByName('CNAE').AsString;
         Emit.IM := db_Parametros.FieldByName('IM').AsString;

         { ************************************************************************
           ** De acordo com o Ministério da Fazenda:                             **
           **    0 – Simples Nacional (1)                                        **
           **    1 – Simples Nacional excesso de sublimite da receita bruta (2)  **
           **    2 – Regime Normal (3)                                           **
           ************************************************************************
           **  se a empresa FOR optante do simples, pegar aliquota do SIMPLES    **
           *********************************************************************** }
         Emit.CRT := StrToCRT(mRetornoOk,
           FParametros.Empresa.REGIME_TRIB.ToString);

         if not mRetornoOk then
            Atencao(Format('Código do regime tributário "%d" desconhecido.',
              [FParametros.Empresa.REGIME_TRIB]));

         mTipoPessoa := GetClienteCampo(inCliente, 'CLASSIFICACAO');
         mContribuinteICMS := GetClienteCampo(inCliente, 'CONTRIBUINTEICMS');
         if Trim(mContribuinteICMS) = '' then
            mContribuinteICMS := '1';

         if Trim(mTipoPessoa) = '' then
            mTipoPessoa := 'J';

         mCNPJ := OnlyNumber(GetClienteCampo(inCliente, 'CPF_CNPJ'));
         mInscricao :=
           OnlyNumber(UpperCase(GetClienteCampo(inCliente, 'RG_IE')));
         // ---------------------------------------------------------------------------------------------------
         // TRATAMENTOS PARA INSCRICAO ESTADUAL
         // --------------------------------------------------------------------------------------------------
         Ide.indFinal := cfNao;
         Ide.idDest := doInterna; // Quando for operação dentro do estado
         if (db_Parametros.FieldByName('UF').AsString <>
           GetClienteCampo(inCliente, 'UF')) then
         begin
            Ide.idDest := doInterestadual;
            Interestadual := 'S'; // Quando for operação fora do estado
         end;

         if (mTipoPessoa = 'F') then
         Begin
            Dest.IE := ''; // Em BRANCO
            Dest.indIEDest := inNaoContribuinte;
            Ide.indFinal := cfConsumidorFinal;
         End;

         if (mTipoPessoa = 'J') then
         begin
            if (mContribuinteICMS = '1') then
            Begin
               Dest.IE := mInscricao;
               Dest.indIEDest := inContribuinte;
            End;
            if (mContribuinteICMS = '2') then
            Begin
               Dest.IE := mInscricao;
               Dest.indIEDest := inIsento;
            End;
            if (mContribuinteICMS = '9') then
            Begin
               Dest.IE := mInscricao;
               Dest.indIEDest := inNaoContribuinte;
            End;
         end;

         // ---------------------------------------------------------------------------------------------------
         //
         // --------------------------------------------------------------------------------------------------
         Dest.CNPJCPF := mCNPJ;
         Dest.ISUF := '';
         Dest.xNome := Copy(GetClienteCampo(inCliente, 'NOME'), 1, 60);
         Dest.EnderDest.fone :=
           OnlyNumber(Cliente_Endereco(inCliente, 'DDD_FONE') +
           Cliente_Endereco(inCliente, 'FONE'));
         Dest.EnderDest.CEP :=
           StrToInt(OnlyNumber(Cliente_Endereco(inCliente, 'CEP')));
         Dest.EnderDest.xLgr := Cliente_Endereco(inCliente, 'ENDERECO');
         Dest.EnderDest.nro := Cliente_Endereco(inCliente, 'NUMERO');
         Dest.EnderDest.xCpl := Cliente_Endereco(inCliente, 'COMPLEMENTO');
         Dest.EnderDest.xBairro := Cliente_Endereco(inCliente, 'BAIRRO');
         Dest.EnderDest.cMun :=
           StrToIntDef(Cliente_Endereco(inCliente, 'IDCIDADE'), 0);
         Dest.EnderDest.xMun := Cliente_Endereco(inCliente, 'NOMECIDADE');
         Dest.EnderDest.UF := Cliente_Endereco(inCliente, 'UF');
         Dest.EnderDest.cPais := 1058;
         Dest.EnderDest.xPais := 'BRASIL';

         // ------------------------------------------------------------------------
         // PRODUTOS:
         // ------------------------------------------------------------------------
         nSequencia := 0;
         FrmNotaFiscal.QryVendaItem.First;
         while not FrmNotaFiscal.QryVendaItem.Eof do
         begin
            mCompraItemFiscal := GetCompraItemFiscal
              (FrmNotaFiscal.QryVendaItem.FieldByName('IDPRODUTO').AsString);
            with Det.Add do
            begin
               inc(nSequencia);
               Prod.nItem := nSequencia;
               Prod.cProd := FrmNotaFiscal.QryVendaItem.FieldByName
                 ('IDPRODUTO').AsString;
               Prod.xProd := FrmNotaFiscal.QryVendaItem.FieldByName
                 ('DESCRICAO').AsString;
               Prod.EXTIPI := '';

               pICMS := 0;
               vICMS := 0;
               // vICMSProd  := 0;
               // mValorDesc := 0;

               pICMS := RoundABNT(FrmNotaFiscal.QryVendaItem.FieldByName('ICMS')
                 .AsFloat, 3);
               vICMS := RoundABNT(FrmNotaFiscal.QryVendaItem.FieldByName
                 ('VLR_ICMS').AsFloat, 3);
               mVQtde := RoundABNT(FrmNotaFiscal.QryVendaItem.FieldByName
                 ('QUANTIDADE').AsFloat, 4);
               if mVQtde > 0 then // pra evitar erro divisao por 0 (zero).
               begin
                  // mVUnitDesc := RoundABNT((FrmNotaFiscal.QryVendaItem.FieldByName('VLR_DESCONTO').AsFloat / mVQtde ),2);
                  mVUnitDesc :=
                    RoundABNT(FrmNotaFiscal.QryVendaItem.FieldByName
                    ('VLR_DESCONTO').AsFloat, 3);
               end;
               mVUnit := RoundABNT(FrmNotaFiscal.QryVendaItem.FieldByName
                 ('VLR_UNIT').AsFloat, 3);
               mVQtde := RoundABNT(FrmNotaFiscal.QryVendaItem.FieldByName
                 ('QUANTIDADE').AsFloat, 4);
               q_TotQTde := q_TotQTde + mVQtde;

               Prod.IndTot := itSomaTotalNFe;
               Prod.CFOP := FrmNotaFiscal.QryVendaItem.FieldByName
                 ('CFOP').AsString;
               Prod.uCom := FrmNotaFiscal.QryVendaItem.FieldByName
                 ('UND').AsString;
               Prod.uTrib := FrmNotaFiscal.QryVendaItem.FieldByName
                 ('UND').AsString;
               Prod.qCom := mVQtde;
               Prod.qTrib := mVQtde;
               v_TotvDesc := RoundABNT((v_TotvDesc + mVUnitDesc), 3);

               Prod.vUnCom := RoundABNT(mVUnit, 3);
               Prod.vUnTrib := RoundABNT(mVUnit, 3);
               Prod.vProd := RoundABNT(mVUnit * mVQtde, 3);
               Prod.vDesc := RoundABNT(mVUnitDesc, 3);
               vBC_TotvProd := RoundABNT((vBC_TotvProd + Prod.vProd), 3);

               // -----------------------------------------------------------------------
               // Tributacao
               // -----------------------------------------------------------------------
               Prod.NCM :=
                 OnlyNumber(FrmNotaFiscal.QryVendaItem.FieldByName('NCM')
                 .AsString);
               Prod.CEST :=
                 OnlyNumber(FrmNotaFiscal.QryVendaItem.FieldByName('CEST')
                 .AsString);

               mIDOrigemPro :=
                 StrToIntDef
                 (GetProdutoCampo(FrmNotaFiscal.QryVendaItem.FieldByName
                 ('IDPRODUTO').AsString, 'IDCSTORIGEM'), 0);
               mIDSTICMS :=
                 StrToIntDef
                 (GetProdutoCampo(FrmNotaFiscal.QryVendaItem.FieldByName
                 ('IDPRODUTO').AsString, 'IDCSTICMS'), 0);
               mIDCSOSNICMS :=
                 StrToIntDef
                 (GetProdutoCampo(FrmNotaFiscal.QryVendaItem.FieldByName
                 ('IDPRODUTO').AsString, 'IDCSOSNICMS'), 0);
               mIndEscala :=
                 StrToIntDef
                 (GetProdutoCampo(FrmNotaFiscal.QryVendaItem.FieldByName
                 ('IDPRODUTO').AsString, 'INDESCALA'), 0);

               mIDIPI := StrToIntDef
                 (GetProdutoCampo(FrmNotaFiscal.QryVendaItem.FieldByName
                 ('IDPRODUTO').AsString, 'IDCSTIPI'), 0);
               mIDPIS := StrToIntDef
                 (GetProdutoCampo(FrmNotaFiscal.QryVendaItem.FieldByName
                 ('IDPRODUTO').AsString, 'IDCSTPIS'), 0);
               mIDCOFINS :=
                 StrToIntDef
                 (GetProdutoCampo(FrmNotaFiscal.QryVendaItem.FieldByName
                 ('IDPRODUTO').AsString, 'IDCSTCOFINS'), 0);

               // -----------------------------------------------------------------------------------------------------------
               // ADD: Zanini - 09/01/2020 (CSOSN = 900)
               // -----------------------------------------------------------------------------------------------------------
               // Para CRT = 1 só pode destacar ICMS normal na nota quando usar o CSOSN 900.
               // Para os outros CSOSN mesmo se você preencher vBC, pICMS e vICMS para o item da nota
               // o código do componente vai ignorar já que as tags não existem no layout da NFe.
               // Quando você preenche o valor nos totais da NFe e usa CSOSN diferente de 900 ocorre a diferença.
               // -----------------------------------------------------------------------------------------------------------
               if (FParametros.Empresa.REGIME_TRIB = 1) then
               begin
                  if mIDCSOSNICMS = 900 then
                  begin
                     vBC_CRT1_900 := vBC_CRT1_900 +
                       RoundABNT((mVUnit * mVQtde), 2);
                     vICMS_CRT1_900 := vICMS_CRT1_900 + vICMS;
                  end;
               end;

               with Imposto do
               begin
                  with ICMS do
                  begin
                     // -----------------------------
                     // TAG: CST
                     // -----------------------------
                     CST := cstVazio;
                     if (Dest.indIEDest in [inIsento, inNaoContribuinte]) then
                     begin
                        // ----[REGRAS]--------------------------------------------------------------------------------------------------------------------------------------------------------//
                        // (Quando não for ISENTO (que tenha Inscrição Estadual))                                                                                                             //
                        // Quando uma nota fiscal for emitida para não contribuinte do ICMS, ou seja, para Pessoa Física ou Pessoa Jurídica com inscrição estadual isenta, somente são       //
                        // permitidas as seguintes situações tributárias:                                                                                                                    //
                        // => 00 - Tributada integralmente                                                                                                                                  //
                        // => 20 - Com redução da Base de Cálculo                                                                                                                           //
                        // => 40 - Isenta                                                                                                                                                   //
                        // => 41 - Não tributada                                                                                                                                            //
                        // => 60 - ICMS cobrado anteriormente por Substituição Tributária                                                                                                   //
                        // Caso seja emitido com uma situação tributária que não compreenda as citadas acima, será retornado o erro do CST incompatível na operação com não contribuinte.    //
                        // --------------------------------------------------------------------------------------------------------------------------------------------------------------------//
                        if (TpcnCSTIcms(mIDSTICMS) in [cst00, cst20, cst40,
                          cst41, cst60]) then
                           CST := StrToCSTICMS(LOKResp,
                             FormatFloat('00', mIDSTICMS));
                     end;
                     // Quando for ISENTO (não tiver Inscrição Estadual)
                     if (Dest.indIEDest in [inContribuinte]) then
                     begin
                        CST := StrToCSTICMS(LOKResp,
                          FormatFloat('00', mIDSTICMS));
                     end;

                     // ---------------------------------------------------
                     // TAG: CSOSN
                     // ---------------------------------------------------
                     // ----[REGRAS]--------------------------------------------------------------------------------------------------------------------------------------------------------//
                     // [Quando for ISENTO (ou Inscrição Estadual)]                                                                                                                       //
                     // Quando uma nota fiscal for emitida para não contribuinte do ICMS, ou seja, para Pessoa Física ou Pessoa Jurídica com inscrição estadual isenta,                   //
                     // somente são permitidas as seguintes situações tributárias:                                                                                                        //
                     // => 102 - Tributada sem permissão de crédito;                                                                                                                     //
                     // => 103 - Isenção do ICMS para faixa de receita bruta;                                                                                                            //
                     // => 300 - Imune;                                                                                                                                                  //
                     // => 400 - Não tributada pelo Simples Nacional;                                                                                                                    //
                     // => 500 - ICMS cobrado anteriormente por substituição tributária ou por antecipação;                                                                              //
                     // Caso seja emitido com uma situação tributária que não compreenda as citadas acima, será retornado o erro do CSOSN incompatível na operação com não contribuinte.  //
                     // ------------------------------------------------------------------------------------------------------------------------------------------------------------------//

                     ICMS.CSOSN := StrToCSOSNIcms(LOKResp,
                       mIDCSOSNICMS.ToString);
                     ICMS.orig :=
                       StrToOrig(LOKResp, FormatFloat('0', mIDOrigemPro));;
                     ICMS.modBC := dbiValorOperacao; // VERIFICAR
                     ICMS.vBC := 0;
                     ICMS.pICMS := 0;
                     ICMS.vICMS := 0;

                     ICMS.pICMS :=
                       RoundABNT(FrmNotaFiscal.QryVendaItem.FieldByName('ICMS')
                       .AsFloat, 3);
                     ICMS.vICMS :=
                       RoundABNT(FrmNotaFiscal.QryVendaItem.FieldByName
                       ('VLR_ICMS').AsFloat, 3);

                     if FrmNotaFiscal.QryVendaItem.FieldByName('VLR_ICMS')
                       .AsFloat > 0 then
                     begin
                        ICMS.vBC := RoundABNT(mVUnit * mVQtde, 3);
                     end;

                     // se for 'simples nacional" =  não destaca ICMS
                     if (FParametros.Empresa.REGIME_TRIB in [1]) then
                     begin
                        if ICMS.CST = cst60 then
                        begin
                           ICMS.vBC := 0
                        end
                        else
                        begin
                           // ICMS.vBC     := RoundABNT((vICMS * mVQtde),3);; // erro aqui
                           ICMS.vBC := 0;
                           ICMS.pICMS := 0;
                           ICMS.vICMS := 0;
                        end;
                     end;

                     ICMS.modBCST := dbisMargemValorAgregado; // VERIFICAR
                     ICMS.pFCP := 0; // Verificar Posteriormente.

                     // -----------------------------------------------------------------------
                     // Essas tags foram adicionadas em: maio/2019
                     // -----------------------------------------------------------------------

                     if (FParametros.Empresa.REGIME_TRIB in [2, 3]) then
                     begin
                        // Tributação ICMS cobrado anteriormente por substituição tributária (CST=60) ou Tributação ICMS pelo Simples Nacional (CSOSN=500);
                        if ((TpcnCSTIcms(mIDSTICMS) in [cst60]) or
                          (ICMS.CSOSN in [csosn500])) then
                        begin
                           ICMS.pST := pICMS + ICMS.pFCP;

                           if (mCompraItemFiscal <> nil) then
                           begin
                              ICMS.vBCSTRet :=
                                (mCompraItemFiscal.VBCST * mVQtde);
                              ICMS.vICMSSTRet :=
                                (mCompraItemFiscal.vICMSSTRet * mVQtde);
                              ICMS.vICMSSubstituto :=
                                (mCompraItemFiscal.vICMS * mVQtde);
                           end;
                        end;
                     end;
                  end; // GRUPO ICMS


                  // mIDIPI       := StrToIntDef(GetProdutoCampo(FrmNotaFiscal.QryVendaItem.FieldByName('IDPRODUTO').AsString,'IDCSTIPI'),0);
                  // mIDPIS       := StrToIntDef(GetProdutoCampo(FrmNotaFiscal.QryVendaItem.FieldByName('IDPRODUTO').AsString,'IDCSTPIS'),0);
                  // mIDCOFINS    := StrToIntDef(GetProdutoCampo(FrmNotaFiscal.QryVendaItem.FieldByName('IDPRODUTO').AsString,'IDCSTCOFINS'),0);
                  //
                  // StrToCSTIPI(out ok: boolean; const s: string): TpcnCstIpi;

                  with IPI do
                  begin
                     CST := StrToCSTIPI(LOKResp, Poem_Zeros(mIDIPI, 2));

                     if (FrmNotaFiscal.QryVendaItem.FieldByName('VLR_IPI')
                       .AsFloat > 0) then
                     begin
                        vBC := RoundABNT(mVUnit * mVQtde, 3);;
                        pIPI := FrmNotaFiscal.QryVendaItem.FieldByName
                          ('IPI').AsFloat;
                        vIPI := FrmNotaFiscal.QryVendaItem.FieldByName
                          ('VLR_IPI').AsFloat;
                     end;
                  end;

                  with PIS do
                  begin
                     CST := StrToCSTPIS(LOKResp, Poem_Zeros(mIDPIS, 2));

                     if (FrmNotaFiscal.QryVendaItem.FieldByName('VPIS')
                       .AsFloat > 0) then
                     begin
                        vBC := RoundABNT(mVUnit * mVQtde, 3);;
                        pPIS := FrmNotaFiscal.QryVendaItem.FieldByName
                          ('PPIS').AsFloat;
                        vPIS := FrmNotaFiscal.QryVendaItem.FieldByName
                          ('VPIS').AsFloat;
                     end;
                  end;

                  with COFINS do
                  begin
                     CST := StrToCSTCOFINS(LOKResp, Poem_Zeros(mIDCOFINS, 2));;

                     if (FrmNotaFiscal.QryVendaItem.FieldByName('VCOFINS')
                       .AsFloat > 0) then
                     begin
                        vBC := RoundABNT(mVUnit * mVQtde, 3);;
                        pCOFINS := FrmNotaFiscal.QryVendaItem.FieldByName
                          ('PCOFINS').AsFloat;
                        vCOFINS := FrmNotaFiscal.QryVendaItem.FieldByName
                          ('VCOFINS').AsFloat;
                     end;
                  end;

               end;
               // -----------------------------------------------------------------------
               //
               // -----------------------------------------------------------------------
               Prod.indEscala := StrToIndEscala(LOKResp, mIndEscala.ToString);
               // Atenção: Se for "N" (NÃO) é obrigatório informar o CNPJ do fabricante.
               if (Prod.indEscala = ieNaoRelevante) then
               begin
                  Prod.CNPJFab :=
                    GetCNPJFabricante(FrmNotaFiscal.QryVendaItem.FieldByName
                    ('IDPRODUTO').AsString);
               end;
               Prod.cEAN :=
                 GetProdutoCampo(FrmNotaFiscal.QryVendaItem.FieldByName
                 ('IDPRODUTO').AsString, 'CODIGO_BARRA');;
               Prod.cEANTrib :=
                 GetProdutoCampo(FrmNotaFiscal.QryVendaItem.FieldByName
                 ('IDPRODUTO').AsString, 'CODIGO_BARRA');;
               ACBrValidador1.Documento := Prod.cEAN;
               if ACBrValidador1.Validar = False then
               begin
                  Prod.cEAN := 'SEM GTIN';
                  Prod.cEANTrib := 'SEM GTIN';
               end;
            end;
            FrmNotaFiscal.QryVendaItem.next;
         end;
         // Estava ocorrendo erro 531 e 532
         if (FParametros.Empresa.REGIME_TRIB = 1) then
         begin
            Total.ICMSTot.vBC := vBC_CRT1_900;
            Total.ICMSTot.vICMS := vICMS_CRT1_900;
         end
         else
         begin
            Total.ICMSTot.vBC :=
              RoundABNT(FrmNotaFiscal.QryVenda.FieldByName('ICMS_BASECALCULO')
              .AsFloat, 3);
            Total.ICMSTot.vICMS :=
              RoundABNT(FrmNotaFiscal.QryVenda.FieldByName('ICMS_VALOR')
              .AsFloat, 3);
         end;

         v_TOTvNF := RoundABNT((vBC_TotvProd - v_TotvDesc), 3);
         Total.ICMSTot.vProd := RoundABNT(vBC_TotvProd, 3);
         Total.ICMSTot.vDesc := RoundABNT(v_TotvDesc, 3);
         Total.ICMSTot.vNF := RoundABNT(v_TOTvNF, 3);

         { ***********************************************************************
           0 Contratação do Frete por conta do Remetente (CIF);
           1 Contratação do Frete por conta do destinatário/remetente (FOB);
           2 Contratação do Frete por conta de terceiros;
           3 Transporte próprio por conta do remetente;
           4 Transporte próprio por conta do destinatário;
           9 Sem Transportadora.
           *********************************************************************** }

         case StrToIntDef(FrmNotaFiscal.QryVenda.FieldByName('FRETE')
           .AsString, 9) of
            0:
               Transp.modFrete := mfContaEmitente;
            1:
               Transp.modFrete := mfContaDestinatario;
            2:
               Transp.modFrete := mfContaTerceiros;
            3:
               Transp.modFrete := mfProprioRemetente;
            4:
               Transp.modFrete := mfProprioDestinatario;
            9:
               Transp.modFrete := mfSemFrete;
         end;

         if inTransportadora > 0 then
         begin
            Transp.Transporta.CNPJCPF :=
              OnlyNumber(GetClienteCampo(inTransportadora, 'CPF_CNPJ'));
            Transp.Transporta.IE :=
              OnlyNumber(GetClienteCampo(inTransportadora, 'RG_IE'));
            Transp.Transporta.xNome :=
              GetClienteCampo(inTransportadora, 'NOME');
            Transp.Transporta.xEnder := GetClienteCampo(inTransportadora,
              'ENDERECO');
            Transp.Transporta.xMun := GetClienteCampo(inTransportadora,
              'NOMECIDADE');
            Transp.Transporta.UF := GetClienteCampo(inTransportadora, 'UF');

            with Transp.Vol.Add do
            begin
               qVol := FrmNotaFiscal.QryVenda.FieldByName('FRETE_QUANTIDADE')
                 .AsInteger;
               esp := FrmNotaFiscal.QryVenda.FieldByName
                 ('FRETE_ESPECIE').AsString;
               marca := FrmNotaFiscal.QryVenda.FieldByName
                 ('FRETE_MARCA').AsString;
               nVol := FrmNotaFiscal.QryVenda.FieldByName
                 ('FRETE_NUMERO').AsString;
               pesoB := FrmNotaFiscal.QryVenda.FieldByName
                 ('FRETE_PBRUTO').AsFloat;
               pesoL := FrmNotaFiscal.QryVenda.FieldByName
                 ('FRETE_PLIQUIDO').AsFloat;
            end;
         end;

         Cobr.Fat.nFat := inNotaFiscal.ToString;
         Cobr.Fat.vOrig :=
           RoundABNT(FrmNotaFiscal.QryVenda.FieldByName('TOTAL_NF').AsFloat, 2);
         Cobr.Fat.vDesc := 0;
         Cobr.Fat.vLiq :=
           RoundABNT(FrmNotaFiscal.QryVenda.FieldByName('TOTAL_NF').AsFloat, 2);
         if not(Ide.finNFe in [fnDevolucao, fnAjuste]) then
         begin
            // ------------------------------------------------------------------------
            // se houve forma de pagamento
            // ------------------------------------------------------------------------
            if FrmNotaFiscal.QryVenda.FieldByName('FORMAPAGTO').AsInteger > 0
            then
            begin
               QueryCriar(tblVendasFaturas);
               try
                  // GetFaturaNFe(tblVendasFaturas,FSistema.Empresa,inCliente,inNotaFiscal);
                  GetFaturaNFe(tblVendasFaturas, FSistema.Empresa,
                    FrmNotaFiscal.QryVenda.FieldByName('CODIGO').AsInteger);
                  mFaturas := tblVendasFaturas.RecordCount > 0;
                  tblVendasFaturas.First;
                  if mFaturas then
                  begin
                     while not tblVendasFaturas.Eof do
                     begin
                        with Cobr.Dup.Add do
                        begin
                           mParcela :=
                             ZeroEsquerda
                             (tblVendasFaturas.FieldByName('PARCELA')
                             .AsString, 3);
                           nDup := mParcela;
                           dVenc := tblVendasFaturas.FieldByName('VENCIMENTO')
                             .AsDateTime;
                           vDup := (tblVendasFaturas.FieldByName
                             ('VALOR').AsFloat);
                        end;
                        tblVendasFaturas.next;
                     end;
                     with pag.Add do
                     begin
                        tPag := TpcnFormaPagamento.fpBoletoBancario;
                        vPag := (tblVendasFaturas.FieldByName('VALOR').AsFloat);
                     end;

                  end
                  else
                  begin
                     with pag.Add do
                     begin
                        tPag := TpcnFormaPagamento.fpOutro;
                        vPag := RoundABNT
                          (FrmNotaFiscal.QryVenda.FieldByName('TOTAL_NF')
                          .AsFloat, 2);
                     end;
                  end;
               finally
                  QueryLiberar(tblVendasFaturas);
               end;
            end
            else
            begin
               with pag.Add do
               begin
                  tPag := TpcnFormaPagamento.fpOutro;
                  vPag := RoundABNT(FrmNotaFiscal.QryVenda.FieldByName
                    ('TOTAL_NF').AsFloat, 2);
               end;
            end;
         end;

         with InfAdic.obsCont.Add do
         begin
            xCampo := '.';
            xTexto := '.';
         end;

         with InfAdic.obsFisco.Add do
         begin
            xCampo := '.';
            xTexto := '.';
         end;

         InfAdic.infCpl := FrmNotaFiscal.QryVenda.FieldByName('OBS1').AsString;
         InfAdic.infAdFisco := FrmNotaFiscal.QryVenda.FieldByName
           ('OBS2').AsString;

         exporta.UFembarq := '';;
         exporta.xLocEmbarq := '';

         compra.xNEmp := '';
         compra.xPed := '';
         compra.xCont := '';
      end;
   finally
      mCompraItemFiscal.Free;
   end;

end;

procedure TBaseDados.ACBrNFe1StatusChange(Sender: TObject);
var
   Mensagem: String;
begin
   Mensagem := '';
   case ACBrNFe1.Status of
      stIdle:
         MsgEsperar('', '', False);
      stNFeStatusServico:
         Mensagem := 'Verificando Status do servico...';
      stNFeRecepcao:
         Mensagem := 'Enviando dados da NFe...';
      stNfeRetRecepcao:
         Mensagem := 'Recebendo dados da NFe...';
      stNfeConsulta:
         Mensagem := 'Consultando NFe...';
      stNfeCancelamento:
         Mensagem := 'Enviando cancelamento de NFe...';
      stNfeInutilizacao:
         Mensagem := 'Enviando pedido de inutilização...';
      stNFeRecibo:
         Mensagem := 'Consultando recibo de lote...';
      stNFeCadastro:
         Mensagem := 'Consultando cadastro...';
      stNFeEmail:
         Mensagem := 'Enviando nota eletrônica por e-mail...';
      stNFeCCe:
         Mensagem := 'Enviando carta de correção eletrônica...';
      stNFeEvento:
         Mensagem := 'Enviando evento...';
   end;
   if Mensagem <> '' then
   begin
      MsgEsperar('Enviando NF-e', Mensagem, True);
   end
   else
   begin
      MsgEsperar('', '', False);
   end;
   Application.ProcessMessages;
end;

procedure TBaseDados.db_CtaPagarAfterClose(DataSet: TDataSet);
begin
   db_CtaPagar.ParamByName('CODIGO').Clear;

end;

procedure TBaseDados.db_CtaPagarAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(db_CtaPagar);
end;

procedure TBaseDados.db_CtaPagarBeforeOpen(DataSet: TDataSet);
begin
   db_CtaPagar.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TBaseDados.db_CtaPagarBeforePost(DataSet: TDataSet);
begin
   if db_CtaPagar.FieldByName('FORNECEDOR').AsInteger < 1 then
   begin
      informar('campo Fornecedor é obrigatório ');
      abort;
   end;
end;

procedure TBaseDados.db_CtaPagarNewRecord(DataSet: TDataSet);
begin
   db_CtaPagar.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;
   db_CtaPagar.FieldByName('FORNECEDOR').AsInteger := 0;
   db_CtaPagar.FieldByName('NOTAFISCAL').AsInteger := 0;
   db_CtaPagar.FieldByName('DATA').AsDateTime := Date;
   db_CtaPagar.FieldByName('QUITADO').AsString := 'N';

end;

procedure TBaseDados.db_ctaReceberAfterClose(DataSet: TDataSet);
begin
   db_ctaReceber.ParamByName('CODIGO').Clear;

end;

procedure TBaseDados.db_ctaReceberAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(db_ctaReceber);
end;

procedure TBaseDados.db_ctaReceberBeforeOpen(DataSet: TDataSet);
begin
   db_ctaReceber.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TBaseDados.db_ctaReceberNewRecord(DataSet: TDataSet);
begin
   db_ctaReceber.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;
   db_ctaReceber.FieldByName('CLIENTE').AsInteger := 0;
   db_ctaReceber.FieldByName('NOTAFISCAL').AsInteger := 0;
   db_ctaReceber.FieldByName('DATA').AsDateTime := Date;
   db_ctaReceber.FieldByName('QUITADO').AsString := 'N';
end;

procedure TBaseDados.db_ParametrosAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(db_Parametros);
end;

procedure TBaseDados.db_ParametrosBeforeOpen(DataSet: TDataSet);
begin
   db_Parametros.ParamByName('EMPRESA').Clear;
   db_Parametros.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

end.
