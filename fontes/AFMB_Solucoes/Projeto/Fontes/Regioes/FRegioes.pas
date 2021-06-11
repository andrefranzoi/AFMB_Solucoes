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
  xx Alguns sem qualquer �tica profissional ou moral, tem comercializado esses fontes  xx
  xx sem minha autoriza��o. Pelas leis brasileiras de direitos autorais, ISSO � CRIME. xx
  xx                                                                                   xx
  xx***********************************************************************************xx
  xx                                                                                   xx
  xx Eu Adriano Zanini, sou autor/desenvolvedor. Se alguem te vendeu esses fontes      xx
  xx sem minha autoriza��o, voc� comprou um codigo-fonte pirata (n�o autorizo vender). xx
  xx                                                                                   xx
  xx***********************************************************************************xx
  xx                                                                                   xx
  xx Sou autor dos sitemas "VestisPCP", "IndPCP" e "DBVenda". Os fontes do "VestisPCP" xx
  xx est�o l� no GitHub.                                                               xx
  xx Link no GitHub: https://github.com/ZaniniAdriano/VestisPCP                        xx
  xx                                                                                   xx
  xx***********************************************************************************xx
  xx  COMERCIALIZE SOMENTE O SISTEMA COMPILADO (COM O NOME/INTERFACE QUE DESEJAR).     xx
  xx  MUDE O QUE DESEJAR, CUSTOMIZE COMO QUISER. INCLUSIVE O NOME DO SISTEMA/PROJETO.  xx
  xx                                                                                   xx
  xx***********************************************************************************xx
}

Unit FRegioes;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FCrudSimples, cxGraphics, cxControls,
   cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
   cxData, cxDataStorage, cxEdit, cxNavigator,
   cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
   cxCheckBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, cxClasses, FireDAC.Comp.DataSet,
   FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.StdCtrls,
   cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
   cxGridCustomView, cxGrid, Vcl.ComCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn,
   IDBEdit, uEstSearchDialogZeos, FFrameBotoes, FFrameBarra, dxDateRanges;

type
   TFrmRegioes = class(TFrmCrudSimples)
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      // Override;
      procedure GroupBox2Enter(Sender: TObject);
   private
      procedure SalvarRegistroMestre;
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRegioes: TFrmRegioes;

implementation

{$R *.dfm}

uses Biblioteca;

procedure TFrmRegioes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   dbTabela.Close;
end;

procedure TFrmRegioes.GroupBox2Enter(Sender: TObject);
begin
   SalvarRegistroMestre;
end;

procedure TFrmRegioes.SalvarRegistroMestre;
begin
   if Trim(EditNome.Text) = '' then
   begin
      Mensagem('Campo "' + lblNome.Caption + '" � obrigat�rio.');
      exit;
   end;

end;

end.
