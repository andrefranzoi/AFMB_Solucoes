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

unit FTransferenciaContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FFrameBarra, DB,  FireDAC.Comp.Client, FFrameBotoes, ExtCtrls,
  ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, StdCtrls,
  Mask, DBCtrls, Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  Classe.Global;

type
  TFrmTransferenciaContas = class(TForm)
    FrmFrameBarra1: TFrmFrameBarra;
    db_Transferencias: TFDQuery;
    ds_Transferencias: TDataSource;
    FrmFrameBotoes1: TFrmFrameBotoes;
    GroupBox1: TGroupBox;
    EditNomeContaCaixaDestino: TEdit;
    ContaProcurar: TIDBEditDialog;
    EditContaCorrenteDestino: TEdit;
    EditConta_Credito: TIDBEditDialog;
    GroupBox2: TGroupBox;
    EditNomeContaCaixaOrigem: TEdit;
    IDBEditDialog1: TIDBEditDialog;
    EditContaCorrenteOrigem: TEdit;
    IDBEditDialog2: TIDBEditDialog;
    DBRadioGroup1: TDBRadioGroup;
    GrupoEfetivar: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    db_CtrlBancario: TFDQuery;
    db_CAIXA: TFDQuery;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    pnPrincipal: TPanel;
    Navegador: TDBNavigator;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure db_TransferenciasNewRecord(DataSet: TDataSet);
    procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure db_TransferenciasAfterScroll(DataSet: TDataSet);
    procedure db_TransferenciasBeforeInsert(DataSet: TDataSet);
    procedure db_TransferenciasAfterPost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure db_TransferenciasAfterOpen(DataSet: TDataSet);
  private
    procedure ProtegerCampos;
    procedure AtualizaRecords;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTransferenciaContas: TFrmTransferenciaContas;

implementation

uses FPrincipal, Biblioteca, App.SQL, Global, App.Funcoes;

{$R *.dfm}

procedure TFrmTransferenciaContas.BitBtn1Click(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
   AtualizaRecords;
   if pergunta('Confirma a tranferência de valores')=false then
      exit;
   if db_Transferencias.FieldByName('TIPO').AsString='BANCO->BANCO' Then
   begin
      db_CtrlBancario.Close;
      db_CtrlBancario.Open;

      // primeiro, lançar debito
      db_CtrlBancario.Append;
      db_CtrlBancario.FieldByName('DATA').AsDateTime         := db_Transferencias.FieldByName('DATA').AsDateTime;
      db_CtrlBancario.FieldByName('DOCUMENTO').AsString      := db_Transferencias.FieldByName('DOCUMENTO').AsString;
      db_CtrlBancario.FieldByName('CTA_CORRENTE').AsInteger  := db_Transferencias.FieldByName('CONTABANCOORIGEM').AsInteger;
      db_CtrlBancario.FieldByName('DC').AsString             :='DEBITO';
      db_CtrlBancario.FieldByName('HISTORICO').AsString      :='PROVENIENTE DE TRANSFERENCIA - CONTA DESTINO: '+(EditContaCorrenteDestino.Text);
      db_CtrlBancario.FieldByName('VLR_DEBITO').AsFloat      := db_Transferencias.FieldByName('VALOR').AsFloat;
      db_CtrlBancario.Post;
      db_CtrlBancario.Close;

      // depois, lançar credito
      db_CtrlBancario.Open;
      db_CtrlBancario.Append;
      db_CtrlBancario.FieldByName('DATA').AsDateTime         := db_Transferencias.FieldByName('DATA').AsDateTime;
      db_CtrlBancario.FieldByName('DOCUMENTO').AsString      := db_Transferencias.FieldByName('DOCUMENTO').AsString;
      db_CtrlBancario.FieldByName('CTA_CORRENTE').AsInteger  := db_Transferencias.FieldByName('CONTABANCODESTINO').AsInteger;
      db_CtrlBancario.FieldByName('DC').AsString             :='CREDITO';
      db_CtrlBancario.FieldByName('HISTORICO').AsString      :='PROVENIENTE DE TRANSFERENCIA - CONTA ORIGEM: '+(EditContaCorrenteOrigem.Text);
      db_CtrlBancario.FieldByName('VLR_CREDITO').AsFloat     := db_Transferencias.FieldByName('VALOR').AsFloat;
      db_CtrlBancario.Post;
      db_CtrlBancario.Close;
   end;

   if db_Transferencias.FieldByName('TIPO').AsString='CAIXA->CAIXA' Then
   begin
      db_CAIXA.Close;
      db_CAIXA.Open;

      // primeiro, lançar debito
      db_CAIXA.Append;
      db_CAIXA.FieldByName('DATA').AsDateTime         := db_Transferencias.FieldByName('DATA').AsDateTime;
      db_CAIXA.FieldByName('DOCUMENTO').AsString      := db_Transferencias.FieldByName('DOCUMENTO').AsString;
      db_CAIXA.FieldByName('CONTACAIXA').AsInteger    := db_Transferencias.FieldByName('CONTACAIXAORIGEM').AsInteger;
      db_CAIXA.FieldByName('DC').AsString             :='DEBITO';
      db_CAIXA.FieldByName('HISTORICO').AsString      :='PROVENIENTE DE TRANSFERENCIA - CONTA CAIXA DESTINO: '+(EditNomeContaCaixaDestino.Text);
      db_CAIXA.FieldByName('VLR_DEBITO').AsFloat      := db_Transferencias.FieldByName('VALOR').AsFloat;
      db_CAIXA.Post;
      db_CAIXA.Close;

      // depois, lançar credito
      db_CAIXA.Open;
      db_CAIXA.Append;
      db_CAIXA.FieldByName('DATA').AsDateTime         := db_Transferencias.FieldByName('DATA').AsDateTime;
      db_CAIXA.FieldByName('DOCUMENTO').AsString      := db_Transferencias.FieldByName('DOCUMENTO').AsString;
      db_CAIXA.FieldByName('CONTACAIXA').AsInteger    := db_Transferencias.FieldByName('CONTACAIXADESTINO').AsInteger;
      db_CAIXA.FieldByName('DC').AsString             :='CREDITO';
      db_CAIXA.FieldByName('HISTORICO').AsString      :='PROVENIENTE DE TRANSFERENCIA - CONTA CAIXA ORIGEM: '+(EditNomeContaCaixaOrigem.Text);
      db_CAIXA.FieldByName('VLR_CREDITO').AsFloat     := db_Transferencias.FieldByName('VALOR').AsFloat;
      db_CAIXA.Post;
      db_CAIXA.Close;
   end;
   //db_Transferencias.Refresh;
   AtualizaRecords;
   db_Transferencias.edit;
   db_Transferencias.FieldByName('EFETIVADO').AsString :='S';
   db_Transferencias.post;
   Aviso('Transferência realizada com sucesso.');
end;

procedure TFrmTransferenciaContas.db_TransferenciasAfterOpen(DataSet: TDataSet);
begin
  FormataCampo(db_Transferencias);
end;

procedure TFrmTransferenciaContas.db_TransferenciasAfterPost(DataSet: TDataSet);
begin
  AtualizaRecords;
end;

procedure TFrmTransferenciaContas.AtualizaRecords;
var
  mID : Integer;
begin
  mID := db_Transferencias.FieldByName('CODIGO').AsInteger;
  db_CtrlBancario.Close;
  db_CtrlBancario.Open;

  db_CAIXA.Close;
  db_CAIXA.Open;

  db_Transferencias.Close;
  db_Transferencias.Open;
  db_Transferencias.Locate('CODIGO',mID,[]);
end;

procedure TFrmTransferenciaContas.db_TransferenciasAfterScroll(
  DataSet: TDataSet);
begin
   ProtegerCampos;
end;

procedure TFrmTransferenciaContas.db_TransferenciasBeforeInsert(
  DataSet: TDataSet);
begin
   ProtegerCampos;

end;

procedure TFrmTransferenciaContas.db_TransferenciasNewRecord(DataSet: TDataSet);
begin
   db_Transferencias.FieldByName('DATA').AsDateTime   := Date;
   db_Transferencias.FieldByName('TIPO').AsString     :='BANCO->BANCO';
   db_Transferencias.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TFrmTransferenciaContas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  db_Transferencias.Close;
  action := Cafree;
end;

procedure TFrmTransferenciaContas.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := ds_Transferencias;
   db_Transferencias.Open;
end;

procedure TFrmTransferenciaContas.FormDestroy(Sender: TObject);
begin
  FrmTransferenciaContas := Nil;
end;

procedure TFrmTransferenciaContas.FrmFrameBotoes1SpbAdicionarClick(
  Sender: TObject);
begin
  GrupoEfetivar.Enabled      := True;
  db_Transferencias.UpdateOptions.ReadOnly := False;
  AtualizaRecords;
  FrmFrameBotoes1.SpbAdicionarClick(Sender);
end;

procedure TFrmTransferenciaContas.FrmFrameBotoes1SpbCancelarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmTransferenciaContas.FrmFrameBotoes1SpbEditarClick(
  Sender: TObject);
begin
  if db_Transferencias.FieldByName('EFETIVADO').AsString ='S' then
  begin
    aviso('Operação já concluida. Não pode ser alterado.');
    exit;
  end;

  FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmTransferenciaContas.FrmFrameBotoes1SpbExcluirClick(
  Sender: TObject);
begin
  if db_Transferencias.FieldByName('EFETIVADO').AsString ='S' then
  begin
    aviso('Operação já concluida. Não pode ser excluído.');
    exit;
  end;
  FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmTransferenciaContas.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmTransferenciaContas.FrmFrameBotoes1SpbSalvarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbSalvarClick(Sender);
  AtualizaRecords;

end;

procedure TFrmTransferenciaContas.ProtegerCampos;
begin
   exit;
   if db_Transferencias.FieldByName('EFETIVADO').AsString ='S' then
   begin
      GrupoEfetivar.Enabled      := False;
      db_Transferencias.UpdateOptions.ReadOnly := True;
   end
   else
   begin
      GrupoEfetivar.Enabled      := True;
      db_Transferencias.UpdateOptions.ReadOnly := False;
   end;
end;

end.
