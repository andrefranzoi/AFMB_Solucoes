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

unit FGeraParcelas;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
   FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
   FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
   FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons,
   Vcl.Grids, Vcl.DBGrids, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   uEstSearchDialogZeos, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, ACBrUtil,
   System.ImageList, Vcl.ImgList, cxImageList, cxGraphics, cxControls,
   cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
   cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
   cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
   cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
   cxGridTableView, cxGridDBTableView, cxGrid, cxCalendar, cxCurrencyEdit,
   cxTextEdit;

type
   TFrmGeraParcelas = class(TForm)
      dsCtaReceber: TDataSource;
      pnDados: TPanel;
      db_FormaPagto: TFDQuery;
      Panel1: TPanel;
      pnTitulo: TPanel;
      BtnOK: TButton;
      BtnSair: TButton;
      BtnGerarParcelas: TButton;
      BtnExcluir: TButton;
      QryCtaReceber: TFDQuery;
      cxImageList1: TcxImageList;
      GroupBox1: TGroupBox;
      cxGrid1DBTableView1: TcxGridDBTableView;
      cxGrid1Level1: TcxGridLevel;
      cxGrid1: TcxGrid;
      cxGrid1DBTableView1Column1: TcxGridDBColumn;
      cxGrid1DBTableView1Column2: TcxGridDBColumn;
      cxGrid1DBTableView1Column3: TcxGridDBColumn;
      cxGrid1DBTableView1Column4: TcxGridDBColumn;
      cxGrid1DBTableView1Column5: TcxGridDBColumn;
      cxGrid1DBTableView1Column6: TcxGridDBColumn;
      cxGrid1DBTableView1Column7: TcxGridDBColumn;
      cxGrid1DBTableView1Column8: TcxGridDBColumn;
      EditNomeCliente: TEdit;
      EditCliente: TIDBEditDialog;
      EditPagamento: TIDBEditDialog;
      EditNomeFormaPagto: TEdit;
      lblTitulo: TLabel;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure bbtn_excluiClick(Sender: TObject);
      procedure BtnGerarParcelasClick(Sender: TObject);
      procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
      procedure BtnExcluirClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCreate(Sender: TObject);
      procedure BtnOKClick(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure BtnSairClick(Sender: TObject);
      procedure pnDadosExit(Sender: TObject);
      procedure QryCtaReceberAfterOpen(DataSet: TDataSet);
      procedure QryCtaReceberAfterPost(DataSet: TDataSet);
      procedure QryCtaReceberNewRecord(DataSet: TDataSet);
   private
      { Private declarations }
      mIDCliente, mIDFPagto, totparc, qt_parc: integer;
      TotReg: integer;
      xx_prazos, tt_nota, nTotalNFReal, vlr_cent, nvAcrescimo, nvDesconto,
        vlr_parc, parc_atu: Currency;
      FGerouParcelas: Boolean;
      procedure GerarParcelas;
      procedure Sair;
      procedure Validar;
      procedure CalcularParcelas;
      procedure SetDadosClientePagamento;

   public
      { Public declarations }
      FIDVenda: integer;
      FValorReceber: Currency;
      FValorParcelas: Currency;
   end;

var
   FrmGeraParcelas: TFrmGeraParcelas;

implementation

uses FPrincipal, App.Funcoes, App.Constantes, App.SQL, FVendaExpressa,
   Biblioteca, Classe.Global;

{$R *.DFM}

procedure TFrmGeraParcelas.FormCreate(Sender: TObject);
begin
   FValorReceber := 0;
   FValorParcelas := 0;
   mIDCliente := 0;
   mIDFPagto := 0;
   FGerouParcelas := False;
end;

procedure TFrmGeraParcelas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   CalcularParcelas();
   QryCtaReceber.close;
   Action := caFree;
end;

procedure TFrmGeraParcelas.bbtn_excluiClick(Sender: TObject);
begin
   QryCtaReceber.delete;
end;

procedure TFrmGeraParcelas.BtnGerarParcelasClick(Sender: TObject);
begin
   db_FormaPagto.close;
   db_FormaPagto.ParamByName('FORMAPAGTO').AsInteger :=
     FrmVendaExpressa.qryVenda.FieldByName('FORMAPAGTO').AsInteger;
   db_FormaPagto.open;
   { verificar saldo }
   tt_nota := FValorReceber;
   if tt_nota < 0 then
      tt_nota := 0;
   If tt_nota <= 0 then
   begin
      Informar('Não há saldo disponivel para gerar faturas.');
      exit;
   end;
   { verificar se a fatura já foi gereda }
   if (QryCtaReceber.RecordCount > 0) then
   Begin
      Informar('Fatura já existe');
      exit; // sair
   End;
   If (FrmVendaExpressa.qryVenda.FieldByName('FORMAPAGTO').AsInteger < 1) then
   Begin
      Informar('É necessário informar a forma de pagamento');
      exit;
   End;

   If (FrmVendaExpressa.qryVenda.FieldByName('CLIENTE').AsInteger < 1) then
   Begin
      Informar('É necessário informar um cliente');
      exit;
   End;

   try
      GerarParcelas();
      CalcularParcelas();
   finally
      QryCtaReceber.close;
      QryCtaReceber.open;
   end;
End;

procedure TFrmGeraParcelas.CalcularParcelas;
begin
   FValorParcelas := 0;
   QryCtaReceber.First;
   while not QryCtaReceber.eof do
   begin
      FValorParcelas := FValorParcelas + QryCtaReceber.FieldByName
        ('VALOR').AsFloat;
      QryCtaReceber.Next;
   end;
   FGerouParcelas := FValorParcelas > 0;
end;

procedure TFrmGeraParcelas.GerarParcelas;
var
   dtVencimento: TDate;
   parc_atu, i, nContador, mDiaVenc: integer;

begin
   nContador := 0;
   xx_prazos := 0;
   vlr_parc := 0;
   vlr_parc := 0;
   mDiaVenc := 0;

   If (QryCtaReceber.state in [dsedit, dsinsert]) then
      QryCtaReceber.post;

   qt_parc := db_FormaPagto.RecordCount;
   db_FormaPagto.First;

   If qt_parc <= 0 then
   begin
      Informar(' Quantidades de parcelas abaixo de 1. Não é possivel prosseguir.'
        + sLineBreak + sLineBreak +
        'Verique o cadastro da forma de pagamento, no campo "PRAZOS" ');
      Abort;
   end;
   nvAcrescimo := db_FormaPagto.FieldByName('ACRESCIMO').AsFloat;
   nvDesconto := db_FormaPagto.FieldByName('DESCONTO').AsFloat;

   tt_nota := tt_nota + (tt_nota * (nvAcrescimo / 100));
   tt_nota := tt_nota - (tt_nota * (nvDesconto / 100));

   vlr_parc := tt_nota / qt_parc;

   vlr_parc := vlr_parc + (vlr_parc * (nvAcrescimo / 100));
   vlr_parc := vlr_parc - (vlr_parc * (nvDesconto / 100));
   vlr_parc := RoundABNT(vlr_parc, 2);

   vlr_cent := tt_nota - (vlr_parc * qt_parc);
   vlr_cent := RoundABNT(vlr_cent, 2);

   // -------------------------------------------------------------------------
   // --  Checar se parecela está dentro do padrão exigido                   --
   // --                                                                     --
   // -------------------------------------------------------------------------
   If db_FormaPagto.FieldByName('PARCELAMINIMA').AsFloat > 0 then
   begin
      If vlr_parc < db_FormaPagto.FieldByName('PARCELAMINIMA').AsFloat then
      begin
         Informar('Não atingiu parcela minima exigida pelo sistema. ' +
           sLineBreak + sLineBreak + 'Parcela minima exigida...: R$ ' +
           Formatfloat('###,###,##0.00',
           db_FormaPagto.FieldByName('PARCELAMINIMA').AsFloat) + sLineBreak +
           'Parcela do cliente.......: R$ ' + Formatfloat('###,###,##0.00',
           vlr_parc));
         Abort;
      end;
   end;
   db_FormaPagto.First;
   parc_atu := 0;

   // for nContador := 1 to qt_parc do
   while not db_FormaPagto.eof do
   begin

      INC(nContador); // contrala ultimo centavo
      INC(parc_atu);
      dtVencimento := FrmVendaExpressa.qryVenda.FieldByName('EMISSAO')
        .asDateTime + db_FormaPagto.FieldByName('DIAS').AsInteger;
      if db_FormaPagto.FieldByName('DIAS').AsInteger = 0 then
         dtVencimento := FrmVendaExpressa.qryVenda.FieldByName('EMISSAO')
           .asDateTime;

      // --------------------------------------------------------
      // checar se há dia de vencimento padrão
      // --------------------------------------------------------
      If db_FormaPagto.FieldByName('VENCIMENTO_DIA').AsInteger > 0 then
      begin
         mDiaVenc := db_FormaPagto.FieldByName('VENCIMENTO_DIA').AsInteger;
         // dia + mes + ano = data
         dtVencimento := StrToDate(IntToStr(mDiaVenc) + '/' +
           IntToStr(mes(dtVencimento)) + '/' + IntToStr(ano(dtVencimento)));
      end;
      QryCtaReceber.Append;
      QryCtaReceber.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;
      QryCtaReceber.FieldByName('IDVENDA').AsInteger :=
        FrmVendaExpressa.qryVenda.FieldByName('CODIGO').AsInteger;
      QryCtaReceber.FieldByName('CLIENTE').AsInteger :=
        FrmVendaExpressa.qryVenda.FieldByName('CLIENTE').AsInteger;
      QryCtaReceber.FieldByName('DATA').asDateTime :=
        FrmVendaExpressa.qryVenda.FieldByName('EMISSAO').asDateTime;
      if nContador < qt_parc Then
         QryCtaReceber.FieldByName('VALOR').AsFloat := vlr_parc
      else
         QryCtaReceber.FieldByName('VALOR').AsFloat := vlr_parc + vlr_cent;
      QryCtaReceber.FieldByName('FORMA_PAGTO').AsInteger :=
        FrmVendaExpressa.qryVenda.FieldByName('FORMAPAGTO').AsInteger;
      QryCtaReceber.FieldByName('VENDEDOR').AsInteger :=
        FrmVendaExpressa.qryVenda.FieldByName('VENDEDOR').AsInteger;
      QryCtaReceber.FieldByName('PARCELA').AsInteger := parc_atu;
      QryCtaReceber.FieldByName('DOCUMENTO').AsString :=
        FrmVendaExpressa.qryVenda.FieldByName('CODIGO').AsString + '/' +
        ZeroEsquerda(IntToStr(parc_atu), 3);
      QryCtaReceber.FieldByName('NOSSONUMERO').AsString := '';
      QryCtaReceber.FieldByName('VENCIMENTO').asDateTime := dtVencimento;
      QryCtaReceber.FieldByName('QUITADO').AsString := 'N'; // N=NÃO QUITADO
      if (QryCtaReceber.FieldByName('VENCIMENTO')
        .asDateTime = QryCtaReceber.FieldByName('DATA').asDateTime) then
         QryCtaReceber.FieldByName('QUITADO').AsString := 'S'; // S=QUITADO
      QryCtaReceber.FieldByName('GERARCOMPLEMENTO').AsString := 'N';
      QryCtaReceber.post;

      db_FormaPagto.Next;
   end;
   vlr_parc := 0;
end;

procedure TFrmGeraParcelas.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmGeraParcelas.BtnExcluirClick(Sender: TObject);
begin
   If QryCtaReceber.IsEmpty then
   Begin
      Informar('não há dados para excluir');
      exit;
   end;
   If Pergunta('Excluir faturas?') = False then
      exit;
   try
      SQLExcluirCtaReceber(FIDVenda);
      FGerouParcelas := False;
   finally
      QryCtaReceber.close;
      QryCtaReceber.open;
   end;
   // Sair(); // Fecha tela, para quando abrir novamente recarregar com valor (a receber) correto.
end;

procedure TFrmGeraParcelas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_F3 then
      BtnGerarParcelas.Click;

   If Key = VK_F5 then
      Validar();

   If Key = VK_F6 then
      BtnExcluir.Click;

   If Key = VK_Escape then
      Sair();

end;

procedure TFrmGeraParcelas.FormShow(Sender: TObject);
var
   vnCreditoSaldo: Real;
begin
   mIDCliente := FrmVendaExpressa.qryVenda.FieldByName('CLIENTE').AsInteger;
   mIDFPagto := FrmVendaExpressa.qryVenda.FieldByName('FORMAPAGTO').AsInteger;
   vnCreditoSaldo := ChecarCreditoSaldo
     (FrmVendaExpressa.qryVenda.FieldByName('CLIENTE').AsInteger);

   QryCtaReceber.close;
   QryCtaReceber.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   QryCtaReceber.ParamByName('IDVENDA').AsInteger := FIDVenda;
   QryCtaReceber.open;

   db_FormaPagto.close;
   db_FormaPagto.ParamByName('FORMAPAGTO').AsInteger :=
     FrmVendaExpressa.qryVenda.FieldByName('FORMAPAGTO').AsInteger;
   db_FormaPagto.open;

   lblTitulo.Caption := 'Gerar Parcelas (R$ ' + Formatfloat('###,##0.00',
     FValorReceber) + ')';
   SetDadosClientePagamento();
end;

procedure TFrmGeraParcelas.pnDadosExit(Sender: TObject);
begin
   If (FrmVendaExpressa.qryVenda.state in [dsedit, dsinsert]) then
      FrmVendaExpressa.qryVenda.post;
end;

procedure TFrmGeraParcelas.QryCtaReceberAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(QryCtaReceber);
end;

procedure TFrmGeraParcelas.QryCtaReceberAfterPost(DataSet: TDataSet);
begin
   QryCtaReceber.Refresh;
end;

procedure TFrmGeraParcelas.QryCtaReceberNewRecord(DataSet: TDataSet);
begin
   QryCtaReceber.FieldByName('TIPO').AsString := 'RECEBER'; // N=NÃO QUITADO
end;

procedure TFrmGeraParcelas.BtnOKClick(Sender: TObject);
begin
   Validar();
end;

procedure TFrmGeraParcelas.BtnSairClick(Sender: TObject);
begin
   if FGerouParcelas then
   begin
      Informar('Clique em Gravar e Sair (F5).');
      exit;
   end;

   Sair();
end;

procedure TFrmGeraParcelas.Sair();
begin
   ModalResult := mrCancel;
   close;
end;

procedure TFrmGeraParcelas.Validar();
begin
   if (QryCtaReceber.state in [dsedit, dsinsert]) then
      QryCtaReceber.post;
   if (QryCtaReceber.RecordCount < 1) then
   Begin
      Informar('Não há parcelas geradas.');
      exit; // sair
   End;
   ModalResult := mrOk;
end;

procedure TFrmGeraParcelas.SetDadosClientePagamento;
begin
   If not(FrmVendaExpressa.qryVenda.state in [dsedit, dsinsert]) then
      FrmVendaExpressa.qryVenda.Edit;
   FrmVendaExpressa.qryVenda.FieldByName('CLIENTE').Clear;
   FrmVendaExpressa.qryVenda.FieldByName('FORMAPAGTO').Clear;
   If (FrmVendaExpressa.qryVenda.state in [dsedit, dsinsert]) then
      FrmVendaExpressa.qryVenda.post;

   if (mIDCliente > 0) or (mIDFPagto > 0) then
   begin
      If not(FrmVendaExpressa.qryVenda.state in [dsedit, dsinsert]) then
         FrmVendaExpressa.qryVenda.Edit;
      if mIDCliente > 0 then
         FrmVendaExpressa.qryVenda.FieldByName('CLIENTE').AsInteger :=
           mIDCliente;
      if mIDFPagto > 0 then
         FrmVendaExpressa.qryVenda.FieldByName('FORMAPAGTO').AsInteger :=
           mIDFPagto;
      If (FrmVendaExpressa.qryVenda.state in [dsedit, dsinsert]) then
         FrmVendaExpressa.qryVenda.post;
   end;
end;

end.
