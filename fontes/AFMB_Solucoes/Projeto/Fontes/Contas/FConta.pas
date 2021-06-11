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

unit FConta;

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
   IDBEdit, uEstSearchDialogZeos, FFrameBotoes, FFrameBarra, dxDateRanges,
   dxSkinsCore, dxSkinsDefaultPainters;

type
   TFrmConta = class(TFrmCrudSimples)
      DBEdit4: TDBEdit;
      Label5: TLabel;
      DBEdit5: TDBEdit;
      Label6: TLabel;
      DBEdit1: TDBEdit;
      Label3: TLabel;
      DBEdit3: TDBEdit;
      Label4: TLabel;
      ContaProcurar: TIDBEditDialog;
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure dbTabelaNewRecord(DataSet: TDataSet);
      procedure dbTabelaBeforePost(DataSet: TDataSet);
      procedure dbTabelaAfterOpen(DataSet: TDataSet);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormDestroy(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmConta: TFrmConta;

implementation

{$R *.dfm}

uses App.Funcoes;

procedure TFrmConta.dbTabelaAfterOpen(DataSet: TDataSet);
begin
   inherited;
   FormataCampo(dbTabela);

end;

procedure TFrmConta.dbTabelaBeforePost(DataSet: TDataSet);
begin
   inherited;
   dbTabela.FieldByName('DATAALTERACAO').AsDateTime := Now;
end;

procedure TFrmConta.dbTabelaNewRecord(DataSet: TDataSet);
begin
   inherited;
   dbTabela.FieldByName('DATA').AsDateTime := Now;
   dbTabela.FieldByName('DATAALTERACAO').AsDateTime := Now;
end;

procedure TFrmConta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   Action := Cafree;
end;

procedure TFrmConta.FormDestroy(Sender: TObject);
begin
   inherited;
   FrmConta := Nil;
end;

procedure TFrmConta.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if ContaProcurar.Execute then
   begin
      dbTabela.Cancel;
      dbTabela.Locate('CODIGO', ContaProcurar.ResultFieldAsInteger
        ('CODIGO'), []);
      EditNOME.SetFocus;
   end;
end;

end.
