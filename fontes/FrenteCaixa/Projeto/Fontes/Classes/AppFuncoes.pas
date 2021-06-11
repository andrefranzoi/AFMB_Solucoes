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

unit AppFuncoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,   FireDAC.Comp.Client, System.StrUtils,
  Vcl.Grids, Vcl.DBGrids,   System.Generics.Collections, Data.DB, Vcl.DBCtrls, System.Math,
  System.JSON, pcnConversaoNFe, pcnConversao, pcnNFe, ACBrValidador, ACBrUtil, ACBrDFeSSL, blcksock,
  System.DateUtils, ClasseDados,
  ACBrPosPrinter,
  ACBrNFe,
  ACBrSATExtratoClass,
  pcnVFPe;


  procedure TerminarAplicacao;
  procedure QueryCriar(var aQuery: TFDQuery; aPadrao: Boolean = True);
  procedure QueryLiberar(var aQuery: TFDQuery);
  procedure ObjetosHabilitar(const aObjetos : TArray<TWinControl>;aCondicao : Boolean);
  procedure Informar(const aMensagem: string; aTitulo: String='Atenção'; aErro: Boolean=False);
  function  Pergunta(const aMensagem: string; aFocoOk: Boolean = True; aTitulo: String='Atenção'; aMudarFonte: Boolean = False) : Boolean;
  function  AlinhaEsquerda(Texto: String; Tamanho: Integer): String;
  function  AlinhaDireita(Texto: String; Tamanho: Integer): String;
  function SoNumero(Texto:String):String;
  function Repetir(Quantidade: integer; Texto: string): String;
  Function Padc(aTexto : String; aTamanho : Integer; aCaractere : Char=' ') : String;
  Function Padl(aTexto : String; aTamanho : Integer; aCaractere : Char=' ') : String;
  Function Padr(aTexto : String; aTamanho : Integer; aCaractere : Char=' ') : String;
  Procedure ShowStatus(sTitulo:String='Processo em andamento...';sMessage: string='';lbAbrir:boolean=True);
  Procedure ShowStatusProgress(aMin,Max,aPosicao: Integer);
  function HDDSerie(FDrive : String = 'C') : String;
  function StrToModeloPosPrinter(const aModelo: string): TACBrPosPrinterModelo;

  Procedure SetCertificadoDigital(aACBrNFe: TACBrNFe; const aTipoSSL: String);
  Procedure SetCertificadoSeguranca(aACBrNFe: TACBrNFe; const aTipoSSL: String);

  Procedure MsgEsperar(sTitulo: String='Processo em andamento...'; sMessage: string=''; lbAbrir: boolean = True);
  Procedure PDVVisualizar(aTexto: TStringList);
  function ZeroEsquerda(Valor: String; Tamanho: Integer): String;
  function GetLoteString(): String;
  function GetLoteInteger(): Integer;
  function ContemNumero(aProcurar: Currency; const aLista: TArray<Double>): Boolean;
  procedure FormataCampo(aDataSet: TDataSet);
  Function Dia(vData: TDate): Integer;
  Function Mes(vData: TDate): Integer;
  Function Ano(vData: TDate): Integer;

  procedure MFE_EnviarRespostaFiscal( AIDPagamento: Integer = 0;
                                      ANsu: String = '';
                                      ANumerodeAprovacao: String = '';
                                      ABandeira: String = '';
                                      AAdquirente: String = '';
                                      ANumeroDocumento: String = '';
                                      AChaveAcesso: String = '');


implementation

{******************************************************************************
  Força terminar aplicação e tambem envia ao Windows fechamento forçado
  Isso evita ficar preso na memória
******************************************************************************}

uses FPrincipal, FPergunta, FStatus, FPDVPrint, FStatusNFe, AppConstantes;

procedure TerminarAplicacao;
begin
  Application.Terminate;
  TerminateProcess(GetCurrentProcess, 0); // É como "Finalizar tarefa" pelo gerenciador de tarefas do Windows
end;

Procedure QueryCriar(var aQuery: TFDQuery; aPadrao: Boolean = True);
begin
  aQuery := TFDQuery.Create(Nil);
  if aPadrao then
    aQuery.Connection := FrmPrincipal.ConnectFirebird
  else
    aQuery.Connection := FrmPrincipal.ConnectConfigPDV;
  aQuery.DisableControls; // A desativação dos controles acelera o desempenho, pois os dados não precisam ser gravados na tela a cada interação.
end;

Procedure QueryLiberar(var aQuery: TFDQuery);
begin
  if aQuery = nil then
    exit;
  aQuery.Close;
  aQuery.Free;
end;


Procedure ObjetosHabilitar(const aObjetos : TArray<TWinControl>;aCondicao : Boolean);
var
  I: Integer;
begin
  for I := Low(aObjetos) to High(aObjetos) do
    aObjetos[i].Enabled :=aCondicao;
end;

function Pergunta(const aMensagem: string; aFocoOk: Boolean; aTitulo: String; aMudarFonte: Boolean) : Boolean;
begin
  Result := False;
  try
    FrmPergunta := TFrmPergunta.Create(nil);
    FrmPergunta.lblTitulo.Caption   := aTitulo;
    FrmPergunta.lblMensagem.Caption := aMensagem;
    FrmPergunta.FFocoOk := aFocoOk;
    if aMudarFonte then
    begin
      FrmPergunta.lblMensagem.Alignment := taLeftJustify;
      FrmPergunta.lblMensagem.Font.Name := 'Courier New';
      FrmPergunta.lblMensagem.Font.Size := 11;
    end;
    Result := FrmPergunta.ShowModal=mrOk;
  finally
    FrmPergunta.Free;
  end;
end;

function AlinhaEsquerda(Texto: String; Tamanho: Integer): String;
begin
  Result := LeftStr(Texto+StringOfChar(#32, Tamanho), Tamanho);
end;

function AlinhaDireita(Texto: String; Tamanho: Integer): String;
begin
  Result := RightStr(StringOfChar(#32, Tamanho)+Texto,Tamanho);
end;

function SoNumero(Texto:String):String;
begin
  Result := OnlyNumber(Texto); // OnlyNumber é uma função do "ACBr" na unit ACBrUtil"
end;

function Padc(aTexto: String; aTamanho: Integer; aCaractere: Char  ): String;
begin
  Result:=Copy(Repetir(((aTamanho-Length(aTexto)) Div 2) + ((aTamanho-Length(aTexto)) Mod 2),aCaractere)+aTexto+Repetir(((aTamanho-Length(aTexto)) div 2),aCaractere),1,aTamanho);
end;

function Padl(aTexto: String; aTamanho: Integer; aCaractere: Char): String;
begin
  Result:=Copy(Repetir(aTamanho-Length(aTexto),aCaractere)+aTexto,1,aTamanho);
end;

function Padr(aTexto: String; aTamanho: Integer; aCaractere: Char ): String;
begin
  Result:=Copy(aTexto+Repetir(aTamanho-Length(aTexto),aCaractere),1,aTamanho);
end;

function Repetir(Quantidade: integer; Texto: string): String;
var
  i:integer;
begin
  Result:='';
  for i:=1 to Quantidade do
    Result:=Result + Texto;
end;

procedure Informar(const aMensagem: string; aTitulo: String; aErro: Boolean);
Var
   Msg: String;
begin
  try
    ShowStatus('','',False);
    FrmPergunta := TFrmPergunta.Create(nil);
    FrmPergunta.lblTitulo.Caption   := aTitulo;
    FrmPergunta.lblMensagem.Caption := aMensagem;
    FrmPergunta.btnCancelar.Visible := False;
    FrmPergunta.FFocoOk             := True;
    if aErro then
    begin
      FrmPergunta.shpTitulo.Brush.Color := clRed;
      FrmPergunta.lblMensagem.Font.Name := 'Courier New';
      FrmPergunta.lblMensagem.Font.Size := 10;
    end;
    FrmPergunta.ShowModal;
  finally
    FrmPergunta.Free;
    ShowStatus('','',False);
  end;
end;


Procedure ShowStatus(sTitulo:String='Processo em andamento...';sMessage: string='';lbAbrir:boolean=True);
begin
  Application.ProcessMessages;
  try
    if lbAbrir then
    begin
      if (FrmStatus = nil) then
        FrmStatus := TFrmStatus.Create(Application);
      FrmStatus.pgbStatus.Position := 0;
      FrmStatus.lblTitulo.Caption  := sTitulo;
      FrmStatus.lblStatus.Caption  := sMessage;
      FrmStatus.Show;
      FrmStatus.BringToFront;
    end
    else
    begin
      if FrmStatus<>Nil then
      begin
        FrmStatus.close;
        FrmStatus := Nil;
      end;
    end;
  finally
    Application.ProcessMessages;
  end;
end;

Procedure ShowStatusProgress(aMin,Max,aPosicao: Integer);
begin
 if FrmStatus<>Nil then
   FrmStatus.SetStatusBar(aMin,Max,aPosicao);
end;

function HDDSerie(FDrive : String) : String;
var
  Serial         : DWord;
  DirLen, Flags  : DWord;
  DLabel         : Array[0..11] of Char;
begin
  Result := '';
  try
    Serial := 0;
    {$IFDEF MSWINDOWS}
      GetVolumeInformation(PChar(FDrive + ':\'), dLabel, 12, @Serial,
    {$ENDIF}
    {$IFDEF LINUX}
      GetVolumeInformation(PChar(FDrive + ':\'), dLabel, 12, @Serial,
    {$ENDIF}
    DirLen, Flags, nil, 0);
    Result := IntToHex(Serial, 8);
  except
    Result := '00000000';
  end;

end;

function StrToModeloPosPrinter(const aModelo: string): TACBrPosPrinterModelo;
var
 mOk : Boolean;
begin
  result := StrToEnumerado(mOk, LowerCase(aModelo), ['',     'pptexto', 'ppescposepson', 'ppescbematech', 'ppescdaruma', 'ppescvox', 'ppescdiebold', 'ppescepsonp2', 'ppcustompos'],
                                                    [ppTexto, ppTexto,   ppEscPosEpson,   ppEscBematech,   ppEscDaruma,   ppEscVox,   ppEscDiebold,   ppEscEpsonP2,   ppCustomPos]);
end;

Procedure MsgEsperar(sTitulo: String='Processo em andamento...'; sMessage: string=''; lbAbrir: boolean = True);
begin
  try
    if lbAbrir then
    begin
      if (FrmStatusNFe = nil) then
         FrmStatusNFe := TFrmStatusNFe.Create(NIL);
      FrmStatusNFe.LblBarraTitulo.Caption := sTitulo;
      FrmStatusNFe.lblStatus.Caption := sMessage;
      FrmStatusNFe.Show;
      FrmStatusNFe.BringToFront;
    end
    else
    begin
      if FrmStatusNFe<>nil then
        FrmStatusNFe.close;
    end;
  finally
    Application.ProcessMessages;
  end;
end;

Procedure SetCertificadoDigital(aACBrNFe: TACBrNFe; const aTipoSSL: String);
begin
  //----------------------------------------------------------------------
  // Protocolo SSL
  //----------------------------------------------------------------------
  // ---------------- WINCRYPT --------------------------------------
  aACBrNFe.Configuracoes.Geral.SSLLib              := libWinCrypt;    // TSSLLib = (libNone, libOpenSSL, libCapicom, libCapicomDelphiSoap, libWinCrypt, libCustom);
  aACBrNFe.Configuracoes.Geral.SSLXmlSignLib       := xsMsXml;      // TSSLXmlSignLib = (xsNone, xsXmlSec, xsMsXml, xsMsXmlCapicom, xsLibXml2);
  aACBrNFe.Configuracoes.Geral.SSLCryptLib         := cryWinCrypt;    // TSSLCryptLib = (cryNone, cryOpenSSL, cryCapicom, cryWinCrypt);
  aACBrNFe.Configuracoes.Geral.SSLHttpLib          := httpWinHttp;   // TSSLHttpLib = (httpNone, httpWinINet, httpWinHttp, httpOpenSSL, httpIndy);
  if aTipoSSL='OPENSSL' then
  begin
    aACBrNFe.Configuracoes.Geral.SSLLib              := libOpenSSL;    // TSSLLib = (libNone, libOpenSSL, libCapicom, libCapicomDelphiSoap, libWinCrypt, libCustom);
    aACBrNFe.Configuracoes.Geral.SSLCryptLib         := cryOpenSSL;    // TSSLCryptLib = (cryNone, cryOpenSSL, cryCapicom, cryWinCrypt);
    aACBrNFe.Configuracoes.Geral.SSLHttpLib          := httpOpenSSL;   // TSSLHttpLib = (httpNone, httpWinINet, httpWinHttp, httpOpenSSL, httpIndy);
    aACBrNFe.Configuracoes.Geral.SSLXmlSignLib       := xsXmlSec;      // TSSLXmlSignLib = (xsNone, xsXmlSec, xsMsXml, xsMsXmlCapicom, xsLibXml2);
  end
  else if aTipoSSL='CAPICOM' then
  begin
    aACBrNFe.Configuracoes.Geral.SSLLib              := libCapicom;    // TSSLLib = (libNone, libOpenSSL, libCapicom, libCapicomDelphiSoap, libWinCrypt, libCustom);
    aACBrNFe.Configuracoes.Geral.SSLCryptLib         := cryCapicom;    // TSSLCryptLib = (cryNone, cryOpenSSL, cryCapicom, cryWinCrypt);
    aACBrNFe.Configuracoes.Geral.SSLHttpLib          := httpWinINet;   // TSSLHttpLib = (httpNone, httpWinINet, httpWinHttp, httpOpenSSL, httpIndy);
    aACBrNFe.Configuracoes.Geral.SSLXmlSignLib       := xsMsXmlCapicom;      // TSSLXmlSignLib = (xsNone, xsXmlSec, xsMsXml, xsMsXmlCapicom, xsLibXml2);
  end
  else
  begin
    aACBrNFe.Configuracoes.Geral.SSLLib              := libWinCrypt;    // TSSLLib = (libNone, libOpenSSL, libCapicom, libCapicomDelphiSoap, libWinCrypt, libCustom);
    aACBrNFe.Configuracoes.Geral.SSLXmlSignLib       := xsMsXml;      // TSSLXmlSignLib = (xsNone, xsXmlSec, xsMsXml, xsMsXmlCapicom, xsLibXml2);
    aACBrNFe.Configuracoes.Geral.SSLCryptLib         := cryWinCrypt;    // TSSLCryptLib = (cryNone, cryOpenSSL, cryCapicom, cryWinCrypt);
    aACBrNFe.Configuracoes.Geral.SSLHttpLib          := httpWinHttp;   // TSSLHttpLib = (httpNone, httpWinINet, httpWinHttp, httpOpenSSL, httpIndy);
  end;
end;

Procedure SetCertificadoSeguranca(aACBrNFe: TACBrNFe; const aTipoSSL: String);
begin
  //----------------------------------------------------------------------
  // Segurança SSL
  //----------------------------------------------------------------------
  aACBrNFe.SSL.SSLType := LT_all;
  if aTipoSSL = 'LT_TLSV1_2' then
    aACBrNFe.SSL.SSLType := LT_TLSv1_2;
end;

Procedure PDVVisualizar(aTexto: TStringList);
begin
  try
    FrmPDVPrint := TFrmPDVPrint.Create(Nil);
    FrmPDVPrint.FModelo := StrToModeloPosPrinter(FConfiguracao.ModeloEscPos);
    FrmPDVPrint.FPorta := FConfiguracao.PortaImpressora;
    FrmPDVPrint.Adicionar(aTexto.Text);
    FrmPDVPrint.ShowModal;
  finally
    FrmPDVPrint.Free;
  end;
end;

Function ZeroEsquerda(Valor: String; Tamanho: Integer): String;
Begin
  while Length(Valor) < Tamanho do
    Valor := '0' + Valor;
  Result := Valor;
End;

function GetLoteString(): String;
begin
  Result := FormatDateTime('yyyymmddhhmmss', NOW);
end;

function GetLoteInteger(): Integer;
begin
  Result := StrToIntDef(FormatDateTime('yymmddhhmm', NOW),1);
end;

function ContemNumero(aProcurar: Currency; const aLista: TArray<Double>): Boolean;
var
  I: Integer;
begin
  Result := False;
  for I := Low(aLista) to High(aLista) do
  begin
    if aProcurar = aLista[I] then
    begin
      Result := True;
      Break;
    end;
  end;
end;

procedure FormataCampo(aDataSet: TDataSet);
var
  i: integer;
begin
  if aDataSet.Active = false then
    exit;

  if aDataSet.FieldCount > 0 then
  with aDataSet do
  begin
    for i:= 0 to FieldCount-1 do
    if (Fields[i] is TIntegerField) then
    begin
     (Fields[i] as TIntegerField).DisplayFormat := '###,###';
     (Fields[i] as TIntegerField).EditFormat := '#';
    end
    else
    if (Fields[i] is TFloatField) then
    begin
     (Fields[i] as TFloatField).DisplayFormat := '###,##0.00';
     (Fields[i] as TFloatField).EditFormat := '##0.00';
    end
    else
    if (Fields[i] is TDateField) then
    begin
     (Fields[i] as TDateField).DisplayFormat := 'dd/mm/yyyy';
     (Fields[i] as TDateField).EditMask := '99/99/9999';
    end;
  end;
end;

// informa o Dia de uma data
Function Dia(vData: TDate): Integer;
var
  Year, Month, Day: Word;
Begin
   DecodeDate(vData, Year, Month, Day);
   Result := Day;
end;

// informa o Mes de uma data
Function Mes(vData: TDate): Integer;
var
  Year, Month, Day: Word;
Begin
   DecodeDate(vData, Year, Month, Day);
   Result := Month;
end;

// informa o Ano de uma data
Function Ano(vData: TDate): Integer;
var
  Year, Month, Day: Word;
Begin
   DecodeDate(vData, Year, Month, Day);
   Result := Year;
end;


procedure MFE_EnviarRespostaFiscal( AIDPagamento: Integer;
                                    ANsu: String;
                                    ANumerodeAprovacao: String;
                                    ABandeira: String;
                                    AAdquirente: String;
                                    ANumeroDocumento: String;
                                    AChaveAcesso: String);
var
  OldExtrato: TACBrSATExtratoClass;
  RespostaFiscal : TRespostaFiscal;
  RetornoRespostaFiscal : TRetornoRespostaFiscal;
begin
  RespostaFiscal := TRespostaFiscal.Create;
  try
    RespostaFiscal.Clear;
    RespostaFiscal.ChaveAcessoValidador := FConfiguracao.MFE_Chave;
    RespostaFiscal.CNPJ                 := FConfiguracao.CNPJ;

    RespostaFiscal.IDFila               := AIDPagamento;
    RespostaFiscal.ChaveAcesso          := AChaveAcesso;
    RespostaFiscal.Nsu                  := ANSU;
    RespostaFiscal.NumerodeAprovacao    := ANumerodeAprovacao;
    RespostaFiscal.Bandeira             := ABandeira;
    RespostaFiscal.Adquirente           := AAdquirente;
    RespostaFiscal.NumeroDocumento      := ANumeroDocumento;

    RetornoRespostaFiscal := FrmPrincipal.FACBrIntegradorCeara.RespostaFiscal(RespostaFiscal);
    {
    try
      dtmConnection.SQLConnection.ExecuteDirect(
        Format(
          'UPDATE OR INSERT INTO TB_MFE_PAGAMENTO (IDPAGAMENTO, ID_RESPOSTA_FISCAL) VALUES (%d, %s) matching (IDPAGAMENTO)',
          [AIDPagamento, RetornoRespostaFiscal.IdRespostaFiscal]
        )
      );
    except
      on E: Exception do
      begin
        TfrmBasico.MsgErro(
          'Resposta Fiscal',
          'Ocorreu o seguinte erro ao gravar a resposta fiscal:' + sLineBreak + E.Message
        );
      end;
    end;
    }
  finally
    RespostaFiscal.Free;
  end;
end;


end.
