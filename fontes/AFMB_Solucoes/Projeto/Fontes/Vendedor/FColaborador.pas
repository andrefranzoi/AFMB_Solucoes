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

unit FColaborador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxTextEdit, cxMaskEdit,
  cxDBEdit, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.StdCtrls, ISFEdit,
  ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FFrameBarra,
  FFrameBotoes,
  Classe.Global,
  Winapi.ShellAPI, dxSkinsCore, dxSkinsDefaultPainters;

type
   TFrmColaborador = class(TForm)
      GroupBox1: TGroupBox;
      DS_Vendedor: TDataSource;
      db_Vendedor: TFDQuery;
    FrmFrameBotoes1: TFrmFrameBotoes;
    FrmFrameBarra1: TFrmFrameBarra;
    dbEditPesquisar: TIDBEditDialog;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    Label4: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label70: TLabel;
    Label40: TLabel;
    Label33: TLabel;
    Label43: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit47: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    EdRazaoSocial: TDBEdit;
    EdFantasia: TDBEdit;
    EdRGInscrEst: TDBEdit;
    DBEdit59: TDBEdit;
    EditcodRegiao2: TIDBEditDialog;
    EditRegiao2: TEdit;
    DBEdit24: TDBEdit;
    DBEdit57: TDBEdit;
    EditTransportadora: TIDBEditDialog;
    EditNomeTrasportadora: TEdit;
    DBEdit9: TDBEdit;
    DBMemo1: TDBMemo;
    EditConta_Credito: TIDBEditDialog;
    EditContaCorrente: TEdit;
    rgTipo: TDBRadioGroup;
    Label5: TLabel;
    EditCNPJ: TcxDBMaskEdit;
    grpEnderecoPJ: TGroupBox;
    Label1: TLabel;
    Label8: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit60: TDBEdit;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure Sair1Click(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure db_VendedorAfterPost(DataSet: TDataSet);
    procedure rgTipoChange(Sender: TObject);
    procedure db_VendedorNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure db_VendedorAfterOpen(DataSet: TDataSet);
    procedure DS_VendedorStateChange(Sender: TObject);

   private
      { Private declarations }

   public
      { Public declarations }
   end;

var
   FrmColaborador: TFrmColaborador;

implementation

uses FPrincipal, App.SQL, Biblioteca, Global, Classe.Usuarios, Classe.CEP,
  Classe.Cliente, App.Funcoes;

{$R *.DFM}

procedure TFrmColaborador.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := DS_Vendedor;
   db_Vendedor.Open;

end;

procedure TFrmColaborador.FormDestroy(Sender: TObject);
begin
  FrmColaborador := Nil;
end;

procedure TFrmColaborador.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditCNPJ.SetFocus;
end;

procedure TFrmColaborador.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmColaborador.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmColaborador.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmColaborador.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbEditPesquisar.Execute then
   Begin
      db_Vendedor.Close;
      db_Vendedor.ParamByName('CODIGO').AsInteger := dbEditPesquisar.ResultFieldAsInteger('CODIGO');;
      db_Vendedor.Open;
   End;
end;

procedure TFrmColaborador.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmColaborador.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmColaborador.rgTipoChange(Sender: TObject);
begin
  if not (db_Vendedor.state in [dsEdit,dsInsert]) then
    Exit;
  EditCNPJ.Clear;

  case rgTipo.ItemIndex of
    0 : EditCNPJ.Properties.EditMask:= '99.999.999/9999-99';
    1 : EditCNPJ.Properties.EditMask:= '999.999.999-99';
  end;

  EditCNPJ.SetFocus;
end;

procedure TFrmColaborador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_Vendedor.Close;
   Action :=Cafree;
end;

procedure TFrmColaborador.Sair1Click(Sender: TObject);
begin
   Close;
end;

procedure TFrmColaborador.db_VendedorAfterOpen(DataSet: TDataSet);
begin
  FormataCampo(db_Vendedor);
end;

procedure TFrmColaborador.db_VendedorAfterPost(DataSet: TDataSet);
begin
   db_Vendedor.ParamByname('CODIGO').AsInteger := db_Vendedor.FieldByName('CODIGO').AsInteger;

end;

procedure TFrmColaborador.db_VendedorNewRecord(DataSet: TDataSet);
begin
   db_Vendedor.FieldByName('DATA').AsDateTime           := Date;
   db_Vendedor.FieldByName('CLASSIFICACAO').AsString    := 'F';
   db_Vendedor.FieldByName('BLOQUEADO').AsString        := 'N';
   db_Vendedor.FieldByName('TIPO').AsString             := 'VENDEDOR';
   db_Vendedor.FieldByName('ATIVO').AsString            := 'S';
   db_Vendedor.FieldByName('COMISSIONAR').AsString      := 'S';

   db_Vendedor.FieldByName('IDCIDADE').AsInteger        := FParametros.Empresa.IDCidade;
   db_Vendedor.FieldByName('CODIGOUF').AsInteger        := FParametros.Empresa.IDUF;
   db_Vendedor.FieldByName('NOMECIDADE').AsString       := FParametros.Empresa.Cidade;
   db_Vendedor.FieldByName('UF').AsString               := FParametros.Empresa.UF;

end;

procedure TFrmColaborador.DS_VendedorStateChange(Sender: TObject);
begin
  if (FrmFrameBotoes1.DataSource.State in [dsInsert,dsEdit]) then
    FrmFrameBotoes1.AtivaEdicao
  else
    FrmFrameBotoes1.DesativaEdicao;
end;

end.
