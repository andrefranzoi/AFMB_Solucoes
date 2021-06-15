unit App.Funcoes;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Comp.Client, System.StrUtils,
   Vcl.Grids, Vcl.DBGrids, System.Generics.Collections, Data.DB, Vcl.DBCtrls,
   System.Math,
   System.JSON, pcnConversaoNFe, pcnConversao, pcnNFe, ACBrValidador, ACBrUtil,
   ACBrDFeSSL, blcksock,
   System.DateUtils, Vcl.Imaging.pngimage,
   ACBrNFe, ACBrMail,
   App.Constantes, Winapi.TlHelp32, Winapi.PsAPI;

// --------------------------------------------------------------------------------
//
// --------------------------------------------------------------------------------
procedure QueryCriar(var aQuery: TFDQuery; aLocalDados: TLocalDados = ldPadrao);
procedure QueryLiberar(var aQuery: TFDQuery);
procedure LogException(Sender: TObject; E: Exception);
procedure GravarLog(const aMensagem: String; aArquivo: String = _LOG_ERROS);

function ContemNumero(aProcurar: Currency;
  const aLista: TArray<Currency>): Boolean;

procedure ObjetosHabilitar(const aObjetos: TArray<TWinControl>;
  aCondicao: Boolean);
procedure EnviarEmailNF(aVenda: Integer; ACBrNFe1: TACBrNFe;
  aManual: Boolean = False);
Procedure SetCertificadoDigital(aACBrNFe: TACBrNFe; const aTipoSSL: String);
Procedure SetCertificadoSeguranca(aACBrNFe: TACBrNFe; const aTipoSSL: String);

procedure GetImagemDLL(aObjeto: TBitmap; aNomeImagem: String;
  aTipoImagem: TipoImagem = tiBMP);
procedure FormataCampo(aDataSet: TDataSet);
function GerarLoteNFe(): String;
function GetVersao(const Arquivo: String): string;
Function DescobrirPercentual(ValorMenor, ValorMaior: Currency): Currency;
Function GetValorPercentual(const aValor, aPercentual: Currency): Currency;
procedure ErroDB(const aMensagem: String; aDica: String = '');

implementation

uses App.SQL, Biblioteca, Classe.Global, FPrincipal;

Procedure QueryCriar(var aQuery: TFDQuery; aLocalDados: TLocalDados = ldPadrao);
begin
   aQuery := TFDQuery.Create(Nil);

   case aLocalDados of
      ldPadrao:
         aQuery.Connection := FrmPrincipal.DBConexao;
      // ldCEP    : aQuery.Connection := FrmPrincipal.FDCEP;
   end;
   aQuery.DisableControls;
   // A desativação dos controles acelera o desempenho, pois os dados não precisam ser gravados na tela a cada interação.
end;

Procedure QueryLiberar(var aQuery: TFDQuery);
begin
   if aQuery = nil then
      exit;
   aQuery.Close;
   aQuery.Free;
end;

procedure LogException(Sender: TObject; E: Exception);
var
   mLogFile: TextFile;
   mFilename: string;
   mLog: WideString;
begin
   mFilename := _LOG_ERROS;
   mLog := '[' + DateTimeToStr(Now) + ']' + sLineBreak +
     'Formulário............: ' + Screen.FocusedForm.Name + sLineBreak +
     'Mensagem..............: ' + E.Message + sLineBreak + StringOfChar('-', 80)
     + sLineBreak;
   AssignFile(mLogFile, mFilename);
   if FileExists(mFilename) then
      Append(mLogFile)
   else
      Rewrite(mLogFile);
   try
      Writeln(mLogFile, mLog);
      Application.ShowException(E);
   finally
      Flush(mLogFile);
      CloseFile(mLogFile);
   end;
end;

procedure GravarLog(const aMensagem: String; aArquivo: String = _LOG_ERROS);
var
   mLogFile: TextFile;
   mFilename: string;
begin
   mFilename := aArquivo;
   AssignFile(mLogFile, mFilename);
   if FileExists(mFilename) then
      Append(mLogFile)
   else
      Rewrite(mLogFile);
   try
      Writeln(mLogFile, DateTimeToStr(Now) + ': ' + aMensagem);
   finally
      Flush(mLogFile);
      CloseFile(mLogFile);
   end;
end;

function ContemNumero(aProcurar: Currency;
  const aLista: TArray<Currency>): Boolean;
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

Procedure ObjetosHabilitar(const aObjetos: TArray<TWinControl>;
  aCondicao: Boolean);
var
   I: Integer;
begin
   for I := Low(aObjetos) to High(aObjetos) do
      aObjetos[I].Enabled := aCondicao;
end;

procedure EnviarEmailNF(aVenda: Integer; ACBrNFe1: TACBrNFe;
  aManual: Boolean = False);
var
   CC: TStrings;
   mMSG: TStrings;
   mEmailPara: string;
   mAssunto: string;
   mArquivoXML: String;
   mNotaFiscal: String;
   mQuery: TFDQuery;

begin
   if (FParametros.NFE.EnviarEmail = False) and (aManual = False) then
      exit; // se não for pra enviar email automaticamente, cancelar envio.
   if Trim(ACBrNFe1.MAIL.Host) = '' then
      exit; // se não tiver servidor de saida, cancelar envio.

   QueryCriar(mQuery);
   try
      mQuery.Close;
      mQuery.SQL.Clear;
      mQuery.SQL.Add('SELECT * FROM VENDAS');
      mQuery.SQL.Add('WHERE');
      mQuery.SQL.Add('CODIGO=' + aVenda.ToString);
      mQuery.SQL.Add('');
      mQuery.Open;
      mEmailPara := GetClienteCampo(mQuery.FieldByName('CLIENTE')
        .AsInteger, 'email');
      if mEmailPara.IsEmpty then
      begin
         Informar('Cliente não tem email cadastrado. ' + sLineBreak + sLineBreak
           + 'Não foi possivel enviar XML da NF-e por email.');
         exit; // se não tiver email, cancelar envio
      end;
      mNotaFiscal := ZeroEsquerda(mQuery.FieldByName('NOTAFISCAL').AsString, 6);
      mEmailPara := GetClienteCampo(mQuery.FieldByName('CLIENTE')
        .AsInteger, 'email');
      mAssunto := 'Nota Fiscal: ' + mNotaFiscal;

      mArquivoXML := Trim(mQuery.FieldByName('NFE_ARQUIVO').AsString);
      if not FileExists(mArquivoXML) then
      begin
         Informar('Arquivo XML não foi gerado para enviar por e-mail.');
         exit;
      end;
      CC := TstringList.Create;
      mMSG := TstringList.Create;
      ACBrNFe1.NotasFiscais.Clear;
      ACBrNFe1.NotasFiscais.LoadFromFile(mArquivoXML);
      mMSG.Text := mAssunto;
      try
         MsgEsperar('Enviando Nota Fiscal por email',
           'Aguarde.... enviando XML da NF: "' + mNotaFiscal +
           '" para o email: "' + mEmailPara + '"', True);
         ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(mEmailPara, mAssunto, mMSG,
           True, // Enviar PDF junto
           CC, // Lista com emails que serÃ£o enviado cÃ³pias - TStrings
           nil); // Lista de anexos - TStrings
      finally
         MsgEsperar('', '', False);
         CC.Free;
         mMSG.Free;
      end;

   finally
      QueryLiberar(mQuery);
   end;

end;

Procedure SetCertificadoDigital(aACBrNFe: TACBrNFe; const aTipoSSL: String);
begin
   // ----------------------------------------------------------------------
   // Protocolo SSL
   // ----------------------------------------------------------------------
   aACBrNFe.Configuracoes.Geral.SSLLib := libNone;
   aACBrNFe.Configuracoes.Geral.SSLCryptLib := cryNone;
   aACBrNFe.Configuracoes.Geral.SSLHttpLib := httpNone;
   aACBrNFe.Configuracoes.Geral.SSLXmlSignLib := xsNone;
   if aTipoSSL = 'OPENSSL' then
   begin
      aACBrNFe.Configuracoes.Geral.SSLLib := libOpenSSL;
      // TSSLLib = (libNone, libOpenSSL, libCapicom, libCapicomDelphiSoap, libWinCrypt, libCustom);
      aACBrNFe.Configuracoes.Geral.SSLCryptLib := cryOpenSSL;
      // TSSLCryptLib = (cryNone, cryOpenSSL, cryCapicom, cryWinCrypt);
      aACBrNFe.Configuracoes.Geral.SSLHttpLib := httpOpenSSL;
      // TSSLHttpLib = (httpNone, httpWinINet, httpWinHttp, httpOpenSSL, httpIndy);
      aACBrNFe.Configuracoes.Geral.SSLXmlSignLib := xsXmlSec;
      // TSSLXmlSignLib = (xsNone, xsXmlSec, xsMsXml, xsMsXmlCapicom, xsLibXml2);
   end
   else if aTipoSSL = 'CAPICOM' then
   begin
      aACBrNFe.Configuracoes.Geral.SSLLib := libCapicom;
      // TSSLLib = (libNone, libOpenSSL, libCapicom, libCapicomDelphiSoap, libWinCrypt, libCustom);
      aACBrNFe.Configuracoes.Geral.SSLCryptLib := cryCapicom;
      // TSSLCryptLib = (cryNone, cryOpenSSL, cryCapicom, cryWinCrypt);
      aACBrNFe.Configuracoes.Geral.SSLHttpLib := httpWinINet;
      // TSSLHttpLib = (httpNone, httpWinINet, httpWinHttp, httpOpenSSL, httpIndy);
      aACBrNFe.Configuracoes.Geral.SSLXmlSignLib := xsMsXmlCapicom;
      // TSSLXmlSignLib = (xsNone, xsXmlSec, xsMsXml, xsMsXmlCapicom, xsLibXml2);
   end
   else if (aTipoSSL = 'WINCRYPT') or (aTipoSSL = '') then
   begin
      aACBrNFe.Configuracoes.Geral.SSLLib := libWinCrypt;
      // TSSLLib = (libNone, libOpenSSL, libCapicom, libCapicomDelphiSoap, libWinCrypt, libCustom);
      aACBrNFe.Configuracoes.Geral.SSLCryptLib := cryWinCrypt;
      // TSSLCryptLib = (cryNone, cryOpenSSL, cryCapicom, cryWinCrypt);
      aACBrNFe.Configuracoes.Geral.SSLHttpLib := httpWinHttp;
      // TSSLHttpLib = (httpNone, httpWinINet, httpWinHttp, httpOpenSSL, httpIndy);
      aACBrNFe.Configuracoes.Geral.SSLXmlSignLib := xsMsXml;
      // TSSLXmlSignLib = (xsNone, xsXmlSec, xsMsXml, xsMsXmlCapicom, xsLibXml2);
   end;
end;

Procedure SetCertificadoSeguranca(aACBrNFe: TACBrNFe; const aTipoSSL: String);
begin
   // ----------------------------------------------------------------------
   // Segurança SSL
   // ----------------------------------------------------------------------
   aACBrNFe.SSL.SSLType := LT_all;
   if aTipoSSL = 'LT_TLSV1_2' then
      aACBrNFe.SSL.SSLType := LT_TLSv1_2;
end;

{ **********************************************************************
  Como utlizar GetImagemDLL():

  GetImagemDLL(SpbAdicionar.Glyph , 'img_adicionar');
  GetImagemDLL(Image1.Picture.Bitmap , 'img_logo',tiPNG);


  {********************************************************************** }

procedure GetImagemDLL(aObjeto: TBitmap; aNomeImagem: String;
  aTipoImagem: TipoImagem);
var
   mLibDLL: THandle;
   mPNG: TPNGObject;
begin
   if FileExists(_DLL_IMAGENS) = False then
   begin
      Informar('Arquivo ' + _DLL_IMAGENS + ' não encontrado.');
      exit;
   end;
   mLibDLL := LoadLibrary(_DLL_IMAGENS);
   try
      if mLibDLL = 0 then
         exit;
      case aTipoImagem of
         tiBMP:
            begin
               aObjeto.LoadFromResourceName(mLibDLL, aNomeImagem);
            end;
         tiPNG:
            begin
               mPNG := TPNGObject.Create;
               try
                  mPNG.LoadFromResourceName(mLibDLL, aNomeImagem);
                  aObjeto.Assign(mPNG);
               finally
                  mPNG.Free;
               end;
            end;
      end;
   finally
      FreeLibrary(mLibDLL);
   end;
end;

procedure FormataCampo(aDataSet: TDataSet);
var
   I: Integer;
begin
   if aDataSet.Active = False then
      exit;

   if aDataSet.FieldCount > 0 then
      with aDataSet do
      begin
         for I := 0 to FieldCount - 1 do
            if (Fields[I] is TIntegerField) then
            begin
               (Fields[I] as TIntegerField).DisplayFormat := '###,###';
               (Fields[I] as TIntegerField).EditFormat := '#';
            end
            else if (Fields[I] is TFloatField) then
            begin
               (Fields[I] as TFloatField).DisplayFormat := '###,##0.00';
               (Fields[I] as TFloatField).EditFormat := '##0.00';
            end
            else if (Fields[I] is TDateField) then
            begin
               (Fields[I] as TDateField).DisplayFormat := 'dd/mm/yyyy';
               (Fields[I] as TDateField).EditMask := '99/99/9999';
            end;
      end;
end;

function GerarLoteNFe(): String;
begin
   Result := FormatDateTime('yymmddhhmm', Now);
end;

function GetVersao(const Arquivo: String): string;
type
   PFFI = ^vs_FixedFileInfo;
var
   F: PFFI;
   Handle: Dword;
   Len: Longint;
   Data: array of Byte; // or TBytes
   Buffer: Pointer;
   Tamanho: Dword;
begin
   Result := '';
   Len := GetFileVersionInfoSize(PChar(Arquivo), Handle);
   if Len > 0 then
   begin
      SetLength(Data, Len);
      if GetFileVersionInfo(PChar(Arquivo), Handle, Len, PByte(Data)) then
      begin
         if VerQueryValue(PByte(Data), '\', Buffer, Tamanho) then
         begin
            F := PFFI(Buffer);
            Result := Format('%d.%d.%d.%d', [HiWord(F^.dwFileVersionMs),
              LoWord(F^.dwFileVersionMs), HiWord(F^.dwFileVersionLs),
              LoWord(F^.dwFileVersionLs)]);
         end;
      end;
   end;
end;

Function GetValorPercentual(const aValor, aPercentual: Currency): Currency;
var
   mValor: Currency;
begin
   Result := 0;
   mValor := 0;

   mValor := RoundABNT(((aValor * aPercentual) / 100), 4);
   Result := mValor;
end;

Function DescobrirPercentual(ValorMenor, ValorMaior: Currency): Currency;
var
   nvalor1, ndiferenca1: Currency;
begin
   Result := 0;
   nvalor1 := 0;
   ndiferenca1 := 0;
   ndiferenca1 := ValorMaior - ValorMenor;
   // se for Igual ou Menor que zero, sair.
   if ndiferenca1 <= 0 then
      exit;
   nvalor1 := ((ndiferenca1 / ValorMenor) * 100);
   if nvalor1 < 0 then
      nvalor1 := 0;
   Result := nvalor1;
end;

procedure ErroDB(const aMensagem: String; aDica: String = '');
begin
   with TTaskDialog.Create(nil) do
   begin
      try
         // Caption := _CAPTION_DIALOGO;
         Title := aMensagem;
         Text := aDica;
         MainIcon := tdiError;
         CommonButtons := [tcbOk];
         Execute;
      finally
         Free;
      end;
   end;
end;

end.
