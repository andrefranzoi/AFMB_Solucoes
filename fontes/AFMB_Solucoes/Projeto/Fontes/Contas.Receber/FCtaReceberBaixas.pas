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

unit FCtaReceberBaixas;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, DB, StdCtrls,
   Buttons, ExtCtrls, Mask, DBCtrls, Menus, ISFEdit,
   ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FFrameBarra,
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
   ACBrUtil;

type
   TFrmCtaReceberBaixas = class(TForm)
      db_CtaReceber: TFDQuery;
      DS_CtaReceber: TDataSource;
      Panel1: TPanel;
      BtnSair: TBitBtn;
      BtnSalvar: TBitBtn;
      BtnCancelar: TBitBtn;
      BtnEstornar: TBitBtn;
      BtnLocalizar: TBitBtn;
      SPFin_CTAReceber_Baixar: TFDStoredProc;
      GroupBox3: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      Label4: TLabel;
      Label11: TLabel;
      DBEdit1: TDBEdit;
      DBEdit2: TDBEdit;
      EditDocumento: TDBEdit;
      DBEdit8: TDBEdit;
      EditCliente: TIDBEditDialog;
      EditNomeCliente: TEdit;
      DBEdit10: TDBEdit;
      DBEdit6: TDBEdit;
      DBEdit4: TDBEdit;
      EditDespesas: TDBEdit;
      EditValorPago: TDBEdit;
      EditAcrescimos: TDBEdit;
      EditDescontos: TDBEdit;
      EditDataPagto: TDBEdit;
      Label14: TLabel;
      Label13: TLabel;
      Label8: TLabel;
      Label10: TLabel;
      Label9: TLabel;
      Label7: TLabel;
      Label6: TLabel;
      Label5: TLabel;
      Label3: TLabel;
      GroupBox2: TGroupBox;
      DBMemo1: TDBMemo;
      DBEdit7: TDBEdit;
      FrmFrameBarra1: TFrmFrameBarra;
      GBoxCreditar: TGroupBox;
      EditConta_Credito: TIDBEditDialog;
      EditContaCorrente: TEdit;
      EditNomeContaCaixa: TEdit;
      EditConta_Caixa: TIDBEditDialog;
      EditPlano: TIDBEditDialog;
      EditNomePlanoContas: TEdit;
      dbDlgProcurar: TIDBEditDialog;
      procedure BtnSairClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure db_CtaReceberAfterScroll(DataSet: TDataSet);
      procedure BtnCancelarClick(Sender: TObject);
      procedure BtnSalvarClick(Sender: TObject);
      procedure db_CtaReceberAfterPost(DataSet: TDataSet);
      procedure BtnEstornarClick(Sender: TObject);
      procedure BtnLocalizarClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

      Procedure Proteger;
      procedure db_CtaReceberAfterOpen(DataSet: TDataSet);
      procedure db_CtaReceberDESPESAS_MULTAChange(Sender: TField);
      procedure db_CtaReceberDESPESAS_CARTORIOChange(Sender: TField);
      procedure db_CtaReceberDESPESAS_BOLETOChange(Sender: TField);
      procedure db_CtaReceberDESCONTOChange(Sender: TField);
      procedure db_CtaReceberDESPESAS_JUROSChange(Sender: TField);
      procedure db_CtaReceberBeforeOpen(DataSet: TDataSet);
      procedure FormDestroy(Sender: TObject);

   private

      nValorDesconto, nValorjuros: Real;

      procedure CalcularValoresTotais;
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmCtaReceberBaixas: TFrmCtaReceberBaixas;

implementation

uses FPrincipal, App.SQL, Biblioteca, Global, Classe.Usuarios, App.Funcoes;

{$R *.dfm}

procedure TFrmCtaReceberBaixas.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmCtaReceberBaixas.FormCreate(Sender: TObject);
begin

   wTexto[1] := '';

end;

procedure TFrmCtaReceberBaixas.FormDestroy(Sender: TObject);
begin
   FrmCtaReceberBaixas := Nil;
end;

procedure TFrmCtaReceberBaixas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_CtaReceber.Cancel;
   db_CtaReceber.close;
   Action := Cafree;
End;

procedure TFrmCtaReceberBaixas.db_CtaReceberAfterScroll(DataSet: TDataSet);
begin

   If db_CtaReceber.FieldByName('QUITADO').AsString = 'N' then
   Begin
      Caption := 'Contas a Receber - [Titulo Aberto]';
   End;

   If db_CtaReceber.FieldByName('QUITADO').AsString = 'S' then
   Begin
      Caption := 'Contas a Receber - [Titulo já foi baixado]';
   End;

   Proteger;

end;

procedure TFrmCtaReceberBaixas.db_CtaReceberBeforeOpen(DataSet: TDataSet);
begin
   db_CtaReceber.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmCtaReceberBaixas.db_CtaReceberDESCONTOChange(Sender: TField);
begin
   CalcularValoresTotais;
end;

procedure TFrmCtaReceberBaixas.db_CtaReceberDESPESAS_BOLETOChange
  (Sender: TField);
begin
   CalcularValoresTotais;

end;

procedure TFrmCtaReceberBaixas.db_CtaReceberDESPESAS_CARTORIOChange
  (Sender: TField);
begin
   CalcularValoresTotais;
end;

procedure TFrmCtaReceberBaixas.db_CtaReceberDESPESAS_JUROSChange
  (Sender: TField);
begin
   CalcularValoresTotais;

end;

procedure TFrmCtaReceberBaixas.db_CtaReceberDESPESAS_MULTAChange
  (Sender: TField);
begin
   CalcularValoresTotais;
end;

procedure TFrmCtaReceberBaixas.BtnCancelarClick(Sender: TObject);
begin
   EditDocumento.Clear;
   db_CtaReceber.Cancel;
   db_CtaReceber.close;
   Caption := 'Contas a Receber';

end;

procedure TFrmCtaReceberBaixas.BtnSalvarClick(Sender: TObject);
Var
   nValorReal, nValorPago, nNovoValor: Real;
   nNovoCodigo: Integer;
   nGerarRestante: Boolean;

begin

   nValorReal := 0;
   nValorPago := 0;
   nNovoValor := 0;
   nNovoCodigo := 0;
   nGerarRestante := false;

   if (db_CtaReceber.IsEmpty) then
   begin
      AvisoSistema('Primeiro você deve localize um documento');
      exit;
   end;

   If empty(EditDocumento.text) then
   begin
      informar('não há documento para baixar');
      exit;
   end;

   If db_CtaReceber.FieldByName('QUITADO').AsString = 'S' then
   begin
      informar('Documento já foi baixado');
      exit;
   end;

   If empty(db_CtaReceber.FieldByName('DATA_PAGTO').AsString) then
   begin
      informar('Informe a data de pagamento do Documento');
      EditDataPagto.SetFocus;
      exit;
   end;

   If (db_CtaReceber.FieldByName('DATA_PAGTO').AsDateTime <
     db_CtaReceber.FieldByName('DATA').AsDateTime) then
   begin
      informar('Data de pagamento não pode ser menor que a data do documento');
      EditDataPagto.SetFocus;
      exit;
   end;

   If (db_CtaReceber.FieldByName('VALOR_PAGO').AsFloat <= 0) then
   begin
      informar('Informe o valor pago');
      EditDataPagto.SetFocus;
      exit;
   end;

   // ------------------------------------------------------------------
   // ----------------- EXECUTAR PROCEDURE QUE BAIXA TITULO ------------
   // ------------------------------------------------------------------
   If (db_CtaReceber.state in [dsEdit, dsInsert]) then
      db_CtaReceber.Post;

   SPFin_CTAReceber_Baixar.ParamByName('NEMPRESA').AsInteger :=
     FSistema.Empresa;
   SPFin_CTAReceber_Baixar.ParamByName('NCODIGO').AsInteger :=
     db_CtaReceber.FieldByName('CODIGO').AsInteger;
   SPFin_CTAReceber_Baixar.ParamByName('NCLIENTE').AsInteger :=
     db_CtaReceber.FieldByName('CLIENTE').AsInteger;
   SPFin_CTAReceber_Baixar.ParamByName('ACAO').Value := 'BAIXAR';
   SPFin_CTAReceber_Baixar.ExecProc;

   db_CtaReceber.Refresh;

   AcaoUserName[0] := 'Baixou(quitou) Documento: ' + #13 + #10 +
     'Documento.......: ' + db_CtaReceber.FieldByName('DOCUMENTO').AsString +
     #13 + #10 + 'Valor...........: ' + FormatFloat('###,##0.00',
     db_CtaReceber.FieldByName('VALOR_PAGO').AsFloat) + #13 + #10 +
     'Nome Cliente....: ' + EditNomeCliente.text;

   FUsuario.LogUsuario('contas a receber', AcaoUserName[0]);

   // ------------------------------------------------------------------
   // ---------                                                      --
   // ------------------------------------------------------------------

   nValorReal := RoundABNT(db_CtaReceber.FieldByName('VALOR').AsFloat, 2);
   nValorPago := RoundABNT(db_CtaReceber.FieldByName('VALOR_PAGO').AsFloat, 2);
   nNovoValor := RoundABNT((nValorReal - nValorPago), 2);
   nNovoCodigo := 0;
   nGerarRestante := false;

   ///
   /// se valor pago for menor que o valor real, sugerir criar uma parcela
   /// complementar
   ///

   // If (nNovoValor  < db_CtaReceber.FieldByName('VALOR').AsFloat) then
   If (nValorPago < nValorReal) then
   begin
      if ConfirmarAcao('Contas a Receber ',
        'o Valor pago é menor que o valor real. Deseja gerar ' +
        'uma parcela complementar?' + #13 + #10 + #13 + #10 +
        'Valor Real.........: ' + FormatFloat('###,##0.00', nValorReal) + #13 +
        #10 + 'Valor Pago.........: ' + FormatFloat('###,##0.00', nValorPago) +
        #13 + #10 + 'Saldo Complementar.: ' + FormatFloat('###,##0.00',
        nNovoValor) + #13 + #10) = True then
      Begin

         pContasReceberBaixaParcial(db_CtaReceber.FieldByName('CLIENTE')
           .AsInteger, db_CtaReceber.FieldByName('VENDEDOR').AsInteger,
           db_CtaReceber.FieldByName('DATA').AsDateTime,
           db_CtaReceber.FieldByName('DATA_PAGTO').AsDateTime + 30,
           db_CtaReceber.FieldByName('NOTAFISCAL').AsString,
           db_CtaReceber.FieldByName('DOCUMENTO').AsString, nNovoValor,
           db_CtaReceber.FieldByName('PLANO_CONTAS').AsString,
           db_CtaReceber.FieldByName('FORMA_PAGTO').AsInteger, '');

         // ------------------------------------------------------------------
         // ---------                                                      --
         // ------------------------------------------------------------------
         AcaoUserName[0] := 'Gerou saldo complementear: ' + #13 + #10 +
           'Documento..........: ' + db_CtaReceber.FieldByName('DOCUMENTO')
           .AsString + #13 + #10 + 'Nome Cliente.......: ' +
           EditNomeCliente.text + #13 + #10 + 'Valor Real.........: ' +
           FormatFloat('###,##0.00', nValorReal) + #13 + #10 +
           'Valor Pago.........: ' + FormatFloat('###,##0.00', nValorPago) + #13
           + #10 + 'Saldo Complementar.: ' + FormatFloat('###,##0.00',
           nNovoValor);

         FUsuario.LogUsuario('contas a receber', AcaoUserName[0]);

      End;

   end;

   // ------------------------------------------------------------------
   // ---------                                                      --
   // ------------------------------------------------------------------

   // avisar o usuário sobre a baixa do documento

   if db_CtaReceber.FieldByName('QUITADO').AsString = 'S' then
   Begin
      Caption := 'Contas a Receber - [Titulo baixado]';
   end;

   Aviso('Baixa realizada com sucesso!');
   wTexto[1] := db_CtaReceber.FieldByName('HISTORICO').AsString;
   db_CtaReceber.close;
   BtnLocalizar.SetFocus;

End;

procedure TFrmCtaReceberBaixas.db_CtaReceberAfterPost(DataSet: TDataSet);
begin

   if db_CtaReceber.FieldByName('QUITADO').AsString = 'N' then
   Begin
      Caption := 'Contas a Receber - [Titulo Aberto]';

   end;

   if db_CtaReceber.FieldByName('QUITADO').AsString = 'S' then
   Begin
      Caption := 'Contas a Receber - [Titulo já foi baixado]';

   end;

   Proteger;
end;

procedure TFrmCtaReceberBaixas.BtnEstornarClick(Sender: TObject);
begin

   if (db_CtaReceber.IsEmpty) then
   begin
      AvisoSistema('Primeiro você deve localize um documento');
      exit;
   end;

   If pergunta('Confirma estorno do documento?') = false then
      exit;

   If (db_CtaReceber.state in [dsEdit, dsInsert]) then
      db_CtaReceber.Post;

   // ------------------------------------------------------------------
   // ---------  estornar documento complementar (antes ) de estornar --
   // ------------------------------------------------------------------
   pContasReceberBaixaParcial(db_CtaReceber.FieldByName('CLIENTE').AsInteger,
     db_CtaReceber.FieldByName('VENDEDOR').AsInteger,
     db_CtaReceber.FieldByName('DATA').AsDateTime, 0, '',
     db_CtaReceber.FieldByName('DOCUMENTO').AsString, 0, '', 0, 'D');


   // ------------------------------------------------------------------
   // --------------- EXECUTAR PROCEDURE QUE ESTORNA TITULO ------------
   // ------------------------------------------------------------------

   SPFin_CTAReceber_Baixar.ParamByName('NCODIGO').AsInteger :=
     db_CtaReceber.FieldByName('CODIGO').AsInteger;
   SPFin_CTAReceber_Baixar.ParamByName('NCLIENTE').AsInteger :=
     db_CtaReceber.FieldByName('CLIENTE').AsInteger;
   SPFin_CTAReceber_Baixar.ParamByName('ACAO').AsString := 'ESTORNAR';
   SPFin_CTAReceber_Baixar.ExecProc;

   db_CtaReceber.Refresh;

   AcaoUserName[0] := 'Estornou documento. ' + #13 + #10 + 'Documento.......: '
     + db_CtaReceber.FieldByName('DOCUMENTO').AsString + #13 + #10 +
     'Valor...........: ' + FormatFloat('###,##0.00',
     db_CtaReceber.FieldByName('VALOR').AsFloat) + #13 + #10 +
     'Nome Cliente....: ' + EditNomeCliente.text;

   FUsuario.LogUsuario('contas a receber', AcaoUserName[0]);

   if db_CtaReceber.FieldByName('QUITADO').AsString = 'N' then
   Begin
      Caption := 'Contas a Receber - [Titulo Aberto]';

   end;

   Aviso('Documento ' + db_CtaReceber.FieldByName('DOCUMENTO').AsString +
     ' foi reaberto.');
   db_CtaReceber.close;

   BtnLocalizar.SetFocus;

end;

procedure TFrmCtaReceberBaixas.BtnLocalizarClick(Sender: TObject);
begin

   wTexto[1] := '';
   db_CtaReceber.Cancel;

   if dbDlgProcurar.Execute then
   begin
      db_CtaReceber.close;
      db_CtaReceber.ParamByName('CODIGO').AsInteger :=
        dbDlgProcurar.ResultFieldAsInteger('CODIGO');
      db_CtaReceber.Open;

      db_CtaReceber.edit;
      db_CtaReceber.FieldByName('DATA_PAGTO').AsDateTime := Date;

      If (db_CtaReceber.state in [dsEdit, dsInsert]) then
         db_CtaReceber.Post;

      EditDataPagto.SetFocus;
   end;

end;

procedure TFrmCtaReceberBaixas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      close;
end;

Procedure TFrmCtaReceberBaixas.Proteger;
begin
   {
     If db_CtaReceber.FieldByName('QUITADO').AsString='S' then
     Begin
     DS_CtaReceber.AutoEdit    :=False;
     BtnEstornar.Enabled       :=True;
     GBoxCreditar.Enabled      :=False;
     end
     else
     begin
     DS_CtaReceber.AutoEdit    :=True;
     BtnEstornar.Enabled       :=False;
     GBoxCreditar.Enabled      :=True;
     end;
   }
end;

procedure TFrmCtaReceberBaixas.db_CtaReceberAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(db_CtaReceber);
   Proteger;
end;

Procedure TFrmCtaReceberBaixas.CalcularValoresTotais;
begin

   nValorDesconto := 0;
   nValorjuros := 0;

   nValorDesconto := GetValorPercentual(db_CtaReceber.FieldByName('VALOR')
     .AsFloat, db_CtaReceber.FieldByName('DESCONTO').AsFloat);
   nValorjuros := GetValorPercentual(db_CtaReceber.FieldByName('VALOR').AsFloat,
     db_CtaReceber.FieldByName('DESPESAS_JUROS').AsFloat);

   db_CtaReceber.FieldByName('DESPESAS_JUROSVALOR').AsFloat := nValorjuros;
   db_CtaReceber.FieldByName('DESCONTOVALOR').AsFloat := nValorDesconto;

   db_CtaReceber.FieldByName('DESPESAS_TOTAL').AsFloat := 0;
   db_CtaReceber.FieldByName('DESPESAS_TOTAL').AsFloat := nValorjuros +
     db_CtaReceber.FieldByName('DESPESAS_BOLETO').AsFloat +
     db_CtaReceber.FieldByName('DESPESAS_CARTORIO').AsFloat +
     db_CtaReceber.FieldByName('DESPESAS_MULTA').AsFloat;

   db_CtaReceber.FieldByName('VALOR_PAGO').AsFloat := 0;
   db_CtaReceber.FieldByName('VALOR_PAGO').AsFloat :=
     db_CtaReceber.FieldByName('VALOR').AsFloat - nValorDesconto +
     db_CtaReceber.FieldByName('DESPESAS_TOTAL').AsFloat;;

end;

end.
