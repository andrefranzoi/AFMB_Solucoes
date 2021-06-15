unit FSerieDoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FCrudSimples, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxCheckBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxContainer, cxDBEdit, cxTextEdit,
  cxMaskEdit, cxSpinEdit, cxClasses, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.StdCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, Vcl.ComCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
  uEstSearchDialogZeos, FFrameBotoes, FFrameBarra;

type
  TFrmSerieDoc = class(TFrmCrudSimples)
    dbTabelaCODIGO: TIntegerField;
    dbTabelaEMPRESA: TIntegerField;
    dbTabelaDESCRICAO: TStringField;
    dbTabelaSTATUS: TStringField;
    dbTabelaTIPO: TStringField;
    dbTabelaSERIE: TStringField;
    dbTabelaPROXIMO_NUMERO: TIntegerField;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxGridDadosTIPO: TcxGridDBColumn;
    cxGridDadosSERIE: TcxGridDBColumn;
    cxGridDadosPROXIMO_NUMERO: TcxGridDBColumn;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSerieDoc: TFrmSerieDoc;

implementation

{$R *.dfm}

procedure TFrmSerieDoc.FormDestroy(Sender: TObject);
begin
  inherited;
   FrmSerieDoc := Nil;
end;

end.
