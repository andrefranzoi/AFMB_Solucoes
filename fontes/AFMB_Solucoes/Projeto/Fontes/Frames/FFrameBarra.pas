﻿{
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

unit FFrameBarra;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, Vcl.Imaging.pngimage, dxGDIPlusClasses;

type
   TFrmFrameBarra = class(TFrame)
      pnTitulo: TPanel;
      LblBarraTitulo: TLabel;
      Image3: TImage;
      Image1: TImage;
      Image2: TImage;
      procedure FrameResize(Sender: TObject);
      procedure LblBarraTituloDblClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

implementation

{$R *.dfm}

procedure TFrmFrameBarra.FrameResize(Sender: TObject);
begin
   // LblBarraTitulo.Caption:=UpperCase(LblBarraTitulo.Caption)+StringOfChar(' ',5) ;
end;

procedure TFrmFrameBarra.LblBarraTituloDblClick(Sender: TObject);
begin
   if Screen.ActiveForm.BorderStyle = bsDialog then
      exit;
   if Screen.ActiveForm.WindowState = wsNormal then
      Screen.ActiveForm.WindowState := wsMaximized
   else
      Screen.ActiveForm.WindowState := wsNormal;
end;

end.
