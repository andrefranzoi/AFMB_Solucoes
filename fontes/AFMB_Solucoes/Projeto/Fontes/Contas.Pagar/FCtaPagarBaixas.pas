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

unit FCtaPagarBaixas;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, DB, StdCtrls,
   Buttons, ExtCtrls, Mask, DBCtrls, Menus, ISFEdit,
   ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos,
   FFrameBarra,
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
   ACBrUtil;

type
   TFrmCtaPagarBaixas = class(TForm)
      db_CtaPagar: TFDQuery;
      DS_CtaPagar: TDataSource;
      Panel1: TPanel;
      BtnSair: TBitBtn;
      BtnSalvar: TBitBtn;
      BtnCancelar: TBitBtn;
      BtnEstornar: TBitBtn;
      BtnLocalizar: TBitBtn;
      SP_BaixaCtaPagar: TFDStoredProc;
      FrmFrameBarra1: TFrmFrameBarra;
      GroupBox3: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      Label4: TLabel;
      Label11: TLabel;
      Label14: TLabel;
      Label13: TLabel;
      Label8: TLabel;
      Label10: TLabel;
      Label9: TLabel;
      Label7: TLabel;
      Label6: TLabel;
      Label5: TLabel;
      Label3: TLabel;
      DBEdit1: TDBEdit;
      DBEdit2: TDBEdit;
      EditDocumento: TDBEdit;
      DBEdit8: TDBEdit;
      EditCliente: TIDBEditDialog;
      EditNomeFornecedor: TEdit;
      DBEdit10: TDBEdit;
      DBEdit6: TDBEdit;
      DBEdit4: TDBEdit;
      EditDespesas: TDBEdit;
      EditValorPago: TDBEdit;
      EditAcrescimos: TDBEdit;
      EditDescontos: TDBEdit;
      EditDataPagto: TDBEdit;
      GroupBox2: TGroupBox;
      DBMemo1: TDBMemo;
      DBEdit7: TDBEdit;
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
      procedure db_CtaPagarAfterScroll(DataSet: TDataSet);
      procedure BtnCancelarClick(Sender: TObject);
      procedure BtnSalvarClick(Sender: TObject);
      procedure db_CtaPagarAfterPost(DataSet: TDataSet);
      procedure BtnEstornarClick(Sender: TObject);
      procedure BtnLocalizarClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

      Procedure Proteger;
      procedure db_CtaPagarAfterOpen(DataSet: TDataSet);
      procedure db_CtaPagarDESPESAS_BOLETOChange(Sender: TField);
      procedure db_CtaPagarDESPESAS_MULTAChange(Sender: TField);
      procedure db_CtaPagarDESPESAS_CARTORIOChange(Sender: TField);
      procedure db_CtaPagarDESCONTOChange(Sender: TField);
      procedure db_CtaPagarDESPESAS_JUROSChange(Sender: TField);
      procedure FormDestroy(Sender: TObject);

   private
      nValorDesconto, nValorjuros: Real;

      procedure CalcularValoresTotais;
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmCtaPagarBaixas: TFrmCtaPagarBaixas;

implementation

uses FBaseDados, Global, Biblioteca,
   App.SQL, Classe.Usuarios, App.Funcoes;

{$R *.dfm}

procedure TFrmCtaPagarBaixas.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmCtaPagarBaixas.FormCreate(Sender: TObject);
begin

   wTexto[1] := '';

end;

procedure TFrmCtaPagarBaixas.FormDestroy(Sender: TObject);
begin
   FrmCtaPagarBaixas := Nil;
end;

procedure TFrmCtaPagarBaixas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_CtaPagar.Cancel;
   db_CtaPagar.close;
   Action := Cafree;
End;

procedure TFrmCtaPagarBaixas.db_CtaPagarAfterScroll(DataSet: TDataSet);
begin

   If db_CtaPagar.FieldByName('QUITADO').AsString = 'N' then
   Begin
      Caption := 'Contas a Pagar - [Titulo Aberto]';
   End;

   If db_CtaPagar.FieldByName('QUITADO').AsString = 'S' then
   Begin
      Caption := 'Contas a Pagar - [Titulo já foi baixado]';
   End;

   Proteger;

end;

procedure TFrmCtaPagarBaixas.db_CtaPagarDESCONTOChange(Sender: TField);
begin
   CalcularValoresTotais;
end;

procedure TFrmCtaPagarBaixas.db_CtaPagarDESPESAS_BOLETOChange(Sender: TField);
begin
   CalcularValoresTotais;
end;

procedure TFrmCtaPagarBaixas.db_CtaPagarDESPESAS_CARTORIOChange(Sender: TField);
begin
   CalcularValoresTotais;

end;

procedure TFrmCtaPagarBaixas.db_CtaPagarDESPESAS_JUROSChange(Sender: TField);
begin
   CalcularValoresTotais;
end;

procedure TFrmCtaPagarBaixas.db_CtaPagarDESPESAS_MULTAChange(Sender: TField);
begin
   CalcularValoresTotais;

end;

procedure TFrmCtaPagarBaixas.BtnCancelarClick(Sender: TObject);
begin
   EditDocumento.Clear;
   db_CtaPagar.Cancel;
   db_CtaPagar.close;

end;

procedure TFrmCtaPagarBaixas.BtnSalvarClick(Sender: TObject);
var
   nValorReal, nValorPago, nNovoValor: Real;
   nNovoCodigo: Integer;
   nGerarRestante: Boolean;
begin
   AcaoUserName[0] := 'Baixou(quitou) Documento. ' + #13 + #10 +
     'Documento.......: ' + db_CtaPagar.FieldByName('DOCUMENTO').AsString + #13
     + #10 + 'Valor...........: ' + FormatFloat('###,##0.00',
     db_CtaPagar.FieldByName('VALOR_PAGO').AsFloat) + #13 + #10 +
     'Nome Fornecedor.: ' + EditNomeFornecedor.Text;

   If empty(EditDocumento.Text) then
   begin
      informar('não há documento para baixar');
      Exit;
   end;

   If db_CtaPagar.FieldByName('QUITADO').AsString = 'S' then
   begin
      informar('Documento já foi baixado');
      Exit;
   end;

   If empty(db_CtaPagar.FieldByName('DATA_PAGTO').AsString) then
   begin
      informar('Informe a data de pagamento do Documento');
      EditDataPagto.SetFocus;
      Exit;
   end;

   If (db_CtaPagar.FieldByName('VALOR_PAGO').AsFloat <= 0) then
   begin
      if pergunta
        ('Campo Valor Pago está sem valor, deseja cancelar baixa e corrigir? ')
      then
      begin
         EditValorPago.SetFocus;
         Exit;
      end;
   end;

   if empty(db_CtaPagar.FieldByName('CONTA_CREDITO').AsString) then
   begin
      If pergunta
        ('Você não definou uma conta bancária para este crédito. Deseja corrigir?')
        = True then
      begin
         EditConta_Credito.SetFocus;
         Exit;
      end;
   end;

   // ------------------------------------------------------------------
   // ----------------- EXECUTAR PROCEDURE QUE BAIXA TITULO ------------
   // ------------------------------------------------------------------
   If (db_CtaPagar.state in [dsEdit, dsInsert]) then
      db_CtaPagar.Post;

   SP_BaixaCtaPagar.ParamByName('NCODIGO').AsInteger :=
     db_CtaPagar.FieldByName('CODIGO').AsInteger;
   SP_BaixaCtaPagar.ParamByName('NFORNECEDOR').AsInteger :=
     db_CtaPagar.FieldByName('FORNECEDOR').AsInteger;
   SP_BaixaCtaPagar.ParamByName('ACAO').AsString := 'BAIXAR';
   SP_BaixaCtaPagar.ExecProc;
   db_CtaPagar.Refresh;

   FUsuario.LogUsuario('contas pagar | baixa de documentos', AcaoUserName[0]);

   // --------------------------------------


   // ------------------------------------------------------------------
   // ---------                                                      --
   // ------------------------------------------------------------------

   nValorReal := RoundABNT(db_CtaPagar.FieldByName('VALOR').AsFloat, 2);
   nValorPago := RoundABNT(db_CtaPagar.FieldByName('VALOR_PAGO').AsFloat, 2);
   nNovoValor := RoundABNT((nValorReal - nValorPago), 2);
   nNovoCodigo := 0;
   nGerarRestante := false;

   ///
   /// se valor pago for menor que o valor real, sugerir criar uma parcela
   /// complementar
   ///

   // If (nNovoValor  < db_CtaPagar.FieldByName('VALOR').AsFloat) then
   If (nValorPago < nValorReal) then
   begin

      if ConfirmarAcao('Contas a Pagar ',
        'o Valor pago é menor que o valor real. Deseja gerar uma parcela complementar?'
        + #13 + #10 + 'Valor Real.........: ' + FormatFloat('###,##0.00',
        nValorReal) + #13 + #10 + 'Valor Pago.........: ' +
        FormatFloat('###,##0.00', nValorPago) + #13 + #10 +
        'Saldo Complementar.: ' + FormatFloat('###,##0.00', nNovoValor) + #13 +
        #10) = True then
      Begin

         pContasPagarBaixaParcial(db_CtaPagar.FieldByName('FORNECEDOR')
           .AsInteger, db_CtaPagar.FieldByName('DATA').AsDateTime,
           db_CtaPagar.FieldByName('DATA_PAGTO').AsDateTime + 30,
           db_CtaPagar.FieldByName('NOTAFISCAL').AsString,
           db_CtaPagar.FieldByName('DOCUMENTO').AsString + '-[P]', nNovoValor,
           db_CtaPagar.FieldByName('PLANO_CONTAS').AsString,
           db_CtaPagar.FieldByName('FORMA_PAGTO').AsInteger,
           'Proveniente de um pagamento parcial: ' + db_CtaPagar.FieldByName
           ('DOCUMENTO').AsString, '');

         // ------------------------------------------------------------------
         // ---------                                                      --
         // ------------------------------------------------------------------
         AcaoUserName[0] := 'Gerou saldo complementear: ' + #13 + #10 +
           'Documento..........: ' + db_CtaPagar.FieldByName('DOCUMENTO')
           .AsString + #13 + #10 + 'Nome Fornecedor....: ' +
           EditNomeFornecedor.Text + #13 + #10 + 'Valor Real.........: ' +
           FormatFloat('###,##0.00', nValorReal) + #13 + #10 +
           'Valor Pago.........: ' + FormatFloat('###,##0.00', nValorPago) + #13
           + #10 + 'Saldo Complementar.: ' + FormatFloat('###,##0.00',
           nNovoValor);

         FUsuario.LogUsuario('contas a pagar', AcaoUserName[0]);

      End;

   end;

   // ------------------------------------


   // avisar o usuário sobre a baixa do documento

   if db_CtaPagar.FieldByName('QUITADO').AsString = 'S' then
   Begin
      Caption := 'Contas a Pagar - [Titulo já foi baixado]';
   end;

   Aviso('Baixa realizada com sucesso!');
   wTexto[1] := db_CtaPagar.FieldByName('HISTORICO').AsString;
   db_CtaPagar.close;
   BtnLocalizar.SetFocus;

End;

procedure TFrmCtaPagarBaixas.db_CtaPagarAfterPost(DataSet: TDataSet);
begin

   If db_CtaPagar.FieldByName('QUITADO').AsString = 'N' then
   Begin
      Caption := 'Contas a Pagar - [Titulo Aberto]';
   End;

   If db_CtaPagar.FieldByName('QUITADO').AsString = 'S' then
   Begin
      Caption := 'Contas a Pagar - [Titulo já foi baixado]';
   End;

   Proteger;
end;

procedure TFrmCtaPagarBaixas.BtnEstornarClick(Sender: TObject);
begin

   If pergunta('Confirma estorno do documento?') = false then
      Exit;

   AcaoUserName[0] := 'Estornou documento. ' + #13 + #10 + 'Documento.......: '
     + db_CtaPagar.FieldByName('DOCUMENTO').AsString + #13 + #10 +
     'Valor...........: ' + FormatFloat('###,##0.00',
     db_CtaPagar.FieldByName('VALOR').AsFloat) + #13 + #10 +
     'Nome Fornecedor.: ' + EditNomeFornecedor.Text;

   // ------------------------------------------------------------------
   // --------------- EXECUTAR PROCEDURE QUE ESTORNA TITULO ------------
   // ------------------------------------------------------------------
   If (db_CtaPagar.state in [dsEdit, dsInsert]) then
      db_CtaPagar.Post;

   SP_BaixaCtaPagar.ParamByName('NCODIGO').AsInteger :=
     db_CtaPagar.FieldByName('CODIGO').AsInteger;
   SP_BaixaCtaPagar.ParamByName('NFORNECEDOR').AsInteger :=
     db_CtaPagar.FieldByName('FORNECEDOR').AsInteger;
   SP_BaixaCtaPagar.ParamByName('ACAO').AsString := 'ESTORNAR';
   SP_BaixaCtaPagar.ExecProc;

   db_CtaPagar.Refresh;

   FUsuario.LogUsuario('contas pagar | baixa de documentos', AcaoUserName[0]);

   if db_CtaPagar.FieldByName('QUITADO').AsString = 'N' then
   Begin
      Caption := 'Contas a Pagar - [Titulo Aberto]';

   end;

   Aviso('Documento ' + db_CtaPagar.FieldByName('DOCUMENTO').AsString +
     ' foi reaberto.');
   db_CtaPagar.close;

   BtnLocalizar.SetFocus;

end;

procedure TFrmCtaPagarBaixas.BtnLocalizarClick(Sender: TObject);
begin

   wTexto[1] := '';
   db_CtaPagar.Cancel;

   if dbDlgProcurar.Execute then
   begin
      db_CtaPagar.close;
      db_CtaPagar.ParamByName('CODIGO').AsInteger :=
        dbDlgProcurar.ResultFieldAsInteger('CODIGO');
      db_CtaPagar.Open;

      db_CtaPagar.edit;
      db_CtaPagar.FieldByName('DATA_PAGTO').AsDateTime := Date;

      If (db_CtaPagar.state in [dsEdit, dsInsert]) then
         db_CtaPagar.Post;

      EditDataPagto.SetFocus;
   end;

end;

procedure TFrmCtaPagarBaixas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      close;

   If Key = VK_F4 Then
      BtnSalvar.Click;

   If Key = VK_F5 Then
      BtnCancelar.Click;

   If Key = VK_F6 Then
      BtnEstornar.Click;

   If Key = VK_F7 Then
      BtnLocalizar.Click;

end;

Procedure TFrmCtaPagarBaixas.Proteger;
begin
   {
     If db_CtaPagar.FieldByName('QUITADO').AsString='S' then
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

procedure TFrmCtaPagarBaixas.db_CtaPagarAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(db_CtaPagar);
   Proteger;
end;

Procedure TFrmCtaPagarBaixas.CalcularValoresTotais;
begin

   nValorDesconto := 0;
   nValorjuros := 0;

   nValorDesconto := GetValorPercentual(db_CtaPagar.FieldByName('VALOR')
     .AsFloat, db_CtaPagar.FieldByName('DESCONTO').AsFloat);
   nValorjuros := GetValorPercentual(db_CtaPagar.FieldByName('VALOR').AsFloat,
     db_CtaPagar.FieldByName('DESPESAS_JUROS').AsFloat);

   db_CtaPagar.FieldByName('DESPESAS_JUROSVALOR').AsFloat := nValorjuros;
   db_CtaPagar.FieldByName('DESCONTOVALOR').AsFloat := nValorDesconto;

   db_CtaPagar.FieldByName('DESPESAS_TOTAL').AsFloat := 0;
   db_CtaPagar.FieldByName('DESPESAS_TOTAL').AsFloat := nValorjuros +
     db_CtaPagar.FieldByName('DESPESAS_BOLETO').AsFloat +
     db_CtaPagar.FieldByName('DESPESAS_CARTORIO').AsFloat +
     db_CtaPagar.FieldByName('DESPESAS_MULTA').AsFloat;

   db_CtaPagar.FieldByName('VALOR_PAGO').AsFloat := 0;
   db_CtaPagar.FieldByName('VALOR_PAGO').AsFloat :=
     db_CtaPagar.FieldByName('VALOR').AsFloat - nValorDesconto +
     db_CtaPagar.FieldByName('DESPESAS_TOTAL').AsFloat;;

end;

end.
