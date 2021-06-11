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

unit FCtaReceberBaixasLotesSelecionar;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, FFrameBarra, ExtCtrls, StdCtrls, StrUtils, DB, FireDAC.Comp.Client,
   Buttons, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos,
   Mask, DBCtrls, Grids, cxGraphics,
   cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
   cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxCheckBox,
   cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
   cxClasses, cxGridCustomView, cxGrid, dxSkinsCore, dxSkinsDefaultPainters,
   dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog;

type
   TFrmCtaReceberBaixasLotesSelecionar = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
      Panel1: TPanel;
      Panel2: TPanel;
      GroupBox1: TGroupBox;
      BitBtn1: TBitBtn;
      BitBtn2: TBitBtn;
      cxGrid1: TcxGrid;
      cxGridSelecionar: TcxGridDBTableView;
      cxGridSelecionarColumn1: TcxGridDBColumn;
      cxGridSelecionarColumn2: TcxGridDBColumn;
      cxGridSelecionarColumn3: TcxGridDBColumn;
      cxGridSelecionarColumn4: TcxGridDBColumn;
      cxGridSelecionarColumn5: TcxGridDBColumn;
      cxGridSelecionarColumn6: TcxGridDBColumn;
      cxGridSelecionarColumn7: TcxGridDBColumn;
      cxGrid1Level1: TcxGridLevel;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BitBtn2Click(Sender: TObject);
      procedure BitBtn1Click(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmCtaReceberBaixasLotesSelecionar: TFrmCtaReceberBaixasLotesSelecionar;

implementation

uses FPrincipal, Global, App.SQL, Biblioteca, FCtaReceberBaixasLotes;

{$R *.dfm}

procedure TFrmCtaReceberBaixasLotesSelecionar.BitBtn1Click(Sender: TObject);
begin

   If (FrmCtaReceberBaixasLotes.db_ctaReceber.State in [dsedit, dsinsert]) then
      FrmCtaReceberBaixasLotes.db_ctaReceber.Post;

   close;

end;

procedure TFrmCtaReceberBaixasLotesSelecionar.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TFrmCtaReceberBaixasLotesSelecionar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := Cafree;
end;

end.
