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

unit FBoletoBancario;

interface

uses
   Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls,
   Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DB, Grids, DBGrids,
   ShellApi, SqlExpr, FMTBcd, Mask, DBCtrls, ExtDlgs, Menus, ISFEdit,
   ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FireDAC.Comp.Client,
   ACBrBoleto, ACBrBase, FFrameBarra, Classe.Global, ACBrUtil,
   FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   ACBrBoletoConversao,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, ACBrBoletoFCFortesFr,
   ACBrBoletoFCFR;

type

   TFrmBoletoBancario = class(TForm)
      Panel4: TPanel;
      ProgressBar1: TProgressBar;
      ds_ViewBoletos: TDataSource;
      db_ViewBoletos: TFDQuery;
      BtnSair: TBitBtn;
      BtnImprimir: TBitBtn;
      BtnRemessa: TBitBtn;
      db_BoletoConfigurar: TFDQuery;
      ds_BoletoConfigurar: TDataSource;
      GroupBox2: TGroupBox;
      GridViewBoletos: TDBGrid;
      LblTotal: TLabel;
      db_CtaReceberBaixar: TFDQuery;
      db_ContaCorrenteBoleto: TFDQuery;
      BitBtn1: TBitBtn;
      ACBrBoleto1: TACBrBoleto;
      Panel1: TPanel;
      BoxLayoutArquivo: TRadioGroup;
      BoxVencimento: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      dtInicial: TMaskEdit;
      dtFinal: TMaskEdit;
      db_ViewBoletosRemessas: TFDQuery;
      FrmFrameBarra1: TFrmFrameBarra;
      Panel2: TPanel;
      GroupBox1: TGroupBox;
      ComboCedentes: TDBLookupComboBox;
      EditLocalPagamento: TLabeledEdit;
      chkCliente: TCheckBox;
      EditClienteNome: TEdit;
      EditCliente: TIDBEditDialog;
      Panel3: TPanel;
      btnPesquisarBoletos: TButton;
      ACBrBoletoFCFR1: TACBrBoletoFCFR;

      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSairClick(Sender: TObject);
      procedure dtInicialExit(Sender: TObject);
      procedure dtFinalExit(Sender: TObject);
      procedure BtnImprimirClick(Sender: TObject);
      procedure BtnRemessaClick(Sender: TObject);
      procedure ComboCedentesEnter(Sender: TObject);
      procedure BitBtn1Click(Sender: TObject);
      Function SetTipoCobranca(AValue: Integer): TACBrTipoCobranca;
      procedure chkClienteClick(Sender: TObject);
      procedure btnPesquisarBoletosClick(Sender: TObject);
      procedure FormDestroy(Sender: TObject);
      procedure db_ViewBoletosAfterOpen(DataSet: TDataSet);
      procedure db_ViewBoletosRemessasAfterOpen(DataSet: TDataSet);
   private
      { Private declarations }
      xNossoNumero: String;

      Procedure PesquisarBoletos;
      Procedure MarcarImpressao(NCODIGO: Integer; SNossoNumero: String);
      Procedure MarcarRemessa(NCODIGO: Integer; SNossoNumero: String);
      procedure PrepararBoletos;

   public
      { Public declarations }

      Titulo: TACBrTitulo;

   end;

var
   FrmBoletoBancario: TFrmBoletoBancario;

implementation

uses FPrincipal, Global, Biblioteca, FBaseDados, App.SQL, App.Constantes,
   App.Funcoes;

{$R *.dfm}

procedure TFrmBoletoBancario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_ContaCorrenteBoleto.Close;
   db_BoletoConfigurar.Close;
   db_ViewBoletos.Close;
   Action := Cafree;
end;

procedure TFrmBoletoBancario.BitBtn1Click(Sender: TObject);
begin
   shellexecute(0, nil, pchar(_BOLETO_DIRARQREMESSA), nil, nil, SW_SHOW);
end;

procedure TFrmBoletoBancario.BtnRemessaClick(Sender: TObject);
begin
   case BoxLayoutArquivo.ItemIndex of
      0:
         ACBrBoleto1.LayoutRemessa := c240;
      1:
         ACBrBoleto1.LayoutRemessa := c400;
   end;

   PesquisarBoletos;
   PrepararBoletos;

   ProgressBar1.Max := db_ViewBoletosRemessas.RecordCount;
   ProgressBar1.Position := 0;
   ProgressBar1.Visible := True;
   ACBrBoleto1.DataArquivo := Date; // É a data que o arquivo está sendo gerado

   ACBrBoleto1.DataArquivo := Date; // É a data que o arquivo está sendo gerado

   db_ViewBoletosRemessas.first;
   While not db_ViewBoletosRemessas.eof do
   begin
      Titulo := ACBrBoleto1.CriarTituloNaLista;

      Titulo.LocalPagamento := Trim(UpperCase(EditLocalPagamento.Text));
      Titulo.Carteira := db_BoletoConfigurar.FieldByName('CARTEIRA').AsString;
      Titulo.EspecieDoc := '02'; // 02=DM-duplicata mercantil

      Titulo.DataProcessamento := Now;
      Titulo.DataDocumento := db_ViewBoletosRemessas.FieldByName('DATA')
        .AsDateTime;
      Titulo.Vencimento := db_ViewBoletosRemessas.FieldByName('VENCIMENTO')
        .AsDateTime;

      // Titulo.DataMoraJuros     := StrToDateDef(edtDataMora.Text, 0);
      // Titulo.DataDesconto      := StrToDateDef(edtDataDesconto.Text, 0);
      // Titulo.DataAbatimento    := StrToDateDef(edtDataAbatimento.Text, 0);
      // Titulo.DataProtesto      := StrToDateDef(edtDataProtesto.Text, 0);

      Titulo.NumeroDocumento := db_ViewBoletosRemessas.FieldByName
        ('DOCUMENTO').AsString;
      Titulo.ValorDocumento := db_ViewBoletosRemessas.FieldByName
        ('VALOR').AsFloat;

      // Titulo.ValorAbatimento   := StrToCurrDef(edtValorAbatimento.Text,0);
      // Titulo.ValorMoraJuros    := StrToCurrDef(edtMoraJuros.Text,0);
      // Titulo.ValorDesconto     := StrToCurrDef(edtValorDesconto.Text,0);
      // Titulo.ValorAbatimento   := StrToCurrDef(edtValorAbatimento.Text,0);

      // dados da cobranca
      If Empty(Trim(db_ViewBoletosRemessas.FieldByName('NOSSONUMERO').AsString))
        or (db_ViewBoletosRemessas.FieldByName('NOSSONUMERO').AsString = '0')
      then
      begin
         // criar novo " nosso numero"
         xNossoNumero := IntToStr(StrToIntDef(Trim(xNossoNumero), 0) + 1);

         if ACBrBoleto1.Banco.TipoCobranca = cobBancoDoBrasil then
            Titulo.NossoNumero := '' // banco do brasil ira gerar o nosso numero
         else
            Titulo.NossoNumero := xNossoNumero;
      end
      else
      begin
         xNossoNumero := db_ViewBoletosRemessas.FieldByName
           ('NOSSONUMERO').AsString;
         if ACBrBoleto1.Banco.TipoCobranca = cobBancoDoBrasil then
            Titulo.NossoNumero := '' // banco do brasil ira gerar o nosso numero
         else
            Titulo.NossoNumero := xNossoNumero;
      end;

      Titulo.Sacado.NomeSacado := db_ViewBoletosRemessas.FieldByName
        ('NOME_CLIENTE').AsString;
      Titulo.Sacado.CNPJCPF :=
        OnlyNumber(db_ViewBoletosRemessas.FieldByName('CPF_CNPJ').AsString);
      Titulo.Sacado.Logradouro := db_ViewBoletosRemessas.FieldByName
        ('ENDERECO').AsString;
      Titulo.Sacado.Numero := db_ViewBoletosRemessas.FieldByName
        ('NUMERO').AsString;
      // Titulo.Sacado.Bairro     := db_ViewBoletosRemessas.FieldByName('BAIRRO').AsString;
      Titulo.Sacado.CEP := OnlyNumber(db_ViewBoletosRemessas.FieldByName('CEP')
        .AsString);
      Titulo.Sacado.Cidade := db_ViewBoletosRemessas.FieldByName
        ('NOME_CIDADE').AsString;
      Titulo.Sacado.UF := db_ViewBoletosRemessas.FieldByName('UF').AsString;

      // Adicionar na lista para gerar arquivo de REMESSA
      Titulo.Mensagem.Text := db_BoletoConfigurar.FieldByName
        ('INSTRUCOES').AsString;
      ACBrBoleto1.AdicionarMensagensPadroes(Titulo, Titulo.Mensagem);

      // informar que o boleto foi impresso
      MarcarRemessa(db_ViewBoletosRemessas.FieldByName('CODIGO').AsInteger,
        Titulo.NossoNumero);

      ProgressBar1.Position := ProgressBar1.Position + 1;
      Application.ProcessMessages;

      db_ViewBoletosRemessas.next;

   end;

   ProgressBar1.Position := 0;
   db_ViewBoletosRemessas.Refresh;
   db_ViewBoletosRemessas.first;


   // ----------------------------------------------------
   // ----------------------------------------------------

   ACBrBoleto1.NomeArqRemessa := FormatDateTime('yyyymmdd', Date) + '.rem';
   ACBrBoleto1.GerarRemessa(1);

   Informar('O arquivo ' + ACBrBoleto1.NomeArqRemessa +
     ' foi gerado com sucesso.');

end;

procedure TFrmBoletoBancario.FormCreate(Sender: TObject);
begin

   /// -------------------------------------------------------------
   /// Configurar boleto bancario
   /// -------------------------------------------------------------

   Titulo := ACBrBoleto1.CriarTituloNaLista;
   ACBrBoleto1.ListadeBoletos.Clear;
   Titulo.EspecieDoc := '02';
   Titulo.Aceite := atSim;
   Titulo.OcorrenciaOriginal.Tipo := toRemessaBaixar;

   dtInicial.Text := DateToStr(Date);
   dtFinal.Text := DateToStr(Date + 30);

   ACBrBoleto1.DirArqRemessa := _BOLETO_DIRARQREMESSA;
   ACBrBoleto1.DirArqRetorno := _BOLETO_DIRARQRETORNO;
   ACBrBoleto1.NomeArqRemessa := _BOLETO_ARQREMESSA;
   ACBrBoleto1.NomeArqRetorno := _BOLETO_ARQRETORNO;
   // comentei aqui André
   ACBrBoletoFCFR1.DirLogo := _BOLETO_DIRLOGO;

   if FileExists(_BOLETO_REPORTFILE) then
   begin
      ACBrBoletoFCFR1.FastReportFile := _BOLETO_REPORTFILE;
   end;

   db_BoletoConfigurar.open;

end;

procedure TFrmBoletoBancario.FormDestroy(Sender: TObject);
begin
   FrmBoletoBancario := Nil;
end;

Function TFrmBoletoBancario.SetTipoCobranca(AValue: Integer): TACBrTipoCobranca;
begin

   Result := cobNenhum;

   if AValue < 1 then
      exit;

   case AValue of
      001:
         Result := cobBancoDoBrasil; { 001 }
      033, 353, 008:
         Result := cobSantander; { 033,353,008 }
      041:
         Result := cobBanrisul; { 041 }
      104:
         Result := cobCaixaEconomica; { 104 }
      237:
         Result := cobBradesco; { 237 }
      341:
         Result := cobItau; { 341 }
      389:
         Result := cobBancoMercantil; { 389 }
      748:
         Result := cobSicred; { 748 }
      756:
         Result := cobBancoob; { 756 }
   end;

end;

procedure TFrmBoletoBancario.PrepararBoletos;
begin
   if ComboCedentes.Text = '' then
   begin
      ComboCedentes.SetFocus;
      Informar('Selecione "Configuração do Boleto" ');
      Abort;
   end;

   db_BoletoConfigurar.Refresh;
   db_ContaCorrenteBoleto.Close;
   db_ContaCorrenteBoleto.ParamByName('CODIGO').AsInteger :=
     db_BoletoConfigurar.FieldByName('CODIGO').AsInteger;
   db_ContaCorrenteBoleto.open;

   xNossoNumero := Trim(db_BoletoConfigurar.FieldByName('NOSSONUMERO')
     .AsString);

   /// -------------------------------------------------------------
   /// Configurar boleto bancario
   /// -------------------------------------------------------------

   Titulo := ACBrBoleto1.CriarTituloNaLista;
   ACBrBoleto1.ListadeBoletos.Clear;

   if db_BoletoConfigurar.FieldByName('TIPOINSCRICAO').AsString = 'J' then
   begin
      ACBrBoleto1.Cedente.TipoInscricao := pJuridica;
   end;

   if db_BoletoConfigurar.FieldByName('TIPOINSCRICAO').AsString = 'F' then
   begin
      ACBrBoleto1.Cedente.TipoInscricao := pFisica;
   end;

   // Dados do Cedente
   // ACBrBoleto1.Cedente.DigitoCodigoCedente              :=db_BoletoConfigurar.FieldByName('CEDENTE_DIGITO').AsString;

   ACBrBoleto1.Banco.TipoCobranca :=
     SetTipoCobranca(db_BoletoConfigurar.FieldByName('BANCO').AsInteger);
   ACBrBoleto1.Cedente.Agencia := db_BoletoConfigurar.FieldByName
     ('AGENCIA').AsString;
   ACBrBoleto1.Cedente.AgenciaDigito := db_BoletoConfigurar.FieldByName
     ('AGENCIADIGITO').AsString;
   ACBrBoleto1.Cedente.Conta := db_BoletoConfigurar.FieldByName
     ('CEDENTE').AsString;
   ACBrBoleto1.Cedente.ContaDigito := db_BoletoConfigurar.FieldByName
     ('CEDENTE_DIGITO').AsString;
   ACBrBoleto1.Cedente.CodigoCedente := db_BoletoConfigurar.FieldByName
     ('CEDENTE').AsString;
   ACBrBoleto1.Cedente.Modalidade := '0';

   if ACBrBoleto1.Banco.TipoCobranca = cobBancoDoBrasil then
   begin
      // ACBrBoleto1.Cedente.Modalidade       :='1';
      ACBrBoleto1.Cedente.Modalidade := '19';
   end;

   if ACBrBoleto1.Banco.TipoCobranca = cobSantander then
      ACBrBoleto1.Cedente.Modalidade := '101';

   ACBrBoleto1.Cedente.Nome := db_BoletoConfigurar.FieldByName
     ('CEDENTE_NOME').AsString;
   ACBrBoleto1.Cedente.CNPJCPF := OnlyNumber(FParametros.Empresa.CNPJ);
   ACBrBoleto1.Cedente.Convenio :=
     ZeroEsquerda(db_BoletoConfigurar.FieldByName('CONVENIO').AsString, 9);

   ACBrBoleto1.Cedente.Logradouro := BaseDados.db_Parametros.FieldByName
     ('ENDERECO').AsString;
   ACBrBoleto1.Cedente.NumeroRes := BaseDados.db_Parametros.FieldByName
     ('NUMERO').AsString;
   ACBrBoleto1.Cedente.Bairro := BaseDados.db_Parametros.FieldByName
     ('BAIRRO').AsString;
   ACBrBoleto1.Cedente.Complemento := BaseDados.db_Parametros.FieldByName
     ('COMPLEMENTO').AsString;
   ACBrBoleto1.Cedente.CEP := BaseDados.db_Parametros.FieldByName
     ('CEP').AsString;
   ACBrBoleto1.Cedente.Cidade := BaseDados.db_Parametros.FieldByName
     ('CIDADE').AsString;
   ACBrBoleto1.Cedente.UF := BaseDados.db_Parametros.FieldByName('UF').AsString;



   // ACBrBoleto1.Banco..Convenio         :=ZeroEsquerda( db_BoletoConfigurar.FieldByName('CONVENIO').AsString,3);

end;

procedure TFrmBoletoBancario.BtnImprimirClick(Sender: TObject);
begin
   PrepararBoletos;
   PesquisarBoletos;

   ProgressBar1.Max := db_ViewBoletos.RecordCount;
   ProgressBar1.Position := 0;
   ProgressBar1.Visible := True;

   db_ViewBoletos.first;
   While not db_ViewBoletos.eof do
   begin

      Titulo := ACBrBoleto1.CriarTituloNaLista;

      Titulo.DataProcessamento := Now;
      Titulo.DataDocumento := db_ViewBoletos.FieldByName('DATA').AsDateTime;
      Titulo.Vencimento := db_ViewBoletos.FieldByName('VENCIMENTO').AsDateTime;

      // Titulo.DataMoraJuros     := StrToDateDef(edtDataMora.Text, 0);
      // Titulo.DataDesconto      := StrToDateDef(edtDataDesconto.Text, 0);
      // Titulo.DataAbatimento    := StrToDateDef(edtDataAbatimento.Text, 0);
      // Titulo.DataProtesto      := StrToDateDef(edtDataProtesto.Text, 0);

      Titulo.NumeroDocumento := db_ViewBoletos.FieldByName('DOCUMENTO')
        .AsString;
      Titulo.ValorDocumento := db_ViewBoletos.FieldByName('VALOR').AsFloat;

      // Titulo.ValorAbatimento   := StrToCurrDef(edtValorAbatimento.Text,0);
      // Titulo.ValorMoraJuros    := StrToCurrDef(edtMoraJuros.Text,0);
      // Titulo.ValorDesconto     := StrToCurrDef(edtValorDesconto.Text,0);
      // Titulo.ValorAbatimento   := StrToCurrDef(edtValorAbatimento.Text,0);

      // dados da cobranca
      If Empty(Trim(db_ViewBoletos.FieldByName('NOSSONUMERO').AsString)) or
        (db_ViewBoletos.FieldByName('NOSSONUMERO').AsString = '0') then
      begin
         // criar novo " nosso numero"
         xNossoNumero := IntToStr(StrToIntDef(Trim(xNossoNumero), 0) + 1);
         Titulo.NossoNumero := xNossoNumero;
      end
      else
      begin
         xNossoNumero := db_ViewBoletos.FieldByName('NOSSONUMERO').AsString;
         Titulo.NossoNumero := xNossoNumero;
      end;

      Titulo.Sacado.NomeSacado := db_ViewBoletos.FieldByName
        ('NOME_CLIENTE').AsString;
      Titulo.Sacado.CNPJCPF := OnlyNumber(db_ViewBoletos.FieldByName('CPF_CNPJ')
        .AsString);
      Titulo.Sacado.Logradouro := db_ViewBoletos.FieldByName
        ('ENDERECO').AsString;
      Titulo.Sacado.Numero := db_ViewBoletos.FieldByName('NUMERO').AsString;
      // Titulo.Sacado.Bairro     := db_ViewBoletos.FieldByName('BAIRRO').AsString;
      Titulo.Sacado.CEP := OnlyNumber(db_ViewBoletos.FieldByName('CEP')
        .AsString);
      Titulo.Sacado.Cidade := db_ViewBoletos.FieldByName('NOME_CIDADE')
        .AsString;
      Titulo.Sacado.UF := db_ViewBoletos.FieldByName('UF').AsString;

      if Empty(Trim(Titulo.NossoNumero)) or (Titulo.NossoNumero = '0') then
      Begin
         AvisoSistema('Campo Nosso Numero esta zerado. Corrija o problema. ');
         Abort;
      End;

      // Adicionar na lista para gerar arquivo de REMESSA
      Titulo.Mensagem.Text := db_BoletoConfigurar.FieldByName
        ('INSTRUCOES').AsString;
      ACBrBoleto1.AdicionarMensagensPadroes(Titulo, Titulo.Mensagem);

      // informar que o boleto foi impresso
      MarcarImpressao(db_ViewBoletos.FieldByName('CODIGO').AsInteger,
        Titulo.NossoNumero);

      ProgressBar1.Position := ProgressBar1.Position + 1;
      Application.ProcessMessages;

      db_ViewBoletos.next;
   end;

   ACBrBoleto1.Imprimir;
   ProgressBar1.Position := 0;
   db_ViewBoletos.Refresh;
   db_ViewBoletos.first;

end;

procedure TFrmBoletoBancario.BtnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmBoletoBancario.btnPesquisarBoletosClick(Sender: TObject);
begin
   PesquisarBoletos;
end;

procedure TFrmBoletoBancario.chkClienteClick(Sender: TObject);
begin

   if chkCliente.Checked = True then
   Begin
      EditCliente.Enabled := False;
   End
   Else
   Begin
      EditCliente.Enabled := True;
      EditCliente.SetFocus;
   End;

end;

procedure TFrmBoletoBancario.ComboCedentesEnter(Sender: TObject);
begin
   db_BoletoConfigurar.Close;
   db_BoletoConfigurar.open;
end;

Procedure TFrmBoletoBancario.MarcarImpressao(NCODIGO: Integer;
  SNossoNumero: String);
Begin

   db_CtaReceberBaixar.Close;
   db_CtaReceberBaixar.SQL.Clear;
   db_CtaReceberBaixar.SQL.add(' UPDATE FIN_CTARECEBER SET ');
   db_CtaReceberBaixar.SQL.add(' GERARBOLETO=:SGERARBOLETO,  ');
   db_CtaReceberBaixar.SQL.add(' NOSSONUMERO=:SNOSSONUMERO  ');
   db_CtaReceberBaixar.SQL.add(' WHERE  ');
   db_CtaReceberBaixar.SQL.add(' CODIGO=:NCODIGO  ');
   db_CtaReceberBaixar.ParamByName('NCODIGO').AsInteger := NCODIGO;
   db_CtaReceberBaixar.ParamByName('SGERARBOLETO').AsString := 'S';
   db_CtaReceberBaixar.ParamByName('SNOSSONUMERO').AsString := SNossoNumero;
   db_CtaReceberBaixar.ExecSQL;

   db_ContaCorrenteBoleto.Close;
   db_ContaCorrenteBoleto.open;
   if db_ContaCorrenteBoleto.Locate('CODIGO',
     db_BoletoConfigurar.FieldByName('CODIGO').AsInteger, []) then
   begin
      db_ContaCorrenteBoleto.Edit;
      db_ContaCorrenteBoleto.FieldByName('PROXIMONOSSONUMERO').AsString :=
        SNossoNumero;
      db_ContaCorrenteBoleto.Post;
   end;
   // db_ContaCorrenteBoleto.close;

End;

procedure TFrmBoletoBancario.MarcarRemessa(NCODIGO: Integer;
  SNossoNumero: String);
begin

   db_CtaReceberBaixar.Close;
   db_CtaReceberBaixar.SQL.Clear;
   db_CtaReceberBaixar.SQL.add(' UPDATE FIN_CTARECEBER SET ');
   db_CtaReceberBaixar.SQL.add(' GERARREMESSA=:SREMESSA, ');
   db_CtaReceberBaixar.SQL.add(' NOSSONUMERO=:SNOSSONUMERO  ');
   db_CtaReceberBaixar.SQL.add(' WHERE  ');
   db_CtaReceberBaixar.SQL.add(' CODIGO=:NCODIGO  ');
   db_CtaReceberBaixar.ParamByName('NCODIGO').AsInteger := NCODIGO;
   db_CtaReceberBaixar.ParamByName('SREMESSA').AsString := 'S';
   db_CtaReceberBaixar.ParamByName('SNOSSONUMERO').AsString := SNossoNumero;
   db_CtaReceberBaixar.ExecSQL;

   db_ContaCorrenteBoleto.Close;
   db_ContaCorrenteBoleto.open;
   if db_ContaCorrenteBoleto.Locate('CODIGO',
     db_BoletoConfigurar.FieldByName('CODIGO').AsInteger, []) then
   begin
      db_ContaCorrenteBoleto.Edit;
      db_ContaCorrenteBoleto.FieldByName('PROXIMONOSSONUMERO').AsString :=
        SNossoNumero;
      db_ContaCorrenteBoleto.Post;
   end;
   // db_ContaCorrenteBoleto.close;

end;

procedure TFrmBoletoBancario.db_ViewBoletosAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(db_ViewBoletos);
end;

procedure TFrmBoletoBancario.db_ViewBoletosRemessasAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(db_ViewBoletosRemessas);
end;

procedure TFrmBoletoBancario.dtFinalExit(Sender: TObject);
begin
   dtFinal.Text := fncDataValidar(dtFinal.Text);
end;

procedure TFrmBoletoBancario.dtInicialExit(Sender: TObject);
begin
   dtInicial.Text := fncDataValidar(dtInicial.Text);
end;

procedure TFrmBoletoBancario.PesquisarBoletos;
Var
   Calcular: Currency;
begin

   if ComboCedentes.Text = '' then
   begin
      ComboCedentes.SetFocus;
      Informar('Selecione "Configuração do Boleto" ');
      Abort;
   end;

   dtDataIni := StrToDate(dtInicial.Text);
   dtDataFim := StrToDate(dtFinal.Text);
   // sCodVendedor        := Trim(EditVendedor.text);


   // -----------------------------------------------------------------------
   // Classificar boletos por:
   // -----------------------------------------------------------------------

   db_ViewBoletos.Close;
   db_ViewBoletos.SQL.Clear;
   db_ViewBoletos.SQL.add(' SELECT * FROM VIEW_BOLETOS ');
   db_ViewBoletos.SQL.add(' WHERE  ');
   db_ViewBoletos.SQL.add(' VENCIMENTO>=:DATA1 AND VENCIMENTO<=:DATA2 ');

   if not chkCliente.Checked then
   Begin
      db_ViewBoletos.SQL.add(' AND ');
      db_ViewBoletos.SQL.add(' CLIENTE=:CLIENTE ');
   End;

   db_ViewBoletos.SQL.add(' ORDER BY NOME_CLIENTE, VENCIMENTO, DOCUMENTO  ');
   db_ViewBoletos.ParamByName('DATA1').AsDate := dtDataIni;
   db_ViewBoletos.ParamByName('DATA2').AsDate := dtDataFim;

   if not chkCliente.Checked then
   Begin
      db_ViewBoletos.ParamByName('CLIENTE').AsString :=
        Alltrim(Trim(EditCliente.Text));
   End;

   // x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x

   db_ViewBoletosRemessas.Close;
   db_ViewBoletosRemessas.SQL.Clear;
   db_ViewBoletosRemessas.SQL.add(' SELECT * FROM VIEW_BOLETOS ');
   db_ViewBoletosRemessas.SQL.add(' WHERE  ');
   // db_ViewBoletosRemessas.sql.add(' GERARREMESSA IN ('+QuotedStr('S')+','+ QuotedStr('SIM')+ ')'  );
   // db_ViewBoletosRemessas.sql.add(' AND  ');
   db_ViewBoletosRemessas.SQL.add
     (' VENCIMENTO>=:DATA1 AND VENCIMENTO<=:DATA2 ');
   if not chkCliente.Checked then
   Begin
      db_ViewBoletosRemessas.SQL.add(' AND ');
      db_ViewBoletosRemessas.SQL.add(' CLIENTE=:CLIENTE ');
   End;
   db_ViewBoletosRemessas.SQL.add
     (' ORDER BY NOME_CLIENTE, VENCIMENTO, DOCUMENTO  ');
   db_ViewBoletosRemessas.ParamByName('DATA1').AsDate := dtDataIni;
   db_ViewBoletosRemessas.ParamByName('DATA2').AsDate := dtDataFim;
   if not chkCliente.Checked then
   Begin
      db_ViewBoletosRemessas.ParamByName('CLIENTE').AsString :=
        Alltrim(Trim(EditCliente.Text));
   End;

   // -----------------------------------------------------------------------
   // Abrir Tabela com os dados filtrados:
   // -----------------------------------------------------------------------
   db_ViewBoletos.open;
   db_ViewBoletosRemessas.open;

   // x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x

   FrmBoletoBancario.Caption := 'Boleto Bancário [Gerar e Imprimir] (' +
     FormatFloat('###,##0', db_ViewBoletos.RecordCount) + ' registros )';

   db_ViewBoletos.first;
   Calcular := 0;
   while not db_ViewBoletos.eof do
   begin
      Calcular := Calcular + db_ViewBoletos.FieldByName('Valor').AsFloat;
      db_ViewBoletos.next;
   end;
   LblTotal.Caption := FormatSettings.CurrencyString + FormatFloat('###,##0.00',
     Calcular);

   db_ViewBoletos.first;

end;

end.
