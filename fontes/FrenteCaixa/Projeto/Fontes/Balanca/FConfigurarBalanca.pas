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

unit FConfigurarBalanca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  ClasseCriptografia,
  System.IniFiles,
  AppConstantes,
  ACBrBase, ACBrBAL, ACBrDevice;

type

  { TForm1 }

  TFrmConfigurarBalanca = class(TForm)
    pnTitulo: TPanel;
    Shape2: TShape;
    lblTitulo: TLabel;
    Panel2: TPanel;
    btnOk: TButton;
    btnSair: TButton;
    GrpConfigurar: TGroupBox;
    GroupBox4: TGroupBox;
    lblLogBalanca: TLabel;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    EditMascara: TEdit;
    GroupBox5: TGroupBox;
    Memo2: TMemo;
    Panel3: TPanel;
    btnLerArquivo: TBitBtn;
    ACBrBAL1: TACBrBAL;
    pnConfigurar: TPanel;
    pnEquipamento: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    cmbBalanca: TComboBox;
    cmbPortaSerial: TComboBox;
    edtTimeOut: TEdit;
    cmbBaudRate: TComboBox;
    GroupBox2: TGroupBox;
    GroupBox6: TGroupBox;
    sttPeso: TLabel;
    GroupBox7: TGroupBox;
    GroupBox9: TGroupBox;
    chbMonitorar: TCheckBox;
    btnConectar: TButton;
    btnLeitura: TButton;
    btnDesconectar: TButton;
    sttResposta: TLabel;
    lblMensagem: TLabel;
    procedure btnConectarClick(Sender: TObject);
    procedure btnLeituraClick(Sender: TObject);
    procedure btnDesconectarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure chbMonitorarClick(Sender: TObject);
    procedure FormCreate(Sender : TObject) ;
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnLerArquivoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ACBrBAL1LePeso(Peso: Double; Resposta: AnsiString);
  private
    { private declarations }
    function Converte( cmd : String) : String;
    procedure GravarINI;
    procedure LerINI();
  public
    { public declarations }
  end; 

var
  FrmConfigurarBalanca: TFrmConfigurarBalanca;

implementation

{$R *.dfm}

Uses
  typinfo, ACBrUtil , AppFuncoes, FPrincipal;

function TFrmConfigurarBalanca.Converte(cmd: String): String;
var A : Integer ;
begin
  Result := '' ;
  For A := 1 to length( cmd ) do
  begin
     if not (cmd[A] in ['A'..'Z','a'..'z','0'..'9',
                        ' ','.',',','/','?','<','>',';',':',']','[','{','}',
                        '\','|','=','+','-','_',')','(','*','&','^','%','$',
                        '#','@','!','~' ]) then
        Result := Result + '#' + IntToStr(ord( cmd[A] )) + ' '
     else
        Result := Result + cmd[A] + ' ';
  end ;
end;

procedure TFrmConfigurarBalanca.btnLerArquivoClick(Sender: TObject);
begin
  OpenURL(ACBrBAL1.ArqLOG);
end;

procedure TFrmConfigurarBalanca.GravarINI;
var
  mIniFile : TIniFile;
  mModelo     : String;
  mPorta      : String;
  mMascara    : String;
  mTimeOut    : Integer;
  mVelocidade : Integer;
begin
  mModelo     := Trim(cmbBalanca.Text);
  mPorta      := Trim(cmbPortaSerial.Text) ;
  mTimeOut    := StrToIntDef(edtTimeOut.Text, 2000); // 2000 = 2 segundos
  mVelocidade := StrToIntDef(cmbBaudRate.Text,4800);
  mMascara    := Trim(EditMascara.Text);
  mIniFile := TIniFile.create(_LOCALINI);
  try
    mIniFile.WriteString('BALANCA',   'Modelo', mModelo);
    mIniFile.WriteString('BALANCA',   'Porta', mPorta);
    mIniFile.WriteInteger('BALANCA',  'TimeOut', mTimeOut);
    mIniFile.WriteInteger('BALANCA',  'Baudrate', mVelocidade);
    mIniFile.WriteString('BALANCA',   'MascaraBalanca', mMascara);
  finally
    mIniFile.Free;
  end;
end;

procedure TFrmConfigurarBalanca.LerINI;
var
  mIniFile    : TIniFile;
  mModelo     : String;
  mPorta      : String;
  mMascara    : String;
  mTimeOut    : Integer;
  mVelocidade : Integer;
begin
   if not FileExists(_LOCALINI) then
   begin
     GravarINI; // Força Criar um novo ".INI"
     sleep(500);
   end;
   mIniFile := TIniFile.create(_LOCALINI);
   try
     mModelo     := Trim(mIniFile.ReadString('BALANCA',  'Modelo', 'balNenhum'));
     mPorta      := Trim(mIniFile.ReadString('BALANCA',  'Porta', 'COM1'));
     mTimeOut    := mIniFile.ReadInteger('BALANCA', 'TimeOut', 2000);
     mVelocidade := mIniFile.ReadInteger('BALANCA', 'Baudrate', 4800);
     mMascara    := Trim(mIniFile.ReadString('BALANCA',  'MascaraBalanca', '2CCCC0TTTTTTDV'));

     cmbBalanca.ItemIndex  := cmbBalanca.Items.IndexOf(mModelo);
     cmbPortaSerial.ItemIndex := cmbPortaSerial.Items.IndexOf(mPorta);
     edtTimeOut.Text := mTimeOut.ToString;
     cmbBaudRate.Text :=mVelocidade.ToString;

     ACBrBAL1.Modelo := TACBrBALModelo(GetEnumValue(TypeInfo(TACBrBALModelo), mModelo));
     ACBrBAL1.Device.Baud := mVelocidade;
     ACBrBAL1.Device.Porta := mPorta;
     ACBrBAL1.Device.TimeOut := mTimeOut;
     EditMascara.Text := mMascara;
   finally
     mIniFile.Free;
   end;
end;

procedure TFrmConfigurarBalanca.ACBrBAL1LePeso(Peso: Double;
  Resposta: AnsiString);
var valid : integer;
begin
   sttPeso.Caption     := formatFloat('##0.000', Peso );
   sttResposta.Caption := Converte( Resposta ) ;
   if Peso > 0 then
      lblMensagem.Caption := 'Leitura OK !'
   else
    begin
      valid := Trunc(ACBrBAL1.UltimoPesoLido);
      case valid of
         0 : lblMensagem.Caption := 'TimeOut !'+sLineBreak+
                                 'Coloque o produto sobre a Balança!' ;
        -1 : lblMensagem.Caption := 'Peso Instavel ! ' +sLineBreak+
                                 'Tente Nova Leitura' ;
        -2 : lblMensagem.Caption := 'Peso Negativo !' ;
       -10 : lblMensagem.Caption := 'Sobrepeso !' ;
      end;
    end ;
end;

procedure TFrmConfigurarBalanca.btnConectarClick(Sender: TObject);
var
  mModelo     : String;
  mPorta      : String;
  mMascara    : String;
  mTimeOut    : Integer;
  mVelocidade : Integer;
begin
  mModelo     := Trim(cmbBalanca.Text);
  mPorta      := Trim(cmbPortaSerial.Text);
  mTimeOut    := StrToIntDef(edtTimeOut.Text, 2000); // 2000 = 2 segundos
  mVelocidade := StrToIntDef(cmbBaudRate.Text,4800);
  mMascara    := Trim(EditMascara.Text);

  // se houver conecção aberta, Fecha a conecção
  if acbrBal1.Ativo then
     ACBrBAL1.Desativar;

  // configura porta de comunicação
  ACBrBAL1.Modelo         := TACBrBALModelo(GetEnumValue(TypeInfo(TACBrBALModelo), Trim(mModelo)));
  ACBrBAL1.Device.Baud    := mVelocidade;
  ACBrBAL1.Device.Porta   := Trim(mPorta);
  ACBrBAL1.Device.TimeOut := mTimeOut;

  // Conecta com a balança
  btnConectar.Enabled    := false;
  pnEquipamento.Enabled         := false;
  btnDesconectar.Enabled := true;
  btnLeitura.Enabled     := true;
  ACBrBAL1.Ativar;
  Application.ProcessMessages;
end;

procedure TFrmConfigurarBalanca.btnLeituraClick(Sender: TObject);
Var TimeOut : Integer ;
begin
  try
    try
       TimeOut := StrToInt( edtTimeOut.Text ) ;
    except
       TimeOut := 2000 ;
    end ;
    ACBrBAL1.LePeso( TimeOut );
  finally
    Application.ProcessMessages;
  end;
end;

procedure TFrmConfigurarBalanca.btnOkClick(Sender: TObject);
begin
  GravarINI();
  Close;
end;

procedure TFrmConfigurarBalanca.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmConfigurarBalanca.btnDesconectarClick(Sender: TObject);
begin
  btnConectar.Enabled    := True;
  pnEquipamento.Enabled         := True;
  btnDesconectar.Enabled := False;
  btnLeitura.Enabled     := False;
  ACBrBAL1.Desativar;
  Application.ProcessMessages;
end;


procedure TFrmConfigurarBalanca.chbMonitorarClick(Sender: TObject);
begin
   ACBrBAL1.MonitorarBalanca := chbMonitorar.Checked ;
end;

procedure TFrmConfigurarBalanca.FormCreate(Sender : TObject) ;
var
  I : TACBrBALModelo ;
begin
  cmbBalanca.Items.Clear ;
  For I := Low(TACBrBALModelo) to High(TACBrBALModelo) do
     cmbBalanca.Items.Add( GetEnumName(TypeInfo(TACBrBALModelo), integer(I) ) ) ;
  cmbBalanca.ItemIndex := 0;
end;

procedure TFrmConfigurarBalanca.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key =  VK_ESCAPE then
    close;
end;

procedure TFrmConfigurarBalanca.FormShow(Sender: TObject);
begin
  LerINI();
  lblLogBalanca.Caption  :=  FrmPrincipal.ACBrBAL1.ArqLOG;
  ACBrBAL1.ArqLOG        :=  FrmPrincipal.ACBrBAL1.ArqLOG;
  ACBrBAL1.Device.ArqLOG :=  FrmPrincipal.ACBrBAL1.Device.ArqLOG;
end;

procedure TFrmConfigurarBalanca.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  ACBrBAL1.Desativar;
end;

end.

