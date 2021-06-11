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

unit FCompraCodigoBarra;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, db, Buttons, jpeg, ISFEdit, ISFEditbtn,
   ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos;

type
   TFrmCompraCodigoBarra = class(TForm)
      Panel3: TPanel;
      lbl_atalhos: TLabel;
      Edit_produto: TLabeledEdit;
      PainelMsg: TPanel;
      EditQtde: TLabeledEdit;
      Panel1: TPanel;
      dbProcurarFichaTecnica: TIDBEditDialog;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure Edit_produtoKeyPress(Sender: TObject; var Key: Char);
      procedure Edit_produtoKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure EditQtdeKeyPress(Sender: TObject; var Key: Char);
      procedure EditQtdeExit(Sender: TObject);
   private
      { Private declarations }

      // utilizado para LEITORES DE CODIGO DE BARRAS
      ViaLeitor: Boolean;

   public
      { Public declarations }
   end;

var
   FrmCompraCodigoBarra: TFrmCompraCodigoBarra;

implementation

uses Biblioteca, Global, FComprasImprimir, FProdutos, FCompraEntrada,
   App.Funcoes;

{$R *.dfm}

procedure TFrmCompraCodigoBarra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_ESCAPE then
   Begin
      close;
   End;

   // Acrescentar
   If Key = VK_F3 then
   Begin
      Achar[99] := '+';
      PainelMsg.Caption := 'Acrescentar';
      PainelMsg.Color := clWhite;
      PainelMsg.Font.Color := clRed;
      Update;
   End;

   // Dimunir
   If Key = VK_F4 then
   Begin
      Achar[99] := '-';
      PainelMsg.Color := clRed;
      PainelMsg.Font.Color := clWhite;
      PainelMsg.Caption := 'Diminuir';
      Update;
   End;

   // Lançamento automático
   If Key = VK_F5 then
   Begin
      EditQtde.Visible := false;
      ViaLeitor := True;
      EditQtde.text := '0';
   End;

   // Lançamento manual
   If Key = VK_F6 then
   Begin
      EditQtde.Visible := True;
      ViaLeitor := false;
      EditQtde.text := '0';
   End;
end;

procedure TFrmCompraCodigoBarra.Edit_produtoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

   IF Key = VK_F8 Then
   begin
      if dbProcurarFichaTecnica.Execute then
         Edit_produto.text := dbProcurarFichaTecnica.ResultFieldAsString
           ('REFERENCIA');
   end;

end;

procedure TFrmCompraCodigoBarra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   // checar se o produto existe
   wInteger[0] := 0; // Quantidade disponivel do tamanho U
   wInteger[1] := 0; // Quantidade disponivel do tamanho P
   wInteger[2] := 0; // Quantidade disponivel do tamanho M
   wInteger[3] := 0; // Quantidade disponivel do tamanho G
   wInteger[4] := 0; // Quantidade disponivel do tamanho GG

   Action := cafree;
end;

procedure TFrmCompraCodigoBarra.FormCreate(Sender: TObject);
begin

   Edit_produto.text := '';
   Achar[99] := '+'; // irá adicionar o item na lista
   ViaLeitor := false;

   lbl_atalhos.Caption :=
     '<F1>-Ajuda     -     <F5>-Automático     -     <F6>-Manual     -     <ESC>-Sair'
     + #13 + #10 +
     '<F3>-Acrescentar     <F4>-Diminuir     <F9> Cadastro de Produtos'

end;

procedure TFrmCompraCodigoBarra.Edit_produtoKeyPress(Sender: TObject;
  var Key: Char);
begin

   // codigo de barras
   if Key = #13 then
   begin

      Edit_produto.text := alltrim(Edit_produto.text);
      Edit_produto.text := UpperCase(Edit_produto.text);
      wTexto[99] := UpperCase(Edit_produto.text);

      if empty(Edit_produto.text) then
         exit;

      FrmCompraEntrada.DB_Estoque.close;
      FrmCompraEntrada.DB_Estoque.ParamByName('REFERENCIA').AsString :=
        Edit_produto.text;
      FrmCompraEntrada.DB_Estoque.open;

      if FrmCompraEntrada.DB_Estoque.recordcount < 1 then
      begin
         Informar('Produto ' + Edit_produto.text + ' não cadastrado');
         Edit_produto.setfocus;
         exit;
      end;

      FrmCompraEntrada.DB_Estoque.First;

      // checar se exite
      if FrmCompraEntrada.db_ComprasItens.Locate('PRODUTO', wTexto[99], []) = True
      then
      begin
         FrmCompraEntrada.db_ComprasItens.Edit;
      end
      else
      begin
         FrmCompraEntrada.db_ComprasItens.Append;
         FrmCompraEntrada.db_ComprasItens.FieldByName('PRODUTO').AsString :=
           Edit_produto.text;
         FrmCompraEntrada.db_ComprasItens.FieldByName('DESCRICAO').AsString :=
           FrmCompraEntrada.DB_Estoque.FieldByName('DESCRICAO').AsString;
         FrmCompraEntrada.db_ComprasItens.FieldByName('UND').AsString :=
           FrmCompraEntrada.DB_Estoque.FieldByName('UNIDADE').AsString;
         FrmCompraEntrada.db_ComprasItens.FieldByName('ICMS').AsFloat :=
           FrmCompraEntrada.DB_Estoque.FieldByName('ICMS').AsFloat;
         FrmCompraEntrada.db_ComprasItens.FieldByName('IPI').AsFloat :=
           FrmCompraEntrada.DB_Estoque.FieldByName('IPI').AsFloat;
         FrmCompraEntrada.db_ComprasItens.FieldByName('VL_UNITARIO').AsFloat :=
           FrmCompraEntrada.DB_Estoque.FieldByName('PRC_CUSTO').AsFloat;
      end;

      // se for informado via leitor
      if ViaLeitor then
      begin

         // irá adicionar o item na lista
         If Achar[99] = '+' then
         begin
            FrmCompraEntrada.db_ComprasItens.FieldByName('PRODUTO').AsString :=
              wTexto[99];
            FrmCompraEntrada.db_ComprasItens.FieldByName('QUANTIDADE').AsFloat
              := FrmCompraEntrada.db_ComprasItens.FieldByName('QUANTIDADE')
              .AsFloat + 1;
         End;

         If Achar[99] = '-' then
         begin
            FrmCompraEntrada.db_ComprasItens.FieldByName('PRODUTO').AsString :=
              wTexto[99];
            FrmCompraEntrada.db_ComprasItens.FieldByName('QUANTIDADE').AsFloat
              := FrmCompraEntrada.db_ComprasItens.FieldByName('QUANTIDADE')
              .AsFloat - 1;

            if FrmCompraEntrada.db_ComprasItens.FieldByName('QUANTIDADE')
              .AsFloat < 0 then
               FrmCompraEntrada.db_ComprasItens.FieldByName('QUANTIDADE')
                 .AsFloat := 0;
         End;

         // salvar
         If (FrmCompraEntrada.db_ComprasItens.State in [dsedit, dsinsert]) then
         Begin
            FrmCompraEntrada.db_ComprasItens.post;
         end;

         Edit_produto.text := '';
         FrmCompraEntrada.DB_Estoque.close;

         Edit_produto.setfocus;

      end { if ViaLeitor then... }
      else
      begin
         EditQtde.setfocus;
      end;

   end;

end;

procedure TFrmCompraCodigoBarra.EditQtdeKeyPress(Sender: TObject;
  var Key: Char);
begin

   if Key = #13 then
   begin
      try
         // testar se é valor valido
         if TestNumero(EditQtde.text) = false then
         begin
            Informar('O campo quantidade não é um valor válido');
            EditQtde.setfocus;
         end;

         // irá adicionar o item na lista
         If Achar[99] = '+' then
         begin
            FrmCompraEntrada.db_ComprasItens.FieldByName('PRODUTO').AsString :=
              wTexto[99];
            FrmCompraEntrada.db_ComprasItens.FieldByName('QUANTIDADE').AsFloat
              := FrmCompraEntrada.db_ComprasItens.FieldByName('QUANTIDADE')
              .AsFloat + StrToFloat(EditQtde.text);
         End;

         If Achar[99] = '-' then
         begin
            FrmCompraEntrada.db_ComprasItens.FieldByName('PRODUTO').AsString :=
              wTexto[99];
            FrmCompraEntrada.db_ComprasItens.FieldByName('QUANTIDADE').AsFloat
              := FrmCompraEntrada.db_ComprasItens.FieldByName('QUANTIDADE')
              .AsFloat - StrToFloat(EditQtde.text);

            if FrmCompraEntrada.db_ComprasItens.FieldByName('QUANTIDADE')
              .AsFloat < 0 then
               FrmCompraEntrada.db_ComprasItens.FieldByName('QUANTIDADE')
                 .AsFloat := 0;
         End;

         // salvar
         If (FrmCompraEntrada.db_ComprasItens.State in [dsedit, dsinsert]) then
         Begin
            FrmCompraEntrada.db_ComprasItens.post;
         end;

         Edit_produto.text := '';
         EditQtde.text := '';
         FrmCompraEntrada.DB_Estoque.close;
      finally
         Edit_produto.setfocus;
      end;

   End;

end;

procedure TFrmCompraCodigoBarra.EditQtdeExit(Sender: TObject);
begin
   EditQtde.text := IntToStr(StrToIntDef(EditQtde.text, 0));
end;

end.
