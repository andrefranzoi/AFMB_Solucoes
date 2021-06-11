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

unit FEtiquetacaixa;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, StdCtrls, Buttons,
   Grids, DBGrids,
   frxClass, frxDBSet, FFrameBarra, ISFEdit, ISFEditbtn, ISFdbEditbtn,
   IDBEdit, uEstSearchDialogZeos, Classe.Global, FireDAC.Stan.Intf,
   FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
   FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
   FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmEtiquetacaixa = class(TForm)
      db_notasfiscais: TFDQuery;
      ds_notasfiscais: TDataSource;
      db_clientes: TFDQuery;
      dbfp_notasfiscais: TfrxDBDataset;
      dbfp_clientes: TfrxDBDataset;
      frx_Romeio: TfrxReport;
      DBGrid1: TDBGrid;
      FrmFrameBarra1: TFrmFrameBarra;
      Panel1: TPanel;
      Panel2: TPanel;
      EditQtde: TLabeledEdit;
      BtnImprimir: TBitBtn;
      BtnProcurar: TBitBtn;
      BtnSair: TBitBtn;
      dbProcurarNFe: TIDBEditDialog;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BtnProcurarClick(Sender: TObject);
      procedure BtnImprimirClick(Sender: TObject);
      procedure db_notasfiscaisAfterScroll(DataSet: TDataSet);
      procedure BtnSairClick(Sender: TObject);
      procedure FormDestroy(Sender: TObject);
      procedure db_notasfiscaisAfterOpen(DataSet: TDataSet);

   private
      procedure CarregarDados;
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmEtiquetacaixa: TFrmEtiquetacaixa;

implementation

uses FPrincipal, App.SQL, Global, Biblioteca, App.Funcoes;

{$R *.dfm}

procedure TFrmEtiquetacaixa.FormCreate(Sender: TObject);
begin
   CarregarDados;
end;

procedure TFrmEtiquetacaixa.FormDestroy(Sender: TObject);
begin
   FrmEtiquetacaixa := Nil;
end;

procedure TFrmEtiquetacaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_notasfiscais.Close;
   Action := Cafree;
end;

procedure TFrmEtiquetacaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_F8 then
   begin
      BtnProcurar.Click;
   End;

end;

procedure TFrmEtiquetacaixa.BtnImprimirClick(Sender: TObject);
begin
   db_clientes.Close;
   db_clientes.Close;
   db_clientes.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   db_clientes.ParamByName('NOTAFISCAL').AsInteger :=
     db_notasfiscais.Fieldbyname('NOTAFISCAL').AsInteger;
   frx_Romeio.ShowReport;
   db_clientes.Close;
end;

procedure TFrmEtiquetacaixa.BtnProcurarClick(Sender: TObject);
begin
   if dbProcurarNFe.Execute then
   begin
      db_notasfiscais.Locate('NOTAFISCAL',
        dbProcurarNFe.ResultFieldAsInteger('NOTAFISCAL'), []);
   end;
end;

procedure TFrmEtiquetacaixa.BtnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmEtiquetacaixa.CarregarDados;
begin
   db_notasfiscais.Close;
   db_notasfiscais.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   db_notasfiscais.open;
end;

procedure TFrmEtiquetacaixa.db_notasfiscaisAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(db_notasfiscais);
   TFloatField(db_notasfiscais.Fieldbyname('TRANSPORTADORA_VOLUME'))
     .DisplayFormat := '###,##0';
end;

procedure TFrmEtiquetacaixa.db_notasfiscaisAfterScroll(DataSet: TDataSet);
begin
   EditQtde.Text := db_notasfiscais.Fieldbyname
     ('TRANSPORTADORA_VOLUME').AsString;
end;

end.
