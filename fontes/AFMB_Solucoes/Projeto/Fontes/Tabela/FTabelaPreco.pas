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

unit FTabelaPreco;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, cxGraphics, cxControls,
   cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
   cxData, cxDataStorage, cxEdit, cxNavigator,
   cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
   cxButtonEdit, cxCurrencyEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
   FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
   FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxDBSet,
   FireDAC.Comp.DataSet, FireDAC.Comp.Client, FFrameBarra, Vcl.ComCtrls,
   cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
   cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
   Vcl.DBGrids, Vcl.DBCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   uEstSearchDialogZeos, Vcl.ExtCtrls, Vcl.Mask, FFrameBotoes,
   Classe.Global, dxDateRanges, dxSkinsCore, dxSkinsDefaultPainters;

type
   TFrmTabelaPreco = class(TForm)
      ds_TabelaPreco: TDataSource;
      db_ReferenciasImportar: TFDQuery;
      ds_ParametrosDescontos: TDataSource;
      FrmFrameBotoes1: TFrmFrameBotoes;
      Panel1: TPanel;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      EditData: TDBEdit;
      DBEdit1: TDBEdit;
      EditNome: TDBEdit;
      GroupBox1: TGroupBox;
      BoxGrupo: TRadioGroup;
      EditGrupoNome: TEdit;
      EditGrupo: TIDBEditDialog;
      GroupBox2: TGroupBox;
      BoxSubgrupo: TRadioGroup;
      EditSubGrupoNome: TEdit;
      EditSubgrupo: TIDBEditDialog;
      DB_ParametrosDescontos: TFDQuery;
      DB_ParametrosDescontosCODIGO: TIntegerField;
      DB_ParametrosDescontosQTDE1_PARAM: TIntegerField;
      DB_ParametrosDescontosQTDE2_PARAM: TIntegerField;
      DB_ParametrosDescontosDESCONTO: TFloatField;
      DB_ParametrosDescontosCOMISSAO: TFloatField;
      GroupBox4: TGroupBox;
      FrmFrameBarra1: TFrmFrameBarra;
      GroupBox5: TGroupBox;
      GroupBox6: TGroupBox;
      BtnImportar: TBitBtn;
      BtnRecalcular: TBitBtn;
      db_TabelaReferenciaDeletar: TFDQuery;
      ProgressBar1: TProgressBar;
      BtnCancelar: TBitBtn;
      BtnExcluirTudo: TBitBtn;
      dbProcurarProduto: TIDBEditDialog;
      frx_dsTabela: TfrxDBDataset;
      frx_dsTabelaReferencias: TfrxDBDataset;
      frx_TabelaPrecos: TfrxReport;
      db_TabelaDetalhes: TFDQuery;
      LocalizaTabelaPreco: TIDBEditDialog;
      cxGridProdutos: TcxGridDBTableView;
      cxGrid1Level1: TcxGridLevel;
      cxGrid1: TcxGrid;
      cxGridProdutosColumn1: TcxGridDBColumn;
      cxGridProdutosColumn2: TcxGridDBColumn;
      cxGridProdutosColumn3: TcxGridDBColumn;
      QryListaProduto: TFDQuery;
      dsListaProduto: TDataSource;
      db_TabelaPreco: TFDQuery;
      cxGridProdutosColumn5: TcxGridDBColumn;
      GroupBox7: TGroupBox;
      LblPercentual: TLabel;
      RDGPercentual: TDBRadioGroup;
      EditPercentualx: TDBEdit;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure DB_ParametrosDescontosBeforePost(DataSet: TDataSet);
      procedure DB_ParametrosDescontosQTDE2_PARAMChange(Sender: TField);
      procedure FormShow(Sender: TObject);
      procedure QryListaProdutoBeforePost(DataSet: TDataSet);
      procedure dbGridComissoesEnter(Sender: TObject);
      procedure BtnRecalcularClick(Sender: TObject);
      procedure BtnImportarClick(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
      procedure BtnExcluirTudoClick(Sender: TObject);
      procedure GroupBox4Enter(Sender: TObject);
      procedure db_TabelaPrecoNOMEChange(Sender: TField);
      procedure cxGridProdutosKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure cxGridProdutosColumn1PropertiesValidate(Sender: TObject;
        var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
      procedure cxGridProdutosColumn3PropertiesValidate(Sender: TObject;
        var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
      procedure GroupBox6Enter(Sender: TObject);
      procedure FormDestroy(Sender: TObject);
      procedure db_TabelaPrecoNewRecord(DataSet: TDataSet);
      procedure QryListaProdutoAfterOpen(DataSet: TDataSet);
      procedure QryListaProdutoAfterScroll(DataSet: TDataSet);

   private

      bParar, bImportando: Boolean;
      FCodProduto: String;

      procedure AtualizaData;
      procedure MontaValorTabela;
      procedure BotoesImportacao(bHabilitar: Boolean);
      procedure BotoesRecalculo(bHabilitar: Boolean);
      procedure HabilitarBotoes;
      procedure RecalcularValorTabela;
      { Private declarations }

   public
      { Public declarations }
   end;

var
   FrmTabelaPreco: TFrmTabelaPreco;
   OpcaoTabela: String;

implementation

uses FPrincipal, App.SQL, Biblioteca, Global, FImprimirTabela,
   Classe.Usuarios;

{$R *.dfm}

procedure TFrmTabelaPreco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FUsuario.LogUsuario('Tabela de Preços', 'Saiu do módulo Tabela de Preços');
   // FrmPrincipal.ActTabelaPrecos.Enabled := True;
   db_ReferenciasImportar.CLOSE;
   db_TabelaPreco.CLOSE;
   QryListaProduto.CLOSE;

   Action := cafree;
end;

procedure TFrmTabelaPreco.FormCreate(Sender: TObject);
begin
   bImportando := False;

   FrmFrameBotoes1.DataSource := ds_TabelaPreco;

end;

procedure TFrmTabelaPreco.FormDestroy(Sender: TObject);
begin
   FrmTabelaPreco := Nil;
end;

procedure TFrmTabelaPreco.FormShow(Sender: TObject);
begin
   FUsuario.LogUsuario('Tabela de Preços', 'Acessou o módulo Tabela de Preços');

   db_TabelaPreco.Open;
   nTabelaPreco := db_TabelaPreco.FieldByName('CODIGO').AsInteger;
   DB_ParametrosDescontos.Open;
   QryListaProduto.Open;

   // deletar
   FrmFrameBotoes1.SpbSalvar.Enabled := true;
   FrmFrameBotoes1.SpbCancelar.Enabled := true;

   FrmFrameBotoes1.SpbSalvar.Visible := true;
   FrmFrameBotoes1.SpbCancelar.Visible := true;

end;

procedure TFrmTabelaPreco.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditNome.SetFocus;
end;

procedure TFrmTabelaPreco.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin

   DB_ParametrosDescontos.Cancel;
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmTabelaPreco.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   nTabelaPreco := db_TabelaPreco.FieldByName('CODIGO').AsInteger;
   FrmFrameBotoes1.SpbEditarClick(Sender);
   FUsuario.LogUsuario('Tabela de Preços',
     'Clicou no botão Alterar. Na Tabela de preço [' +
     IntToStr(nTabelaPreco) + ']');

end;

procedure TFrmTabelaPreco.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin

   nTabelaPreco := db_TabelaPreco.FieldByName('CODIGO').AsInteger;
   FrmFrameBotoes1.SpbExcluirClick(Sender);
   FUsuario.LogUsuario('Tabela de Preços', 'Deletou tabela de preço [' +
     IntToStr(nTabelaPreco) + ']');

end;

procedure TFrmTabelaPreco.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
begin

   db_TabelaDetalhes.CLOSE;
   nTabelaPreco := db_TabelaPreco.FieldByName('CODIGO').AsInteger;
   // FrmImprimirTabela := TFrmImprimirTabela.create(self);
   frx_TabelaPrecos.ShowReport;
   FUsuario.LogUsuario('Tabela de Preços', 'Imprimiu a tabela [' +
     IntToStr(nTabelaPreco) + ']');
   db_TabelaDetalhes.CLOSE;

end;

procedure TFrmTabelaPreco.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if LocalizaTabelaPreco.Execute then
   begin
      nTabelaPreco := LocalizaTabelaPreco.ResultFieldAsInteger('CODIGO');
      FUsuario.LogUsuario('Tabela de Preços',
        'Procurou e colocalizou a tabela [' + IntToStr(nTabelaPreco) + ']');
      db_TabelaPreco.Locate('CODIGO', nTabelaPreco, []);
   end;
end;

procedure TFrmTabelaPreco.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmTabelaPreco.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
   nTabelaPreco := db_TabelaPreco.FieldByName('CODIGO').AsInteger;

   If (QryListaProduto.State in [dsedit, dsinsert]) then
      QryListaProduto.Post;

   If (DB_ParametrosDescontos.State in [dsedit, dsinsert]) then
      DB_ParametrosDescontos.Post;

   FUsuario.LogUsuario('Tabela de Preços',
     'Clicou no botão Salvar. Na Tabela de preço [' +
     IntToStr(nTabelaPreco) + ']');

end;

procedure TFrmTabelaPreco.GroupBox4Enter(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmTabelaPreco.GroupBox6Enter(Sender: TObject);
begin
   If (db_TabelaPreco.State in [dsedit, dsinsert]) then
   Begin
      db_TabelaPreco.Post;
   end;
end;

procedure TFrmTabelaPreco.BtnImportarClick(Sender: TObject);
begin
   nTabelaPreco := db_TabelaPreco.FieldByName('CODIGO').AsInteger;
   bParar := False;
   if not QryListaProduto.IsEmpty then
   begin
      if pergunta('Há itens na grade. ' + #13 + #10 +
        'Este processo irá excluir tudo ' +
        'e refazer a grade... Deseja continuar?') = False then
      begin
         FUsuario.LogUsuario('Tabela de Preços', 'Na Tabela de preço [' +
           IntToStr(nTabelaPreco) +
           '], tentou gerar (botão "Gerar Tabela") grade de itens novamente... Mas foi impedido(a) pelo sistema porque ja havia itens da grade da tabela.');
         exit;
      end;
   end;
   Try
      db_TabelaReferenciaDeletar.ExecSQL;
      QryListaProduto.Refresh;

      db_ReferenciasImportar.CLOSE;
      db_ReferenciasImportar.SQL.Clear;

      db_ReferenciasImportar.SQL.Add('SELECT * FROM CAD_PRODUTOS');
      db_ReferenciasImportar.SQL.Add('WHERE');
      db_ReferenciasImportar.SQL.Add('REFERENCIA>' + QuotedStr(''));

      if BoxGrupo.ItemIndex = 1 then
      begin
         db_ReferenciasImportar.SQL.Add('AND');
         db_ReferenciasImportar.SQL.Add('GRUPO=' + QuotedStr(EditGrupo.Text));
      end;

      if BoxSubgrupo.ItemIndex = 1 then
      begin
         db_ReferenciasImportar.SQL.Add('AND');
         db_ReferenciasImportar.SQL.Add
           ('SUBGRUPO=' + QuotedStr(EditSubgrupo.Text));
      end;

      db_ReferenciasImportar.SQL.Add('ORDER BY REFERENCIA');

      db_ReferenciasImportar.Open;
      ProgressBar1.Max := 0;
      ProgressBar1.Position := 0;

      ProgressBar1.Max := db_ReferenciasImportar.RecordCount;
      db_ReferenciasImportar.First;

      BtnCancelar.Visible := true;
      BtnExcluirTudo.Enabled := False;
      bImportando := true;

      BotoesImportacao(False);
      While not db_ReferenciasImportar.eof do
      begin
         if bParar then
            Break;
         Application.ProcessMessages;
         QryListaProduto.Append;
         QryListaProduto.FieldByName('CODIGO').AsInteger :=
           db_TabelaPreco.FieldByName('CODIGO').AsInteger;
         QryListaProduto.FieldByName('REFERENCIA').AsString :=
           db_ReferenciasImportar.FieldByName('REFERENCIA').AsString;
         QryListaProduto.FieldByName('DESCRICAO').AsString :=
           db_ReferenciasImportar.FieldByName('DESCRICAO').AsString;
         QryListaProduto.FieldByName('PRC_VENDA').AsFloat := 0;
         MontaValorTabela();
         QryListaProduto.Post;
         ProgressBar1.Position := ProgressBar1.Position + 1;
         Application.ProcessMessages;
         if bParar then
            Break;
         db_ReferenciasImportar.Next;
      end;
      FUsuario.LogUsuario('Tabela de Preços', 'Na Tabela de preço [' +
        IntToStr(nTabelaPreco) +
        '], gerou uma nova grade de Itens (Referencias), clicando no botão "Gerar Tabela"');
   Finally
      BotoesImportacao(true);
      ProgressBar1.Position := 0;
      BtnCancelar.Visible := False;
      bParar := False;
      QryListaProduto.Refresh;
      AtualizaData;

      if bParar then
      begin
         FUsuario.LogUsuario('Tabela de Preços', 'Na Tabela de preço [' +
           IntToStr(nTabelaPreco) +
           '], cancelou a geração de Itens (Referencias), clicando no botão "cancelar processo"');

         Informar('Importação cancela pelo usuário')
      end
      else
         AvisoSistema('Importação concluida com sucesso');

      bParar := False;
      bImportando := False;
   End;

end;

procedure TFrmTabelaPreco.BtnRecalcularClick(Sender: TObject);
Var
   vnValorVenda: Real;
begin
   nTabelaPreco := db_TabelaPreco.FieldByName('CODIGO').AsInteger;
   vnValorVenda := 0;
   if pergunta('Deseja refazer todos os valores?') = False then
      exit;

   Try
      ProgressBar1.Max := 0;
      ProgressBar1.Position := 0;

      ProgressBar1.Max := QryListaProduto.RecordCount;
      QryListaProduto.First;

      BtnCancelar.Visible := true;
      BtnExcluirTudo.Enabled := False;
      bImportando := true;

      BotoesRecalculo(False);
      While not QryListaProduto.eof do
      begin
         if bParar then
            Break;
         Application.ProcessMessages;
         vnValorVenda := RetornaReferenciaPrecoVenda
           (QryListaProduto.FieldByName('REFERENCIA').AsString);
         QryListaProduto.Edit;
         QryListaProduto.FieldByName('PRC_VENDA').AsFloat := vnValorVenda;
         RecalcularValorTabela();
         QryListaProduto.Post;
         Application.ProcessMessages;
         if bParar then
            Break;
         ProgressBar1.Position := ProgressBar1.Position + 1;
         QryListaProduto.Next;
      end;
      FUsuario.LogUsuario('Tabela de Preços', 'Na Tabela de preço [' +
        IntToStr(nTabelaPreco) +
        '], realculou o valor do itens Referencias), clicando no botão "Recalcular Preço"');

   Finally
      BotoesRecalculo(true);
      ProgressBar1.Position := 0;
      BtnCancelar.Visible := False;
      bParar := False;
      QryListaProduto.Refresh;
      AtualizaData;

      if bParar then
         Informar('Importação cancela pelo usuário')
      else
         AvisoSistema('Importação concluida com sucesso');
      bParar := False;
      bImportando := False;
   End;
end;

procedure TFrmTabelaPreco.MontaValorTabela;
var
   mPercentual: Currency;
begin
   // if (db_TabelaPreco.FieldByName('AJUSTE_TIPO').AsString='NAO') then
   // exit;
   mPercentual := 0;
   mPercentual := db_TabelaPreco.FieldByName('AJUSTE_VALOR').AsFloat;
   if (db_TabelaPreco.FieldByName('AJUSTE_TIPO').AsString = 'DESCONTO') and
     (db_ReferenciasImportar.FieldByName('PRC_VENDA').AsFloat > 0) Then
   begin
      QryListaProduto.FieldByName('PRC_VENDA').AsFloat :=
        ValorComDesconto(db_ReferenciasImportar.FieldByName('PRC_VENDA')
        .AsFloat, mPercentual);
   end
   else if (db_TabelaPreco.FieldByName('AJUSTE_TIPO').AsString = 'ACRESCIMO')
     and (db_ReferenciasImportar.FieldByName('PRC_VENDA').AsFloat > 0) Then
   begin
      QryListaProduto.FieldByName('PRC_VENDA').AsFloat :=
        ValorComAcrescimo(db_ReferenciasImportar.FieldByName('PRC_VENDA')
        .AsFloat, mPercentual);
   end
   else if (db_TabelaPreco.FieldByName('AJUSTE_TIPO').AsString = 'NAO') Then
   begin
      QryListaProduto.FieldByName('PRC_VENDA').AsFloat :=
        db_ReferenciasImportar.FieldByName('PRC_VENDA').AsFloat;
   end;
end;

procedure TFrmTabelaPreco.RecalcularValorTabela;
var
   mPercentual: Currency;
begin
   if (db_TabelaPreco.FieldByName('AJUSTE_TIPO').AsString = 'NAO') then
      exit;
   mPercentual := 0;
   mPercentual := db_TabelaPreco.FieldByName('AJUSTE_VALOR').AsFloat;
   if (db_TabelaPreco.FieldByName('AJUSTE_TIPO').AsString = 'DESCONTO') and
     (QryListaProduto.FieldByName('PRC_VENDA').AsFloat > 0) Then
   begin
      QryListaProduto.FieldByName('PRC_VENDA').AsFloat :=
        ValorComDesconto(QryListaProduto.FieldByName('PRC_VENDA').AsFloat,
        mPercentual);
   end
   else if (db_TabelaPreco.FieldByName('AJUSTE_TIPO').AsString = 'ACRESCIMO')
     and (QryListaProduto.FieldByName('PRC_VENDA').AsFloat > 0) Then
   begin
      QryListaProduto.FieldByName('PRC_VENDA').AsFloat :=
        ValorComAcrescimo(QryListaProduto.FieldByName('PRC_VENDA').AsFloat,
        mPercentual);
   end
   else if (db_TabelaPreco.FieldByName('AJUSTE_TIPO').AsString = 'NAO') Then
   begin
      QryListaProduto.FieldByName('PRC_VENDA').AsFloat :=
        QryListaProduto.FieldByName('PRC_VENDA').AsFloat;
   end;
end;

procedure TFrmTabelaPreco.cxGridProdutosColumn1PropertiesValidate
  (Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin

   if bImportando = False then
   begin
      QryListaProduto.FieldByName('DESCRICAO').AsString :=
        fncReferenciaNome(QryListaProduto.FieldByName('REFERENCIA').AsString);
      QryListaProduto.FieldByName('PRC_VENDA').AsFloat :=
        RetornaReferenciaPrecoVenda(QryListaProduto.FieldByName('REFERENCIA')
        .AsString);
      MontaValorTabela();
   end;
end;

procedure TFrmTabelaPreco.cxGridProdutosColumn3PropertiesValidate
  (Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
   exit;

   nTabelaPreco := db_TabelaPreco.FieldByName('CODIGO').AsInteger;
   if bImportando = False then
      FUsuario.LogUsuario('Tabela de Preços', 'Na Tabela de preço [' +
        IntToStr(nTabelaPreco) + '], alterou o preço da referencia: [' +
        QryListaProduto.FieldByName('REFERENCIA').AsString + ']');
end;

procedure TFrmTabelaPreco.cxGridProdutosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if bImportando = true then
      exit;

   FCodProduto := UpperCase(Trim(QryListaProduto.FieldByName('REFERENCIA')
     .AsString));
   nTabelaPreco := db_TabelaPreco.FieldByName('CODIGO').AsInteger;

   IF Key = VK_F8 Then
   begin
      if dbProcurarProduto.Execute then
      begin
         If not(QryListaProduto.State in [dsedit]) then
            QryListaProduto.Edit;
         QryListaProduto.FieldByName('REFERENCIA').AsString :=
           dbProcurarProduto.ResultFieldAsString('REFERENCIA');
         QryListaProduto.Post;

      end;
   end;

   IF Key = VK_F9 Then
   begin
      if not(InputQuery('Localizar REFERÊNCIA',
        'Informe o código da Referência', FCodProduto)) then
         exit;

      FCodProduto := UpperCase(Trim(FCodProduto));
      QryListaProduto.Locate('REFERENCIA', FCodProduto, []);

   end;
end;

procedure TFrmTabelaPreco.BtnCancelarClick(Sender: TObject);
begin
   bParar := true;
   bImportando := False;
   Application.ProcessMessages;

end;

procedure TFrmTabelaPreco.BtnExcluirTudoClick(Sender: TObject);
begin
   nTabelaPreco := db_TabelaPreco.FieldByName('CODIGO').AsInteger;
   if not QryListaProduto.IsEmpty then
   begin
      if pergunta('Há itens na grade. ' + #13 + #10 +
        'Este processo irá excluir tudo. ' + 'Deseja continuar?') = False then
         exit;
   end;

   db_TabelaReferenciaDeletar.ExecSQL;
   QryListaProduto.Refresh;

   FUsuario.LogUsuario('Tabela de Preços', 'Na Tabela de preço [' +
     IntToStr(nTabelaPreco) +
     '], deletou todos os itens (Referencias), clicando no botão "Excluir Tudo"');

end;

procedure TFrmTabelaPreco.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmTabelaPreco.dbGridComissoesEnter(Sender: TObject);
begin

   If (db_TabelaPreco.State in [dsedit, dsinsert]) then
   Begin
      db_TabelaPreco.Post;
   end;

end;

procedure TFrmTabelaPreco.DB_ParametrosDescontosBeforePost(DataSet: TDataSet);
begin

   DB_ParametrosDescontos.FieldByName('CODIGO').AsInteger :=
     db_TabelaPreco.FieldByName('CODIGO').AsInteger;

end;

procedure TFrmTabelaPreco.DB_ParametrosDescontosQTDE2_PARAMChange
  (Sender: TField);
begin

   if (DB_ParametrosDescontos.FieldByName('QTDE1_PARAM').AsFloat >
     DB_ParametrosDescontos.FieldByName('QTDE2_PARAM').AsFloat) then
   begin
      Informar('Quantidade minima não pode ser maior que quantidade maxima');
      DB_ParametrosDescontos.FieldByName('QTDE2_PARAM').AsFloat :=
        DB_ParametrosDescontos.FieldByName('QTDE1_PARAM').AsFloat;

   end;

end;

procedure TFrmTabelaPreco.QryListaProdutoAfterOpen(DataSet: TDataSet);
begin
   HabilitarBotoes();
end;

procedure TFrmTabelaPreco.QryListaProdutoAfterScroll(DataSet: TDataSet);
begin
   HabilitarBotoes();
end;

procedure TFrmTabelaPreco.HabilitarBotoes;
begin
   BtnImportar.Enabled := db_TabelaPreco.IsEmpty = False;
   BtnRecalcular.Enabled := QryListaProduto.IsEmpty = False;
   BtnExcluirTudo.Enabled := QryListaProduto.IsEmpty = False;
end;

procedure TFrmTabelaPreco.QryListaProdutoBeforePost(DataSet: TDataSet);
begin
   QryListaProduto.FieldByName('CODIGO').AsInteger :=
     db_TabelaPreco.FieldByName('CODIGO').AsInteger;
   QryListaProduto.FieldByName('DTPRECOALTERADO').AsDateTime := Now;
end;

procedure TFrmTabelaPreco.db_TabelaPrecoNewRecord(DataSet: TDataSet);
begin
   db_TabelaPreco.FieldByName('DATA').AsDateTime := Date;
   db_TabelaPreco.FieldByName('AJUSTE_TIPO').AsString := 'NAO';
end;

procedure TFrmTabelaPreco.db_TabelaPrecoNOMEChange(Sender: TField);
begin
   nTabelaPreco := db_TabelaPreco.FieldByName('CODIGO').AsInteger;
   FUsuario.LogUsuario('Tabela de Preços', 'Na Tabela de preço [' +
     IntToStr(nTabelaPreco) + '], alterou o nome da tabela.');

end;

procedure TFrmTabelaPreco.AtualizaData;
begin
   If not(db_TabelaPreco.State in [dsedit, dsinsert]) then
      db_TabelaPreco.Edit;

   db_TabelaPreco.FieldByName('DATAREVISAO').AsDateTime := Date;

   If (db_TabelaPreco.State in [dsedit, dsinsert]) then
      db_TabelaPreco.Post;
end;

Procedure TFrmTabelaPreco.BotoesImportacao(bHabilitar: Boolean);
begin
   BtnImportar.Enabled := bHabilitar;
   BtnRecalcular.Enabled := bHabilitar;
   BtnExcluirTudo.Enabled := bHabilitar;
end;

Procedure TFrmTabelaPreco.BotoesRecalculo(bHabilitar: Boolean);
begin
   BtnImportar.Enabled := bHabilitar;
   BtnRecalcular.Enabled := bHabilitar;
   BtnExcluirTudo.Enabled := bHabilitar;
end;

end.
