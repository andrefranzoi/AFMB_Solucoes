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

Unit FFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  ACBrBase, ACBrSocket, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, cxTextEdit,
  cxMaskEdit, cxDBEdit, Vcl.Mask, Vcl.Buttons, Vcl.ComCtrls, ISFEdit,
  ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FFrameBotoes,
  FFrameBarra,
  Winapi.ShellAPI, dxSkinsCore, dxSkinsDefaultPainters;

type
   TFrmFornecedores = class(TForm)
      DS_Fornecedor: TDataSource;
      db_Fornecedor: TFDQuery;
      FrmFrameBarra1: TFrmFrameBarra;
      FrmFrameBotoes1: TFrmFrameBotoes;
    LocalizaFornecedor: TIDBEditDialog;
    pgFornecedores: TPageControl;
    TabDados: TTabSheet;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label70: TLabel;
    Label40: TLabel;
    Label49: TLabel;
    Label4: TLabel;
    Label22: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    EditUF: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    EdRazaoSocial: TDBEdit;
    EdFantasia: TDBEdit;
    EdRGInscrEst: TDBEdit;
    EditNomeCidade2: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    EditcodRegiao1: TIDBEditDialog;
    EditRegiao1: TEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DCodPlano: TIDBEditDialog;
    EditNomePlanoContas: TEdit;
    DBEdit3: TDBEdit;
    DbEditCFOP: TIDBEditDialog;
    Edit1: TEdit;
    EstSearchDialogZeos1: TIDBEditDialog;
    Edit2: TEdit;
    EditTransportadora: TIDBEditDialog;
    EditNomeTrasportadora: TEdit;
    EditCodCidade1: TDBEdit;
    Label17: TLabel;
    dsTipoContrato: TDataSource;
    GroupBox10: TGroupBox;
    DBMemo2: TDBMemo;
    rgTipo: TDBRadioGroup;
    Label1: TLabel;
    EditCNPJ: TcxDBMaskEdit;
      procedure FormCreate(Sender: TObject);
      procedure Btn_SairClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSalvarClick(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
      procedure BtnNovoClick(Sender: TObject);
      procedure EditUFExit(Sender: TObject);
      procedure DBGrid_PrincipalDblClick(Sender: TObject);
      procedure db_FornecedorNewRecord(DataSet: TDataSet);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rgTipoChange(Sender: TObject);
    procedure DS_FornecedorStateChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure db_FornecedorAfterOpen(DataSet: TDataSet);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmFornecedores: TFrmFornecedores;

implementation

uses FPrincipal, App.SQL, Biblioteca, Global, Classe.Usuarios, Classe.CEP, Classe.Cliente, Classe.Global, FBaseDados,
  App.Funcoes;

{$R *.DFM}

procedure TFrmFornecedores.FormCreate(Sender: TObject);
begin
   pgFornecedores.ActivePageIndex :=0;
   FrmFrameBotoes1.DataSource := DS_Fornecedor;
   FrmFrameBotoes1.DataSource.DataSet := db_Fornecedor;
   db_Fornecedor.open;
end;

procedure TFrmFornecedores.FormDestroy(Sender: TObject);
begin
  FrmFornecedores := Nil;
end;

procedure TFrmFornecedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   db_Fornecedor.close;
   Action := cafree;
end;

procedure TFrmFornecedores.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_F5 then
   begin

      If (db_Fornecedor.state in [dsBrowse]) then
          db_Fornecedor.Refresh;
   end;

end;

procedure TFrmFornecedores.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EdRazaoSocial.SetFocus;
end;

procedure TFrmFornecedores.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmFornecedores.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmFornecedores.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmFornecedores.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin

   if LocalizaFornecedor.Execute then
   begin
      db_Fornecedor.close;
      db_Fornecedor.ParamByName('CODIGO').AsInteger :=LocalizaFornecedor.ResultFieldAsInteger('CODIGO');
      db_Fornecedor.open;
   end;
end;

procedure TFrmFornecedores.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
end;

procedure TFrmFornecedores.rgTipoChange(Sender: TObject);
begin
  if not (db_Fornecedor.state in [dsEdit,dsInsert]) then
    Exit;
  EditCNPJ.Clear;
  case rgTipo.ItemIndex of
    0 : begin
          EditCNPJ.Properties.EditMask:= '99.999.999/9999-99';
        end;
    1 : begin
          EditCNPJ.Properties.EditMask:= '999.999.999-99';
        end;
  end;
  EditCNPJ.SetFocus;
end;

procedure TFrmFornecedores.Btn_SairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmFornecedores.db_FornecedorAfterOpen(DataSet: TDataSet);
begin
  FormataCampo(db_Fornecedor);
end;

procedure TFrmFornecedores.db_FornecedorNewRecord(DataSet: TDataSet);
begin
   db_Fornecedor.FieldByName('DATA').AsDateTime      := Date;
   db_Fornecedor.FieldByName('TIPO').AsString        := 'FORNECEDOR';
   db_Fornecedor.FieldByName('IDCIDADE').AsInteger   := FParametros.Empresa.IDCidade;
   db_Fornecedor.FieldByName('CODIGOUF').AsInteger   := FParametros.Empresa.IDUF;
   db_Fornecedor.FieldByName('NOMECIDADE').AsString  := FParametros.Empresa.Cidade;
   db_Fornecedor.FieldByName('CLASSIFICACAO').AsString  := 'J';
   db_Fornecedor.FieldByName('UF').AsString          := FParametros.Empresa.UF;

end;

procedure TFrmFornecedores.DS_FornecedorStateChange(Sender: TObject);
begin
  if (FrmFrameBotoes1.DataSource.State in [dsInsert,dsEdit]) then
    FrmFrameBotoes1.AtivaEdicao
  else
    FrmFrameBotoes1.DesativaEdicao;
end;

procedure TFrmFornecedores.BtnCancelarClick(Sender: TObject);
begin
   db_Fornecedor.Cancel;
end;

procedure TFrmFornecedores.BtnSalvarClick(Sender: TObject);
begin
   If (db_Fornecedor.state in [dsEdit, dsInsert]) then
      db_Fornecedor.Post;
end;

procedure TFrmFornecedores.BtnNovoClick(Sender: TObject);
begin
   db_Fornecedor.Append;
   db_Fornecedor.FieldByName('DATA').AsDateTime := Date;
   rgTipo.SetFocus;
end;

Procedure TFrmFornecedores.EditUFExit(Sender: TObject);
begin
   If UF_Brasil(db_Fornecedor.FieldByName('UF').AsString) = false then
   Begin
      Aviso('Estado não exite');
      EditUF.SetFocus;
   End;
end;

procedure TFrmFornecedores.DBGrid_PrincipalDblClick(Sender: TObject);
begin
   If db_Fornecedor.IsEmpty then
   Begin
      Informar('Não há dados para editar');
      abort;
   end;
end;

end.
