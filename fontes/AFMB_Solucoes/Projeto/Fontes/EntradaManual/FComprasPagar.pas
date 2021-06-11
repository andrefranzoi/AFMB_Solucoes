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

unit FComprasPagar;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB;

type
   TFrmComprasPagar = class(TForm)
      GroupBox5: TGroupBox;
      DBGrid2: TDBGrid;
      Panel7: TPanel;
      BitBtn2: TBitBtn;
      BitBtn3: TBitBtn;
      GroupBox1: TGroupBox;
      DBGrid1: TDBGrid;
      Panel1: TPanel;
      BitBtn4: TBitBtn;
      BitBtn5: TBitBtn;
      BitBtn6: TBitBtn;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BitBtn2Click(Sender: TObject);
      procedure BitBtn3Click(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
      procedure BitBtn6Click(Sender: TObject);
      procedure BitBtn4Click(Sender: TObject);
      procedure BitBtn5Click(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmComprasPagar: TFrmComprasPagar;

implementation

uses FCompraEntrada, Biblioteca;

{$R *.dfm}

procedure TFrmComprasPagar.BitBtn2Click(Sender: TObject);
begin
   If FrmCompraEntrada.db_CtaPagar.IsEmpty then
      exit;
   If Pergunta('Deseja excluir registro selecionado?') = false then
      exit;

   FrmCompraEntrada.db_CtaPagar.close;
   FrmCompraEntrada.db_CtaPagar.Open;
   try
      FrmCompraEntrada.db_CtaPagar.Delete;
   finally
      FrmCompraEntrada.db_CtaPagar.close;
      FrmCompraEntrada.db_CtaPagar.Open;
   end;

end;

procedure TFrmComprasPagar.BitBtn3Click(Sender: TObject);
begin
   If FrmCompraEntrada.db_CtaPagar.IsEmpty then
      exit;
   If Pergunta('Deseja realmente excluir tudo?') = false then
      exit;
   FrmCompraEntrada.db_CtaPagar.close;
   FrmCompraEntrada.db_CtaPagar.Open;
   try
      While not FrmCompraEntrada.db_CtaPagar.Eof do
         FrmCompraEntrada.db_CtaPagar.Delete;
   finally
      FrmCompraEntrada.db_CtaPagar.close;
      FrmCompraEntrada.db_CtaPagar.Open;
   end;
end;

procedure TFrmComprasPagar.BitBtn4Click(Sender: TObject);
begin
   If FrmCompraEntrada.db_CtaPagarFrete.IsEmpty then
      exit;

   If Pergunta('[FRETE A PAGAR] Deseja excluir registro selecionado?') = false
   then
      exit;

   FrmCompraEntrada.db_CtaPagarFrete.close;
   FrmCompraEntrada.db_CtaPagarFrete.Open;
   try
      FrmCompraEntrada.db_CtaPagarFrete.Delete;
   finally
      FrmCompraEntrada.db_CtaPagarFrete.close;
      FrmCompraEntrada.db_CtaPagarFrete.Open;
   end;

end;

procedure TFrmComprasPagar.BitBtn5Click(Sender: TObject);
begin
   If FrmCompraEntrada.db_CtaPagarFrete.IsEmpty then
      exit;

   If Pergunta('[FRETE A PAGAR] Deseja realmente excluir tudo?') = false then
      exit;
   FrmCompraEntrada.db_CtaPagarFrete.close;
   FrmCompraEntrada.db_CtaPagarFrete.Open;
   try
      While not FrmCompraEntrada.db_CtaPagarFrete.Eof do
         FrmCompraEntrada.db_CtaPagarFrete.Delete;
   finally
      FrmCompraEntrada.db_CtaPagarFrete.close;
      FrmCompraEntrada.db_CtaPagarFrete.Open;
   end;
end;

procedure TFrmComprasPagar.BitBtn6Click(Sender: TObject);
begin

   If (FrmCompraEntrada.db_CtaPagar.state in [dsedit, dsinsert]) then
   Begin
      FrmCompraEntrada.db_CtaPagar.Post;
   End;

   If (FrmCompraEntrada.db_CtaPagarFrete.state in [dsedit, dsinsert]) then
   Begin
      FrmCompraEntrada.db_CtaPagarFrete.Post;
   End;

   close;

end;

procedure TFrmComprasPagar.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmComprasPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   Action := cafree;
end;

procedure TFrmComprasPagar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      close;

end;

end.
