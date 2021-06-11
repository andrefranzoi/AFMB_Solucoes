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

unit FCtaReceberGeraParcelas;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db, Grids, DBGrids, Buttons, StdCtrls, Mask, DBCtrls, ExtCtrls,
   variants,
   ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos,
   FFrameBarra, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmCtaReceberGeraParcelas = class(TForm)
      GroupBox1: TGroupBox;
      DBGrid1: TDBGrid;
      Panel2: TPanel;
      DS_CtaReceber: TDataSource;
      db_CtaReceber: TFDQuery;
      PainelBotoes: TPanel;
      BtnSair: TBitBtn;
      BtnExcluir: TBitBtn;
      BtnGerar: TBitBtn;
      GroupBox3: TGroupBox;
      MskDataIni: TMaskEdit;
      Label3: TLabel;
      EditParcelas: TEdit;
      Label2: TLabel;
      Label4: TLabel;
      EditHistorico: TEdit;
      EditValorTotal: TEdit;
      Label7: TLabel;
      db_CtaReceberBuscar: TFDQuery;
      EditIntervalos: TEdit;
      Label8: TLabel;
      Label10: TLabel;
      EditDocumento: TEdit;
      Label11: TLabel;
      EditDiaFixo: TEdit;
      Label1: TLabel;
      EditFornecedor: TIDBEditDialog;
      EditNomeCliente: TEdit;
      FrmFrameBarra1: TFrmFrameBarra;
      db_CtaReceberEMPRESA: TIntegerField;
      db_CtaReceberCODIGO: TIntegerField;
      db_CtaReceberCLIENTE: TIntegerField;
      db_CtaReceberNOTAFISCAL: TIntegerField;
      db_CtaReceberSERIENF: TStringField;
      db_CtaReceberDATA: TSQLTimeStampField;
      db_CtaReceberVENCIMENTO: TSQLTimeStampField;
      db_CtaReceberDATA_PAGTO: TSQLTimeStampField;
      db_CtaReceberDOCUMENTO: TStringField;
      db_CtaReceberPARCELA: TIntegerField;
      db_CtaReceberCFOP: TIntegerField;
      db_CtaReceberVENDEDOR: TIntegerField;
      db_CtaReceberESPECIE: TStringField;
      db_CtaReceberTIPO: TStringField;
      db_CtaReceberVALOR: TFloatField;
      db_CtaReceberVALOR_PAGO: TFloatField;
      db_CtaReceberVALOR_SALDO: TFloatField;
      db_CtaReceberCONTA_CREDITO: TIntegerField;
      db_CtaReceberCHQ_BANCO: TStringField;
      db_CtaReceberCHQ_AGENCIA: TStringField;
      db_CtaReceberCHQ_CONTA_CORRENTE: TStringField;
      db_CtaReceberCHQ_NUMEROCHEQUE: TStringField;
      db_CtaReceberCHQ_CODCIDADE: TStringField;
      db_CtaReceberCHQ_EMITENTE: TStringField;
      db_CtaReceberCHQ_NOMECIDADE_UF: TStringField;
      db_CtaReceberCHQ_DESTINO: TStringField;
      db_CtaReceberFORMA_PAGTO: TIntegerField;
      db_CtaReceberDEPARTAMENTO: TIntegerField;
      db_CtaReceberDESCONTO: TFloatField;
      db_CtaReceberDESCONTOVALOR: TFloatField;
      db_CtaReceberDESCONTO_DATA: TSQLTimeStampField;
      db_CtaReceberDESCONTO_USER: TIntegerField;
      db_CtaReceberENTRADA: TFloatField;
      db_CtaReceberPLANO_CONTAS: TStringField;
      db_CtaReceberCONTACAIXA: TIntegerField;
      db_CtaReceberHISTORICO: TStringField;
      db_CtaReceberOBSERVACAO: TStringField;
      db_CtaReceberGERARRECIBO: TStringField;
      db_CtaReceberGERARDUPLICATA: TStringField;
      db_CtaReceberGERARBOLETO: TStringField;
      db_CtaReceberGERARCOMPLEMENTO: TStringField;
      db_CtaReceberGERARREMESSA: TStringField;
      db_CtaReceberNOSSONUMERO: TStringField;
      db_CtaReceberDESPESAS_BOLETO: TFloatField;
      db_CtaReceberDESPESAS_JUROS: TFloatField;
      db_CtaReceberDESPESAS_JUROSVALOR: TFloatField;
      db_CtaReceberDESPESAS_MULTA: TFloatField;
      db_CtaReceberDESPESAS_CARTORIO: TFloatField;
      db_CtaReceberDESPESAS_TOTAL: TFloatField;
      db_CtaReceberATRASADA: TStringField;
      db_CtaReceberQUITADO: TStringField;
      db_CtaReceberMOTIVO_BAIXA: TIntegerField;
      db_CtaReceberUSER_NOME: TStringField;
      db_CtaReceberUSER_DATA: TSQLTimeStampField;
      db_CtaReceberUSER_HORA: TTimeField;
      db_CtaReceberCOMPLEMENTAR: TStringField;
      db_CtaReceberPROTESTOSTATUS: TStringField;
      db_CtaReceberSELECIONADO: TStringField;
      db_CtaReceberDESCONTADO: TStringField;
      db_CtaReceberPAGAMENTOTITULO: TStringField;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure bbtn_excluiClick(Sender: TObject);
      procedure BtnGerarClick(Sender: TObject);
      procedure BtnSairClick(Sender: TObject);
      procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
      procedure BtnExcluirClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure db_CtaReceberBeforeOpen(DataSet: TDataSet);
      procedure FormCreate(Sender: TObject);
      procedure EditParcelasKeyPress(Sender: TObject; var Key: Char);
      procedure MskDataIniExit(Sender: TObject);
      procedure EditValorTotalExit(Sender: TObject);
      procedure EditValorTotalKeyPress(Sender: TObject; var Key: Char);
      procedure EditIntervalosKeyPress(Sender: TObject; var Key: Char);
      procedure EditIntervalosExit(Sender: TObject);
      procedure EditDocumentoExit(Sender: TObject);
      procedure EditDiaFixoKeyPress(Sender: TObject; var Key: Char);
      procedure EditDiaFixoExit(Sender: TObject);
      procedure EditDiaFixoEnter(Sender: TObject);
      procedure EditValorTotalEnter(Sender: TObject);
      procedure FormShow(Sender: TObject);

   private
      { Private declarations }

      totparc: integer;

   public
      { Public declarations }
   end;

var
   FrmCtaReceberGeraParcelas: TFrmCtaReceberGeraParcelas;
   i, TotReg: integer;

implementation

uses FPrincipal, App.SQL, Biblioteca, Global, FCtaReceber, Classe.Usuarios;

{$R *.DFM}

procedure TFrmCtaReceberGeraParcelas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   db_CtaReceber.close;

   Action := caFree;

end;

procedure TFrmCtaReceberGeraParcelas.EditIntervalosExit(Sender: TObject);
begin
   EditIntervalos.text := Alltrim(EditIntervalos.text);

   if EditIntervalos.text = '' then
      exit;

end;

procedure TFrmCtaReceberGeraParcelas.EditIntervalosKeyPress(Sender: TObject;
  var Key: Char);
begin

   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
      Key := #0;

end;

procedure TFrmCtaReceberGeraParcelas.EditDiaFixoEnter(Sender: TObject);
begin
   if (EditDiaFixo.text = '') then
      EditDiaFixo.text := '0';

end;

procedure TFrmCtaReceberGeraParcelas.EditDiaFixoExit(Sender: TObject);
begin
   EditDiaFixo.text := Alltrim(EditDiaFixo.text);

   if (EditDiaFixo.text = '') or (EditDiaFixo.text = '0') then
      exit;

   // If StrToInt(AllTrim(EditDiaFixo.text))>30 then
   If not(StrToInt(Alltrim(EditDiaFixo.text)) in [1 .. 30]) then
   begin
      Informar('Data fixa de vencimento deve ser entre dia 1 e dia 30 de cada mês.');
      EditDiaFixo.Setfocus;
   end;

end;

procedure TFrmCtaReceberGeraParcelas.EditDiaFixoKeyPress(Sender: TObject;
  var Key: Char);
begin

   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
      Key := #0;

end;

procedure TFrmCtaReceberGeraParcelas.bbtn_excluiClick(Sender: TObject);
begin
   db_CtaReceber.delete;
end;

procedure TFrmCtaReceberGeraParcelas.BtnGerarClick(Sender: TObject);
var
   xx, xx_prazos: integer;
begin

   // -------------------------------------------------------------------------
   // -------------------------------------------------------------------------
   // VALIDAR

   if Empty(EditDocumento.text) then
   begin
      Informar('Informe o documento');
      EditDocumento.Setfocus;
      exit;
   end;

   if Empty(EditParcelas.text) then
   begin
      Informar('Informe a quantidade de parcelas');
      EditParcelas.Setfocus;
      exit;
   end;

   if Empty(EditIntervalos.text) then
   begin
      Informar('Informe o intervalo de vencimentos');
      EditIntervalos.Setfocus;
      exit;
   end;

   if Empty(EditValorTotal.text) or (StrToFloat(EditValorTotal.text) <= 0) then
   begin
      Informar('Informe o valor todal que servirá como base para rateio das parcelas');
      EditValorTotal.Setfocus;
      exit;
   end;

   db_CtaReceber.close;
   // db_CtaReceber.ParamByName('NOTAFISCAL').AsInteger := StrToInt(EditDocumento.text);
   db_CtaReceber.Open;

   // -------------------------------------------------------------------------
   // -------------------------------------------------------------------------

   xx := 0;
   xx_prazos := 0;

   { verificar se a fatura já foi gereda }

   if (db_CtaReceber.RecordCount > 0) then
   Begin
      Informar('Fatura(s) já existe(m)');
      exit; // sair
   End;

   tt_nota := 0;
   tt_nota := StrToFloat(EditValorTotal.text);

   if Empty(EditParcelas.text) then
      EditParcelas.text := '1';

   qt_parc := StrToInt(EditParcelas.text);

   If qt_parc <= 0 then
   begin
      Erro(' Quantidades de parcelas abaixo de 1. Não é possivel prosseguir.');
      Abort;
   end;

   { se possuir indice de reajuste para as parcelas }
   vlr_parc := 0;

   { definir valor das parcelas... Valor Total "dividido" pela quantidade de parcelas }
   vlr_parc := (tt_nota / qt_parc);

   { para fixar decimais em 2 casas }
   vlr_text := Formatfloat('###,##0.00', vlr_parc);
   vlr_text := DeletaCaract(vlr_text, '.');
   vlr_parc := StrToFloat(vlr_text);

   { total das parcelas }
   vTT_parcs := (vlr_parc * qt_parc);
   vlr_cent := 0;

   { Arredonar Valores em caso de centavos }
   parc_cc := vlr_parc * qt_parc; { parcelas com os centavos }
   parc_sc := (int(vlr_parc) * qt_parc); { todas as parcelas sem os centavos }
   vlr_parc := int(vlr_parc); { parcela sem os centavos }

   // vlr_cent := parc_cc - parc_sc; { centavos é a diferenca dos dois }

   vlr_cent := tt_nota - (vlr_parc * qt_parc);
   vlr_cent := ArrendondarDecimais(vlr_cent);

   // (db_FormaPagto).Locate('FPAGTO',forma,[]);
   parc_atu := 0;
   for xx := 1 to qt_parc do
   // while not eof do
   begin

      INC(parc_atu);

      INC(xx_prazos, StrToInt(EditIntervalos.text));
      dtVencimento := StrToDate(MskDataIni.text) + xx_prazos;

      // --------------------------------------------------------
      // checar qual deve ser o dia de vencimento
      // Somente se o campo "EditDiaFixo" for maior que 0 (zero)
      // --------------------------------------------------------
      If StrToInt(Alltrim(EditDiaFixo.text)) > 0 then
      begin
         wInteger[0] := StrToInt(Alltrim(EditDiaFixo.text));
         // dia + mes + ano = data
         dtVencimento := StrToDate(IntToStr(wInteger[0]) + '/' +
           IntToStr(mes(dtVencimento)) + '/' + IntToStr(ano(dtVencimento)));

      end
      else
      begin
         // inc(xx_prazos, StrToInt(EditIntervalos.Text) );
         // vVencto  := StrToDate(MskDataIni.text) + xx_prazos;
      end;

      vVlr_parc := vlr_parc + vlr_cent;

      wTexto[0] := IntToStr(parc_atu);
      while Length(wTexto[0]) < 3 do
         wTexto[0] := '0' + wTexto[0];

      db_CtaReceber.Append;
      db_CtaReceber.Fieldbyname('DATA').AsDateTime :=
        StrToDate(MskDataIni.text);
      db_CtaReceber.Fieldbyname('VENCIMENTO').AsDateTime := dtVencimento;

      if xx < qt_parc Then
         db_CtaReceber.Fieldbyname('VALOR').asFloat := vlr_parc
      else
         db_CtaReceber.Fieldbyname('VALOR').asFloat := vlr_parc + vlr_cent;

      db_CtaReceber.Fieldbyname('NOTAFISCAL').asString :=
        Alltrim(EditDocumento.text);
      db_CtaReceber.Fieldbyname('DOCUMENTO').asString :=
        Alltrim(EditDocumento.text) + '/' + wTexto[0]; // nº parcela
      db_CtaReceber.Fieldbyname('CLIENTE').asString :=
        Alltrim(EditFornecedor.text);
      db_CtaReceber.Fieldbyname('HISTORICO').asString :=
        Trim(EditHistorico.text);
      db_CtaReceber.Fieldbyname('QUITADO').asString := 'N'; // N=NÃO QUITADO

      db_CtaReceber.post;

   end;
   vVlr_parc := 0;

   // -------------------------------------------------------------------------

   Informar('Parcelas geradas com sucesso!');

End;

procedure TFrmCtaReceberGeraParcelas.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmCtaReceberGeraParcelas.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmCtaReceberGeraParcelas.BtnExcluirClick(Sender: TObject);
begin

   If Pergunta('Excluir Parcelas?') = false then
      exit;

   db_CtaReceber.First;
   While not db_CtaReceber.Eof do
   begin
      db_CtaReceber.delete;
   End;
   db_CtaReceber.close;
   db_CtaReceber.Open;

end;

procedure TFrmCtaReceberGeraParcelas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_F3 then
      BtnGerar.Click;

   If Key = VK_F4 then
      BtnExcluir.Click;

   If Key = VK_Escape then
      BtnSair.Click;

end;

procedure TFrmCtaReceberGeraParcelas.FormShow(Sender: TObject);
begin
   EditFornecedor.text := '0';
   EditFornecedor.text := FrmCtaReceber.EditCliente.text;

end;

procedure TFrmCtaReceberGeraParcelas.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.text := fncDataValidar(MskDataIni.text);
   EditDiaFixo.text := IntToStr(Dia(StrToDate(MskDataIni.text)))

end;

procedure TFrmCtaReceberGeraParcelas.db_CtaReceberBeforeOpen(DataSet: TDataSet);
begin

   // db_CtaReceber.ParamByName('NOTAFISCAL').AsInteger :=  StrToInt(EditDocumento.text);

end;

procedure TFrmCtaReceberGeraParcelas.FormCreate(Sender: TObject);
begin
   MskDataIni.text := DateToStr(Date);

   // captions dos botões
   BtnGerar.caption := BtnGerar.caption + #13 + #10 + 'F3';

   BtnExcluir.caption := BtnExcluir.caption + #13 + #10 + 'F4';

   BtnSair.caption := BtnSair.caption + #13 + #10 + 'ESC';

   db_CtaReceber.Open;

end;

procedure TFrmCtaReceberGeraParcelas.EditDocumentoExit(Sender: TObject);
begin
   db_CtaReceberBuscar.close;
   // db_CtaReceberBuscar.ParamByName('NOTAFISCAL').AsInteger :=   StrToInt(EditDocumento.text);
   db_CtaReceberBuscar.Open;

   if db_CtaReceberBuscar.RecordCount > 0 then
   begin
      db_CtaReceber.close;
      // db_CtaReceber.ParamByName('NOTAFISCAL').AsInteger :=        StrToInt(EditDocumento.text);
      db_CtaReceber.Open;

      Informar('Já existe Documento/N.F.  com esta identificação');
      db_CtaReceberBuscar.close;
   end
   else
      db_CtaReceberBuscar.close;

end;

procedure TFrmCtaReceberGeraParcelas.EditParcelasKeyPress(Sender: TObject;
  var Key: Char);
begin

   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
      Key := #0;

end;

procedure TFrmCtaReceberGeraParcelas.EditValorTotalEnter(Sender: TObject);
begin
   if (EditValorTotal.text = '') then
      EditValorTotal.text := '0';

end;

procedure TFrmCtaReceberGeraParcelas.EditValorTotalExit(Sender: TObject);
begin

   EditValorTotal.text := Alltrim(EditValorTotal.text);
   if (EditValorTotal.text = '') then
   begin
      EditValorTotal.text := '0';
   end;

   if TestFloat(EditValorTotal.text) = false then
   begin
      Informar('Não é valido como valor');
      EditValorTotal.text := '0';
      EditValorTotal.Setfocus;
   end;

   EditValorTotal.text := Formatfloat('###,##0.00',
     StrToFloat(EditValorTotal.text));
   EditValorTotal.text := DeletaCaract(EditValorTotal.text, '.');

end;

procedure TFrmCtaReceberGeraParcelas.EditValorTotalKeyPress(Sender: TObject;
  var Key: Char);
begin
   If Not(Key in ['0' .. '9', ',', #8, #13, #46, #37, #38, #39, #40]) Then
      Key := #0;
end;

end.
