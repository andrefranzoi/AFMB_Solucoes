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

unit FStatus;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, Vcl.ComCtrls;

type
   TFrmStatus = class(TForm)
    pnTitulo: TPanel;
    Shape2: TShape;
    lblTitulo: TLabel;
    pgbStatus: TProgressBar;
    pnStatus: TPanel;
    lblStatus: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }
   public
      { Public declarations }
      procedure SetStatusBar(aMin,Max,aPosicao : Integer);
   end;

var
   FrmStatus: TFrmStatus;

implementation

{$R *.dfm}

{ TFrmStatus }

procedure TFrmStatus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFrmStatus.SetStatusBar(aMin, Max, aPosicao: Integer);
begin
  try
    pgbStatus.Min      := aMin;
    pgbStatus.Max      := Max;
    pgbStatus.Position := aPosicao;
  finally
    Application.ProcessMessages;
  end;
end;

end.