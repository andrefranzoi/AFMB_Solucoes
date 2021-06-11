{
xx***********************************************************************************xx
xx                                                                                   xx
xx  AUTOR/DESENVOLVEDOR...: Adriano Zanini (2020)                                    xx
xx  DATA DO CODIGO-FONTE..: DESDE 01/02/2010                                         xx
xx  E-MAIL................: indpcp2018@gmail.com                                     xx
xx                                                                                   xx
xx  SISTEMA...............: DBVenda Retaguarda / Frente de Caixa                     xx
xx  LINGUAGEM/DB..........: Delphi 10.3 Rio (32 bits) | Firebird 2.5 (32 bits)       xx
xx                                                                                   xx
xx***********************************************************************************xx
xx                                                                                   xx
xx Eu Adriano Zanini, sou autor/desenvolvedor. Se alguem te vendeu esses fontes      xx
}

unit FGeraParcelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
    Shape2: TShape;
    lblTitulo: TLabel;
    pnTitulo: TPanel;
    BtnOK: TButton;
    BtnSair: TButton;
    BtnGerarParcelas: TButton;
    BtnExcluir: TButton;
    QryCtaReceber: TFDQuery;
    GroupBox1: TGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    EditNomeCliente: TEdit;
    EditCliente: TIDBEditDialog;
    EditPagamento: TIDBEditDialog;
    EditNomeFormaPagto: TEdit;
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
    mIDCliente,
    mIDFPagto,
    totparc, qt_parc: integer;
    TotReg: integer;
    xx_prazos,
    tt_nota,
    nTotalNFReal,
    vlr_cent,
    nvAcrescimo,
    nvDesconto,
    vlr_parc, parc_atu  : Currency;
    FGerouParcelas : Boolean;
    procedure GerarParcelas;
    procedure Sair;
    procedure Validar;
    procedure CalcularParcelas;
    procedure SetDadosClientePagamento;

   public
      { Public declarations }
      FIDVenda      : Integer;
      FValorReceber : Currency;
      FValorParcelas : Currency;
   end;

var
   FrmGeraParcelas: TFrmGeraParcelas;

implementation

uses FPrincipal, AppFuncoes, AppConstantes, AppSQL;

{$R *.DFM}

procedure TFrmGeraParcelas.FormCreate(Sender: TObject);
begin
  FValorReceber := 0;
  FValorParcelas := 0;
  mIDCliente  := 0;
  mIDFPagto   := 0;
  FGerouParcelas := False;
end;

procedure TFrmGeraParcelas.FormClose(Sender: TObject;
  var Action: TCloseAction);
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
   db_FormaPagto.ParamByName('FORMAPAGTO').AsInteger := FrmPrincipal.QryVenda.FieldByName('FORMAPAGTO').AsInteger;
   db_FormaPagto.open;
   { verificar saldo  }
   tt_nota := FValorReceber;
   if tt_nota<0 then
      tt_nota :=0;
   If tt_nota <= 0 then
   begin
      Informar('N�o h� saldo disponivel para gerar faturas.');
      exit;
   end;
   { verificar se a fatura j� foi gereda }
   if (QryCtaReceber.RecordCount > 0) then
   Begin
      Informar('Fatura j� existe');
      Exit; // sair
   End;
   If (FrmPrincipal.QryVenda.FieldByName('FORMAPAGTO').AsInteger < 1)  then
   Begin
      Informar('� necess�rio informar a forma de pagamento','Contas a Receber',True);
      Exit;
   End;

   If (FrmPrincipal.QryVenda.FieldByName('CLIENTE').AsInteger < 1) then
   Begin
      Informar('� necess�rio informar um cliente','Contas a Receber',True);
      Exit;
   End;

   try
     GerarParcelas();
     CalcularParcelas();
   finally
     QryCtaReceber.Close;
     QryCtaReceber.Open;
   end;
End;

procedure TFrmGeraParcelas.CalcularParcelas;
begin
  FValorParcelas := 0;
  QryCtaReceber.First;
  while not QryCtaReceber.eof do
  begin
   FValorParcelas := FValorParcelas + QryCtaReceber.FieldByName('VALOR').AsFloat;
   QryCtaReceber.Next;
  end;
  FGerouParcelas := FValorParcelas > 0;
end;

procedure TFrmGeraParcelas.GerarParcelas;
var
  dtVencimento : TDate;
  parc_atu, i, nContador, mDiaVenc  : Integer;

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
      Informar(' Quantidades de parcelas abaixo de 1. N�o � possivel prosseguir.'+
          sLineBreak+
          sLineBreak+
          'Verique o cadastro da forma de pagamento, no campo "PRAZOS" ','Contas a Receber',True);
      Abort;
   end;
   nvAcrescimo  := db_FormaPagto.FieldByName('ACRESCIMO').asFloat;
   nvDesconto   := db_FormaPagto.FieldByName('DESCONTO').asFloat;

   tt_nota     := tt_nota + (tt_nota * (nvAcrescimo / 100));
   tt_nota     := tt_nota - (tt_nota * (nvDesconto  / 100));

   vlr_parc    := tt_nota / qt_parc;

   vlr_parc    := vlr_parc + (vlr_parc * (nvAcrescimo / 100));
   vlr_parc    := vlr_parc - (vlr_parc * (nvDesconto  / 100));
   vlr_parc    := RoundABNT(vlr_parc,2);

   vlr_cent    := tt_nota - (vlr_parc*qt_parc);
   vlr_cent    := RoundABNT(vlr_cent,2);

   // -------------------------------------------------------------------------
   // --  Checar se parecela est� dentro do padr�o exigido                   --
   // --                                                                     --
   // -------------------------------------------------------------------------
   If db_FormaPagto.FieldByName('PARCELAMINIMA').asFloat > 0 then
   begin
      If vlr_parc < db_FormaPagto.FieldByName('PARCELAMINIMA')
        .asFloat then
      begin
         Informar('N�o atingiu parcela minima exigida pelo sistema. ' +
                   sLineBreak+
                   sLineBreak+
                   'Parcela minima exigida...: R$ ' + Formatfloat('###,###,##0.00',db_FormaPagto.FieldByName('PARCELAMINIMA').asFloat)+
                   sLineBreak+
                   'Parcela do cliente.......: R$ ' + Formatfloat('###,###,##0.00', vlr_parc),'Contas a Receber',True);
         Abort;
      end;
   end;
   db_FormaPagto.First;
   parc_atu := 0;

   //for nContador := 1 to qt_parc do
   while not db_FormaPagto.Eof do
   begin

      INC(nContador); // contrala ultimo centavo
      INC(parc_atu);
      dtVencimento := FrmPrincipal.QryVenda.FieldByName('EMISSAO').asDateTime + db_FormaPagto.FieldByName('DIAS').asInteger;
      if db_FormaPagto.FieldByName('DIAS').asInteger = 0 then
         dtVencimento := FrmPrincipal.QryVenda.FieldByName('EMISSAO').asDateTime;

      // --------------------------------------------------------
      // checar se h� dia de vencimento padr�o
      // --------------------------------------------------------
      If db_FormaPagto.FieldByName('VENCIMENTO_DIA').asInteger > 0 then
      begin
         mDiaVenc := db_FormaPagto.FieldByName('VENCIMENTO_DIA').asInteger;
         // dia + mes + ano = data
         dtVencimento := StrToDate(IntToStr(mDiaVenc) + '/' + IntToStr(mes(dtVencimento)) + '/' + IntToStr(ano(dtVencimento)));
      end;
      QryCtaReceber.Append;
      QryCtaReceber.FieldByName('EMPRESA').AsInteger    := FConfiguracao.Loja;
      QryCtaReceber.FieldByName('IDVENDA').AsInteger    := FIDVenda;
      QryCtaReceber.FieldByName('IDOPERADOR').AsInteger := FConfiguracao.Operador;
      QryCtaReceber.FieldByName('IDTERMINAL').AsInteger := FConfiguracao.TerminalPDV;
      QryCtaReceber.FieldByName('CLIENTE').AsInteger    := FrmPrincipal.QryVenda.FieldByName('CLIENTE').AsInteger;
      QryCtaReceber.FieldByName('NOTAFISCAL').AsInteger := FIDVenda;
      QryCtaReceber.FieldByName('DATA').asDateTime      := FrmPrincipal.QryVenda.FieldByName('EMISSAO').asDateTime;
      if nContador<qt_parc Then
         QryCtaReceber.FieldByName('VALOR').asFloat   := vlr_parc
      else
         QryCtaReceber.FieldByName('VALOR').asFloat   := vlr_parc + vlr_cent;
      QryCtaReceber.FieldByName('FORMA_PAGTO').AsInteger := FrmPrincipal.QryVenda.FieldByName('FORMAPAGTO').AsInteger;
      QryCtaReceber.FieldByName('VENDEDOR').AsInteger := FrmPrincipal.QryVenda.FieldByName('VENDEDOR').AsInteger;
      QryCtaReceber.FieldByName('PARCELA').AsInteger := parc_atu;
      QryCtaReceber.FieldByName('DOCUMENTO').AsString := FrmPrincipal.QryVenda.FieldByName('CODIGO').AsString + '/' + ZeroEsquerda(IntToStr(parc_atu),3);
      QryCtaReceber.FieldByName('VENCIMENTO').asDateTime := dtVencimento;
      QryCtaReceber.FieldByName('QUITADO').AsString := 'N'; // N=N�O QUITADO
      if (QryCtaReceber.FieldByName('VENCIMENTO').asDateTime = QryCtaReceber.FieldByName('DATA').asDateTime) then
        QryCtaReceber.FieldByName('QUITADO').AsString := 'S'; // S=QUITADO
      QryCtaReceber.post;

     db_FormaPagto.Next;
   end;
   vlr_parc := 0;
end;

procedure TFrmGeraParcelas.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmGeraParcelas.BtnExcluirClick(Sender: TObject);
begin
   If QryCtaReceber.IsEmpty then
   Begin
      Informar('n�o h� dados para excluir');
      Exit;
   end;
   If Pergunta('Excluir faturas?') = false then
      Exit;
   QryCtaReceber.close;
   try
     SQLExcluirCtaReceber(FIDVenda);
     FGerouParcelas := False;
   finally
     QryCtaReceber.open;
   end;
   Sair(); // Fecha tela, para quando abrir novamente recarregar com valor (a receber) correto.
end;

procedure TFrmGeraParcelas.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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
  vnCreditoSaldo : Real;
begin
  mIDCliente := FrmPrincipal.QryVenda.FieldByName('CLIENTE').AsInteger;
  mIDFPagto := FrmPrincipal.QryVenda.FieldByName('FORMAPAGTO').AsInteger;
  vnCreditoSaldo := ChecarCreditoSaldo(FrmPrincipal.QryVenda.FieldByName('CLIENTE').AsInteger);
  QryCtaReceber.close;
  db_FormaPagto.close;
  QryCtaReceber.ParamByName('EMPRESA').AsInteger := FConfiguracao.Loja;
  QryCtaReceber.ParamByName('IDVENDA').AsInteger := FIDVenda;
  db_FormaPagto.ParamByName('FORMAPAGTO').AsInteger := FrmPrincipal.QryVenda.FieldByName('FORMAPAGTO').AsInteger;
  QryCtaReceber.open;
  db_FormaPagto.open;
  lblTitulo.Caption := 'Gerar Parcelas (R$ '+FormatFloat('###,##0.00',FValorReceber)+')';
  SetDadosClientePagamento();
end;

procedure TFrmGeraParcelas.pnDadosExit(Sender: TObject);
begin
  If (FrmPrincipal.QryVenda.state in [dsEdit, dsInsert]) then
    FrmPrincipal.QryVenda.Post;
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
   QryCtaReceber.Fieldbyname('TIPO').AsString := 'RECEBER'; // N=N�O QUITADO
end;

procedure TFrmGeraParcelas.BtnOKClick(Sender: TObject);
begin
  Validar();
end;

procedure TFrmGeraParcelas.BtnSairClick(Sender: TObject);
begin
   if FGerouParcelas then
   begin
     Informar('Clique em Gravar e Sair (F5).','Contas a Receber',True);
     Exit;
   end;

   Sair();
end;

procedure TFrmGeraParcelas.Sair();
begin
  ModalResult := mrCancel;
  Close;
end;

procedure TFrmGeraParcelas.Validar();
begin
   if (QryCtaReceber.state in [dsEdit, dsInsert]) then
     QryCtaReceber.Post;
   if (QryCtaReceber.RecordCount < 1) then
   Begin
      Informar('N�o h� parcelas geradas.','Contas a Receber',True);
      Exit; // sair
   End;
  ModalResult := mrOk;
end;

procedure TFrmGeraParcelas.SetDadosClientePagamento;
begin
  If not (FrmPrincipal.QryVenda.state in [dsEdit, dsInsert]) then
    FrmPrincipal.QryVenda.Edit;
  FrmPrincipal.QryVenda.FieldByName('CLIENTE').Clear;
  FrmPrincipal.QryVenda.FieldByName('FORMAPAGTO').Clear;
  If (FrmPrincipal.QryVenda.state in [dsEdit, dsInsert]) then
    FrmPrincipal.QryVenda.Post;

  if (mIDCliente > 0) or (mIDFPagto> 0)  then
  begin
    If not (FrmPrincipal.QryVenda.state in [dsEdit, dsInsert]) then
      FrmPrincipal.QryVenda.Edit;
    if mIDCliente > 0 then
      FrmPrincipal.QryVenda.FieldByName('CLIENTE').AsInteger := mIDCliente;
    if mIDFPagto > 0 then
      FrmPrincipal.QryVenda.FieldByName('FORMAPAGTO').AsInteger := mIDFPagto;
    If (FrmPrincipal.QryVenda.state in [dsEdit, dsInsert]) then
      FrmPrincipal.QryVenda.Post;
  end;
end;

end.

