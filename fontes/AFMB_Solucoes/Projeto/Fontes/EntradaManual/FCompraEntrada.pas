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

unit FCompraEntrada;

interface

uses
   Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Grids, ExtCtrls, Mask, Buttons, DBGrids, DBCtrls, Db,
   Menus, SysUtils, ComCtrls, ImgList,
   Variants,
   ISFEdit, ISFEditbtn, ISFdbEditbtn,
   uEstSearchDialogZeos, IDBEdit, FFrameBotoes_II, FFrameBarra,
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type

   TFrmCompraEntrada = class(TForm)
      DS_CtaPagar: TDataSource;
      db_CtaPagar: TFDQuery;
      db_Compras: TFDQuery;
      ds_Compras: TDataSource;
      ds_ComprasItens: TDataSource;
      db_ComprasItens: TFDQuery;
      db_ComprasPedidos: TFDQuery;
      db_ComprasPedidosItens: TFDQuery;
      db_Estoque: TFDQuery;
      ds_ComprasPedidos: TDataSource;
      SP_CalculaItens: TFDStoredProc;
      SPATUALIZA_COMPRA_PRODUTOS: TFDStoredProc;
      SPDELETA_COMPRA_PRODUTOS: TFDStoredProc;
      BoxFornecedor: TGroupBox;
      Label2: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      Label15: TLabel;
      Label14: TLabel;
      DBEditData: TDBEdit;
      EditDocumento: TDBEdit;
      DBEdit7: TDBEdit;
      DBEdit16: TDBEdit;
      DBEdit17: TDBEdit;
      EditFornecedor: TIDBEditDialog;
      EditNomeCliente: TEdit;
      EditNomePlanoContas: TEdit;
      Edit1: TEdit;
      DbEditCFOP: TIDBEditDialog;
      Edit2: TEdit;
      EstSearchDialogZeos1: TIDBEditDialog;
      BoxProdutos: TGroupBox;
      DBGrid_Produtos: TDBGrid;
      GroupBox4: TGroupBox;
      DBEdit10: TDBEdit;
      FrmFrameBotoes_II1: TFrmFrameBotoes_II;
      EditPlano: TIDBEditDialog;
      FrmFrameBarra1: TFrmFrameBarra;
      Label5: TLabel;
      BoxCalculo: TGroupBox;
      Label21: TLabel;
      Label17: TLabel;
      Label6: TLabel;
      Label20: TLabel;
      Label19: TLabel;
      Label13: TLabel;
      Label39: TLabel;
      ebase: TDBEdit;
      eseguro: TDBEdit;
      eoutras: TDBEdit;
      eprod: TDBEdit;
      enota: TDBEdit;
      DBEdit1: TDBEdit;
      EditTransportadora: TIDBEditDialog;
      EditNomeTrasportadora: TEdit;
      DBEdit2: TDBEdit;
      Label1: TLabel;
      db_CtaPagarFrete: TFDQuery;
      ds_CtaPagarFrete: TDataSource;
      dbProcurarPedido: TIDBEditDialog;
      dbProcurarCompra: TIDBEditDialog;
      DBEdit5: TDBEdit;
      QryUpDateID: TFDQuery;
      Label18: TLabel;
      DBEdit3: TDBEdit;
      QrySomaProduto: TFDQuery;
      procedure db_ComprasItensAfterPost(DataSet: TDataSet);
      procedure db_ComprasItensAfterDelete(DataSet: TDataSet);
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure QryVendaAfterCancel(DataSet: TDataSet);

      procedure DbGrid_ItensKeyPress(Sender: TObject; var Key: Char);
      procedure Sair1Click(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure db_CtaPagarBeforePost(DataSet: TDataSet);
      procedure db_ComprasItensBeforePost(DataSet: TDataSet);
      procedure db_ComprasNewRecord(DataSet: TDataSet);
      procedure BoxProdutosEnter(Sender: TObject);

      procedure Importar_PedidoCompra(idPedidoCompra: Integer);
      procedure CalculaItemCompra;

      procedure db_ComprasPedidosAfterOpen(DataSet: TDataSet);
      procedure db_ComprasPedidosBeforeClose(DataSet: TDataSet);
      procedure DBGrid_ProdutosEnter(Sender: TObject);
      procedure db_CtaPagarNewRecord(DataSet: TDataSet);
      procedure db_ComprasBeforePost(DataSet: TDataSet);
      procedure db_EstoqueBeforePost(DataSet: TDataSet);
      procedure DBEdit_prcvendaExit(Sender: TObject);
      procedure SpeedButton1Click(Sender: TObject);
      procedure DBGrid_ProdutosKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure FrmFrameBotoes_II1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes_II1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes_II1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes_II1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes_II1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes_II1BtnExtra1Click(Sender: TObject);
      procedure FrmFrameBotoes_II1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes_II1BtnExtra2Click(Sender: TObject);
      procedure FrmFrameBotoes_II1SpbImprimirClick(Sender: TObject);

      Procedure ConfiguraBotaoEstornar;
      procedure FrmFrameBotoes_II1SpbAdicionarClick(Sender: TObject);
      procedure db_ComprasAfterPost(DataSet: TDataSet);
      procedure db_CtaPagarFreteBeforePost(DataSet: TDataSet);
      procedure db_CtaPagarFreteNewRecord(DataSet: TDataSet);
      procedure db_ComprasBeforeOpen(DataSet: TDataSet);
      procedure db_CtaPagarBeforeOpen(DataSet: TDataSet);
      procedure db_CtaPagarFreteBeforeOpen(DataSet: TDataSet);
      procedure FrmFrameBotoes_II1PainelBotoesDblClick(Sender: TObject);
      procedure db_CtaPagarFreteAfterPost(DataSet: TDataSet);
      procedure db_CtaPagarAfterPost(DataSet: TDataSet);
      procedure db_ComprasAfterScroll(DataSet: TDataSet);
      procedure db_ComprasAfterOpen(DataSet: TDataSet);
      procedure db_ComprasItensBeforeOpen(DataSet: TDataSet);
      procedure ds_ComprasStateChange(Sender: TObject);
      procedure ds_ComprasItensStateChange(Sender: TObject);
      procedure EditFornecedorChange(Sender: TObject);
      procedure db_ComprasItensAfterOpen(DataSet: TDataSet);
      procedure db_ComprasItensCalcFields(DataSet: TDataSet);
      procedure db_CtaPagarAfterOpen(DataSet: TDataSet);
      procedure FormDestroy(Sender: TObject);
      procedure db_CtaPagarFreteAfterOpen(DataSet: TDataSet);
      procedure db_CtaPagarFreteAfterDelete(DataSet: TDataSet);
      procedure db_CtaPagarAfterDelete(DataSet: TDataSet);
      procedure db_ComprasItensAfterEdit(DataSet: TDataSet);

   private
      procedure Salvar;
      procedure SetParamID;
      procedure ReabrirTabela;
      procedure AtualizarID;
      procedure GetDetProduto;
      { Private declarations }
   public
      { Public declarations }

   end;

var
   FrmCompraEntrada: TFrmCompraEntrada;
   vlrvar: Integer;
   bImportando: Boolean;
   sOpcao: String;

implementation

uses FPrincipal, App.SQL, Biblioteca, Global, Classe.Usuarios, FComprasPagar,
   FOpcaoNotaFiscalCompra, FComprasImprimir,
   FCompraCodigoBarra, App.Funcoes;

{$R *.DFM}

// calcula itens da nota fiscal
procedure TFrmCompraEntrada.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes_II1.DataSource := ds_Compras;
   ReabrirTabela();
End;

procedure TFrmCompraEntrada.FormDestroy(Sender: TObject);
begin
   FrmCompraEntrada := Nil;
end;

procedure TFrmCompraEntrada.ReabrirTabela();
begin
   db_Compras.Close;
   db_Compras.ParamByName('CODIGO').Clear;
   db_Compras.open;

   db_ComprasItens.Close;
   db_ComprasItens.ParamByName('CODIGO').Clear;
   db_ComprasItens.open;

   db_CtaPagar.Close;
   db_CtaPagar.open;
end;

procedure TFrmCompraEntrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_Compras.Close;
   db_ComprasItens.Close;
   db_CtaPagar.Close;
   db_Estoque.Close;
   Action := Cafree;
end;

procedure TFrmCompraEntrada.QryVendaAfterCancel(DataSet: TDataSet);
begin
   if (db_ComprasItens.state in [dsedit, dsinsert]) then
   begin
      db_ComprasItens.Cancel;
   end;
end;

procedure TFrmCompraEntrada.DbGrid_ItensKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCompraEntrada.Sair1Click(Sender: TObject);
begin
   Close;

end;

Procedure TFrmCompraEntrada.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Begin

   If Key = vk_f12 then
   begin

      wfloat[0] := 0;
      db_ComprasItens.First;
      While not db_ComprasItens.Eof do
      Begin
         wfloat[0] := wfloat[0] + db_ComprasItens.FieldByName
           ('QUANTIDADE').AsFloat;

         db_ComprasItens.next;

      End;
      db_ComprasItens.First;
      If not(db_Compras.state in [dsedit, dsinsert]) then
         db_Compras.edit;

      db_Compras.FieldByName('QTDE_PRODS').AsFloat := wfloat[0];
      db_Compras.Post;
      wfloat[0] := 0;

   end;

   if Key = vk_f5 then
   begin
      db_Compras.Refresh;
      db_ComprasItens.Refresh;
   end;

End;

procedure TFrmCompraEntrada.FrmFrameBotoes_II1BtnExtra1Click(Sender: TObject);
begin

   If db_Compras.IsEmpty then
   Begin
      Informar('Não há dados para Estornar.');
      Exit;
   End;

   IF Pergunta('Deseja realmente Estornar compra?' + #13 + #10 +
     'O Estoque será diminuído (-).') = True Then
   Begin

      db_ComprasItens.First;
      while not db_ComprasItens.Eof do
      Begin
         // atualiza estoque com base nos itens da nota de entrada

         try
            SPATUALIZA_COMPRA_PRODUTOS.ParamByName('NCOMPRA').AsInteger :=
              db_Compras.FieldByName('CODIGO').AsInteger;
            SPATUALIZA_COMPRA_PRODUTOS.ParamByName('ACAO').AsString := 'S';
            SPATUALIZA_COMPRA_PRODUTOS.ParamByName('SPRODUTO').AsString :=
              db_ComprasItens.FieldByName('PRODUTO').AsString;
            SPATUALIZA_COMPRA_PRODUTOS.ParamByName('NQUANTIDADE').AsFloat :=
              db_ComprasItens.FieldByName('QUANTIDADE').AsFloat;
            SPATUALIZA_COMPRA_PRODUTOS.ExecProc;
         finally
            SPATUALIZA_COMPRA_PRODUTOS.Close;
         end;

         db_ComprasItens.next;
      End;
      db_ComprasItens.First;
      Informar('Compra foi Estornada');

   End;
   db_Compras.Close;
   db_Compras.open;

   db_ComprasItens.Close;
   db_ComprasItens.open;

   ConfiguraBotaoEstornar;

end;

procedure TFrmCompraEntrada.FrmFrameBotoes_II1BtnExtra2Click(Sender: TObject);
begin
   If db_Compras.IsEmpty then
   Begin
      Erro('Não há dados para gerar faturas.');
      Exit;
   End;

   db_CtaPagar.Close;
   db_CtaPagar.open;

   db_CtaPagarFrete.Close;
   db_CtaPagarFrete.open;

   if (db_Compras.FieldByName('FRETE_VALOR').AsFloat > 0) Then
   begin
      if db_CtaPagarFrete.IsEmpty then
      begin
         db_CtaPagarFrete.Append;
         db_CtaPagarFrete.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;
         db_CtaPagarFrete.FieldByName('FORNECEDOR').AsInteger :=
           db_Compras.FieldByName('TRANSPORTADORA').AsInteger;
         db_CtaPagarFrete.FieldByName('NOTAFISCAL').AsString :=
           db_Compras.FieldByName('NOTAFISCAL').AsString;
         db_CtaPagarFrete.FieldByName('TIPO').AsString := 'PAGAR';
         db_CtaPagarFrete.FieldByName('ESPECIE').AsString := 'FRETE';

         db_CtaPagarFrete.FieldByName('DOCUMENTO').AsString :=
           db_Compras.FieldByName('NOTAFISCAL').AsString;
         db_CtaPagarFrete.FieldByName('VENCIMENTO').AsDateTime :=
           db_Compras.FieldByName('DATA').AsDateTime;
         db_CtaPagarFrete.FieldByName('VALOR').AsFloat :=
           db_Compras.FieldByName('FRETE_VALOR').AsFloat;
         db_CtaPagarFrete.Post;
      end;
   end;

   FrmComprasPagar := TFrmComprasPagar.create(self);
   FrmComprasPagar.ShowModal;

end;

procedure TFrmCompraEntrada.FrmFrameBotoes_II1PainelBotoesDblClick
  (Sender: TObject);
begin
   CalculaItemCompra;
   db_Compras.Refresh;
   db_ComprasItens.Refresh;

end;

procedure TFrmCompraEntrada.FrmFrameBotoes_II1SpbAdicionarClick
  (Sender: TObject);
begin

   sOpcao := '';
   FrmOpcaoNotaFiscalCompra := TFrmOpcaoNotaFiscalCompra.create(self);
   FrmOpcaoNotaFiscalCompra.ShowModal;
   if sOpcao = 'DIGITAR' Then
   begin
      // INSERIR
      FrmFrameBotoes_II1.SpbAdicionarClick(Sender);
      EditDocumento.SetFocus;
   end;
   if sOpcao = 'IMPORTAR' Then
   begin
      try
         Achar[99] := 'S'; // pode ser qualquer caractere
         if dbProcurarPedido.Execute = false then
            Exit;
         Importar_PedidoCompra(dbProcurarPedido.ResultFieldAsInteger('CODIGO'));
         AtualizarID();
      finally
         FrmFrameBotoes_II1.SpbCancelarClick(Sender);
      end;
      EditDocumento.SetFocus;
   end;

end;

procedure TFrmCompraEntrada.AtualizarID();
begin
   // -------------------------------------------------------------------
   //
   // -------------------------------------------------------------------
   QryUpDateID.ParamByName('NOTAFISCAL').AsString :=
     db_Compras.FieldByName('NOTAFISCAL').AsString;
   QryUpDateID.ParamByName('MODELO').AsString :=
     db_Compras.FieldByName('MODELO').AsString;
   QryUpDateID.ParamByName('SERIE').AsString :=
     db_Compras.FieldByName('SERIE').AsString;
   QryUpDateID.ParamByName('FORNECEDOR').AsInteger :=
     db_Compras.FieldByName('FORNECEDOR').AsInteger;
   QryUpDateID.ParamByName('CODIGO').AsInteger :=
     db_Compras.FieldByName('CODIGO').AsInteger;
   QryUpDateID.ExecSQL;
end;

procedure TFrmCompraEntrada.FrmFrameBotoes_II1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes_II1.SpbCancelarClick(Sender);
   if (db_Compras.state in [dsedit, dsinsert]) then
   begin
      db_Compras.Cancel;
   end;
end;

procedure TFrmCompraEntrada.FrmFrameBotoes_II1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes_II1.SpbEditarClick(Sender);
end;

procedure TFrmCompraEntrada.FrmFrameBotoes_II1SpbExcluirClick(Sender: TObject);
begin

   if db_Compras.IsEmpty then
   begin
      Informar('Não há dados para excluir');
      Abort;
   end;

   iAchar[0] := db_Compras.FieldByName('PEDIDOINTERNO').AsInteger;

   if db_Compras.FieldByName('ATUALIZADO').AsString = 'S' then
   begin
      Informar('Primeiro você deve estornar a compra' + #13 + #10 +
        'Clique no botão estornar e depois tente excluir novamente.');
      Exit;

   end;

   IF Pergunta('Deseja realmente excluir está compra?') = false Then
      Exit;

   // atualiza estoque com base nos itens da nota de entrada
   SPDELETA_COMPRA_PRODUTOS.ParamByName('NEMPRESA').AsInteger :=
     FSistema.Empresa;
   SPDELETA_COMPRA_PRODUTOS.ParamByName('NCOMPRA').AsInteger :=
     db_Compras.FieldByName('CODIGO').AsInteger;
   SPDELETA_COMPRA_PRODUTOS.ParamByName('FORNECEDOR').AsInteger :=
     db_Compras.FieldByName('FORNECEDOR').AsInteger;
   SPDELETA_COMPRA_PRODUTOS.ParamByName('NOTAFISCAL').AsInteger :=
     db_Compras.FieldByName('NOTAFISCAL').AsInteger;
   SPDELETA_COMPRA_PRODUTOS.ExecProc;
   // ----------------------------------------------------------
   db_CtaPagarFrete.Close;
   db_CtaPagarFrete.open;
   while not db_CtaPagarFrete.Eof do
      db_CtaPagarFrete.delete;
   db_CtaPagarFrete.Close;
   // ----------------------------------------------------------

   ReabrirTabela();
end;

procedure TFrmCompraEntrada.FrmFrameBotoes_II1SpbImprimirClick(Sender: TObject);
begin
   FrmComprasImprimir := TFrmComprasImprimir.create(self);
end;

procedure TFrmCompraEntrada.FrmFrameBotoes_II1SpbProcurarClick(Sender: TObject);
begin
   if dbProcurarCompra.Execute then
   begin
      db_Compras.Close;
      db_Compras.ParamByName('CODIGO').AsInteger :=
        dbProcurarCompra.ResultFieldAsInteger('CODIGO');
      db_Compras.open;

      db_Compras.Refresh;
      db_ComprasItens.Close;
      SetParamID();
      db_ComprasItens.open;
      ConfiguraBotaoEstornar;
   end;
end;

procedure TFrmCompraEntrada.FrmFrameBotoes_II1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes_II1.SpbSairClick(Sender);

end;

procedure TFrmCompraEntrada.FrmFrameBotoes_II1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes_II1.SpbSalvarClick(Sender);
   iAchar[0] := db_Compras.FieldByName('CODIGO').AsInteger;
   db_Compras.ParamByName('CODIGO').AsInteger := iAchar[0];

   If (db_ComprasItens.state in [dsedit, dsinsert]) then
   Begin
      db_ComprasItens.Post;
   End;
   CalculaItemCompra;
   db_Compras.Close;
   db_Compras.open;

   If db_Compras.FieldByName('ATUALIZADO').AsString = 'S' then
      Exit;

   If Pergunta('Deseja fechar compra e atualizar estoque?') = false Then
      Exit;

   db_ComprasItens.First;
   while not db_ComprasItens.Eof do
   Begin
      // atualiza estoque com base nos itens da nota de entrada
      try
         SPATUALIZA_COMPRA_PRODUTOS.ParamByName('NCOMPRA').AsInteger :=
           db_Compras.FieldByName('CODIGO').AsInteger;
         SPATUALIZA_COMPRA_PRODUTOS.ParamByName('ACAO').AsString := 'E';
         SPATUALIZA_COMPRA_PRODUTOS.ParamByName('SPRODUTO').AsString :=
           db_ComprasItens.FieldByName('PRODUTO').AsString;
         SPATUALIZA_COMPRA_PRODUTOS.ParamByName('NQUANTIDADE').AsFloat :=
           db_ComprasItens.FieldByName('QUANTIDADE').AsFloat;
         SPATUALIZA_COMPRA_PRODUTOS.ExecProc;
      finally
         SPATUALIZA_COMPRA_PRODUTOS.Close;
      end;
      db_ComprasItens.next;
   End;
   db_ComprasItens.Refresh;
   db_ComprasItens.First;

   db_Compras.Close;
   db_Compras.open;

   db_ComprasItens.Close;
   db_ComprasItens.open;

   ConfiguraBotaoEstornar;
   Aviso(' Os itens desta Nota Fiscal foram atualizados no Estoque! ');

end;

procedure TFrmCompraEntrada.db_CtaPagarAfterDelete(DataSet: TDataSet);
begin
   db_CtaPagar.Refresh;
end;

procedure TFrmCompraEntrada.db_CtaPagarAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(db_CtaPagar);
end;

procedure TFrmCompraEntrada.db_CtaPagarAfterPost(DataSet: TDataSet);
begin
   db_CtaPagar.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   db_CtaPagar.ParamByName('NOTAFISCAL').AsString :=
     db_Compras.FieldByName('NOTAFISCAL').AsString;
   db_CtaPagar.ParamByName('FORNECEDOR').AsInteger :=
     db_Compras.FieldByName('FORNECEDOR').AsInteger;
   db_CtaPagar.Refresh;
end;

procedure TFrmCompraEntrada.db_CtaPagarBeforeOpen(DataSet: TDataSet);
begin
   db_CtaPagar.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   db_CtaPagar.ParamByName('NOTAFISCAL').AsString :=
     db_Compras.FieldByName('NOTAFISCAL').AsString;
   db_CtaPagar.ParamByName('FORNECEDOR').AsInteger :=
     db_Compras.FieldByName('FORNECEDOR').AsInteger;
end;

procedure TFrmCompraEntrada.db_CtaPagarBeforePost(DataSet: TDataSet);
begin
   db_CtaPagar.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;

   db_CtaPagar.FieldByName('NOTAFISCAL').AsString :=
     db_Compras.FieldByName('NOTAFISCAL').AsString;

   db_CtaPagar.ParamByName('FORNECEDOR').AsInteger :=
     db_Compras.FieldByName('FORNECEDOR').AsInteger;

   db_CtaPagar.FieldByName('TIPO').AsString := 'PAGAR';
   db_CtaPagar.FieldByName('ESPECIE').AsString := 'COMPRA';

   db_CtaPagar.FieldByName('DEPARTAMENTO').AsString :=
     db_Compras.FieldByName('CENTROCUSTO').AsString;

   db_CtaPagar.FieldByName('DATA').AsDateTime := db_Compras.FieldByName('DATA')
     .AsDateTime;

   db_CtaPagar.FieldByName('PLANO_CONTAS').AsString :=
     db_Compras.FieldByName('PLANO_CONTAS').AsString;

   db_CtaPagar.FieldByName('HISTORICO').AsString := 'Proveniente da compra: ' +
     db_Compras.FieldByName('CODIGO').AsString + ' e NF de Entrada nº: ' +
     db_Compras.FieldByName('NOTAFISCAL').AsString;

end;

procedure TFrmCompraEntrada.db_CtaPagarFreteAfterDelete(DataSet: TDataSet);
begin
   db_CtaPagarFrete.Refresh;
end;

procedure TFrmCompraEntrada.db_CtaPagarFreteAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(db_CtaPagarFrete);
end;

procedure TFrmCompraEntrada.db_CtaPagarFreteAfterPost(DataSet: TDataSet);
begin
   db_CtaPagarFrete.Close;
   db_CtaPagarFrete.open;
end;

procedure TFrmCompraEntrada.db_CtaPagarFreteBeforeOpen(DataSet: TDataSet);
begin
   db_CtaPagarFrete.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmCompraEntrada.db_CtaPagarFreteBeforePost(DataSet: TDataSet);
begin

   db_CtaPagarFrete.FieldByName('EMPRESA').AsInteger :=
     db_Compras.FieldByName('EMPRESA').AsInteger;

   db_CtaPagarFrete.FieldByName('NOTAFISCAL').AsString :=
     db_Compras.FieldByName('NOTAFISCAL').AsString;

   db_CtaPagarFrete.FieldByName('FORNECEDOR').AsInteger :=
     db_Compras.FieldByName('TRANSPORTADORA').AsInteger;

   db_CtaPagarFrete.FieldByName('TIPO').AsString := 'PAGAR';
   db_CtaPagarFrete.FieldByName('ESPECIE').AsString := 'FRETE';

   db_CtaPagarFrete.FieldByName('DEPARTAMENTO').AsInteger :=
     db_Compras.FieldByName('CENTROCUSTO').AsInteger;

   db_CtaPagarFrete.FieldByName('DATA').AsDateTime :=
     db_Compras.FieldByName('DATA').AsDateTime;

   db_CtaPagarFrete.FieldByName('PLANO_CONTAS').AsString :=
     db_Compras.FieldByName('PLANO_CONTAS').AsString;

   db_CtaPagarFrete.FieldByName('HISTORICO').AsString :=
     'Proveniente da compra: ' + db_Compras.FieldByName('CODIGO').AsString +
     ' e NF de Entrada nº: ' + db_Compras.FieldByName('NOTAFISCAL').AsString;
end;

procedure TFrmCompraEntrada.db_CtaPagarFreteNewRecord(DataSet: TDataSet);
begin
   db_CtaPagarFrete.FieldByName('QUITADO').AsString := 'N';
end;

procedure TFrmCompraEntrada.db_ComprasItensBeforeOpen(DataSet: TDataSet);
begin
   SetParamID();
end;

procedure TFrmCompraEntrada.db_ComprasItensBeforePost(DataSet: TDataSet);
begin

   db_ComprasItens.FieldByName('CODIGO').AsString :=
     db_Compras.FieldByName('CODIGO').AsString;

   db_ComprasItens.FieldByName('DATA').AsDateTime :=
     db_Compras.FieldByName('DATA').AsDateTime;

   db_ComprasItens.FieldByName('DATAENTRADA').AsDateTime :=
     db_Compras.FieldByName('DATAENTRADA').AsDateTime;

   db_ComprasItens.FieldByName('VALIDADE').AsDateTime :=
     db_Compras.FieldByName('VALIDADE').AsDateTime;

   db_ComprasItens.FieldByName('LOTE').AsString :=
     db_Compras.FieldByName('LOTE').AsString;

   db_ComprasItens.FieldByName('FORNECEDOR').AsString :=
     db_Compras.FieldByName('FORNECEDOR').AsString;

   db_ComprasItens.FieldByName('NOTAFISCAL').AsString :=
     db_Compras.FieldByName('NOTAFISCAL').AsString;

   db_ComprasItens.FieldByName('MODELO').AsString :=
     db_Compras.FieldByName('MODELO').AsString;

   db_ComprasItens.FieldByName('SERIE').AsString :=
     db_Compras.FieldByName('SERIE').AsString;

   GetDetProduto();

End;

procedure TFrmCompraEntrada.db_ComprasItensCalcFields(DataSet: TDataSet);
begin
   if (db_ComprasItens.state in [dsedit, dsinsert]) then
   begin
      db_ComprasItens.FieldByName('VL_TOTAL').AsFloat :=
        (db_ComprasItens.FieldByName('QUANTIDADE').AsFloat *
        db_ComprasItens.FieldByName('VL_UNITARIO').AsFloat);
      CalculaItemCompra;
   end;
end;

procedure TFrmCompraEntrada.db_ComprasNewRecord(DataSet: TDataSet);
begin
   db_Compras.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;
   db_Compras.FieldByName('DATA').AsDateTime := Date;
   db_Compras.FieldByName('DATAENTRADA').AsDateTime := Date;
   db_Compras.FieldByName('ATUALIZADO').AsString := 'N';

End;

procedure TFrmCompraEntrada.BoxProdutosEnter(Sender: TObject);
begin
   Salvar();
end;

procedure TFrmCompraEntrada.Importar_PedidoCompra(idPedidoCompra: Integer);
begin

   // TblCtaReceber.ParamByName('xcliente').Value :=CodigoCliente;
   db_ComprasPedidos.Close;
   db_ComprasPedidos.ParamByName('CODIGO').AsInteger := idPedidoCompra;
   db_ComprasPedidos.open;

   If db_ComprasPedidos.RecordCount < 1 then
   Begin
      Informar('Não foi possivel localizar Pedido de Compra nº: ' + wTexto[1]);
      Exit;
   End;

   db_ComprasPedidosItens.Close;
   db_ComprasPedidosItens.open;
   If db_ComprasPedidosItens.RecordCount < 1 then
   Begin
      Informar('Não foi importar os dados do Pedido de Compra nº: "' + wTexto[1]
        + '"' + #13 + 'Não há itens lançados...');
      Exit;
   End;
   {
     // cabeçalho da nota fiscal
     If not (db_Compras.state in [dsedit,dsinsert]) then
     db_Compras.Edit;
   }

   bImportando := True;

   db_Compras.Append;
   db_Compras.FieldByName('NOTAFISCAL').AsString := '0';
   db_Compras.FieldByName('PEDIDOINTERNO').AsInteger :=
     db_ComprasPedidos.FieldByName('CODIGO').AsInteger;
   db_Compras.FieldByName('FORNECEDORPEDIDO').AsString :=
     db_ComprasPedidos.FieldByName('FORNECEDORPEDIDO').AsString;
   db_Compras.FieldByName('FORNECEDOR').AsInteger :=
     db_ComprasPedidos.FieldByName('FORNECEDOR').AsInteger;
   db_Compras.FieldByName('FRETE_VALOR').AsFloat :=
     db_ComprasPedidos.FieldByName('FRETE_VALOR').AsFloat;
   db_Compras.FieldByName('TRANSPORTADORA').AsInteger :=
     BuscaClienteTransportadora(db_Compras.FieldByName('FORNECEDOR').AsInteger);
   db_Compras.FieldByName('CENTROCUSTO').AsInteger :=
     BuscaClienteCentroCusto(db_Compras.FieldByName('FORNECEDOR').AsInteger);
   db_Compras.FieldByName('CFOP').AsInteger :=
     GetCFOPCliente(db_Compras.FieldByName('FORNECEDOR').AsInteger);
   // Gravar tabela MASTER
   if (db_Compras.state in [dsedit, dsinsert]) then
      db_Compras.Post;
   Salvar();

   bImportando := false;

   // efetiva a importação
   db_ComprasPedidosItens.First;
   While not db_ComprasPedidosItens.Eof do
   Begin
      db_ComprasItens.Append;

      db_ComprasItens.FieldByName('PRODUTO').AsString :=
        db_ComprasPedidosItens.FieldByName('PRODUTO').AsString;

      db_ComprasItens.FieldByName('DESCRICAO').AsString :=
        db_ComprasPedidosItens.FieldByName('DESCRICAO').AsString;

      db_ComprasItens.FieldByName('QUANTIDADE').AsFloat :=
        db_ComprasPedidosItens.FieldByName('QTDE_PEDIDA').AsFloat;

      db_ComprasItens.FieldByName('VL_UNITARIO').AsFloat :=
        db_ComprasPedidosItens.FieldByName('VALOR_UNIT').AsFloat;

      db_ComprasItens.FieldByName('VL_TOTAL').AsFloat :=
        db_ComprasPedidosItens.FieldByName('VALOR_TOTAL').AsFloat;

      db_ComprasItens.Post;

      db_ComprasPedidosItens.next;
   End;

   db_Compras.Close;
   db_ComprasPedidosItens.Close;

   db_Compras.open;
   db_ComprasPedidosItens.open;

   EditDocumento.SetFocus;

End;

procedure TFrmCompraEntrada.db_ComprasPedidosAfterOpen(DataSet: TDataSet);
begin
   db_ComprasPedidosItens.open;
end;

procedure TFrmCompraEntrada.db_ComprasPedidosBeforeClose(DataSet: TDataSet);
begin
   db_ComprasPedidosItens.open;
end;

procedure TFrmCompraEntrada.Salvar();
begin
   if (db_Compras.state in [dsedit, dsinsert]) = false then
      db_Compras.edit;
   QrySomaProduto.Close();
   try
      QrySomaProduto.ParamByName('CODIGO').AsInteger :=
        db_Compras.FieldByName('CODIGO').AsInteger;
      QrySomaProduto.open();
      db_Compras.FieldByName('VALOR_PRODUTOS').AsFloat :=
        QrySomaProduto.FieldByName('VLRTOTPROD').AsFloat;
   finally
      QrySomaProduto.Close();
   end;
   db_Compras.Post;
end;

procedure TFrmCompraEntrada.SetParamID;
begin
   if db_ComprasItens.Active = false then
      Exit;
   db_ComprasItens.ParamByName('CODIGO').AsInteger :=
     db_Compras.FieldByName('CODIGO').AsInteger;
   db_ComprasItens.Refresh;
end;

procedure TFrmCompraEntrada.DBGrid_ProdutosEnter(Sender: TObject);
begin
   Salvar();
end;

procedure TFrmCompraEntrada.db_CtaPagarNewRecord(DataSet: TDataSet);
begin
   db_CtaPagar.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;
   db_CtaPagar.FieldByName('QUITADO').AsString := 'N';
end;

procedure TFrmCompraEntrada.CalculaItemCompra;
begin
   SP_CalculaItens.ParamByName('CODIGO').AsInteger :=
     db_Compras.FieldByName('CODIGO').AsInteger;
   SP_CalculaItens.ExecProc;
   SP_CalculaItens.Close;
   SetParamID();
End;

procedure TFrmCompraEntrada.ConfiguraBotaoEstornar;
begin
   FrmFrameBotoes_II1.SpbExtra1.enabled :=
     (db_Compras.FieldByName('ATUALIZADO').AsString = 'S');
end;

procedure TFrmCompraEntrada.db_ComprasAfterOpen(DataSet: TDataSet);
begin
   SetParamID();
   FormataCampo(db_Compras);
   TFloatField(db_Compras.FieldByName('QTDE_PRODUTOS')).DisplayFormat :=
     '###,##0';
end;

procedure TFrmCompraEntrada.db_ComprasAfterPost(DataSet: TDataSet);
begin
   if db_Compras.FieldByName('ATUALIZADO').AsString = 'S' then
   begin
      FrmFrameBotoes_II1.SpbExtra1.enabled := True;
   end
   else
   begin
      FrmFrameBotoes_II1.SpbExtra1.enabled := false;
   end;
   db_Compras.ParamByName('CODIGO').AsInteger :=
     db_Compras.FieldByName('CODIGO').AsInteger;
   db_Compras.Refresh;
   SetParamID();
   AtualizarID();
   CalculaItemCompra();
end;

procedure TFrmCompraEntrada.db_ComprasAfterScroll(DataSet: TDataSet);
begin
   SetParamID();
   ConfiguraBotaoEstornar;
end;

procedure TFrmCompraEntrada.db_ComprasBeforeOpen(DataSet: TDataSet);
begin
   db_Compras.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TFrmCompraEntrada.db_ComprasBeforePost(DataSet: TDataSet);
begin
   db_Compras.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;

   // Obrigar o usuário a informar o numero do Documento
   If Empty(db_Compras.FieldByName('NOTAFISCAL').AsString) = True Then
   Begin
      Informar('Informe o numero do Documento');
      EditDocumento.SetFocus;
      Abort;
   End;

   // Obrigar o usuário a informar o CFOP
   If Empty(db_Compras.FieldByName('CFOP').AsString) = True Then
   Begin
      Informar('Informe o CFOP (existente)');
      DbEditCFOP.SetFocus;
      Abort;
   End;

   try
      QrySomaProduto.ParamByName('CODIGO').AsInteger :=
        db_Compras.FieldByName('CODIGO').AsInteger;
      QrySomaProduto.open();
      db_Compras.FieldByName('VALOR_PRODUTOS').AsFloat :=
        QrySomaProduto.FieldByName('VLRTOTPROD').AsFloat;
   finally
      QrySomaProduto.Close();
   end;

end;

procedure TFrmCompraEntrada.db_EstoqueBeforePost(DataSet: TDataSet);
begin
   db_Estoque.FieldByName('COMPRAS').AsString :=
     db_Compras.FieldByName('CODIGO').AsString;

end;

procedure TFrmCompraEntrada.ds_ComprasItensStateChange(Sender: TObject);
begin
   If (db_ComprasItens.state in [dsedit, dsinsert]) then
      FrmFrameBotoes_II1.AtivaEdicao;
end;

procedure TFrmCompraEntrada.ds_ComprasStateChange(Sender: TObject);
begin
   If (db_Compras.state in [dsedit, dsinsert]) then
      FrmFrameBotoes_II1.AtivaEdicao;
end;

procedure TFrmCompraEntrada.EditFornecedorChange(Sender: TObject);
begin
   if not bImportando Then
   begin
      If (db_ComprasItens.state in [dsedit, dsinsert]) = false then
         Exit;

      db_Compras.FieldByName('TRANSPORTADORA').AsInteger :=
        BuscaClienteTransportadora(db_Compras.FieldByName('FORNECEDOR')
        .AsInteger);
      db_Compras.FieldByName('CENTROCUSTO').AsInteger :=
        BuscaClienteCentroCusto(db_Compras.FieldByName('FORNECEDOR').AsInteger);
      db_Compras.FieldByName('CFOP').AsInteger :=
        GetCFOPCliente(db_Compras.FieldByName('FORNECEDOR').AsInteger);
   end;
end;

procedure TFrmCompraEntrada.DBEdit_prcvendaExit(Sender: TObject);
begin
   If (db_ComprasItens.state in [dsedit, dsinsert]) then
   Begin
      db_ComprasItens.Post;
   End;
end;

procedure TFrmCompraEntrada.SpeedButton1Click(Sender: TObject);
begin
   if Pergunta('Excluir item selecionado?') = false then
      Exit;
   db_ComprasItens.delete;
end;

procedure TFrmCompraEntrada.db_ComprasItensAfterDelete(DataSet: TDataSet);
begin
   CalculaItemCompra;
end;

procedure TFrmCompraEntrada.GetDetProduto();
begin
   if (db_ComprasItens.state in [dsedit, dsinsert]) = false then
      Exit;

   if Trim(db_ComprasItens.FieldByName('DESCRICAO').AsString) = '' then
   begin
      db_ComprasItens.FieldByName('DESCRICAO').AsString :=
        GetProdutoCampo(db_ComprasItens.FieldByName('PRODUTO').AsString,
        'DESCRICAO');
   end;
end;

procedure TFrmCompraEntrada.db_ComprasItensAfterEdit(DataSet: TDataSet);
begin
   GetDetProduto();
end;

procedure TFrmCompraEntrada.db_ComprasItensAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(db_ComprasItens);
   TFloatField(db_ComprasItens.FieldByName('QUANTIDADE')).DisplayFormat :=
     '###,##0';
end;

procedure TFrmCompraEntrada.db_ComprasItensAfterPost(DataSet: TDataSet);
begin
   CalculaItemCompra();
   db_ComprasItens.Refresh;
   db_Compras.Refresh;
end;

procedure TFrmCompraEntrada.DBGrid_ProdutosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   If Key = VK_F9 then
   Begin
      If (db_Compras.FieldByName('ATUALIZADO').AsString <> 'S') then
      Begin
         FrmCompraCodigoBarra := TFrmCompraCodigoBarra.create(self);
         FrmCompraCodigoBarra.ShowModal;
         DBGrid_Produtos.SetFocus;
      End;
   End;
end;

End.
