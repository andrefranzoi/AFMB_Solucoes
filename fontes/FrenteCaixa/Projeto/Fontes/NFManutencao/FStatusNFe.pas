﻿{
xx***********************************************************************************xx
xx                                                                                   xx
xx  AUTOR/DESENVOLVEDOR...: Adriano Zanini (2020)                                    xx
xx  DATA DO CODIGO-FONTE..: DESDE 01/02/2010                                         xx
xx  E-MAIL................: indpcp2018@gmail.com                                     xx
xx                                                                                   xx
xx  SISTEMA...............: DBVenda Retaguarda / Frente de Caixa                     xx
xx  LINGUAGEM/DB..........: Delphi 10.3 Rio (32 bits) | Firebird 2.5 (32 bits)       xx
xx                                                                                   xx
xx***********************************************************************************xx
xx                                                                                   xx
xx Eu Adriano Zanini, sou autor/desenvolvedor. Se alguem te vendeu esses fontes      xx
}

unit FStatusNFe;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls;

type
   TFrmStatusNFe = class(TForm)
    pnMensagens: TPanel;
    pnTitulo: TPanel;
    Shape2: TShape;
    LblBarraTitulo: TLabel;
    lblStatus: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmStatusNFe: TFrmStatusNFe;

implementation

{$R *.dfm}

procedure TFrmStatusNFe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFrmStatusNFe.FormDestroy(Sender: TObject);
begin
  FrmStatusNFe := nil;
end;

end.