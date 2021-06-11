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

unit FRelEntregas;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, FrmRelatorios, ISFEdit,
   ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos;

type
   TFrmRelEntregas = class(TForm)
      Panel1: TPanel;
      RadioG: TRadioGroup;
      GroupBox2: TGroupBox;
      Label3: TLabel;
      Label4: TLabel;
      MskDataIni: TMaskEdit;
      MskDataFim: TMaskEdit;
      chkCliente: TCheckBox;
      BoxRepresentante: TGroupBox;
      Label5: TLabel;
      DCodRepres: TEdit;
      chkRepres: TCheckBox;
      Panel2: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
      RdPedidos: TRadioGroup;
      FrameRelatorios1: TFrameRelatorios;
      EditCliente: TIDBEditDialog;
      EditClienteNome: TEdit;
      procedure Btn_SairClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure MskDataIniExit(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BtnSairClick(Sender: TObject);
      procedure chkRepresClick(Sender: TObject);
      procedure chkClienteClick(Sender: TObject);
      procedure EditMarcaKeyPress(Sender: TObject; var Key: Char);
      procedure DCodClienteKeyPress(Sender: TObject; var Key: Char);
      procedure DCodRepresKeyPress(Sender: TObject; var Key: Char);
      procedure RadioGClick(Sender: TObject);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelEntregas: TFrmRelEntregas;

implementation

uses Biblioteca, Global, FPrincipal, FRelEntregas_Geral;

{$R *.DFM}

procedure TFrmRelEntregas.Btn_SairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmRelEntregas.FormCreate(Sender: TObject);
begin
   CodIni := '';
   CodFim := '';
   Achar[0] := '';
   MskDataIni.Text := dateToStr(Date - 60);
   MskDataFim.Text := dateToStr(Date + 365);

end;

Procedure TFrmRelEntregas.MskDataIniExit(Sender: TObject);
Begin

   MskDataIni.Text := fncDataValidar(MskDataIni.Text);

End;

procedure TFrmRelEntregas.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.Text := fncDataValidar(MskDataFim.Text);
end;

procedure TFrmRelEntregas.Btn_ImprimirClick(Sender: TObject);
begin

   // relatório de Pedidos - Abertos
   If RadioG.ItemIndex = 0 then
   Begin
      FrmRelEntregas_Geral := TFrmRelEntregas_Geral.create(self);
   End;

End;

procedure TFrmRelEntregas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      Close;

end;

procedure TFrmRelEntregas.BtnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmRelEntregas.chkRepresClick(Sender: TObject);
begin

   if chkRepres.Checked = true then
   Begin
      DCodRepres.Enabled := False;
   End
   Else
   Begin
      DCodRepres.Enabled := true;
      DCodRepres.SelectAll;
      DCodRepres.SetFocus;
   End;

end;

procedure TFrmRelEntregas.chkClienteClick(Sender: TObject);
begin
   if chkCliente.Checked = true then
   Begin
      EditCliente.Enabled := False;
   End
   Else
   Begin
      EditCliente.Enabled := true;
      EditCliente.SetFocus;
   End;

end;

procedure TFrmRelEntregas.EditMarcaKeyPress(Sender: TObject; var Key: Char);
begin

   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
   Begin
      Key := #0;
      Erro('Esse campo é somente numerico' + #13 + #10 +
        'Tecle F8 para pesquisar as marcas cadastradas');
   End;

end;

procedure TFrmRelEntregas.DCodClienteKeyPress(Sender: TObject; var Key: Char);
begin
   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
   Begin
      Key := #0;
      Erro('Esse campo é somente numerico' + #13 + #10 +
        'Tecle F8 para pesquisar os clientes');
   End;

end;

procedure TFrmRelEntregas.DCodRepresKeyPress(Sender: TObject; var Key: Char);
begin
   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
   Begin
      Key := #0;
      Erro('Esse campo é somente numerico' + #13 + #10 +
        'Tecle F8 para pesquisar os representantes');
   End;

end;

procedure TFrmRelEntregas.RadioGClick(Sender: TObject);
begin

   If RadioG.ItemIndex = 0 then
   begin
      TRadioGroup(RdPedidos.Controls[3]).Enabled := true;
   end;

   If (RadioG.ItemIndex = 1) then
   Begin
      TRadioGroup(RdPedidos.Controls[3]).Enabled := False;
   End;

   If (RadioG.ItemIndex = 2) then
   Begin
      TRadioGroup(RdPedidos.Controls[3]).Enabled := False;
   End;

end;

end.
