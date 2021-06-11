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

unit FOpcaoNotaFiscalCompra;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, FFrameBarra, ExtCtrls;

type
   TFrmOpcaoNotaFiscalCompra = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
      Panel5: TPanel;
    BtnDigitar: TButton;
    BtnImportar: TButton;
    BtnSair: TButton;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnDigitarClick(Sender: TObject);
    procedure BtnImportarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmOpcaoNotaFiscalCompra: TFrmOpcaoNotaFiscalCompra;

implementation

uses Global, FCompraEntrada;

{$R *.dfm}

procedure TFrmOpcaoNotaFiscalCompra.BtnDigitarClick(Sender: TObject);
begin
      sOpcao := 'DIGITAR';
      close;
end;

procedure TFrmOpcaoNotaFiscalCompra.BtnImportarClick(Sender: TObject);
begin
      sOpcao := 'IMPORTAR';
      close;
end;

procedure TFrmOpcaoNotaFiscalCompra.BtnSairClick(Sender: TObject);
begin
      sOpcao := '';
      close;
end;

procedure TFrmOpcaoNotaFiscalCompra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   sOpcao := '';

   IF Key = VK_F3 then
   begin
      BtnDigitarClick(Sender);
   end;

   IF Key = VK_F4 then
   begin
      BtnImportarClick(Sender);
   end;

   IF Key = VK_ESCAPE then
   begin
      BtnSairClick(Sender);
   end;

end;

end.
