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

unit FConfigurar;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes,
   Vcl.Graphics, System.TypInfo, Vcl.Printers,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, cxGraphics, cxControls,
   cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
   FireDAC.Stan.Intf,
   FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
   FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
   FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtDlgs, FFrameBarra,
   ACBrDFe, ACBrNFe, cxTextEdit, cxMaskEdit, cxSpinEdit, cxDBEdit, Vcl.DBCtrls,
   Vcl.StdCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   Winapi.ShellApi, Classe.Global,
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
      Panel1: TPanel;
      IMGLogomarca: TImage;
      Panel3: TPanel;
      IMGLogoRelatorios: TImage;
      tabvenda: TTabSheet;
      FrmFrameBarra1: TFrmFrameBarra;
      Label6: TLabel;
      DBEdit4: TDBEdit;
      TabNFe: TTabSheet;
      OpenDialog1: TOpenDialog;
      GroupBox14: TGroupBox;
      GroupBox16: TGroupBox;
      DBEdit5: TDBEdit;
      EditNOME: TDBEdit;
      Label2: TLabel;
      Label15: TLabel;
      grpCFOP: TGroupBox;
      IDBEditDialog6: TIDBEditDialog;
      Edit5: TEdit;
      IDBEditDialog7: TIDBEditDialog;
      Edit6: TEdit;
      Panel5: TPanel;
      DBRadioGroup6: TDBRadioGroup;
      DBRadioGroup11: TDBRadioGroup;
      DBRadioGroup15: TDBRadioGroup;
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
      Panel7: TPanel;
      Label7: TLabel;
      Label18: TLabel;
      Label58: TLabel;
      Label62: TLabel;
      DBEdit35: TDBEdit;
      DBEdit36: TDBEdit;
      DBEdit37: TDBEdit;
      DBEdit38: TDBEdit;
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
      GroupBox13: TGroupBox;
      BtnLogomarca: TSpeedButton;
      BtnLogoRelatorios: TSpeedButton;
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
      DBRadioGroup10: TDBRadioGroup;
      DBRadioGroup12: TDBRadioGroup;
      ACBrPosPrinter1: TACBrPosPrinter;
      btnAdicionar: TBitBtn;
      rgbSSLSeguranca: TDBRadioGroup;
      DBEdit30: TDBEdit;
      Label21: TLabel;
      DBEdit40: TDBEdit;
      Label22: TLabel;
      DBCheckBox9: TDBCheckBox;
      EditCliente: TIDBEditDialog;
      EditNomeCliente: TEdit;
      EditCodevendedor: TIDBEditDialog;
      EditVendedor1: TEdit;
      DBRadioGroup5: TDBRadioGroup;
    tbiAplicativos: TTabSheet;
    gbxIfood: TGroupBox;
    cbxusaIfood: TDBCheckBox;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
      procedure ButtonGroup1Items0Click(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure EditJornSTKeyPress(Sender: TObject; var Key: Char);
      procedure Btn_SalvarClick(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
      procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BtnLogomarcaClick(Sender: TObject);
      procedure BtnLogoRelatoriosClick(Sender: TObject);
      procedure IMGLogomarcaDblClick(Sender: TObject);
      procedure IMGLogoRelatoriosDblClick(Sender: TObject);
      procedure db_Parametros_cdsBeforePost(DataSet: TDataSet);
      procedure FormShow(Sender: TObject);
      procedure db_ParametrosNewRecord(DataSet: TDataSet);
      procedure db_ParametrosAfterScroll(DataSet: TDataSet);
      procedure db_ParametrosPostError(DataSet: TDataSet; E: EDatabaseError;
        var Action: TDataAction);
      procedure db_ParametrosAfterPost(DataSet: TDataSet);
      procedure btnCarregarCertficadoClick(Sender: TObject);
      procedure Button1Click(Sender: TObject);
      procedure sbNomeDLLClick(Sender: TObject);
      procedure btnAdicionarClick(Sender: TObject);
    procedure cbxusaIfoodClick(Sender: TObject);
   private
      { Private declarations }
      FTipoDANFE: String;
   public
      { Public declarations }
   end;

var
   FrmConfigurar: TFrmConfigurar;

implementation

uses Biblioteca, FBaseDados, Global, FPrincipal, App.SQL,
   FControleCaixa, FControleBancario, App.Funcoes;

{$R *.DFM}

procedure TFrmConfigurar.FormCreate(Sender: TObject);
begin
   PgParametros.ActivePageIndex := 0;
   BtnLogomarca.Caption := 'Definir Logotipo' + #13 + #10 +
     'Papel de parede do Sistema';
   BtnLogoRelatorios.Caption := 'Logotipo NF-e' + #13 + #10 +
     '(Nota Fiscal Eletrônica)';

end;

procedure TFrmConfigurar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   db_Parametros.close;
   BaseDados.db_Parametros.close;
   BaseDados.db_Parametros.open;
end;

procedure TFrmConfigurar.db_ParametrosNewRecord(DataSet: TDataSet);
begin
   db_Parametros.FieldByName('ESTOQUENEGATIVO').AsString := 'S';
   db_Parametros.FieldByName('PED_BAIXAESTOQUE').AsString := 'N';
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
   Begin
      db_Parametros.Post;
      db_Parametros.ParamByName('EMPRESA').AsInteger :=
        db_Parametros.FieldByName('EMPRESA').AsInteger;
      GetParametros; // Atualizar os dados da classe "TParametros";
   End;
   FrmPrincipal.db_empresa.close;
   FrmPrincipal.db_empresa.open;
   SetParametrosAtualizaDados;
   BaseDados.SetCertificados();

   if FTipoDANFE <> db_Parametros.FieldByName('DANFEREPORT').AsString then
   begin
      AvisoSistema('O Sistema será fechado.' + sLineBreak + sLineBreak +
        'Execute-o novamente, para carregar as configurações adequadas.');
      TerminarAplicacao();
   end;
   close;
End;

procedure TFrmConfigurar.Button1Click(Sender: TObject);
var
   mSerie: String;
   mTipoSSL: String;
begin
   mTipoSSL := db_Parametros.FieldByName('SSL_TIPO').AsString;
   if mTipoSSL = 'OPENSSL' then
   begin
      Informar('[Tipo de SSL] Para ler número de série de certificado digital, utilize WinCrypt ou Capicom.');
      exit;
   end;

   SetCertificadoDigital(ACBrNFe1, mTipoSSL);
   mSerie := ACBrNFe1.SSL.SelecionarCertificado;

   if mSerie.IsEmpty then
      exit;
   if not(db_Parametros.state in [dsEdit, dsInsert]) then
      db_Parametros.Edit;
   db_Parametros.FieldByName('NFE_CERTIFICADO_NUMSERIE').AsString := mSerie;
end;

procedure TFrmConfigurar.ButtonGroup1Items0Click(Sender: TObject);
begin
   PgParametros.ActivePage := Tab_DadosEmpresa;
end;

procedure TFrmConfigurar.cbxusaIfoodClick(Sender: TObject);
begin
   if cbxusaIfood.Checked then
      gbxIfood.Enabled := True
   else
      gbxIfood.Enabled := False;
end;

procedure TFrmConfigurar.btnAdicionarClick(Sender: TObject);
var
   aDBQuery: TFDQuery;
begin
   if pergunta('Cadastrar outra empresa?') = False then
      exit;

   aDBQuery := TFDQuery.Create(Application);
   aDBQuery.Connection := FrmPrincipal.DBConexao;
   try
      aDBQuery.SQL.Add('SELECT * FROM CONFIG_PARAMETROS');
      aDBQuery.open;
      // DataSetDestino.CopyDataSet(DataSetOrigem);
      // aDBQuery.CopyDataSet(db_Parametros);

      aDBQuery.Append;
      aDBQuery.FieldByName('EMPRESA').Required := False;
      aDBQuery.CopyRecord(db_Parametros);
      aDBQuery.FieldByName('EMPRESA').AsVariant := Null;
      // Enviando "Null" ao banco de dados, forçará usar o Generator com a sequencia correta.
      aDBQuery.FieldByName('NOME').AsString := '<Nova Empresa>';
      aDBQuery.FieldByName('NOMEFANTASIA').AsString := '<Nova Empresa>';
      aDBQuery.Post;
      AvisoSistema
        ('Cadastro foi realizada com sucesso. Foi feito uma cópia da atual empresa selecionada.'
        + sLineBreak + sLineBreak +
        'Na proxima tela, selecione a nova empresa. Para efetuar alterações que desejar.');

   finally
      aDBQuery.close;
      aDBQuery.Free;
   end;
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
   db_Parametros.close;
   db_Parametros.ParamByName('EMPRESA').Clear;
   db_Parametros.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   db_Parametros.open;
   FTipoDANFE := db_Parametros.FieldByName('DANFEREPORT').AsString;
end;

procedure TFrmConfigurar.IMGLogomarcaDblClick(Sender: TObject);
begin

   If not(db_Parametros.state in [dsEdit, dsInsert]) then
      db_Parametros.Edit;

   db_Parametros.FieldByName('INF_IMGPRINCIPAL').AsString := '';

   If (db_Parametros.state in [dsEdit, dsInsert]) then
   Begin
      db_Parametros.Post;
   End;

   IMGLogomarca.Picture.LoadFromFile
     (db_Parametros.FieldByName('INF_IMGPRINCIPAL').AsString);

end;

procedure TFrmConfigurar.IMGLogoRelatoriosDblClick(Sender: TObject);
begin

   If not(db_Parametros.state in [dsEdit, dsInsert]) then
      db_Parametros.Edit;

   db_Parametros.FieldByName('INF_IMGIMPRIMIR').AsString := '';
   IMGLogoRelatorios.Picture.LoadFromFile
     (db_Parametros.FieldByName('INF_IMGIMPRIMIR').AsString);

   If (db_Parametros.state in [dsEdit, dsInsert]) then
   Begin
      db_Parametros.Post;
   End;

end;

procedure TFrmConfigurar.sbNomeDLLClick(Sender: TObject);
begin
   OpenDialog1.Filter := 'Arquivo DLL|*.dll';
   OpenDialog1.InitialDir := ExtractFilePath(db_Parametros.FieldByName('SATDLL')
     .AsString);
   OpenDialog1.FileName := db_Parametros.FieldByName('SATDLL').AsString;

   if OpenDialog1.Execute = False then
      exit;

   if not(db_Parametros.state in [dsEdit, dsInsert]) then
      db_Parametros.Edit;
   db_Parametros.FieldByName('SATDLL').AsString := OpenDialog1.FileName;

end;

procedure TFrmConfigurar.btnCarregarCertficadoClick(Sender: TObject);
begin
   if not OpenCertificado.Execute then
      exit;
   if not(db_Parametros.state in [dsEdit, dsInsert]) then
      db_Parametros.Edit;
   db_Parametros.FieldByName('NFE_CERTIFICADO_LOCAL').AsString :=
     OpenCertificado.FileName;
end;

procedure TFrmConfigurar.BtnLogomarcaClick(Sender: TObject);
begin
   if OpenPictureDialog1.Execute = False then
      exit;
   If not(db_Parametros.state in [dsEdit]) then
      db_Parametros.Edit;
   db_Parametros.FieldByName('INF_IMGPRINCIPAL').AsString :=
     OpenPictureDialog1.FileName;
   If (db_Parametros.state in [dsEdit, dsInsert]) then
      db_Parametros.Post;
   db_Parametros.close;
   db_Parametros.open;
   AvisoSistema
     ('Proxima vez que abrir o sistema, a imagem da tela principal será alterada para a que você selecionou.');
end;

procedure TFrmConfigurar.BtnLogoRelatoriosClick(Sender: TObject);
begin

   If OpenPictureDialog1.Execute then
   begin
      If not(db_Parametros.state in [dsEdit]) then
         db_Parametros.Edit;

      db_Parametros.FieldByName('INF_IMGIMPRIMIR').AsString :=
        OpenPictureDialog1.FileName;

      If (db_Parametros.state in [dsEdit, dsInsert]) then
      Begin
         db_Parametros.Post;
      End;

      db_Parametros.close;
      db_Parametros.open;

   end;

end;

procedure TFrmConfigurar.db_ParametrosAfterPost(DataSet: TDataSet);
begin
   db_Parametros.ParamByName('EMPRESA').AsInteger :=
     db_Parametros.FieldByName('EMPRESA').AsInteger;
end;

procedure TFrmConfigurar.db_ParametrosAfterScroll(DataSet: TDataSet);
begin

   if FileExists(db_Parametros.FieldByName('INF_IMGPRINCIPAL').AsString) then
      IMGLogomarca.Picture.LoadFromFile
        (db_Parametros.FieldByName('INF_IMGPRINCIPAL').AsString);

   if FileExists(db_Parametros.FieldByName('INF_IMGIMPRIMIR').AsString) then
      IMGLogoRelatorios.Picture.LoadFromFile
        (db_Parametros.FieldByName('INF_IMGIMPRIMIR').AsString);

end;

procedure TFrmConfigurar.db_Parametros_cdsBeforePost(DataSet: TDataSet);
begin

   db_Parametros.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;

   if (db_Parametros.FieldByName('ESTOQUENEGATIVO').AsString = 'N') or
     (db_Parametros.FieldByName('ESTOQUENEGATIVO').IsNull) Then
   begin
      FormMensagem('Você está permitindo venda sem estoque. Cuidado!' + #13 +
        #10 + #13 + #10 + 'Verifique na guia "Estoque"');
   end;

end;

end.
