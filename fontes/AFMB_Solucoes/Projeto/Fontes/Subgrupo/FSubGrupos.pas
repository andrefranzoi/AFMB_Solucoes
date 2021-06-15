Unit FSubGrupos;

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
   TFrmSubGrupos = class(TFrmCrudSimples)
      procedure FormDestroy(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmSubGrupos: TFrmSubGrupos;

implementation

{$R *.dfm}

procedure TFrmSubGrupos.FormDestroy(Sender: TObject);
begin
   inherited;
   FrmSubGrupos := Nil;
end;

end.
