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

unit FRelCtaReceber;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, FrmRelatorios, ISFEdit, ISFEditbtn,
   ISFdbEditbtn, uEstSearchDialogZeos, IDBEdit, DB,
   frxClass, frxDBSet, FFrameBarra;

type
   TFrmRelCtaReceber = class(TForm)
      Panel1: TPanel;
      Panel2: TPanel;
      FrmFrameBarra1: TFrmFrameBarra;
      Painel00: TPanel;
      GroupBox2: TGroupBox;
      rAgrupar: TRadioGroup;
      rRestricao: TRadioGroup;
      MskDataFim: TMaskEdit;
      MskDataIni: TMaskEdit;
      Label3: TLabel;
      Label4: TLabel;
      Panel4: TPanel;
      BoxRepresentante: TGroupBox;
      chkRepres: TCheckBox;
      EditVendedor: TIDBEditDialog;
      EditNomeVendedor: TEdit;
      GroupBox1: TGroupBox;
      chkClientes: TCheckBox;
      EditCliente: TIDBEditDialog;
      EditClienteNome: TEdit;
      Painel01: TPanel;
      RadioG: TRadioGroup;
      GroupBox3: TGroupBox;
      GroupBox5: TGroupBox;
      chkFormaPagto: TCheckBox;
      EditNomeFormaPagto: TEdit;
      EditPagamento: TIDBEditDialog;
      GroupBoxContabanco: TGroupBox;
      chkContaBancaria: TCheckBox;
      EditContaCorrente: TEdit;
      EditContaBancaria: TIDBEditDialog;
      GroupBoxContaCaixa: TGroupBox;
      chkContaCaixa: TCheckBox;
      EditContaCaixa: TIDBEditDialog;
      EditContaCaixaNome: TEdit;
      GroupBoxCarteira: TGroupBox;
      chkCarteira: TCheckBox;
      Edit1: TEdit;
      EditCarteira: TIDBEditDialog;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
      procedure FormCreate(Sender: TObject);
      procedure MskDataIniExit(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSairClick(Sender: TObject);
      procedure chkClientesClick(Sender: TObject);
      procedure chkRepresClick(Sender: TObject);
      procedure RadioGClick(Sender: TObject);
      procedure chkContaCaixaClick(Sender: TObject);
      procedure chkContaBancariaClick(Sender: TObject);
      procedure chkFormaPagtoClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure chkCarteiraClick(Sender: TObject);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelCtaReceber: TFrmRelCtaReceber;
   vFiltroData: String;

implementation

uses Biblioteca, Global, FRelReceb_Extrato, FRelReceb_Receber,
   FRelReceb_Vencidas, FRelReceb_Quitadas,
   FRelReceb_Historico, FRelReceb_QuitadasDataPagto, FPrincipal;

{$R *.DFM}

procedure TFrmRelCtaReceber.FormCreate(Sender: TObject);
begin
   MskDataIni.text := DateToStr(date - 90);
   MskDataFim.text := DateToStr(date + 90);
end;

procedure TFrmRelCtaReceber.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      close;

end;

procedure TFrmRelCtaReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFrmRelCtaReceber.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.text := fncDataValidar(MskDataIni.text);

end;

procedure TFrmRelCtaReceber.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.text := fncDataValidar(MskDataFim.text);
end;

procedure TFrmRelCtaReceber.Btn_ImprimirClick(Sender: TObject);
begin

   dtDataIni := StrToDate(MskDataIni.text);
   dtDataFim := StrToDate(MskDataFim.text);
   strVendedor := Trim(EditVendedor.text);
   strContaCaixa := Trim(EditContaCaixa.text);
   strCarteira := Trim(EditCarteira.text);
   strContaCorrente := Trim(EditContaBancaria.text);
   strFormaPagamento := Trim(EditPagamento.text);

   strNomeAgrupamento := UpperCase(rAgrupar.Items[rAgrupar.ItemIndex] + ':');

   case rAgrupar.ItemIndex of

      0:
         Begin
            Agrupar := 'VENCIMENTO';
            strOrdemDados := '  VENCIMENTO, NOME_CLIENTE ';
         End;

      1:
         Begin
            Agrupar := 'DATA';
            strOrdemDados := '  DATA, NOME_CLIENTE ';
         End;

      2:
         Begin
            Agrupar := 'DATA_PAGTO';
            strOrdemDados := '  DATA_PAGTO, NOME_CLIENTE ';
         End;
   End;

   case rRestricao.ItemIndex of

      0:
         strRestricaoCredito := '';
      1:
         strRestricaoCredito := 'S';
      2:
         strRestricaoCredito := 'N';

   End;

   case RadioG.ItemIndex of
      0:
         FrmRelReceb_Extrato := TFrmRelReceb_Extrato.create(self);
      1:
         FrmRelReceb_Receber := TFrmRelReceb_Receber.create(self);
      2:
         FrmRelReceb_Vencidas := TFrmRelReceb_Vencidas.create(self);
      3:
         FrmRelReceb_Quitadas := TFrmRelReceb_Quitadas.create(self);
      4:
         FrmRelReceb_QuitadasDataPagto :=
           TFrmRelReceb_QuitadasDataPagto.create(self);
      5:
         FrmRelReceb_Historico := TFrmRelReceb_Historico.create(self);
   end;

end;

procedure TFrmRelCtaReceber.chkFormaPagtoClick(Sender: TObject);
begin
   if chkFormaPagto.Checked = true then
   Begin
      EditPagamento.Enabled := False;
   End
   Else
   Begin
      EditPagamento.Enabled := true;
      EditPagamento.SetFocus;
   End;

end;

procedure TFrmRelCtaReceber.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmRelCtaReceber.chkCarteiraClick(Sender: TObject);
begin
   if chkCarteira.Checked = true then
   Begin
      EditCarteira.Enabled := False;
   End
   Else
   Begin
      EditCarteira.Enabled := true;
      EditCarteira.SetFocus;
   End;

end;

procedure TFrmRelCtaReceber.chkClientesClick(Sender: TObject);
begin

   if chkClientes.Checked = true then
   Begin
      EditCliente.Enabled := False;
   End
   Else
   Begin
      EditCliente.Enabled := true;
      EditCliente.SetFocus;
   End;

end;

procedure TFrmRelCtaReceber.chkContaBancariaClick(Sender: TObject);
begin
   if chkContaBancaria.Checked = true then
   Begin
      EditContaBancaria.Enabled := False;
   End
   Else
   Begin
      EditContaBancaria.Enabled := true;
      EditContaBancaria.SetFocus;
   End;

end;

procedure TFrmRelCtaReceber.chkContaCaixaClick(Sender: TObject);
begin
   if chkContaCaixa.Checked = true then
   Begin
      EditContaCaixa.Enabled := False;
   End
   Else
   Begin
      EditContaCaixa.Enabled := true;
      EditContaCaixa.SetFocus;
   End;

end;

procedure TFrmRelCtaReceber.chkRepresClick(Sender: TObject);
begin
   if chkRepres.Checked = true then
   Begin
      EditVendedor.Enabled := False;

   End
   Else
   Begin
      EditVendedor.Enabled := true;
      EditVendedor.SetFocus;
   End;

end;

procedure TFrmRelCtaReceber.RadioGClick(Sender: TObject);
begin

   {
     if RadioG.ItemIndex = 4 then
     Begin
     rAgrupar.ItemIndex := 1;
     End
     else
     begin
     rAgrupar.ItemIndex := 0;
     end;
   }

   if RadioG.ItemIndex = 6 then
   Begin
      GroupBox2.Caption := 'Periodo do Agendamento';
   End
   else
   begin
      GroupBox2.Caption := 'Periodo de &Vencimentos';
   end;

end;

end.
