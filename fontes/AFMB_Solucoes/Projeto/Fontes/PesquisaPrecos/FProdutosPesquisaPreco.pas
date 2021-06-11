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

unit FProdutosPesquisaPreco;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, db, Buttons, jpeg, Mask, DBCtrls,

   Grids, DBGrids, ISFEdit, ISFEditbtn,
   ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FireDAC.Stan.Intf,
   FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
   FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
   FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmProdutosPesquisaPreco = class(TForm)
      Panel3: TPanel;
      Label18: TLabel;
      db_estoque: TFDQuery;
      ds_estoque: TDataSource;
      Panel1: TPanel;
      Image2: TImage;
      Panel4: TPanel;
      EditCodigo: TLabeledEdit;
      Painel1: TPanel;
      EditQtde: TLabeledEdit;
      EditNomeProduto: TLabeledEdit;
      EditPreco: TLabeledEdit;
      EditCodigoProduto: TLabeledEdit;
      ds_estoqueEstoque: TDataSource;
      db_estoqueEstoque: TFDQuery;
      dbProcurarProduto: TIDBEditDialog;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure EditCodigoKeyPress(Sender: TObject; var Key: Char);
      procedure EditCodigoKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
   private
      { Private declarations }

      ViaLeitor: Boolean;

   public
      { Public declarations }
   end;

var
   FrmProdutosPesquisaPreco: TFrmProdutosPesquisaPreco;

implementation

uses FPrincipal, App.SQL, Biblioteca, Global, FProdutosQuantidade;

{$R *.dfm}

procedure TFrmProdutosPesquisaPreco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_ESCAPE then
   Begin
      close;
   End;

end;

procedure TFrmProdutosPesquisaPreco.FormClose(Sender: TObject;
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

procedure TFrmProdutosPesquisaPreco.EditCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

   if Key = vk_f8 then
      if dbProcurarProduto.Execute then
      begin
         EditCodigo.Text := dbProcurarProduto.ResultFieldAsString('REFERENCIA');
      end;

end;

procedure TFrmProdutosPesquisaPreco.EditCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
   // db_VendasItens.FieldByName('QTDE').AsFloat;
   // codigo de barras
   If Key = #13 then
   Begin

      db_estoque.close;

      EditNomeProduto.Text := '';
      EditPreco.Text := '';
      EditQtde.Text := '';

      db_estoque.close;
      db_estoque.ParamByName('REFERENCIA').AsString :=
        Uppercase(alltrim(EditCodigo.Text));
      db_estoque.Open;

      if db_estoque.RecordCount < 1 then
      begin

         Erro('Produto não cadastrado no estoque');
         EditCodigo.SetFocus;
         db_estoque.close;
         Exit;
      End;
      db_estoque.first;

      // checar as quantidades
      EditCodigoProduto.Text := Trim(EditCodigo.Text);
      EditNomeProduto.Text := db_estoque.FieldByName('DESCRICAO').AsString;
      EditPreco.Text := FormatFloat('###,##0.00',
        db_estoque.FieldByName('PRC_VENDA').AsFloat);
      EditQtde.Text := FormatFloat('###,##0',
        db_estoque.FieldByName('ESTOQUESALDO').AsFloat);

      db_estoque.close;
      EditCodigo.Text := '';

   End;

end;

end.
