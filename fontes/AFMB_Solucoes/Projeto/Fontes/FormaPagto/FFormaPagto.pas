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

unit FFormaPagto;

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
   FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Grids,
   Vcl.DBGrids, cxClasses, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
   Vcl.ExtCtrls, Vcl.Mask, cxGridLevel, cxGridCustomTableView, cxGridTableView,
   cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.ComCtrls, ISFEdit,
   ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FFrameBotoes,
   FFrameBarra, dxDateRanges, dxSkinsCore, dxSkinsDefaultPainters;

type
   TFrmFormaPagto = class(TFrmCrudSimples)
      DS_Prazos: TDataSource;
      db_FormaPagtoDias: TFDQuery;
      GroupBox2: TGroupBox;
      DBGrid1: TDBGrid;
      Label7: TLabel;
      Label5: TLabel;
      Label1: TLabel;
      Label4: TLabel;
      DBEdit_Multiplicador: TDBEdit;
      DBEdit_indice: TDBEdit;
      DBEdit2: TDBEdit;
      DBRadioGroup1: TDBRadioGroup;
      DBEdit3: TDBEdit;
      DBRG_arredond: TDBRadioGroup;
      procedure db_FormaPagtoDiasBeforePost(DataSet: TDataSet);
      procedure dbTabelaNewRecord(DataSet: TDataSet);
      procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
      procedure FormCreate(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure DBGrid1Enter(Sender: TObject);
      procedure FormDestroy(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmFormaPagto: TFrmFormaPagto;

implementation

{$R *.dfm}

procedure TFrmFormaPagto.DBGrid1Enter(Sender: TObject);
begin
   if (dbTabela.State in [dsInsert, dsEdit]) then
      dbTabela.Post;
end;

procedure TFrmFormaPagto.dbTabelaNewRecord(DataSet: TDataSet);
begin
   inherited;
   dbTabela.FieldByName('ARREDONDAR').AsString := 'P';
   dbTabela.FieldByName('ARRED_SN').AsString := 'N';

end;

procedure TFrmFormaPagto.db_FormaPagtoDiasBeforePost(DataSet: TDataSet);
begin
   inherited;
   db_FormaPagtoDias.FieldByName('CODIGO').AsInteger :=
     dbTabela.FieldByName('CODIGO').AsInteger;
end;

procedure TFrmFormaPagto.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   inherited;
   db_FormaPagtoDias.Close;
end;

procedure TFrmFormaPagto.FormCreate(Sender: TObject);
begin
   inherited;
   db_FormaPagtoDias.Open;

end;

procedure TFrmFormaPagto.FormDestroy(Sender: TObject);
begin
   inherited;
   FrmFormaPagto := Nil;
end;

procedure TFrmFormaPagto.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   inherited;
   if (db_FormaPagtoDias.State in [dsInsert, dsEdit]) then
      db_FormaPagtoDias.Post;

end;

end.
