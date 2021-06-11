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

unit FContaCorrente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FCrudSimples, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCheckBox, cxCurrencyEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls,
  Vcl.DBCtrls, cxClasses, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls, Vcl.Mask, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.ComCtrls, ISFEdit,
  ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FFrameBotoes,
  FFrameBarra, dxDateRanges, dxSkinsCore, dxSkinsDefaultPainters;

type
  TFrmContaCorrente = class(TFrmCrudSimples)
    cxGridDadosContaCorrente: TcxGridDBColumn;
    cxGridDadosCodBanco: TcxGridDBColumn;
    cxGridDadosNomeAgencia: TcxGridDBColumn;
    cxGridDadosAgencia: TcxGridDBColumn;
    db_BoletoConfigurar: TFDQuery;
    db_BoletoConfigurarCODIGO: TIntegerField;
    db_BoletoConfigurarBANCO: TIntegerField;
    db_BoletoConfigurarBANCONOME: TStringField;
    db_BoletoConfigurarAGENCIA: TStringField;
    db_BoletoConfigurarAGENCIADIGITO: TStringField;
    db_BoletoConfigurarAGENCIANOME: TStringField;
    db_BoletoConfigurarCEDENTECODIGO: TStringField;
    db_BoletoConfigurarDIGITO: TStringField;
    db_BoletoConfigurarCARTEIRA: TStringField;
    db_BoletoConfigurarPROXIMONOSSONUMERO: TStringField;
    db_BoletoConfigurarINSTRUCOES: TStringField;
    db_BoletoConfigurarTIPOINSCRICAO: TStringField;
    db_BoletoConfigurarNOME_CEDENTE: TStringField;
    db_BoletoConfigurarCNPJ_CEDENTE: TStringField;
    db_BoletoConfigurarCONVENIO: TStringField;
    db_BoletoConfigurarEXPORTAR: TStringField;
    ds_BoletoConfigurar: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit_nomeag: TDBEdit;
    DBEdit_contato: TDBEdit;
    DBEdit_fone: TDBEdit;
    DBEdit_agencia: TDBEdit;
    DBEdit_conta: TDBEdit;
    DBEdit2: TDBEdit;
    EditBancoNome: TEdit;
    EditBanco: TIDBEditDialog;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    GroupBox3: TGroupBox;
    DBMemo1: TDBMemo;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit13: TDBEdit;
    DBRadioGroup3: TDBRadioGroup;
    cxGridDadosSaldoInicial: TcxGridDBColumn;
    procedure db_BoletoConfigurarBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
    procedure GroupBox2Enter(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
    procedure db_BoletoConfigurarAfterOpen(DataSet: TDataSet);
    procedure dbTabelaAfterOpen(DataSet: TDataSet);
    procedure tabPrincipalEnter(Sender: TObject);
    procedure dbTabelaAfterScroll(DataSet: TDataSet);
    procedure tabDetalheEnter(Sender: TObject);
    procedure GroupBox2Exit(Sender: TObject);
    procedure ds_BoletoConfigurarStateChange(Sender: TObject);
  private
    FID : Integer;
    procedure ConfiguraBoleto;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmContaCorrente: TFrmContaCorrente;

implementation

{$R *.dfm}

uses App.Funcoes;


procedure TFrmContaCorrente.dbTabelaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  FormataCampo(dbTabela);
end;

procedure TFrmContaCorrente.dbTabelaAfterScroll(DataSet: TDataSet);
begin
  FID := dbTabela.FieldByName('CODIGO').AsInteger;
end;

procedure TFrmContaCorrente.db_BoletoConfigurarAfterOpen(DataSet: TDataSet);
begin
  FormataCampo(db_BoletoConfigurar);
end;

procedure TFrmContaCorrente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  db_BoletoConfigurar.close;
end;

procedure TFrmContaCorrente.FormCreate(Sender: TObject);
begin
  inherited;
  db_BoletoConfigurar.open;
end;

procedure TFrmContaCorrente.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmContaCorrente := Nil;
end;

procedure TFrmContaCorrente.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
  inherited;
  EditBanco.SetFocus;
end;

procedure TFrmContaCorrente.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
var
 mIDSalvar : Integer;
begin
  mIDSalvar := 0;
  try
    inherited;
    mIDSalvar := dbTabela.FieldByName('CODIGO').AsInteger;
  finally
    dbTabela.Close;
    FID := mIDSalvar;
    dbTabela.Open;
    dbTabela.Locate('CODIGO',mIDSalvar,[]);
  end;

  FID := dbTabela.FieldByName('CODIGO').AsInteger;
  If (db_BoletoConfigurar.state in [dsEdit, dsInsert]) then
  begin
    db_BoletoConfigurar.Post;
    db_BoletoConfigurar.Refresh;
  end;
end;

procedure TFrmContaCorrente.db_BoletoConfigurarBeforePost(DataSet: TDataSet);
begin
  if FID < 1 then
  begin
    raise Exception.Create('Erro ao gravar configurações de boleto');
  end;
  db_BoletoConfigurar.FieldByName('CODIGO').AsInteger :=  dbTabela.FieldByName('CODIGO').AsInteger;
end;

procedure TFrmContaCorrente.ds_BoletoConfigurarStateChange(Sender: TObject);
begin
  if (ds_BoletoConfigurar.State in [dsInsert,dsEdit]) then
    FrmFrameBotoes1.AtivaEdicao
  else
    FrmFrameBotoes1.DesativaEdicao;
end;

procedure TFrmContaCorrente.GroupBox2Enter(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSalvarClick(Sender);
  ConfiguraBoleto;
end;

procedure TFrmContaCorrente.GroupBox2Exit(Sender: TObject);
begin
  If (db_BoletoConfigurar.state in [dsEdit, dsInsert]) then
  begin
    db_BoletoConfigurar.Post;
    db_BoletoConfigurar.Refresh;
  end;
end;

procedure TFrmContaCorrente.tabDetalheEnter(Sender: TObject);
begin
  inherited;
  FID := dbTabela.FieldByName('CODIGO').AsInteger;
end;

procedure TFrmContaCorrente.tabPrincipalEnter(Sender: TObject);
begin
  inherited;
  FID := 0;
end;

procedure TFrmContaCorrente.ConfiguraBoleto;
begin
   try
     If not (db_BoletoConfigurar.state in [dsEdit, dsInsert]) then
        db_BoletoConfigurar.edit;

     db_BoletoConfigurar.FieldByName('BANCO').AsString          := dbTabela.FieldByName('BANCO').AsString;
     db_BoletoConfigurar.FieldByName('BANCONOME').AsString      := EditBancoNome.Text;
     db_BoletoConfigurar.FieldByName('AGENCIA').AsString        := dbTabela.FieldByName('AGENCIA').AsString;
     db_BoletoConfigurar.FieldByName('AGENCIADIGITO').AsString  := dbTabela.FieldByName('AGENCIA_DIG').AsString;
     db_BoletoConfigurar.FieldByName('CEDENTECODIGO').AsString  := dbTabela.FieldByName('CTA_CORRENTE').AsString;
     db_BoletoConfigurar.FieldByName('DIGITO').AsString         := dbTabela.FieldByName('CTA_CORRENTE_DIG').AsString;
     db_BoletoConfigurar.FieldByName('NOME_CEDENTE').AsString   := dbTabela.FieldByName('NOME_CORRENTISTA').AsString;
     If (db_BoletoConfigurar.state in [dsEdit, dsInsert]) then
        db_BoletoConfigurar.Post;
     db_BoletoConfigurar.Close;
   finally
     db_BoletoConfigurar.Close;
     db_BoletoConfigurar.Open;
   end;

end;

end.
