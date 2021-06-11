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

unit FRelCtaPagar;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, FrmRelatorios, ISFEdit, ISFEditbtn,
   ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos;

type
   TFrmRelCtaPagar = class(TForm)
      Panel1: TPanel;
      RadioG: TRadioGroup;
      GroupBox1: TGroupBox;
      chkFornecedor: TCheckBox;
      GroupBox2: TGroupBox;
      Label3: TLabel;
      Label4: TLabel;
      MskDataIni: TMaskEdit;
      MskDataFim: TMaskEdit;
      Panel2: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
      rAgrupar: TRadioGroup;
      FrameRelatorios1: TFrameRelatorios;
      EditFornecedor: TIDBEditDialog;
      EditNomeCliente: TEdit;
      GroupBoxContaCaixa: TGroupBox;
      chkContaCaixa: TCheckBox;
      EditContaCaixa: TIDBEditDialog;
      EditContaCaixaNome: TEdit;
      GroupBoxContabanco: TGroupBox;
      chkContaBancaria: TCheckBox;
      EditContaCorrente: TEdit;
      EditContaBancaria: TIDBEditDialog;
      procedure FormCreate(Sender: TObject);
      procedure MskDataIniExit(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSairClick(Sender: TObject);
      procedure chkFornecedorClick(Sender: TObject);
      procedure RadioGClick(Sender: TObject);
      procedure chkContaCaixaClick(Sender: TObject);
      procedure chkContaBancariaClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelCtaPagar: TFrmRelCtaPagar;

implementation

uses Biblioteca, Global, FRelPagar_Extrato, FRelPagar_Vencidas,
   FRelPagar_Quitadas,
   FRelPagar_Historico, FRelPagar_Pagar,
   FBaseDados;

{$R *.DFM}

procedure TFrmRelCtaPagar.FormCreate(Sender: TObject);
begin
   MskDataIni.text := DateToStr(date - 90);
   MskDataFim.text := DateToStr(date + 90);

end;

procedure TFrmRelCtaPagar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      close;

end;

procedure TFrmRelCtaPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFrmRelCtaPagar.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.text := fncDataValidar(MskDataIni.text);

end;

procedure TFrmRelCtaPagar.RadioGClick(Sender: TObject);
begin
   if RadioG.ItemIndex = 5 then
   Begin
      GroupBox2.Caption := 'Periodo do Agendamento';
   End
   else
   begin
      GroupBox2.Caption := 'Periodo de &Vencimentos';
   end;

end;

procedure TFrmRelCtaPagar.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.text := fncDataValidar(MskDataFim.text);

end;

procedure TFrmRelCtaPagar.Btn_ImprimirClick(Sender: TObject);
begin

   dtDataIni := StrToDate(MskDataIni.text);
   dtDataFim := StrToDate(MskDataFim.text);
   strFornecedor := Trim(EditFornecedor.text);
   strContaCaixa := Trim(EditContaCaixa.text);
   strContaCorrente := Trim(EditContaBancaria.text);

   if RadioG.ItemIndex = 0 then
   Begin
      FrmRelPagar_Extrato := TFrmRelPagar_Extrato.create(self);
      // MostraPreview(FrmRelPagar.QuickRep1);
   End;

   if RadioG.ItemIndex = 1 then
   Begin
      FrmRelPagar_Pagar := TFrmRelPagar_Pagar.create(self);
      // MostraPreview(FrmRelCtPagar.QuickRep);
   End;

   If RadioG.ItemIndex = 2 then
   Begin
      FrmRelPagar_Vencidas := TFrmRelPagar_Vencidas.create(self);
      // MostraPreview(FrmRelCtpQuitada.QuickRep);
   End;

   if RadioG.ItemIndex = 3 then
   Begin
      FrmRelPagar_Quitadas := TFrmRelPagar_Quitadas.create(self);
      // MostraPreview(FrmRelCtpFornecedor.QuickRep);
   End;

   if RadioG.ItemIndex = 4 then
   Begin
      FrmRelPagar_Historico := TFrmRelPagar_Historico.create(self);
      // MostraPreview(FrmRelCtpEspecie.QuickRep);
   End;

end;

procedure TFrmRelCtaPagar.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmRelCtaPagar.chkFornecedorClick(Sender: TObject);
begin

   if chkFornecedor.Checked = true then
   Begin
      EditFornecedor.Enabled := False;
   End
   Else
   Begin
      EditFornecedor.Enabled := true;
      EditFornecedor.SelectAll;
      EditFornecedor.SetFocus;
   End;

end;

procedure TFrmRelCtaPagar.chkContaBancariaClick(Sender: TObject);
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

procedure TFrmRelCtaPagar.chkContaCaixaClick(Sender: TObject);
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

end.
