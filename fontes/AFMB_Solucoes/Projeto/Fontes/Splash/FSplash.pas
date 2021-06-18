unit FSplash;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, jpeg, StdCtrls, pngimage, dxGDIPlusClasses, cxGraphics,
   cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxActivityIndicator, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

Type
   TFrmSplash = class(TForm)
      Panel1: TPanel;
      lblStatus: TPanel;
      Label2: TLabel;
      Label5: TLabel;
      TitleImage: TImage;
      dxActivityIndicator: TdxActivityIndicator;
      Label1: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      Label6: TLabel;
    qry_atualizacao: TFDQuery;
    Label7: TLabel;
    lblVersao: TLabel;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormDestroy(Sender: TObject);
      procedure FormShow(Sender: TObject);
    procedure qry_atualizacaoAfterScroll(DataSet: TDataSet);
   private
      const cs_Versao : string = 'DECLARE @versao VARCHAR(20) = ''''; '+
                                 'SELECT @versao = CFG_VERSAO '+
                                 'FROM config;';
      { Private declarations }
      function retorna_versao: string;
      procedure grava_versao(VS_VERSAO : String);
      function ObterVersaoWindows: String;

   public
      { Public declarations }
      procedure Atualiza();
      function isAtualizado: Boolean;
   end;

var
   FrmSplash: TFrmSplash;

implementation

uses FPrincipal, Classe.Global, System.Win.Registry;

{$R *.dfm}

procedure TFrmSplash.Atualiza;
var
   vl_Sql : TStrings;
   vi_cont : integer;
   qry_Versao : TFDQuery;
   VS_VERSAO_BANCO : string;
   VB_ACERTA_MOVAJU: Boolean;
begin
   try
      qry_atualizacao.Connection.StartTransaction;

      // Separa o SQL por delimitador
      vl_Sql := TStringList.Create;
      for vi_cont := 0 to qry_atualizacao.SQL.Count - 1 do
      begin
         vl_Sql.Add(qry_atualizacao.SQL[vi_cont]);
      end;

      qry_atualizacao.Close;

      qry_atualizacao.SQL.Clear;
      for vi_cont := 0 to vl_Sql.Count - 1 do
      begin
         qry_atualizacao.SQL.Add(vl_Sql[vi_cont]);
         if trim(vl_Sql[vi_cont]) = '/*INICIO*/' then
         begin
            qry_atualizacao.SQL.Clear;
         end;

         VS_VERSAO_BANCO := retorna_versao();


         if trim(vl_Sql[vi_cont]) = '/*FIM*/' then
         begin
            qry_atualizacao.ExecSQL;
            qry_atualizacao.SQL.Clear;
            qry_atualizacao.SQL.Add(cs_Versao);
            lblStatus.Caption := 'Atualizando Banco de Dados, aguarde... '+FormatFloat('#0.00',vi_cont/vl_Sql.Count*100)+'% Concluído.';
         end;
      end;

      qry_atualizacao.Close;
      qry_atualizacao.Connection.Commit;
      if VS_VERSAO_BANCO <> '' then
         grava_versao(VS_VERSAO_BANCO); //grava a versao no banco
   except
      on e : Exception do
      begin
         qry_Versao := TFDQuery.Create(Self);
         qry_Versao.Connection := FrmPrincipal.DBConexao;

         qry_Versao.Close;
         qry_Versao.SQL.Clear;
         qry_Versao.SQL.Add('SELECT VERSAO_BD ');
         qry_Versao.SQL.Add('FROM CONFIG_PARAMETROS ');
         qry_Versao.Open;

         ShowMessage(e.Message + chr(10) + chr(13) + 'Versão: ' + qry_Versao.FieldByName('VERSAO_BD').AsString);
         FreeAndNil(qry_Versao);
         qry_atualizacao.Connection.Rollback;
      end;
   end;
end;

procedure TFrmSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := cafree;
end;

procedure TFrmSplash.FormDestroy(Sender: TObject);
begin
   if FrmSplash <> nil then
      FrmSplash := Nil;
end;

procedure TFrmSplash.FormShow(Sender: TObject);
begin
   dxActivityIndicator.Active := True;
   //lblVersao.Caption := retorna_versao();
end;

function Retorna_Nome_Terminal():String;
var
   lpBuffer : PChar;
   nSize    : DWord;
   const Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
begin
   try
      nSize    := Buff_Size;
      lpBuffer := StrAlloc(Buff_Size);
      GetComputerName(lpBuffer,nSize);
      Result   := String(lpBuffer);
      StrDispose(lpBuffer);
   except
      Result := '';
   end;
end;

procedure TFrmSplash.grava_versao(VS_VERSAO: String);
var
   qry_insert : TFDQuery;
   VS_SQL     : String;
   VS_NOME    : String;
begin
   qry_insert := TFDQuery.Create(nil);
   qry_insert.Connection := FrmPrincipal.DBConexao;

   VS_NOME := Retorna_Nome_Terminal;

   VS_SQL := 'INSERT VERSOES ( VERSAO,DATA_HORA,SIS_OPERACIONAL,NOME_MAQUINA) VALUES ('
                               +    QuotedStr(VS_VERSAO) // informa versão
                               +','+QuotedStr(DateTimeToStr(now)) // data atual
                               +','+QuotedStr(ObterVersaoWindows) // sistema operacional
                               +','+QuotedStr(VS_NOME) // nome da maquina
                               +')';
   qry_insert.Close;
   qry_insert.SQL.Text := VS_SQL;
   qry_insert.ExecSQL ;

   qry_insert.Destroy;

end;

Function VersaoExe: String;
type
   PFFI = ^vs_FixedFileInfo;
var
   F : PFFI;
   Handle : Dword;
   Len : Longint;
   Data : Pchar;
   Buffer : Pointer;
   Tamanho : Dword;
   Parquivo: Pchar;
   Arquivo : String;
begin
   Arquivo := Application.ExeName;
   Parquivo := StrAlloc(Length(Arquivo) + 1);
   StrPcopy(Parquivo, Arquivo);
   Len := GetFileVersionInfoSize(Parquivo, Handle);
   Result := '';
   if Len > 0 then
   begin
      Data:=StrAlloc(Len+1);
      if GetFileVersionInfo(Parquivo,Handle,Len,Data) then
      begin
         VerQueryValue(Data, '\',Buffer,Tamanho);
         F := PFFI(Buffer);
         Result := Format('%d.%d.%d.%d',
         [HiWord(F^.dwFileVersionMs),
         LoWord(F^.dwFileVersionMs),
         HiWord(F^.dwFileVersionLs),
         Loword(F^.dwFileVersionLs)]
         );
      end;
      StrDispose(Data);
   end;
   StrDispose(Parquivo);
end;

function TFrmSplash.isAtualizado: Boolean;
var
   qry_Versao : TFDQuery;
   vs_Parte : TStringList;
begin
   qry_Versao := TFDQuery.Create(Self);
   qry_Versao.Connection := FrmPrincipal.DBConexao;
   qry_Versao.Close;
   qry_Versao.SQL.Add('SELECT VERSAO_BD FROM CONFIG_PARAMETROS ');
   qry_Versao.SQL.Add('WHERE VERSAO_BD < :versao');
   qry_Versao.Close;
   vs_Parte := TStringList.Create;
   ExtractStrings(['.'], [], PChar(VersaoExe), vs_Parte);
   qry_Versao.ParamByName('versao').Value := FormatFloat('00', StrToInt(vs_Parte[0])) + '.' +
                                             FormatFloat('00', StrToInt(vs_Parte[1])) + '.' +
                                             FormatFloat('00', StrToInt(vs_Parte[2]));
   qry_Versao.Open;
   Result := qry_Versao.IsEmpty;
end;

function TFrmSplash.ObterVersaoWindows: String;
var
  vNome,
  vVersao,
  vCurrentBuild: String;
  Reg: TRegistry;
begin
   Reg         := TRegistry.Create; //Criando um Registro na Memória
   Reg.Access  := KEY_READ; //Colocando nosso Registro em modo Leitura
   Reg.RootKey := HKEY_LOCAL_MACHINE; //Definindo a Raiz

   //Abrindo a chave desejada
   Reg.OpenKey('\SOFTWARE\Microsoft\Windows NT\CurrentVersion\', true);

   //Obtendo os Parâmetros desejados
   vNome         := Reg.ReadString('ProductName');
   vVersao       := Reg.ReadString('CurrentVersion');
   vCurrentBuild := Reg.ReadString('CurrentBuild');

   //Montando uma String com a Versão e alguns detalhes
   Result := vNome + ' - ' + vVersao + ' - ' + vCurrentBuild;
end;

procedure TFrmSplash.qry_atualizacaoAfterScroll(DataSet: TDataSet);
begin
   Close;
end;

function TFrmSplash.retorna_versao: string;
var
   qry_consulta : TFDQuery;
   VS_SQL       : string;
begin
   Result := '';
   qry_consulta := TFDQuery.Create(nil);
   qry_consulta.Connection := FrmPrincipal.DBConexao;


   VS_SQL := ' select VERSAO_BD from CONFIG_PARAMETROS ';
   qry_consulta.Close;
   qry_consulta.SQL.Text := VS_SQL;
   qry_consulta.Open;

   if not qry_consulta.IsEmpty then
      Result := qry_consulta.FieldByName('VERSAO_BD').AsString
   else
      Result := '';
end;

end.
