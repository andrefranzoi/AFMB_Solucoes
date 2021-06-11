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

unit FPedidoVenda;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Menus, DB,
   Grids, DBGrids,   ISFEditbtn, ISFdbEditbtn,
   uEstSearchDialogZeos, IDBEdit, FFrameBotoes, frxClass, frxDBSet,
    ComCtrls, FFrameBarra, ImgList, Classe.Global, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, ISFEdit, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCurrencyEdit, cxButtonEdit;

type
   TFrmPedidoVenda = class(TForm)
    grpPedidos: TGroupBox;
    grbTotais: TGroupBox;
      AdvGroupBox2: TGroupBox;
      AdvGroupBox4: TGroupBox;
       db_Pedido: TFDQuery;
      db_PedidoItens: TFDQuery;
      ds_Pedido: TDataSource;
      ds_PedidoItens: TDataSource;
      EditCliente: TIDBEditDialog;
      EditPagamento: TIDBEditDialog;
      EditNomeCliente: TEdit;
      EditNomeVendedor: TEdit;
      EditNomeFormaPagto: TEdit;
      EditNomeTrasportadora: TEdit;
      EditData: TDBEdit;
      EditDataEntrega: TDBEdit;
      EditTransportadora: TIDBEditDialog;
      SP_CalculaPedido: TFDStoredProc;
      DBEdit5: TDBEdit;
      DBEdit1: TDBEdit;
      GroupBox1: TGroupBox;
      Panel1: TPanel;
      Label1: TLabel;
      Label2: TLabel;
      frx_dsPedido: TfrxDBDataset;
      frx_dsPedidosItens: TfrxDBDataset;
      DBRadioGroup2: TDBRadioGroup;
      DBRadioGroup1: TDBRadioGroup;
      DBEdit2: TDBEdit;
      Label3: TLabel;
      EditTabela: TIDBEditDialog;
      EditTabelaNome: TEdit;
    EditVendedor: TIDBEditDialog;
    db_PedidoVenda: TFDQuery;
    frx_PedidoVenda: TfrxDBDataset;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ProgressBar1: TProgressBar;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    FrmFrameBarra1: TFrmFrameBarra;
    FrmFrameBotoes1: TFrmFrameBotoes;
    dbeditPedidoProcurar: TIDBEditDialog;
    dbProcurarProduto: TIDBEditDialog;
    db_TabelaReferencia: TFDQuery;
    EditPedido: TDBEdit;
    Label10: TLabel;
    BtnRecalcular: TBitBtn;
    FrxPedidoVenda: TfrxReport;
    CheckBox1: TCheckBox;
    cxGridItem: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridItemPRODUTO: TcxGridDBColumn;
    cxGridItemDESCRICAO: TcxGridDBColumn;
    cxGridItemQTDE: TcxGridDBColumn;
    cxGridItemVLR_UNIT: TcxGridDBColumn;
    cxGridItemDESCONTO: TcxGridDBColumn;
    cxGridItemVLR_TOTAL: TcxGridDBColumn;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure CalculaPedido;
      procedure db_PedidoBeforePost(DataSet: TDataSet);
      procedure db_PedidoItensBeforePost(DataSet: TDataSet);
      procedure db_PedidoItensAfterDelete(DataSet: TDataSet);
      procedure db_PedidoItensAfterPost(DataSet: TDataSet);
      procedure db_PedidoNewRecord(DataSet: TDataSet);
      procedure db_PedidoAfterPost(DataSet: TDataSet);
      procedure AdvGroupBox4Exit(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
    procedure BtnRecalcularClick(Sender: TObject);
    procedure db_PedidoItensBeforeInsert(DataSet: TDataSet);
    procedure ImprimirPedidocomvalores1Click(Sender: TObject);
    procedure ds_PedidoStateChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure db_PedidoItensAfterOpen(DataSet: TDataSet);
    procedure db_PedidoAfterOpen(DataSet: TDataSet);
    procedure EditDataExit(Sender: TObject);
    procedure EditClienteExit(Sender: TObject);
    procedure cxGrid1Enter(Sender: TObject);
    procedure cxGrid1Exit(Sender: TObject);
    procedure cxGridItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridItemPRODUTOPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ds_PedidoItensStateChange(Sender: TObject);

   private
      { Private declarations }
      bCalculoAutomatico : Boolean;
      procedure ProcurarProduto;
    procedure GetProduto;

   public
      { Public declarations }
      Function ChecarProtecaoPedido : Boolean;

   end;

var
   FrmPedidoVenda: TFrmPedidoVenda;

implementation

uses FPrincipal, App.SQL, Biblioteca, Global, Classe.Usuarios,
  FBaseDados,
  FTabelaPrecoValor, FastReport, App.Funcoes;

{$R *.dfm}

procedure TFrmPedidoVenda.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource         := ds_Pedido;

   dbeditPedidoProcurar.SearchQuery.Text := ' SELECT * FROM VIEW_PEDIDOSVENDAS '+
                                            ' WHERE'+
                                            ' EMPRESA='+FSistema.Empresa.ToString+
                                            ' AND   '+
                                            ' %WHERE%   '+
                                            ' ORDER BY DATA DESC';


   dbProcurarProduto.SearchQuery.Text    := ' SELECT *  FROM VIEW_REFERENCIAS '+
                                            ' WHERE'+
                                            ' EMPRESA='+FSistema.Empresa.ToString+
                                            ' AND   '+
                                            ' %WHERE%   ';

   db_Pedido.Open;
   db_PedidoItens.Open;
end;


procedure TFrmPedidoVenda.FormDestroy(Sender: TObject);
begin
  FrmPedidoVenda := Nil;
end;

procedure TFrmPedidoVenda.CalculaPedido;
var
  FCodProduto : String;
begin
   FCodProduto := UpperCase( Trim(db_PedidoItens.FieldByName('REFERENCIA').AsString) );
   nPedidoVenda := db_Pedido.FieldByName('CODIGO').AsInteger;
   nTabelaPreco := db_Pedido.FieldByName('TABELA').AsInteger;

   SP_CalculaPedido.ParamByName('NEMPRESA').AsInteger :=  FSistema.Empresa;
   SP_CalculaPedido.ParamByName('NCODIGO').AsInteger  :=  db_Pedido.FieldByName('CODIGO').AsInteger;
   SP_CalculaPedido.ExecProc;

   db_Pedido.Refresh;
   db_PedidoItens.Refresh;
end;

Function TFrmPedidoVenda.ChecarProtecaoPedido : Boolean;
begin
  // SE ESTIVER FATURADO, IMPEDIR ALTERAÇÕES.
  Result :=((db_Pedido.FieldByName('STATUS').AsString = 'S')  or (db_Pedido.FieldByName('STATUS').AsString = 'SIM' ));
end;

procedure TFrmPedidoVenda.cxGrid1Enter(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
end;

procedure TFrmPedidoVenda.cxGrid1Exit(Sender: TObject);
begin
   CalculaPedido;
end;

procedure TFrmPedidoVenda.cxGridItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F8 Then
  begin
   ProcurarProduto;
   CalculaPedido();
  end;
end;

procedure TFrmPedidoVenda.cxGridItemPRODUTOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   ProcurarProduto;
   CalculaPedido();
end;

procedure TFrmPedidoVenda.ProcurarProduto;
begin
   if dbProcurarProduto.Execute then
   begin
      if Trim(db_PedidoItens.FieldByName('REFERENCIA').AsString) = '' then
      begin
        db_PedidoItens.Append;
      end
      else
      begin
        If not (db_PedidoItens.state in [dsEdit]) then
           db_PedidoItens.Edit;
      end;
      db_PedidoItens.FieldByName('REFERENCIA').AsString := dbProcurarProduto.ResultFieldAsString('REFERENCIA');
      db_PedidoItens.FieldByName('DESCRICAO').AsString := GetProdutoCampo(db_PedidoItens.FieldByName('REFERENCIA').AsString,'DESCRICAO');
      GetProduto();
      If (db_PedidoItens.state in [dsEdit]) then
         db_PedidoItens.Post;
   end;
end;

procedure TFrmPedidoVenda.db_PedidoAfterOpen(DataSet: TDataSet);
begin
  FormataCampo(db_Pedido);
  TFloatField(db_Pedido.FieldByName('QTDE_TOTAL')).DisplayFormat := '';
end;

procedure TFrmPedidoVenda.db_PedidoAfterPost(DataSet: TDataSet);
Var
  mID : Integer;
begin
  mID :=db_Pedido.FieldByName('CODIGO').AsInteger;

  db_Pedido.Close;
  db_PedidoItens.Close;
  db_Pedido.ParamByName('CODIGO').AsInteger := mID;
  db_Pedido.Open;
  db_PedidoItens.Open;
  db_PedidoItens.refresh;

  CalculaPedido;
  db_Pedido.Refresh;
  db_PedidoItens.Refresh;

end;

procedure TFrmPedidoVenda.db_PedidoBeforePost(DataSet: TDataSet);
begin
   db_Pedido.ParamByName('CODIGO').AsInteger := db_Pedido.FieldByName('CODIGO').AsInteger;
   if db_Pedido.FieldByName('DOCUMENTO').AsString = '' then
      db_Pedido.FieldByName('DOCUMENTO').AsString :=IntTostr(db_Pedido.FieldByName('CODIGO').AsInteger);
   if db_Pedido.FieldByName('CLIENTE').AsInteger <1 then
   begin
      aviso('Campo Cliente é obrigatório');
      Abort;
   end;
   if db_Pedido.FieldByName('FORMAPAGTO').AsInteger <1 then
   begin
      aviso('Campo Forma de Pagamento é obrigatório');
      Abort;
   end;
end;

procedure TFrmPedidoVenda.db_PedidoItensAfterDelete(DataSet: TDataSet);
begin
   CalculaPedido;
end;

procedure TFrmPedidoVenda.db_PedidoItensAfterOpen(DataSet: TDataSet);
begin
  FormataCampo(db_PedidoItens);
  TFloatField(db_PedidoItens.FieldByName('QTDE')).DisplayFormat := '';
end;

procedure TFrmPedidoVenda.db_PedidoItensAfterPost(DataSet: TDataSet);
begin
//   db_PedidoItens.Close;
//   db_PedidoItens.Open;
   CalculaPedido;
end;

procedure TFrmPedidoVenda.db_PedidoItensBeforeInsert(DataSet: TDataSet);
begin
   if (db_Pedido.IsEmpty) then
   begin
      db_PedidoItens.Cancel;
      Informar('Primeiro você deve preencher os Dados Principais do Pedido.');
      abort;
   end;


end;

procedure TFrmPedidoVenda.db_PedidoItensBeforePost(DataSet: TDataSet);
begin
  db_PedidoItens.FieldByName('EMPRESA').AsInteger := db_Pedido.FieldByName('EMPRESA').AsInteger;
  db_PedidoItens.FieldByName('CODIGO').AsInteger  := db_Pedido.FieldByName('CODIGO').AsInteger;
  if db_PedidoItens.FieldByName('VLR_UNIT').AsFloat <= 0 then
    GetProduto();
end;

procedure TFrmPedidoVenda.GetProduto();
var
  FCodProduto : String;
begin
   FCodProduto := UpperCase( Trim(db_PedidoItens.FieldByName('REFERENCIA').AsString) );
   if ValidaReferencia(FCodProduto)=false Then
   begin
      Aviso('Produto não cadastro no estoque.');
      db_PedidoItens.Cancel;
      Abort;
   end;
   if Trim(db_PedidoItens.FieldByName('DESCRICAO').AsString) = '' then
     db_PedidoItens.FieldByName('DESCRICAO').AsString := fncReferenciaNome(FCodProduto);
   if db_PedidoItens.FieldByName('VLR_UNIT').AsFloat <= 0 then
     db_PedidoItens.FieldByName('VLR_UNIT').AsFloat :=   RetornaReferenciaPrecoVenda(FCodProduto);
   if (db_Pedido.FieldByName('TABELA').AsInteger>0) then
   begin
     if ValidaReferenciaTabela(db_Pedido.FieldByName('TABELA').AsInteger,FCodProduto) then
      begin
          db_PedidoItens.FieldByName('VLR_UNIT').AsFloat :=   RetornaReferenciaPrecoTabela(db_Pedido.FieldByName('TABELA').AsInteger,db_PedidoItens.FieldByName('REFERENCIA').AsString);
      end;
   end;
end;


procedure TFrmPedidoVenda.BtnRecalcularClick(Sender: TObject);
begin
   if (db_Pedido.FieldByName('TABELA').AsInteger < 1) then
   begin
     Aviso('Não há tabela de preço informada.');
     exit;
   end;
   bCalculoAutomatico:=False;
   if pergunta('Deseja refazer todos os valores?')=false then
      exit;
   bCalculoAutomatico:=True;
   Try
      ProgressBar1.Max        :=0;
      ProgressBar1.Position   :=0;

      ProgressBar1.Max        :=db_PedidoItens.RecordCount;
      db_PedidoItens.First;

      While not db_PedidoItens.eof do
      begin
         db_PedidoItens.Edit;
         // Se foi informado tabela de preço, buscar na tabela de preço.
         if (db_Pedido.FieldByName('TABELA').AsInteger>0) then
         begin
            db_PedidoItens.FieldByName('VLR_UNIT').AsFloat :=   RetornaReferenciaPrecoTabela(db_Pedido.FieldByName('TABELA').AsInteger,db_PedidoItens.FieldByName('REFERENCIA').AsString);
         end
         else
         begin
            db_PedidoItens.FieldByName('VLR_UNIT').AsFloat :=   RetornaReferenciaPrecoVenda(db_PedidoItens.FieldByName('REFERENCIA').AsString);
         end;
         db_PedidoItens.Post;

         ProgressBar1.Position   := ProgressBar1.Position + 1;
         Application.ProcessMessages;
         db_PedidoItens.Next;

      end;

   Finally
      ProgressBar1.Position   :=0;
      bCalculoAutomatico:=False;
      AvisoSistema('Recalculo efetuado com sucesso');
   End;

end;

procedure TFrmPedidoVenda.db_PedidoNewRecord(DataSet: TDataSet);
begin
  db_Pedido.FieldByName('EMPRESA').AsInteger  := FSistema.Empresa;
  db_Pedido.FieldByName('DATA').AsDateTime          := Date;
  db_Pedido.FieldByName('TIPO').AsString            := 'VENDA';
  db_Pedido.FieldByName('DATA_ENTREGA').AsDateTime  := db_Pedido.FieldByName('DATA').AsDateTime +     (BaseDados.db_Parametros.FieldByName('PED_DIASENTREGA').AsInteger);
  db_Pedido.FieldByName('STATUS').AsString          := 'N';
  db_Pedido.FieldByName('IMPRESSO').AsString        := 'N';
  db_Pedido.FieldByName('FORMAPAGTO').AsInteger     := BaseDados.db_Parametros.FieldByName('IDFPAGTOPADRAO').AsInteger;
  db_Pedido.FieldByName('OBSERVACAO').AsString      := BaseDados.db_Parametros.FieldByName('PED_MSG').AsString;
  db_Pedido.FieldByName('APROVADO').AsString        := 'S';
end;

procedure TFrmPedidoVenda.ds_PedidoItensStateChange(Sender: TObject);
begin
  if (FrmFrameBotoes1.DataSource.State in [dsInsert,dsEdit]) then
    FrmFrameBotoes1.AtivaEdicao
  else
    FrmFrameBotoes1.DesativaEdicao;
end;

procedure TFrmPedidoVenda.ds_PedidoStateChange(Sender: TObject);
begin
  if (FrmFrameBotoes1.DataSource.State in [dsInsert,dsEdit]) then
    FrmFrameBotoes1.AtivaEdicao
  else
    FrmFrameBotoes1.DesativaEdicao;
end;

procedure TFrmPedidoVenda.EditClienteExit(Sender: TObject);
var
  mIDFPagto : Integer;
begin
  if (db_Pedido.State in [dsedit, dsinsert]) = false then
    exit;

   mIDFPagto := 0;
   mIDFPagto := GetClienteFormaPagto(db_Pedido.FieldByName('CLIENTE').AsInteger);
   if mIDFPagto>0 then
     db_Pedido.FieldByName('FORMAPAGTO').AsInteger   := mIDFPagto;
   db_Pedido.FieldByName('VENDEDOR').AsInteger       := BuscaClienteVendedor(db_Pedido.FieldByName('CLIENTE').AsInteger);
   db_Pedido.FieldByName('TRANSPORTADORA').AsInteger := BuscaClienteTransportadora(db_Pedido.FieldByName('CLIENTE').AsInteger);

   if ChecarCreditoCliente(db_Pedido.FieldByName('CLIENTE').AsInteger) Then
   begin
      db_PedidoItens.Cancel;
      db_Pedido.Cancel;
      AvisoSistema('Venda não autorizada!'+#13+#10+
                   'O cliente que você selecionou está com crédito bloqueado');
      Abort;
   end;

  if GetClienteCampo(db_Pedido.FieldByName('CLIENTE').AsInteger,'OBSERVACAO')>'' Then
     AvisoSistema(GetClienteCampo(db_Pedido.FieldByName('CLIENTE').AsInteger,'OBSERVACAO'));
end;

procedure TFrmPedidoVenda.EditDataExit(Sender: TObject);
begin
  if (db_Pedido.State in [dsedit, dsinsert]) = false then
    exit;
   db_Pedido.FieldByName('DATA_ENTREGA').AsDateTime := db_Pedido.FieldByName('DATA').AsDateTime + (BaseDados.db_Parametros.FieldByName('PED_DIASENTREGA').AsInteger);
end;

procedure TFrmPedidoVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if db_Pedido.FieldByName('QTDE_TOTAL').AsInteger<=0 Then
   begin
      if (db_Pedido.active) and not (db_Pedido.IsEmpty)  then
        db_Pedido.delete;
   end;
   if (db_PedidoItens.active) and (db_PedidoItens.IsEmpty) then
   begin
     if (db_Pedido.active) and not (db_Pedido.IsEmpty)  then
       db_Pedido.delete;
   end;
   Action:=Cafree;
end;

procedure TFrmPedidoVenda.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   grpPedidos.Enabled :=True;
   db_Pedido.close;
   db_PedidoItens.close;

   db_Pedido.ParamByName('CODIGO').Clear;

   db_Pedido.Open;
   db_PedidoItens.Open;

   ChecarProtecaoPedido;

   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   db_Pedido.ParamByName('CODIGO').Clear;
   EditCliente.SetFocus;

end;

procedure TFrmPedidoVenda.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin

   db_PedidoItens.Cancel;
   db_Pedido.Cancel;
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmPedidoVenda.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin

   if not FProgramador  then
   begin
     if (db_Pedido.FieldByName('STATUS').AsString = 'S') or
       (db_Pedido.FieldByName('STATUS').AsString = 'SIM') then
     Begin
        AvisoSistema('Pedido já foi faturado e não pode ser editado. ');
        abort;
     End;

     if ChecarProtecaoPedido then
     begin

        AvisoSistema('Pedido não pode ser alterado. Está aprovado para faturamento!'+#13+#10+
                     'Para alterar, é necessário que o responsavel desaprove (reabra) o pedido '+
                     'para que voce possa alterar os dados.');
        Exit;
     end;
   end;

   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmPedidoVenda.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   if not FProgramador  then
   begin
     if (db_Pedido.FieldByName('STATUS').AsString = 'S') or
       (db_Pedido.FieldByName('STATUS').AsString = 'SIM') then
     Begin
        AvisoSistema('Pedido já foi faturado e não pode ser excluido. ');
        abort;
     End;

     if ChecarProtecaoPedido then
     begin

        AvisoSistema('Pedido não pode ser deletado. Está aprovado para faturamento!'+#13+#10+
                     'Para alterar, é necessário que o responsavel desaprove (reabra) o pedido '+
                     'para que voce possa alterar os dados.');
        Exit;
     end;
   end;

   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmPedidoVenda.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
var
  mGrade : Boolean;
begin
  mGrade := False;

  if db_Pedido.IsEmpty then
  begin
    Aviso('Sem dados para imprimir.');
    exit;
  end;

   If (db_PedidoItens.State in [dsedit, dsinsert]) then
   Begin
      db_PedidoItens.Post;
   End;
   FrmFrameBotoes1.SpbSalvarClick(Sender);
   db_PedidoVenda.Close;
   db_PedidoVenda.Open;

   prcFastReportEmailConfigurar( fncBuscaClienteEmail(db_Pedido.FieldByName('CLIENTE').AsInteger) );
   FrxPedidoVenda.ShowReport();


end;

procedure TFrmPedidoVenda.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbeditPedidoProcurar.Execute then
   begin
      grpPedidos.Enabled :=True;

      db_Pedido.Cancel;
      db_PedidoItens.Cancel;

      db_PedidoItens.close;
      db_Pedido.close;
      db_Pedido.ParamByName('CODIGO').Clear;
      db_Pedido.ParamByName('CODIGO').AsInteger := 0;
      db_Pedido.ParamByName('CODIGO').AsInteger := dbeditPedidoProcurar.ResultFieldAsInteger('CODIGO');
      db_Pedido.Open;

      db_PedidoItens.Open;
      FrmFrameBotoes1.SpbCancelarClick(Sender);
   end;

end;

procedure TFrmPedidoVenda.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);
   //close;

end;

procedure TFrmPedidoVenda.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
  try
     MsgEsperar('Pedido de Venda','Gravando Pedido...');
     FrmFrameBotoes1.SpbSalvarClick(Sender);
     If (db_PedidoItens.State in [dsedit, dsinsert]) then
     Begin
        db_PedidoItens.Post;
     End;
     CalculaPedido;
  finally
    MsgEsperar('','',false);
  end;
end;

procedure TFrmPedidoVenda.ImprimirPedidocomvalores1Click(Sender: TObject);
begin
   FrmFrameBotoes1SpbImprimirClick(Sender);
end;


procedure TFrmPedidoVenda.AdvGroupBox4Exit(Sender: TObject);
begin
   if db_Pedido.FieldByName('CLIENTE').AsInteger <1 then
   begin
      aviso('Campo Cliente é obrigatório');
      EditCliente.SetFocus;
      Abort;
   end;

   if db_Pedido.FieldByName('FORMAPAGTO').AsInteger <1 then
   begin
      aviso('Campo Forma de Pagamento é obrigatório');
      EditPagamento.SetFocus;
      Abort;
   end;

   // SALVAR ITENS DO PEDIDO DE VENDA
   If (db_PedidoItens.State in [dsedit, dsinsert]) then
   Begin
      db_PedidoItens.Post;
   End;

end;


end.




