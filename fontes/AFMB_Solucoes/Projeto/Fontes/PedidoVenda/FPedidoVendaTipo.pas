unit FPedidoVendaTipo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.StdCtrls, Vcl.Buttons,
  cxGroupBox, cxRadioGroup;

type
  TFrmPedidoVendaTipo = class(TForm)
    rgTipo: TcxRadioGroup;
    btnOk: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPedidoVendaTipo: TFrmPedidoVendaTipo;

implementation

{$R *.dfm}

procedure TFrmPedidoVendaTipo.btnOkClick(Sender: TObject);
begin
  ModalResult := MrOK;
end;

procedure TFrmPedidoVendaTipo.FormShow(Sender: TObject);
begin
  btnOk.SetFocus;
end;

end.
