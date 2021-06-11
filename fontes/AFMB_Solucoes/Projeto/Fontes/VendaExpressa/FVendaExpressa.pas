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

unit FVendaExpressa;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, ComCtrls, ToolWin, StdCtrls, Buttons,
   Mask, DBCtrls, Grids, DBGrids, DB,
   Menus, ActnList, FFrameBotoes, FFrameBotoes_II,
   ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos,
   FFrameBarra,
   frxClass, frxDBSet,
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type

   TFrmVendaExpressa = class(TForm)
      db_view_estoque: TFDQuery;
      db_somar: TFDQuery;
      Panel1: TPanel;
      PainelDicas: TPanel;
      ProgressBar1: TProgressBar;
      GRPTop: TGroupBox;
      Label7: TLabel;
      Label5: TLabel;
      EditData: TDBEdit;
      EditCodigo: TDBEdit;
      GRPItens: TGroupBox;
      DBGrid_Produtos: TDBGrid;
      PainelBottom: TPanel;
      Shape3: TShape;
      Label3: TLabel;
      DBEdit1: TDBEdit;
      DBEdit3: TDBEdit;
      Shape1: TShape;
      Label2: TLabel;
      PopupExcluir: TPopupMenu;
      PopUp_ExcluirItem: TMenuItem;
      EditCliente: TIDBEditDialog;
      EditNomeCliente: TEdit;
      EditNomeVendedor: TEdit;
      EditVendedor: TIDBEditDialog;
      FrmFrameBarra1: TFrmFrameBarra;
      dsVenda: TDataSource;
      dsVendaItem: TDataSource;
      qryVenda: TFDQuery;
      qryVendaItem: TFDQuery;
      db_ViewNotaFiscal: TFDQuery;
      frxDB_NotaFiscal: TfrxDBDataset;
      frxImprimirVendaPDV: TfrxReport;
      db_ViewNotaFiscalItens: TFDQuery;
      frxDB_NotaFiscalItens: TfrxDBDataset;
      ds_ViewNotaFiscal: TDataSource;
      dbProcurarNFe: TIDBEditDialog;
      SPNFE_PROCESSAR: TFDStoredProc;
      FrmFrameBotoes1: TFrmFrameBotoes;
      dbProcurarProduto: TIDBEditDialog;
      datasetCtaReceber: TfrxDBDataset;
      procedure BtnCancelarClick(Sender: TObject);
      procedure BitBtn1Click(Sender: TObject);
      procedure qryVendaItemAfterScroll(DataSet: TDataSet);
      procedure PopUp_ExcluirItemClick(Sender: TObject);
      procedure EditCodigoChange(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure qryVendaItemBeforePost(DataSet: TDataSet);
      procedure FormCreate(Sender: TObject);
      procedure qryVendaItemAfterPost(DataSet: TDataSet);
      procedure GroupBox2Exit(Sender: TObject);
      procedure GroupBox3Exit(Sender: TObject);
      procedure qryVendaNewRecord(DataSet: TDataSet);
      procedure DBGrid_ProdutosExit(Sender: TObject);
      procedure DBGrid_ProdutosKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure EditDataEnter(Sender: TObject);
      procedure EditTabelaEnter(Sender: TObject);
      procedure EditVendedorEnter(Sender: TObject);
      procedure EditFpagtoEnter(Sender: TObject);
      procedure DBEdit5Enter(Sender: TObject);
      procedure DBEdit3Enter(Sender: TObject);
      procedure DBMemo1Enter(Sender: TObject);
      procedure qryVendaItemAfterDelete(DataSet: TDataSet);
      procedure DBGrid_ProdutosEnter(Sender: TObject);
      procedure qryVendaAfterPost(DataSet: TDataSet);
      procedure FrmFrameBotoes2SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes2SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes2SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes2SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes2SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes2SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes2SpbImprimirClick(Sender: TObject);
      procedure FrmFrameBotoes2SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes2SpbExtraClick(Sender: TObject);
      procedure FormDestroy(Sender: TObject);
      procedure qryVendaAfterOpen(DataSet: TDataSet);
      procedure qryVendaItemAfterOpen(DataSet: TDataSet);
      procedure EditClienteExit(Sender: TObject);
   private
      { Private declarations }
      inVenda: Integer;
      inNotaFiscal: Integer;
      procedure Calcular_Venda;
      procedure Calcular_VendaItens;
      procedure TrocoVenda;
      Procedure HabilitarGrid;
      Procedure DesabilitarGrid;
      procedure Imprimir;
      procedure ProcurarProduto(aProcurar: Boolean = True);
      procedure Validar();

   public
      { Public declarations }
      procedure FecharVenda;
   end;

var
   FrmVendaExpressa: TFrmVendaExpressa;

   wOperacao: String;
   nValorInteiro, nValorParcial, nValorDesconto, nTotalNFReal,
     nValorRealPedido: Real;
   bGerarParcelaExterna: Boolean;

implementation

uses FPrincipal, App.SQL, Biblioteca, Global,
   FOpcaoVenda, FGeraParcelas, FRelEntregas,
   Classe.Usuarios, App.Funcoes, FBaseDados;

{$R *.dfm}

procedure TFrmVendaExpressa.FormCreate(Sender: TObject);
begin
   qryVenda.open;
   qryVendaItem.open;
   wOperacao := '';
   FrmFrameBotoes1.DataSource := dsVenda;
   ProgressBar1.Align := alClient;
end;

procedure TFrmVendaExpressa.FormDestroy(Sender: TObject);
begin
   FrmVendaExpressa := Nil;
end;

procedure TFrmVendaExpressa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qryVenda.cancel;
   qryVendaItem.cancel;
   Action := caFree;
end;

procedure TFrmVendaExpressa.Imprimir();
begin
   try
      db_ViewNotaFiscal.Close;
      db_ViewNotaFiscal.ParamByName('CODIGO').AsInteger :=
        qryVenda.FieldByName('CODIGO').AsInteger;
      db_ViewNotaFiscal.open;

      db_ViewNotaFiscalItens.Close;
      db_ViewNotaFiscalItens.ParamByName('CODIGO').AsInteger :=
        qryVenda.FieldByName('CODIGO').AsInteger;
      db_ViewNotaFiscalItens.open;

      frxImprimirVendaPDV.ShowReport;
   finally
      db_ViewNotaFiscal.Close;
      db_ViewNotaFiscalItens.Close;
   end;
end;

procedure TFrmVendaExpressa.FrmFrameBotoes2SpbAdicionarClick(Sender: TObject);
begin
   OpcaoVenda := 'S'; // Saida de Produtos
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditCliente.Setfocus;
end;

procedure TFrmVendaExpressa.FrmFrameBotoes2SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);
end;

procedure TFrmVendaExpressa.FrmFrameBotoes2SpbEditarClick(Sender: TObject);
begin
   If qryVenda.FieldByName('STATUS').asString = 'S' then
   begin
      Informar('Venda concluída e não pode ser alterada.');
      exit;
   end;
   FrmFrameBotoes1.SpbEditarClick(Sender);
end;

procedure TFrmVendaExpressa.FrmFrameBotoes2SpbExcluirClick(Sender: TObject);
begin

   If qryVenda.IsEmpty then
   Begin
      Informar('não há dados para excluir');
      exit;
   end;

   If qryVenda.FieldByName('STATUS').asString = 'S' then
   begin
      Informar('Primeiro você deve Estornar a Venda para depois Excluir');
      exit;
   end;

   if Pergunta('Deseja excluir esta Venda?') = False then
      exit;

   // -------------------------------------------------------------------------
   // ------    Reabir PEDIDO - Status Aberto                             -----
   // -------------------------------------------------------------------------

   // se nao houver numero de nota fiscal, então gere.
   inVenda := qryVenda.FieldByName('CODIGO').AsInteger;

   try
      qryVenda.Close;
      qryVenda.ParamByName('CODIGO').AsInteger := inVenda;
      qryVenda.open;

      SPNFE_PROCESSAR.ParamByName('NEMPRESA').AsInteger := FSistema.Empresa;
      SPNFE_PROCESSAR.ParamByName('NVENDA').AsInteger :=
        qryVenda.FieldByName('CODIGO').AsInteger;
      SPNFE_PROCESSAR.ParamByName('ACAO').asString := 'ABRIR';
      SPNFE_PROCESSAR.ExecProc;

      qryVenda.Delete;

      Informar('Venda excluída com sucesso!');
   finally
      qryVenda.Close;
      qryVenda.ParamByName('CODIGO').AsInteger := inVenda;
      qryVenda.open;
   end;
   GRPItens.Enabled := False;
end;

procedure TFrmVendaExpressa.FrmFrameBotoes2SpbExtraClick(Sender: TObject);
begin

   If qryVenda.IsEmpty then
   Begin
      Informar('não há dados para Estornar.' + #13 + #10 +
        ' Clique em "procurar" ');
      exit;
   end;

   If qryVenda.FieldByName('STATUS').asString = 'N' then
   begin
      Informar('Essa Venda ainda não foi concluída');
      exit;
   end;

   if Pergunta('Deseja estornar esta Venda?') = False then
      exit;

   // -------------------------------------------------------------------------
   // ------    Fechar venda via Stored Procedure do Servidor             -----
   // -------------------------------------------------------------------------
   SPNFE_PROCESSAR.ParamByName('NEMPRESA').AsInteger := FSistema.Empresa;
   SPNFE_PROCESSAR.ParamByName('NVENDA').AsInteger :=
     qryVenda.FieldByName('CODIGO').AsInteger;
   SPNFE_PROCESSAR.ParamByName('ACAO').asString := 'ABRIR';
   SPNFE_PROCESSAR.ExecProc;
   // ****************************************************************

   FUsuario.LogUsuario('venda expressa', AcaoUserName[0]);

   qryVenda.Close;
   qryVenda.open;
   FrmFrameBotoes1.SpbSalvar.Enabled := True;
   Informar('Venda Estornada com sucesso!');

end;

procedure TFrmVendaExpressa.FrmFrameBotoes2SpbImprimirClick(Sender: TObject);
begin
   Imprimir();
end;

procedure TFrmVendaExpressa.FrmFrameBotoes2SpbProcurarClick(Sender: TObject);
begin
   if dbProcurarNFe.Execute then
   begin
      qryVenda.Close;
      qryVenda.ParamByName('CODIGO').AsInteger :=
        dbProcurarNFe.ResultFieldAsInteger('CODIGO');
      qryVenda.open;

      FrmFrameBotoes1.SpbSalvar.Enabled := True;
   end;
end;

procedure TFrmVendaExpressa.FrmFrameBotoes2SpbSairClick(Sender: TObject);
begin
   Close
end;

procedure TFrmVendaExpressa.FrmFrameBotoes2SpbSalvarClick(Sender: TObject);
var
   mModalResultOk: Boolean;
begin
   If qryVenda.IsEmpty then
   Begin
      Informar('não há dados para gerar faturas');
      exit;
   end;

   If (qryVenda.state in [dsEdit, dsInsert]) then
   Begin
      qryVenda.Post;
   End;

   If qryVenda.FieldByName('TOTAL_NF').AsFloat <= 0 then
   begin
      Informar('Não há saldo disponivel para gerar faturas');
      exit;
   end;

   If qryVenda.FieldByName('STATUS').asString = 'S' then
   begin
      Informar('Primeiro você deve Estornar a Venda para depois gerar Faturas');
      exit;
   end;

   if qryVenda.FieldByName('NOTAFISCAL').AsInteger = 0 then
   begin
      qryVenda.Edit;
      qryVenda.FieldByName('NOTAFISCAL').AsInteger :=
        qryVenda.FieldByName('CODIGO').AsInteger;
      qryVenda.Post;
   end;

   wFloat[0] := 0;
   nTotalNFReal := qryVenda.FieldByName('TOTAL_NF').AsFloat;

   Try
      FrmGeraParcelas := TFrmGeraParcelas.create(self);
      FrmGeraParcelas.FValorReceber := qryVenda.FieldByName('TOTAL_NF').AsFloat;
      FrmGeraParcelas.FIDVenda := qryVenda.FieldByName('CODIGO').AsInteger;
      mModalResultOk := FrmGeraParcelas.ShowModal = mrOk;
   Finally
      FrmGeraParcelas.Free;
   End;
   if mModalResultOk = False then
      exit;
   FecharVenda;
end;

procedure TFrmVendaExpressa.BitBtn1Click(Sender: TObject);
begin
   FrmRelEntregas := TFrmRelEntregas.create(self);
   FrmRelEntregas.ShowModal;
end;

procedure TFrmVendaExpressa.BtnCancelarClick(Sender: TObject);
begin
   qryVenda.cancel;
   qryVendaItem.cancel;
end;

procedure TFrmVendaExpressa.FecharVenda;
begin

   // -------------------------------------------------------------------------
   // ------        perguntar                                             -----
   // -------------------------------------------------------------------------
   If qryVenda.FieldByName('STATUS').asString = 'S' then
   Begin

      Informar('Venda já foi concluida');
      exit;
   end;

   If qryVenda.FieldByName('STATUS').asString <> 'N' then
      exit;

   If Pergunta('Deseja concluir esta venda?') = False then
      exit;

   If qryVenda.FieldByName('STATUS').asString = 'S' then
      exit;

   // se nao houver numero de nota fiscal, então gere.
   inVenda := qryVenda.FieldByName('CODIGO').AsInteger;
   qryVenda.Close;
   qryVenda.ParamByName('CODIGO').AsInteger := inVenda;
   qryVenda.open;
   FrmVendaExpressa.FrmFrameBotoes1.SpbSalvarClick(self);

   SPNFE_PROCESSAR.ParamByName('NEMPRESA').AsInteger := FSistema.Empresa;
   SPNFE_PROCESSAR.ParamByName('NVENDA').AsInteger :=
     qryVenda.FieldByName('CODIGO').AsInteger;
   SPNFE_PROCESSAR.ParamByName('ACAO').asString := 'FECHAR';
   SPNFE_PROCESSAR.ExecProc;

   qryVenda.Close;
   qryVenda.ParamByName('CODIGO').AsInteger := inVenda;
   qryVenda.open;
   qryVendaItem.Close;
   qryVendaItem.open;
   Imprimir();
end;

procedure TFrmVendaExpressa.Calcular_Venda;
Begin
   if (qryVenda.state in [dsEdit, dsInsert]) = False then
   begin
      qryVendaItem.Refresh;
      qryVenda.Refresh;
   end;

   db_somar.Close;
   try
      db_somar.open;
      If not(qryVenda.state in [dsEdit, dsInsert]) then
         qryVenda.Edit;

      qryVenda.FieldByName('VALOR_PRODUTOS').AsFloat :=
        db_somar.FieldByName('VALOR_PRODUTOS').AsFloat;
      qryVenda.FieldByName('QTDE_PRODUTOS').AsFloat :=
        db_somar.FieldByName('QTDE_Produtos').AsFloat;
      qryVenda.FieldByName('VLR_DESCONTO').AsFloat :=
        ArrendondarDecimais(db_somar.FieldByName('VLR_DESCONTO').AsFloat);
      qryVenda.FieldByName('TOTAL_NF').AsFloat :=
        db_somar.FieldByName('VALOR_TOTAL').AsFloat;

      If qryVenda.FieldByName('TOTAL_NF').AsFloat <= 0 then
      begin
         qryVenda.FieldByName('TROCO').AsFloat := 0;
      end;
   finally
      db_somar.Close;
   end;
End;

procedure TFrmVendaExpressa.Calcular_VendaItens;
Begin
   if (qryVendaItem.state in [dsEdit, dsInsert]) = False then
      exit;
   Quantidade := 0;
   Vlr_Unit := 0;
   SubTotal := 0;
   wFloat[0] := 0;
   wFloat[1] := 0;

   Quantidade := qryVendaItem.FieldByName('QUANTIDADE').AsFloat;
   Vlr_Unit := qryVendaItem.FieldByName('VLR_UNIT').AsFloat;
   wFloat[0] := qryVendaItem.FieldByName('DESCONTO').AsFloat;

   // checar no parametros do sistema se o mesm permite desconto acima da
   // margem de lucro do produto.

   // quantidade X valor Unitário=subtotal
   SubTotal := (Quantidade * Vlr_Unit);
   wFloat[1] := ArrendondarDecimais(GetValorPercentual(SubTotal, wFloat[0]));
   SubTotal := (SubTotal - wFloat[1]);

   qryVendaItem.FieldByName('VLR_DESCONTO').AsFloat := wFloat[1];
   qryVendaItem.FieldByName('VLR_TOTAL').AsFloat := SubTotal;

   Quantidade := 0;
   Vlr_Unit := 0;
   SubTotal := 0;
   wFloat[0] := 0;
   wFloat[1] := 0;

End;

procedure TFrmVendaExpressa.TrocoVenda;
begin
   if (qryVenda.state in [dsEdit, dsInsert]) = False then
      exit;
   Calcular_Venda;

   if qryVenda.FieldByName('TOTAL_NF').AsFloat <= 0 then
   begin
      qryVenda.FieldByName('TROCO').AsFloat := 0;

      exit;
   end;

   // valor recebido - Total da Nota
   qryVenda.FieldByName('TROCO').AsFloat :=
     (qryVenda.FieldByName('VLR_RECEBIDO').AsFloat - qryVenda.FieldByName
     ('TOTAL_NF').AsFloat);

   // se valor for negativo, mostrar como 0 (zero)
   If qryVenda.FieldByName('TROCO').AsFloat < 0 then
      qryVenda.FieldByName('TROCO').AsFloat := 0;

   // valor recebido - Total da Nota
   qryVenda.FieldByName('VLR_CAIXA').AsFloat :=
     (qryVenda.FieldByName('VLR_RECEBIDO').AsFloat - qryVenda.FieldByName
     ('TROCO').AsFloat);

   If qryVenda.FieldByName('VLR_CAIXA').AsFloat = 0 then
      qryVenda.FieldByName('VLR_RECEBIDO').AsFloat;

   // se valor for negativo, mostrar como 0 (zero)
   If qryVenda.FieldByName('VLR_CAIXA').AsFloat < 0 then
      qryVenda.FieldByName('VLR_CAIXA').AsFloat := 0;

end;

procedure TFrmVendaExpressa.Validar;
begin
   if qryVenda.FieldByName('CLIENTE').AsInteger < 1 then
   begin
      Informar('Informe codigo do cliente');
      EditCliente.Setfocus;
      Abort;
   end;
end;

procedure TFrmVendaExpressa.qryVendaAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(qryVenda);
   TFloatField(qryVenda.FieldByName('QTDE_PRODUTOS')).DisplayFormat :=
     '###,##0';
end;

procedure TFrmVendaExpressa.qryVendaAfterPost(DataSet: TDataSet);
Var
   mID: Integer;
begin
   // mID :=qryVenda.FieldByName('CODIGO').AsInteger;
   // qryVenda.Close;
   qryVenda.ParamByName('CODIGO').AsInteger := qryVenda.FieldByName('CODIGO')
     .AsInteger;
   // qryVenda.Open;

   FrmFrameBotoes1.SpbCancelar.Enabled := True;
end;

procedure TFrmVendaExpressa.qryVendaItemBeforePost(DataSet: TDataSet);
begin
   if qryVendaItem.FieldByName('VLR_UNIT').AsFloat <= 0 then
   begin
      ProcurarProduto
        (False { não procurar, apenas preecher valores corretos } );
   end;
   qryVendaItem.FieldByName('EMPRESA').AsInteger :=
     qryVenda.FieldByName('EMPRESA').AsInteger;

   qryVendaItem.FieldByName('CODIGO').AsInteger :=
     qryVenda.FieldByName('CODIGO').AsInteger;
   qryVendaItem.FieldByName('IDPRODUTO').AsInteger :=
     GetIDProduto(qryVendaItem.FieldByName('PRODUTO').asString);

   if qryVendaItem.FieldByName('UND').asString = '' then
      qryVendaItem.FieldByName('UND').asString := 'PC';
   qryVendaItem.FieldByName('VLR_UNIT').AsFloat :=
     ArrendondarDecimais(qryVendaItem.FieldByName('VLR_UNIT').AsFloat);
   qryVendaItem.FieldByName('DESCRICAO').asString :=
     fncReferenciaNome(qryVendaItem.FieldByName('PRODUTO').asString);
   Calcular_VendaItens;
end;

procedure TFrmVendaExpressa.qryVendaItemAfterPost(DataSet: TDataSet);
begin
   Calcular_Venda;
   If (qryVenda.state in [dsEdit, dsInsert]) then
   Begin
      qryVenda.Post;
   End;
end;

procedure TFrmVendaExpressa.qryVendaItemAfterScroll(DataSet: TDataSet);
begin

   PopUp_ExcluirItem.visible := False;
   if qryVendaItem.IsEmpty then
   begin
      PopUp_ExcluirItem.visible := False;
   end
   else
   begin
      If qryVenda.FieldByName('STATUS').asString = 'N' then
      begin
         PopUp_ExcluirItem.visible := True;
      end;
   end;

end;

procedure TFrmVendaExpressa.GroupBox2Exit(Sender: TObject);
begin
   If (qryVenda.state in [dsEdit, dsInsert]) then
   Begin
      qryVenda.Post;
   End;

end;

procedure TFrmVendaExpressa.GroupBox3Exit(Sender: TObject);
begin
   If (qryVenda.state in [dsEdit, dsInsert]) then
   Begin
      qryVenda.Post;
   End;

end;

procedure TFrmVendaExpressa.qryVendaNewRecord(DataSet: TDataSet);
begin
   qryVenda.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;
   // qryVenda.FieldByName('FRETE').AsInteger               := FParametros.Frete.Padrao;
   // qryVenda.FieldByName('CFOP').AsInteger                := FParametros.CFOP.VendaUFInterno;
   // qryVenda.FieldByName('FORMAPAGTO').AsInteger          := FParametros.Venda.IDPagto;
   // qryVenda.FieldByName('VENDEDOR').AsInteger            := FParametros.Venda.Vendedor;
   // qryVenda.FieldByName('CLIENTE').AsInteger             := FParametros.Venda.Cliente;
   // qryVenda.FieldByName('TABELA').AsInteger              := 0;
   // qryVenda.FieldByName('TRANSPORTADORA').AsInteger      := 0;
   // qryVenda.FieldByName('FRETE_ESPECIE').AsString        := 'CAIXA';
   qryVenda.FieldByName('EMISSAO').AsDateTime := Date;
   qryVenda.FieldByName('DATA_ENTRADASAIDA').AsDateTime := Date;
   qryVenda.FieldByName('HORA').AsDateTime := Time;
   // qryVenda.FieldByName('NOTAFISCAL').AsInteger          := 0;
   qryVenda.FieldByName('OPERACAO').asString := 'S';
   qryVenda.FieldByName('MODELO').asString := 'VENDAEXPRESSA';
   qryVenda.FieldByName('SERIE').asString := 'VENDAEXPRESSA';
   qryVenda.FieldByName('TIPONF').asString := 'VENDAEXPRESSA';
   qryVenda.FieldByName('CUPOM').asString := 'N';
   qryVenda.FieldByName('STATUS').asString := 'N';
end;

Procedure TFrmVendaExpressa.HabilitarGrid;
begin
   DBGrid_Produtos.color := clWindow;
   DBGrid_Produtos.ReadOnly := False;
   DBGrid_Produtos.Enabled := True;
end;

Procedure TFrmVendaExpressa.DesabilitarGrid;
begin
   DBGrid_Produtos.color := clBtnFace;
   DBGrid_Produtos.ReadOnly := True;
   DBGrid_Produtos.Enabled := False;
end;

procedure TFrmVendaExpressa.DBGrid_ProdutosEnter(Sender: TObject);
var
   mID: Integer;
begin
   Validar();

   If (qryVenda.state in [dsEdit, dsInsert]) then
   Begin
      qryVenda.Post;
   End;
   mID := qryVenda.FieldByName('CODIGO').AsInteger;
   qryVenda.Close;
   qryVendaItem.Close;
   qryVenda.ParamByName('CODIGO').AsInteger := mID;
   qryVenda.open;
   qryVendaItem.open;
end;

procedure TFrmVendaExpressa.DBGrid_ProdutosExit(Sender: TObject);
begin

   If (qryVenda.state in [dsEdit, dsInsert]) then
   Begin
      qryVenda.Post;
   End;

   If (qryVendaItem.state in [dsEdit, dsInsert]) then
   Begin
      qryVendaItem.Post;
   End;

end;

procedure TFrmVendaExpressa.DBGrid_ProdutosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key = VK_F8 Then
   begin
      If (qryVenda.FieldByName('STATUS').asString = 'S') then
      begin
         Informar('Venda já foi concluída');
         exit;
      end;
      ProcurarProduto;
      Calcular_VendaItens();
      Calcular_Venda();
   end;
end;

procedure TFrmVendaExpressa.ProcurarProduto(aProcurar: Boolean);
var
   mProduto: String;
begin
   mProduto := qryVendaItem.FieldByName('PRODUTO').asString;
   try
      if aProcurar then
      begin
         if dbProcurarProduto.Execute then
         begin
            mProduto := dbProcurarProduto.ResultFieldAsString('REFERENCIA');
            If not(qryVendaItem.state in [dsEdit]) then
               qryVendaItem.Edit;

            qryVendaItem.FieldByName('IDPRODUTO').AsInteger :=
              StrToInt(GetProdutoCampo(mProduto, 'CODIGO'));
            qryVendaItem.FieldByName('PRODUTO').asString := mProduto;
         end;
      end;
      try
         if Trim(qryVendaItem.FieldByName('PRODUTO').asString) <> '' then
         begin
            if qryVendaItem.FieldByName('VLR_UNIT').AsFloat <= 0 then
            begin
               db_view_estoque.Close;
               db_view_estoque.ParamByName('REFERENCIA').asString := mProduto;
               db_view_estoque.open;
               If not(qryVendaItem.state in [dsEdit]) then
                  qryVendaItem.Edit;
               qryVendaItem.FieldByName('UND').asString :=
                 db_view_estoque.FieldByName('UND').asString;
               if qryVendaItem.FieldByName('QUANTIDADE').AsFloat <= 0 then
                  qryVendaItem.FieldByName('QUANTIDADE').AsFloat := 1;
               qryVendaItem.FieldByName('VLR_UNIT').AsFloat :=
                 db_view_estoque.FieldByName('PRC_VENDA').AsFloat;
               qryVendaItem.FieldByName('DESCRICAO').asString :=
                 db_view_estoque.FieldByName('DESCRICAO').asString;
            end;
         end;
      finally
         db_view_estoque.Close;
      end;
   finally
      if qryVendaItem.FieldByName('VLR_UNIT').AsFloat > 0 then
      begin
         if (qryVendaItem.state in [dsEdit]) then
            qryVendaItem.Post;
      end;
   end;
end;

procedure TFrmVendaExpressa.EditClienteExit(Sender: TObject);
var
   mIDFPagto: Integer;
begin
   if (qryVenda.state in [dsInsert, dsEdit]) = False then
      exit;

   mIDFPagto := 0;
   mIDFPagto := GetClienteFormaPagto(qryVenda.FieldByName('CLIENTE').AsInteger);
   inCliente := qryVenda.FieldByName('CLIENTE').AsInteger;
   if mIDFPagto > 0 then
      qryVenda.FieldByName('FORMAPAGTO').AsInteger := mIDFPagto;

   if qryVenda.FieldByName('VENDEDOR').AsInteger < 1 then
   begin
      qryVenda.FieldByName('VENDEDOR').AsInteger :=
        BuscaClienteVendedor(qryVenda.FieldByName('CLIENTE').AsInteger);
   end;

   if ChecarCreditoCliente(qryVenda.FieldByName('CLIENTE').AsInteger) Then
   begin
      qryVendaItem.cancel;
      qryVenda.cancel;
      AvisoSistema('Venda não autorizada!' + #13 + #10 +
        'O cliente que você selecionou está com crédito bloqueado');
      Abort;
   end;

   if GetClienteCampo(qryVenda.FieldByName('CLIENTE').AsInteger,
     'OBSERVACAO') > '' Then
      AvisoSistema(GetClienteCampo(qryVenda.FieldByName('CLIENTE').AsInteger,
        'OBSERVACAO'));

end;

procedure TFrmVendaExpressa.EditCodigoChange(Sender: TObject);
begin
   GRPItens.Enabled := True;
end;

procedure TFrmVendaExpressa.EditDataEnter(Sender: TObject);
begin
   PainelDicas.Caption := 'Informe a data da venda';
end;

procedure TFrmVendaExpressa.EditTabelaEnter(Sender: TObject);
begin
   PainelDicas.Caption :=
     'Digite o código da tabela de preço ou tecle F8 para pesquisar';
end;

procedure TFrmVendaExpressa.EditVendedorEnter(Sender: TObject);
begin
   PainelDicas.Caption :=
     'Digite o código do Vendedor ou tecle F8 para pesquisar';
end;

procedure TFrmVendaExpressa.EditFpagtoEnter(Sender: TObject);
begin
   PainelDicas.Caption :=
     'Código da Forma de Pagamento ou tecle F8 para pesquisar. Logo após, pressione CTRL+F para gerar parcelas';

end;

procedure TFrmVendaExpressa.DBEdit5Enter(Sender: TObject);
begin
   PainelDicas.Caption := 'Informe o Desconto sobre o total da venda';
end;

procedure TFrmVendaExpressa.DBEdit3Enter(Sender: TObject);
begin
   PainelDicas.Caption := 'Informe o Valor Recebido em dinheiro';
end;

procedure TFrmVendaExpressa.DBMemo1Enter(Sender: TObject);
begin
   PainelDicas.Caption :=
     'Caso seja necessário, informe alguma Observação importante sobre a venda.';
end;

procedure TFrmVendaExpressa.qryVendaItemAfterDelete(DataSet: TDataSet);
begin
   Calcular_Venda;
end;

procedure TFrmVendaExpressa.qryVendaItemAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(qryVendaItem);
   TFloatField(qryVendaItem.FieldByName('QUANTIDADE')).DisplayFormat :=
     '###,##0';
end;

procedure TFrmVendaExpressa.PopUp_ExcluirItemClick(Sender: TObject);
begin
   If (qryVenda.FieldByName('STATUS').asString = 'S') then
   begin
      Informar('Venda já foi concluída');
      exit;
   end;

   if qryVendaItem.IsEmpty then
   begin
      Aviso('Não há itens para excluir');
      exit;
   end;

   if Pergunta('Excluir item selecionado?') = False then
      exit;

   qryVendaItem.Delete;
   qryVendaItem.Close;
   qryVendaItem.open;

end;

end.
