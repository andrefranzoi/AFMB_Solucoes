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

unit FCtaReceberBaixasLotesCheques;

interface

uses
   Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls,
   Forms,
   Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, DB, FireDAC.Comp.Client,
   Classe.Global,
   FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmCtaReceberBaixasLotesCheques = class(TForm)
      GroupBox1: TGroupBox;
      DBGrid1: TDBGrid;
      Panel1: TPanel;
      db_CtaReceberCheque: TFDQuery;
      db_CtaReceberChequeCODIGO: TIntegerField;
      db_CtaReceberChequeCLIENTE: TIntegerField;
      db_CtaReceberChequeNOTAFISCAL: TIntegerField;
      db_CtaReceberChequeSERIENF: TStringField;
      db_CtaReceberChequeDATA: TSQLTimeStampField;
      db_CtaReceberChequeVENCIMENTO: TSQLTimeStampField;
      db_CtaReceberChequeDATA_PAGTO: TSQLTimeStampField;
      db_CtaReceberChequeDOCUMENTO: TStringField;
      db_CtaReceberChequePARCELA: TIntegerField;
      db_CtaReceberChequeCFOP: TIntegerField;
      db_CtaReceberChequeVENDEDOR: TIntegerField;
      db_CtaReceberChequeESPECIE: TStringField;
      db_CtaReceberChequeTIPO: TStringField;
      db_CtaReceberChequeVALOR: TFloatField;
      db_CtaReceberChequeVALOR_PAGO: TFloatField;
      db_CtaReceberChequeVALOR_SALDO: TFloatField;
      db_CtaReceberChequeCONTA_CREDITO: TIntegerField;
      db_CtaReceberChequeCHQ_BANCO: TStringField;
      db_CtaReceberChequeCHQ_AGENCIA: TStringField;
      db_CtaReceberChequeCHQ_CONTA_CORRENTE: TStringField;
      db_CtaReceberChequeCHQ_NUMEROCHEQUE: TStringField;
      db_CtaReceberChequeCHQ_CODCIDADE: TStringField;
      db_CtaReceberChequeCHQ_EMITENTE: TStringField;
      db_CtaReceberChequeCHQ_NOMECIDADE_UF: TStringField;
      db_CtaReceberChequeCHQ_DESTINO: TStringField;
      db_CtaReceberChequeFORMA_PAGTO: TIntegerField;
      db_CtaReceberChequeDEPARTAMENTO: TIntegerField;
      db_CtaReceberChequeDESCONTO: TFloatField;
      db_CtaReceberChequeDESCONTO_DATA: TSQLTimeStampField;
      db_CtaReceberChequeDESCONTO_USER: TIntegerField;
      db_CtaReceberChequeENTRADA: TFloatField;
      db_CtaReceberChequePLANO_CONTAS: TStringField;
      db_CtaReceberChequeCONTACAIXA: TIntegerField;
      db_CtaReceberChequeHISTORICO: TStringField;
      db_CtaReceberChequeOBSERVACAO: TStringField;
      db_CtaReceberChequeGERARRECIBO: TStringField;
      db_CtaReceberChequeGERARDUPLICATA: TStringField;
      db_CtaReceberChequeGERARBOLETO: TStringField;
      db_CtaReceberChequeNOSSONUMERO: TStringField;
      db_CtaReceberChequeDESPESAS_BOLETO: TFloatField;
      db_CtaReceberChequeDESPESAS_JUROS: TFloatField;
      db_CtaReceberChequeDESPESAS_MULTA: TFloatField;
      db_CtaReceberChequeDESPESAS_CARTORIO: TFloatField;
      db_CtaReceberChequeDESPESAS_TOTAL: TFloatField;
      db_CtaReceberChequeATRASADA: TStringField;
      db_CtaReceberChequeQUITADO: TStringField;
      db_CtaReceberChequeMOTIVO_BAIXA: TIntegerField;
      db_CtaReceberChequeCOMPLEMENTAR: TStringField;
      db_CtaReceberChequeGERARCOMPLEMENTO: TStringField;
      db_CtaReceberChequeSomar: TFDQuery;
      DS_CtaReceber: TDataSource;
      db_CtaReceberChequePAGAMENTOTITULO: TStringField;
      db_CtaReceberChequeEMPRESA: TIntegerField;
      Button1: TButton;
      Button2: TButton;
      lblValor: TLabel;

      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
      procedure db_CtaReceberChequeAfterPost(DataSet: TDataSet);
      procedure db_CtaReceberChequeNewRecord(DataSet: TDataSet);
      procedure db_CtaReceberChequeBeforePost(DataSet: TDataSet);
      procedure Button2Click(Sender: TObject);
      procedure db_CtaReceberChequeAfterOpen(DataSet: TDataSet);
      procedure db_CtaReceberChequeAfterDelete(DataSet: TDataSet);
      procedure Button1Click(Sender: TObject);

   private

      schqBanco, schqAgencia, schqContaCorrente, schqNumeroCheque,
        schqEmitente: string;
      schqValor: Real;
      procedure prcSomar;

      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmCtaReceberBaixasLotesCheques: TFrmCtaReceberBaixasLotesCheques;

implementation

uses Fprincipal, Global, Biblioteca, App.SQL, FCtaReceberBaixasLotes;

{$R *.dfm}

procedure TFrmCtaReceberBaixasLotesCheques.Button1Click(Sender: TObject);
begin
   If (db_CtaReceberCheque.state in [dsEdit, dsInsert]) then
      db_CtaReceberCheque.Post;

   close;
end;

procedure TFrmCtaReceberBaixasLotesCheques.Button2Click(Sender: TObject);
begin
   close;
end;

procedure TFrmCtaReceberBaixasLotesCheques.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCtaReceberBaixasLotesCheques.db_CtaReceberChequeAfterDelete
  (DataSet: TDataSet);
begin
   prcSomar;
end;

procedure TFrmCtaReceberBaixasLotesCheques.db_CtaReceberChequeAfterOpen
  (DataSet: TDataSet);
begin
   prcSomar;
end;

procedure TFrmCtaReceberBaixasLotesCheques.db_CtaReceberChequeAfterPost
  (DataSet: TDataSet);
begin
   schqBanco := db_CtaReceberCheque.FieldByName('CHQ_BANCO').AsString;
   schqAgencia := db_CtaReceberCheque.FieldByName('CHQ_AGENCIA').AsString;
   schqContaCorrente := db_CtaReceberCheque.FieldByName
     ('CHQ_CONTA_CORRENTE').AsString;
   schqNumeroCheque := db_CtaReceberCheque.FieldByName('DOCUMENTO').AsString;
   schqEmitente := db_CtaReceberCheque.FieldByName('CHQ_EMITENTE').AsString;
   schqValor := db_CtaReceberCheque.FieldByName('VALOR').AsFloat;
   prcSomar;

end;

procedure TFrmCtaReceberBaixasLotesCheques.prcSomar;
begin
   db_CtaReceberChequeSomar.close;
   db_CtaReceberChequeSomar.ParamByName('EMPRESA').AsInteger :=
     FSistema.Empresa;
   db_CtaReceberChequeSomar.ParamByName('CLIENTE').AsInteger :=
     StrToIntDef(Trim(FrmCtaReceberBaixasLotes.EditCliente.Text), 0);
   db_CtaReceberChequeSomar.ParamByName('NOTAFISCAL').AsInteger := 0;
   db_CtaReceberChequeSomar.open;

   nlValor := db_CtaReceberChequeSomar.FieldByName('VALORTOTAL').AsFloat;
   nlRegistros := db_CtaReceberChequeSomar.FieldByName('REGISTROS').AsInteger;
   nValorGlobalCheques := nlValor;

   lblValor.Caption := Concat('Cheques: ', IntToStr(nlRegistros),
     ' | Valor Total: ', FormatSettings.CurrencyString, ' ',
     formatfloat('###,##0.00', nlValor));

   db_CtaReceberChequeSomar.close;

end;

procedure TFrmCtaReceberBaixasLotesCheques.db_CtaReceberChequeBeforePost
  (DataSet: TDataSet);
begin
   db_CtaReceberCheque.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;
   db_CtaReceberCheque.FieldByName('DATA').AsDateTime := Date;
   db_CtaReceberCheque.FieldByName('CLIENTE').AsInteger :=
     StrToIntDef(Trim(FrmCtaReceberBaixasLotes.EditCliente.Text), 0);
   db_CtaReceberCheque.FieldByName('NOTAFISCAL').AsInteger := 0;
   db_CtaReceberCheque.FieldByName('CHQ_NUMEROCHEQUE').AsString :=
     db_CtaReceberCheque.FieldByName('DOCUMENTO').AsString;

end;

procedure TFrmCtaReceberBaixasLotesCheques.db_CtaReceberChequeNewRecord
  (DataSet: TDataSet);
begin
   db_CtaReceberCheque.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;
   db_CtaReceberCheque.FieldByName('QUITADO').AsString := 'N';
   db_CtaReceberCheque.FieldByName('TIPO').AsString := 'RECEBER';
   db_CtaReceberCheque.FieldByName('ESPECIE').AsString := 'CHEQUE';
   db_CtaReceberCheque.FieldByName('HISTORICO').AsString :=
     '(PARA PAGAMENTO DE TITULO)';
   db_CtaReceberCheque.FieldByName('PAGAMENTOTITULO').AsString := 'S';

   db_CtaReceberCheque.FieldByName('CHQ_BANCO').AsString := schqBanco;
   db_CtaReceberCheque.FieldByName('CHQ_AGENCIA').AsString := schqAgencia;
   db_CtaReceberCheque.FieldByName('CHQ_CONTA_CORRENTE').AsString :=
     schqContaCorrente;
   db_CtaReceberCheque.FieldByName('DOCUMENTO').AsString := schqNumeroCheque;
   db_CtaReceberCheque.FieldByName('CHQ_EMITENTE').AsString := schqEmitente;
   db_CtaReceberCheque.FieldByName('VALOR').AsFloat := schqValor;

   schqBanco := '';
   schqAgencia := '';
   schqContaCorrente := '';
   schqNumeroCheque := '';
   schqEmitente := '';
   schqValor := 0;

end;

procedure TFrmCtaReceberBaixasLotesCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_CtaReceberCheque.close;
end;

procedure TFrmCtaReceberBaixasLotesCheques.FormCreate(Sender: TObject);
begin
   db_CtaReceberCheque.close;
   db_CtaReceberCheque.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   db_CtaReceberCheque.ParamByName('CLIENTE').AsInteger :=
     StrToIntDef(Trim(FrmCtaReceberBaixasLotes.EditCliente.Text), 0);
   db_CtaReceberCheque.ParamByName('NOTAFISCAL').AsInteger := 0;
   db_CtaReceberCheque.open;
end;

procedure TFrmCtaReceberBaixasLotesCheques.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key = vk_escape then
      close;
end;

end.
