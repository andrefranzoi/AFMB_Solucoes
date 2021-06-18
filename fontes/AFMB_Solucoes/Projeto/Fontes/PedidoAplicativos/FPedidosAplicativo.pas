unit FPedidosAplicativo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Vcl.DBCGrids, dxGDIPlusClasses,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFrmPedidosAplicativo = class(TForm)
    DBCtrlGrid1: TDBCtrlGrid;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    lblInfoEndereco: TLabel;
    btnRecusar: TcxButton;
    btnAceitar: TcxButton;
    btnACaminho: TcxButton;
    btnEntregue: TcxButton;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    lblInfoCodPedido: TLabel;
    lblInfoCliente: TLabel;
    Label7: TLabel;
    Panel6: TPanel;
    lblInfoObservacao: TLabel;
    Panel2: TPanel;
    Panel7: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel8: TPanel;
    lblInfoTotal: TLabel;
    lblInfoDesconto: TLabel;
    lblinfoTaxaEntregua: TLabel;
    lblInfoSubTotal: TLabel;
    lblListCodPesdido: TLabel;
    Panel9: TPanel;
    lblListCliente: TLabel;
    Panel10: TPanel;
    lblHoraRecusado: TLabel;
    lblHoraAceita: TLabel;
    imgSeta3: TImage;
    lblHoraEntregue: TLabel;
    lblHoraCaminho: TLabel;
    imgSeta2: TImage;
    imgSeta1: TImage;
    imgListaApp: TImage;
    cxButton1: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPedidosAplicativo: TFrmPedidosAplicativo;

implementation

{$R *.dfm}

end.
