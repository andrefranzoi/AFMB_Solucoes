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

unit FCFOP;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DB, DBCtrls, Mask, Grids,
   DBGrids, ImgList, ISFEdit, ISFEditbtn, ISFdbEditbtn,
   IDBEdit, uEstSearchDialogZeos, FFrameBotoes, FFrameBarra, FireDAC.Stan.Intf,
   FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
   FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
   FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGraphics, cxControls,
   cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
   cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData,
   cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
   cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
   TFrmCFOP = class(TForm)
      PageControl: TPageControl;
      Tab_Principal: TTabSheet;
      Tab_Editar: TTabSheet;
      Label1: TLabel;
      Label2: TLabel;
      EditCodigo: TDBEdit;
      EditNome: TDBEdit;
      DBRadioGroup1: TDBRadioGroup;
      DBRadioGroup2: TDBRadioGroup;
      DBRadioGroup3: TDBRadioGroup;
      DBRadioGroup4: TDBRadioGroup;
      DBRadioGroup5: TDBRadioGroup;
      DBRadioGroup6: TDBRadioGroup;
      GroupBox1: TGroupBox;
      DBMemo_Fisco: TDBMemo;
      GroupBox2: TGroupBox;
      Label7: TLabel;
      EditReduc: TDBEdit;
      GroupBox3: TGroupBox;
      DBMemo1: TDBMemo;
      DS_CFOP: TDataSource;
      db_CFOP: TFDQuery;
      db_CFOPCODIGO: TIntegerField;
      db_CFOPDESCRICAO: TStringField;
      db_CFOPNFE: TStringField;
      db_CFOPDENTRO_ESTADO: TStringField;
      db_CFOPDETALHE: TStringField;
      db_CFOPFISCO: TStringField;
      db_CFOPOPERACAO: TStringField;
      db_CFOPCALCULA_ICMS: TStringField;
      db_CFOPCALCULA_IPI: TStringField;
      db_CFOPCALCULA_ISS: TStringField;
      db_CFOPCALCULA_SEFAZ: TStringField;
      db_CFOPCALCULA_COFINS: TStringField;
      db_CFOPREDUCAO_ICMS: TFloatField;
      db_CFOPREDUCAO_IPI: TFloatField;
      db_CFOPDESCONTO_SEFAZ: TFloatField;
      db_CFOPDESCONTO_COFINS: TFloatField;
      db_CFOPDESCONTO_PIS: TFloatField;
      db_CFOPRECUPERA_ICMS: TStringField;
      db_CFOPRECUPERA_IPI: TStringField;
      db_CFOPDESCONTO_SUFRAMA: TFloatField;
      db_CFOPBAIXA_ESTOQUE: TStringField;
      db_CFOPSUFRAMA: TStringField;
      FrmFrameBarra1: TFrmFrameBarra;
      FrmFrameBotoes1: TFrmFrameBotoes;
      dbEditPesquisarCFOP: TIDBEditDialog;
      cxGrid: TcxGrid;
      cxGridDados: TcxGridDBTableView;
      cxGridDadosCodigo: TcxGridDBColumn;
      cxGridDadosNome: TcxGridDBColumn;
      cxGridNivel: TcxGridLevel;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure cxGridDadosDblClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmCFOP: TFrmCFOP;

implementation

uses Biblioteca, FBaseDados;

{$R *.dfm}

procedure TFrmCFOP.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := DS_CFOP;
   PageControl.ActivePage := Tab_Principal;
   db_CFOP.Open;
end;

procedure TFrmCFOP.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   PageControl.ActivePage := Tab_Editar;
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditCodigo.SetFocus;

end;

procedure TFrmCFOP.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   PageControl.ActivePage := Tab_Principal;

end;

procedure TFrmCFOP.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmCFOP.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmCFOP.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbEditPesquisarCFOP.Execute then
   begin
      db_CFOP.Locate('CODIGO', dbEditPesquisarCFOP.ResultFieldAsInteger
        ('CODIGO'), []);
   End;
end;

procedure TFrmCFOP.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmCFOP.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
end;

procedure TFrmCFOP.cxGridDadosDblClick(Sender: TObject);
begin
   if db_CFOP.IsEmpty then
      Exit;

   PageControl.ActivePage := Tab_Editar;
end;

procedure TFrmCFOP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   db_CFOP.CLOSE;
   Action := CaFree;
end;

end.
