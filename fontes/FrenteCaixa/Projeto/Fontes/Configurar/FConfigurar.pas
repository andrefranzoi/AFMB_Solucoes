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

unit FConfigurar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, System.TypInfo, Vcl.Printers,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtDlgs,
  ACBrDFe, ACBrNFe, cxTextEdit, cxMaskEdit, cxSpinEdit, cxDBEdit, Vcl.DBCtrls,
  Vcl.StdCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
  Winapi.ShellApi,
  uEstSearchDialogZeos, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ComCtrls,
  dxSkinsCore, dxSkinsDefaultPainters,
  ACBrPosPrinter,
  ACBrBase, ACBrDevice;

type
   TFrmConfigurar = class(TForm)
      Panel4: TPanel;
      BtnCancelar: TBitBtn;
      BtnSalvar: TBitBtn;
      Panel2: TPanel;
      OpenPictureDialog1: TOpenPictureDialog;
      PgParametros: TPageControl;
      Tab_DadosEmpresa: TTabSheet;
      GroupBox1: TGroupBox;
      GroupBox7: TGroupBox;
      Label5: TLabel;
      Label8: TLabel;
      Label9: TLabel;
      Label10: TLabel;
      Label11: TLabel;
      Label12: TLabel;
      Label19: TLabel;
      Label1: TLabel;
      Label33: TLabel;
      Label34: TLabel;
      Label48: TLabel;
      Label25: TLabel;
      EditRUA: TDBEdit;
      EditBAIRRO: TDBEdit;
      EditCEP: TDBEdit;
      EditCIDADE: TDBEdit;
      EditUF: TDBEdit;
      EditNUM_FONE: TDBEdit;
      EditULT_VISITA: TDBEdit;
      DBEdit1: TDBEdit;
      DBEdit21: TDBEdit;
      DBEdit22: TDBEdit;
      DBEdit27: TDBEdit;
      DBEdit12: TDBEdit;
      db_Parametros: TFDQuery;
      DS_Parametros: TDataSource;
      DBEdit20: TDBEdit;
      Label44: TLabel;
      DBEdit23: TDBEdit;
      Label45: TLabel;
      Label6: TLabel;
      DBEdit4: TDBEdit;
      OpenDialog1: TOpenDialog;
    EditNOME: TDBEdit;
    Label2: TLabel;
    Tab_Operacionais: TTabSheet;
    GroupBox10: TGroupBox;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    OpenCertificado: TOpenDialog;
    GroupBox4: TGroupBox;
    Label20: TLabel;
    Label26: TLabel;
    Label35: TLabel;
    Label39: TLabel;
    Label49: TLabel;
    Label47: TLabel;
    DBEdit11: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit24: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    DBEdit26: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit28: TDBEdit;
    Label50: TLabel;
    TabSheet3: TTabSheet;
    Panel8: TPanel;
    grpCertificado: TGroupBox;
    Label42: TLabel;
    Label43: TLabel;
    Label46: TLabel;
    DBEdit8: TDBEdit;
    btnCarregarCertficado: TButton;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Button1: TButton;
    rgbTipoSSL: TDBRadioGroup;
    ACBrNFe1: TACBrNFe;
    pgcNFCeSAT: TPageControl;
    tabNFCe: TTabSheet;
    TabSAT: TTabSheet;
    Panel6: TPanel;
    Panel10: TPanel;
    DBRadioGroup4: TDBRadioGroup;
    GroupBox9: TGroupBox;
    Label68: TLabel;
    DBEdit47: TDBEdit;
    Label72: TLabel;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    Label73: TLabel;
    pnComunLogoQRCode: TPanel;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup8: TDBRadioGroup;
    DBRadioGroup7: TDBRadioGroup;
    GroupBox11: TGroupBox;
    Label51: TLabel;
    Label52: TLabel;
    cbxModelo: TDBComboBox;
    Panel9: TPanel;
    GroupBox27: TGroupBox;
    DBMemo2: TDBMemo;
    GroupBox29: TGroupBox;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    Panel13: TPanel;
    DBRadioGroup14: TDBRadioGroup;
    GroupBox28: TGroupBox;
    Label54: TLabel;
    DBEdit32: TDBEdit;
    GroupBox22: TGroupBox;
    Label53: TLabel;
    Label56: TLabel;
    DBEdit29: TDBEdit;
    DBEdit31: TDBEdit;
    GroupBox26: TGroupBox;
    IDBEditDialog12: TIDBEditDialog;
    Edit11: TEdit;
    cbxPorta: TDBComboBox;
    ACBrPosPrinter1: TACBrPosPrinter;
    DBRadioGroup18: TDBRadioGroup;
    rgbSSLSeguranca: TDBRadioGroup;
    DBEdit30: TDBEdit;
    Label21: TLabel;
    DBEdit40: TDBEdit;
    Label22: TLabel;
    GroupBox3: TGroupBox;
    gbxNFCeSAT: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup17: TDBRadioGroup;
    Panel11: TPanel;
    Label71: TLabel;
    sbNomeDLL: TSpeedButton;
    Label38: TLabel;
    DBEdit48: TDBEdit;
    EditNomeDLL: TDBEdit;
    IDBEditDialog13: TIDBEditDialog;
    Edit12: TEdit;
    Label23: TLabel;
    DBEdit41: TDBEdit;
    pnTitulo: TPanel;
    Shape2: TShape;
    lblTitulo: TLabel;
    DBCheckBox9: TDBCheckBox;
    GroupBox13: TGroupBox;
    DBRadioGroup10: TDBRadioGroup;
    DBRadioGroup12: TDBRadioGroup;
    DBRadioGroup11: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
      procedure ButtonGroup1Items0Click(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure EditJornSTKeyPress(Sender: TObject; var Key: Char);
      procedure Btn_SalvarClick(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
      procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormShow(Sender: TObject);
      procedure db_ParametrosNewRecord(DataSet: TDataSet);
      procedure db_ParametrosPostError(DataSet: TDataSet; E: EDatabaseError;
        var Action: TDataAction);
    procedure btnCarregarCertficadoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure sbNomeDLLClick(Sender: TObject);
   private
      { Private declarations }
      FTipoDANFE : String;
      Procedure GetDispositivos;
   public
      { Public declarations }
   end;

var
   FrmConfigurar: TFrmConfigurar;

implementation


{$R *.DFM}

uses FPrincipal, AppFuncoes, AppConstantes, AppSQL;

procedure TFrmConfigurar.FormCreate(Sender: TObject);
begin
  PgParametros.ActivePageIndex := 0;
  pgcNFCeSAT.ActivePageIndex := 0;
end;

procedure TFrmConfigurar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  db_Parametros.close;
end;

procedure TFrmConfigurar.db_ParametrosNewRecord(DataSet: TDataSet);
begin
  db_Parametros.FieldByName('IDPAIS').AsInteger := 1058;
  db_Parametros.FieldByName('NOMEPAIS').AsString := 'BRASIL';
end;

procedure TFrmConfigurar.db_ParametrosPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   raise Exception.Create(E.Message);

end;

procedure TFrmConfigurar.EditJornSTKeyPress(Sender: TObject; var Key: Char);
begin
   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
      Key := #0;
End;

procedure TFrmConfigurar.Btn_SalvarClick(Sender: TObject);
Begin
   If (db_Parametros.state in [dsEdit, dsInsert]) then
      db_Parametros.Post;
   // --------------------------------------------------------------
   // Atualizar informações
   // --------------------------------------------------------------
   FrmPrincipal.GetInformacoes();
   FrmPrincipal.SetCertificado();
   FrmPrincipal.NFCePreparaImpressora();
   FrmPrincipal.AtualizarCaption();
   SetCertificadoDigital(FrmPrincipal.ACBrNFe1,FConfiguracao.NFESSLTipo);
   SetCertificadoSeguranca(FrmPrincipal.ACBrNFe1,FConfiguracao.NFETSL_TIPO);
   // --------------------------------------------------------------
   //
   // --------------------------------------------------------------
   Close;
End;

procedure TFrmConfigurar.Button1Click(Sender: TObject);
var
  mSerie : String;
  mTipoSSL : String;
begin
  mTipoSSL := db_Parametros.FieldByName('SSL_TIPO').AsString;
  if mTipoSSL='OPENSSL' then
  begin
    Informar('[Tipo de SSL] Para ler número de série de certificado digital, utilize WinCrypt ou Capicom.');
    exit;
  end;

  SetCertificadoDigital(ACBrNFe1,mTipoSSL);
  mSerie := ACBrNFe1.SSL.SelecionarCertificado;

  if mSerie.IsEmpty then
    exit;
  if not(db_Parametros.state in [dsEdit, dsInsert]) then
    db_Parametros.Edit;
  db_Parametros.FieldByName('NFE_CERTIFICADO_NUMSERIE').AsString :=  mSerie;
end;

procedure TFrmConfigurar.ButtonGroup1Items0Click(Sender: TObject);
begin
   PgParametros.ActivePage := Tab_DadosEmpresa;
end;

procedure TFrmConfigurar.BtnCancelarClick(Sender: TObject);
begin
  db_Parametros.Cancel;
  close;
end;

procedure TFrmConfigurar.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
      Key := #0;
end;

procedure TFrmConfigurar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_ESCAPE then
      BtnCancelarClick(Sender);
end;

procedure TFrmConfigurar.FormShow(Sender: TObject);
begin
  db_Parametros.Close;
  db_Parametros.Open;
  FTipoDANFE := db_Parametros.FieldByName('DANFEREPORT').AsString;
  GetDispositivos();

end;

procedure TFrmConfigurar.sbNomeDLLClick(Sender: TObject);
begin
  OpenDialog1.Filter := 'Arquivo DLL|*.dll';
  OpenDialog1.InitialDir := ExtractFilePath(db_Parametros.FieldByName('SATDLL').AsString);
  OpenDialog1.FileName := db_Parametros.FieldByName('SATDLL').AsString;

  if OpenDialog1.Execute =  False then
      exit;

  if not(db_Parametros.state in [dsEdit, dsInsert]) then
    db_Parametros.Edit;
  db_Parametros.FieldByName('SATDLL').AsString :=  OpenDialog1.FileName;

end;

procedure TFrmConfigurar.btnCarregarCertficadoClick(Sender: TObject);
begin
  if not OpenCertificado.Execute then
    exit;
  if not(db_Parametros.state in [dsEdit, dsInsert]) then
    db_Parametros.Edit;
  db_Parametros.FieldByName('NFE_CERTIFICADO_LOCAL').AsString :=  OpenCertificado.FileName;
end;

procedure TFrmConfigurar.GetDispositivos;
var
  I: TACBrPosPrinterModelo;
  J: TACBrPosPaginaCodigo;
  K: Integer;
begin
  //-----------------------------------------------------------------------------------------
  //
  //-----------------------------------------------------------------------------------------
  cbxModelo.Items.Clear ;
  For I := Low(TACBrPosPrinterModelo) to High(TACBrPosPrinterModelo) do
     cbxModelo.Items.Add( GetEnumName(TypeInfo(TACBrPosPrinterModelo), integer(I) ) ) ;
  //-----------------------------------------------------------------------------------------
  //
  //-----------------------------------------------------------------------------------------
  cbxPorta.Items.Clear;
  ACBrPosPrinter1.Device.AcharPortasSeriais( cbxPorta.Items );
  if Trim(db_Parametros.FieldByName('PORTAESCPOS').AsString) <> '' then
    cbxPorta.Items.Add(Trim(db_Parametros.FieldByName('PORTAESCPOS').AsString)) ;
  For K := 0 to Printer.Printers.Count-1 do
    cbxPorta.Items.Add('RAW:'+Printer.Printers[K]);
  cbxPorta.Items.Add('c:\temp\ecf.txt') ;
  cbxPorta.Items.Add('LPT1') ;
  cbxPorta.Items.Add('LPT2') ;
  cbxPorta.Items.Add('\\localhost\Epson') ;
  cbxPorta.Items.Add('TCP:192.168.0.31:9100') ;
  cbxPorta.Items.Add('/dev/ttyS0') ;
  cbxPorta.Items.Add('/dev/ttyS1') ;
  cbxPorta.Items.Add('/dev/ttyUSB0') ;
  cbxPorta.Items.Add('/dev/ttyUSB1') ;
  cbxPorta.Items.Add('/tmp/ecf.txt') ;
end;

end.
