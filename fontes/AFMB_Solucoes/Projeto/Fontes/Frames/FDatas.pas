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

unit FDatas;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask;

type

   TFrameDatas = class(TFrame)
      GrupoFrameData: TGroupBox;
      MskDataFim: TMaskEdit;
      Label4: TLabel;
      MskDataIni: TMaskEdit;
      Label3: TLabel;
      procedure FrameEnter(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure MskDataIniExit(Sender: TObject);

   private

   public

   end;

implementation

uses Global, Biblioteca;

{$R *.dfm}

procedure TFrameDatas.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.text := fncDataValidar(MskDataIni.text);
end;

procedure TFrameDatas.MskDataFimExit(Sender: TObject);
begin

   MskDataFim.text := fncDataValidar(MskDataFim.text);

   if StrToDate(MskDataIni.text) > StrToDate(MskDataFim.text) then
   begin
      Informar('Data Final deve ser igual ou maior que a data Inicial' + #13 +
        #10 + 'Verifique.');

      MskDataFim.Setfocus;
   end;

end;

procedure TFrameDatas.FrameEnter(Sender: TObject);
begin
   MskDataIni.text := DateToStr(Date);
   MskDataFim.text := DateToStr(Date);
   MskDataIni.Setfocus;
end;

end.
