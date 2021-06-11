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

unit FPedidoCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, FFrameBotoes, FFrameBarra,
  DBCtrls, Buttons, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxClass, frxDBSet, Vcl.Mask, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, Classe.Global;

type
  TFrmPedidoCompra = class(TForm)
    GroupBox1: TGroupBox;
    Panel3: TPanel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    EditFornecedor: TIDBEditDialog;
    EditData: TDBEdit;
    EditPedido: TDBEdit;
    EditDataEntrega: TDBEdit;
    EditPagamento: TIDBEditDialog;
    EditNomeFormaPagto: TEdit;
    EditNomeTrasportadora: TEdit;
    EditTransportadora: TIDBEditDialog;
    EditClienteNome: TEdit;
    EditCentroCusto: TIDBEditDialog;
    EditNomeCentroCusto: TEdit;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Panel6: TPanel;
    editValorFrete: TDBEdit;
    Label4: TLabel;
    EditQTDETotal: TDBEdit;
    Label5: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Label6: TLabel;
    EditValorTotal: TDBEdit;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    dbProcurarPedido: TIDBEditDialog;
    dbfp_PedidCompra: TfrxDBDataset;
    frx_PedidoCompra: TfrxReport;
    ds_PedidoCompra: TDataSource;
    db_PedidoCompra: TFDQuery;
    db_PedidoCompraItens: TFDQuery;
    dbfp_PedidCompraItens: TfrxDBDataset;
    FrmFrameBotoes1: TFrmFrameBotoes;
    dbProcurarProdutos: TIDBEditDialog;
    Label7: TLabel;
    SPPEDIDOCOMPRA_CALCULAR: TFDStoredProc;
    ds_PedidoCompraItens: TDataSource;
    ViewPedidoCompra: TFDQuery;
    ViewPedidoCompraItens: TFDQuery;
    FrmFrameBarra1: TFrmFrameBarra;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGrid1Enter(Sender: TObject);
    procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure db_PedidoCompraAfterPost(DataSet: TDataSet);
    procedure db_PedidoCompraBeforeOpen(DataSet: TDataSet);
    procedure db_PedidoCompraBeforePost(DataSet: TDataSet);
    procedure db_PedidoCompraNewRecord(DataSet: TDataSet);
    procedure db_PedidoCompraItensAfterPost(DataSet: TDataSet);
    procedure db_PedidoCompraItensBeforePost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure ds_PedidoCompraStateChange(Sender: TObject);
    procedure db_PedidoCompraItensAfterOpen(DataSet: TDataSet);
    procedure db_PedidoCompraAfterOpen(DataSet: TDataSet);
    procedure db_PedidoCompraItensAfterEdit(DataSet: TDataSet);
    procedure db_PedidoCompraItensCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    FCodProduto : String;
    procedure prcPedidoCompraCalcular;
    procedure GetDetProduto;
  public
    { Public declarations }
  end;

var
  FrmPedidoCompra: TFrmPedidoCompra;

implementation

uses FPrincipal, Biblioteca, Global, App.SQL, FBaseDados, FastReport,
  App.Funcoes;

{$R *.dfm}

procedure TFrmPedidoCompra.DBGrid1EditButtonClick(Sender: TObject);
begin
   if dbProcurarProdutos.Execute then
   begin
      If not (db_PedidoCompraItens.State in [dsinsert,dsedit]) then
         db_PedidoCompraItens.edit;
      FCodProduto := dbProcurarProdutos.ResultFieldAsString('REFERENCIA');
      db_PedidoCompraItens.FieldByName('PRODUTO').AsString := FCodProduto;
      GetDetProduto();
      If (db_PedidoCompraItens.State in [dsinsert,dsedit]) then
         db_PedidoCompraItens.Post;
   end;
end;


procedure TFrmPedidoCompra.DBGrid1Enter(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSalvarClick(Sender);
end;

procedure TFrmPedidoCompra.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if key=vk_f8 then
   begin
     if dbProcurarProdutos.Execute then
     begin

        If not (db_PedidoCompraItens.State in [dsedit]) then
           db_PedidoCompraItens.edit;
        // x1
        FCodProduto := dbProcurarProdutos.ResultFieldAsString('REFERENCIA');
        db_PedidoCompraItens.FieldByName('PRODUTO').AsString := FCodProduto;
        GetDetProduto();
        If (db_PedidoCompraItens.State in [dsedit]) then
           db_PedidoCompraItens.Post;
     end;
   end;
end;

procedure TFrmPedidoCompra.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmPedidoCompra.db_PedidoCompraAfterOpen(DataSet: TDataSet);
begin
  FormataCampo(db_PedidoCompra);
  TFloatField(db_PedidoCompra.FieldByName('QTDE_PEDIDA')).DisplayFormat := '###,##0';
end;

procedure TFrmPedidoCompra.db_PedidoCompraAfterPost(DataSet: TDataSet);
begin
   db_PedidoCompra.ParamByName('CODIGO').AsInteger   := db_PedidoCompra.FieldByName('CODIGO').AsInteger;
end;

procedure TFrmPedidoCompra.db_PedidoCompraBeforeOpen(DataSet: TDataSet);
begin
   db_PedidoCompra.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TFrmPedidoCompra.db_PedidoCompraBeforePost(DataSet: TDataSet);
begin
   if (db_PedidoCompra.FieldByName('FORNECEDOR').AsInteger=0) Then
   begin
     AvisoSistema('Campo [Fornecedor] é obrigatório.');
     EditFornecedor.SetFocus;
     abort;
   end;
   if (db_PedidoCompra.FieldByName('TRANSPORTADORA').AsInteger>0)  and
      (db_PedidoCompra.FieldByName('FRETE_TIPO').AsString='')  Then
   begin
     AvisoSistema('Você informou uma [Transportadora], informe tambem o campo [Frete por conta] ');
     abort;
   end;
   if (db_PedidoCompra.FieldByName('DEPARTAMENTO').AsInteger=0) Then
   begin
     AvisoSistema('Campo [Departamento] é obrigatório.');
     EditCentroCusto.SetFocus;
     abort;
   end;
   db_PedidoCompra.FieldByName('APROVADO').AsString :='S';
end;

procedure TFrmPedidoCompra.db_PedidoCompraItensAfterEdit(DataSet: TDataSet);
begin
  GetDetProduto();
end;

procedure TFrmPedidoCompra.db_PedidoCompraItensAfterOpen(DataSet: TDataSet);
begin
  FormataCampo(db_PedidoCompraItens);
  TFloatField(db_PedidoCompraItens.FieldByName('QTDE_PEDIDA')).DisplayFormat := '';
  TFloatField(db_PedidoCompraItens.FieldByName('QTDE_PEDIDA')).EditFormat := '';
end;

procedure TFrmPedidoCompra.db_PedidoCompraItensAfterPost(DataSet: TDataSet);
begin
   prcPedidoCompraCalcular;
end;

procedure TFrmPedidoCompra.db_PedidoCompraItensBeforePost(DataSet: TDataSet);
begin
  db_PedidoCompraItens.FieldByName('EMPRESA').AsInteger :=  db_PedidoCompra.FieldByName('EMPRESA').AsInteger;
  db_PedidoCompraItens.FieldByName('CODIGO').AsInteger  :=  db_PedidoCompra.FieldByName('CODIGO').AsInteger;
  GetDetProduto();
end;

procedure TFrmPedidoCompra.db_PedidoCompraItensCalcFields(DataSet: TDataSet);
begin
  GetDetProduto();
end;

procedure TFrmPedidoCompra.GetDetProduto();
begin
   if (db_PedidoCompraItens.state in [dsedit, dsinsert]) = false then
     exit;
   if Trim(db_PedidoCompraItens.FieldByName('DESCRICAO').AsString) = '' then
     db_PedidoCompraItens.FieldByName('DESCRICAO').AsString := GetProdutoCampo(db_PedidoCompraItens.FieldByName('PRODUTO').AsString,'DESCRICAO');
   if Trim(db_PedidoCompraItens.FieldByName('UND').AsString) = '' then
     db_PedidoCompraItens.FieldByName('UND').AsString := GetProdutoCampo(db_PedidoCompraItens.FieldByName('PRODUTO').AsString,'UNIDADE');
   if db_PedidoCompraItens.FieldByName('VALOR_UNIT').AsFloat <=0  then
     db_PedidoCompraItens.FieldByName('VALOR_UNIT').AsFloat := GetProdutoPrecoCusto(db_PedidoCompraItens.FieldByName('PRODUTO').AsString);
end;


procedure TFrmPedidoCompra.db_PedidoCompraNewRecord(DataSet: TDataSet);
begin
   db_PedidoCompra.FieldByName('DATA').AsDateTime   :=Date;
   db_PedidoCompra.FieldByName('APROVADO').AsString :='S';
end;

procedure TFrmPedidoCompra.ds_PedidoCompraStateChange(Sender: TObject);
begin
  if (FrmFrameBotoes1.DataSource.State in [dsInsert,dsEdit]) then
    FrmFrameBotoes1.AtivaEdicao
  else
    FrmFrameBotoes1.DesativaEdicao;
end;

procedure TFrmPedidoCompra.prcPedidoCompraCalcular;
begin

   SPPEDIDOCOMPRA_CALCULAR.ParamByName('EMPRESA').AsInteger :=  FSistema.Empresa;
   SPPEDIDOCOMPRA_CALCULAR.ParamByName('CODIGO').AsInteger :=  db_PedidoCompra.FieldByName('CODIGO').AsInteger;
   SPPEDIDOCOMPRA_CALCULAR.ExecProc;

   db_PedidoCompra.refresh;
   db_PedidoCompraItens.refresh;

end;

Procedure TFrmPedidoCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  db_PedidoCompraItens.close;
  db_PedidoCompra.close;
  Action := CaFree;
end;

procedure TFrmPedidoCompra.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  db_PedidoCompraItens.Cancel;
  db_PedidoCompra.Cancel;
end;

procedure TFrmPedidoCompra.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := ds_PedidoCompra;
   db_PedidoCompra.Open;
   db_PedidoCompraItens.Open;
end;

procedure TFrmPedidoCompra.FormDestroy(Sender: TObject);
begin
  FrmPedidoCompra := Nil;
end;

procedure TFrmPedidoCompra.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbAdicionarClick(Sender);
  EditDataEntrega.SetFocus;

end;

procedure TFrmPedidoCompra.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
  db_PedidoCompraItens.Cancel;
  FrmFrameBotoes1.SpbCancelarClick(Sender);
end;

procedure TFrmPedidoCompra.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbEditarClick(Sender);
end;

procedure TFrmPedidoCompra.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmPedidoCompra.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
begin
   FrmFrameBotoes1SpbSalvarClick(Sender);
   ViewPedidoCompraItens.close;
   ViewPedidoCompra.close;
   try
     ViewPedidoCompra.ParamByName('CODIGO').AsInteger   := db_PedidoCompra.FieldByName('CODIGO').AsInteger;
     ViewPedidoCompraItens.ParamByName('CODIGO').AsInteger   := db_PedidoCompra.FieldByName('CODIGO').AsInteger;
     frx_PedidoCompra.ShowReport;
   finally
     ViewPedidoCompraItens.close;
     ViewPedidoCompra.close;
   end;
end;

procedure TFrmPedidoCompra.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbProcurarPedido.Execute then
   begin
      FrmFrameBotoes1.SpbCancelarClick(Sender);
      db_PedidoCompra.close;
      db_PedidoCompra.ParamByName('CODIGO').AsInteger := dbProcurarPedido.ResultFieldAsInteger('CODIGO');
      db_PedidoCompra.Open;
      db_PedidoCompraItens.close;
      db_PedidoCompraItens.Open;
   end;
end;

procedure TFrmPedidoCompra.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmPedidoCompra.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSalvarClick(Sender);
  If (db_PedidoCompraItens.State in [dsedit]) then
     db_PedidoCompraItens.Post;
end;

end.
