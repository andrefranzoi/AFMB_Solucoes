{
xx***********************************************************************************xx
xx                                                                                   xx
xx  AUTOR/DESENVOLVEDOR...: Adriano Zanini (2020)                                    xx
xx  DATA DO CODIGO-FONTE..: DESDE 01/02/2010                                         xx
xx  E-MAIL................: indpcp2018@gmail.com                                     xx
xx                                                                                   xxxx***********************************************************************************xxxx                                                                                   xx
xx  SISTEMA...............: DBVenda Retaguarda / Frente de Caixa                     xx
xx  LINGUAGEM/DB..........: Delphi 10.3 Rio (32 bits) | Firebird 2.5 (32 bits)       xx
xx                                                                                   xx
xx***********************************************************************************xx
xx                                                                                   xxxx Alguns sem qualquer ética profissional ou moral, tem comercializado esses fontes  xxxx sem minha autorização. Pelas leis brasileiras de direitos autorais, ISSO É CRIME. xxxx                                                                                   xxxx***********************************************************************************xxxx                                                                                   xx
xx Eu Adriano Zanini, sou autor/desenvolvedor. Se alguem te vendeu esses fontes      xxxx sem minha autorização, você comprou um codigo-fonte pirata (não autorizo vender). xxxx                                                                                   xxxx***********************************************************************************xxxx                                                                                   xxxx Sou autor dos sitemas "VestisPCP", "IndPCP" e "DBVenda". Os fontes do "VestisPCP" xxxx estão lá no GitHub.                                                               xxxx Link no GitHub: https://github.com/ZaniniAdriano/VestisPCP                        xxxx                                                                                   xxxx***********************************************************************************xxxx  COMERCIALIZE SOMENTE O SISTEMA COMPILADO (COM O NOME/INTERFACE QUE DESEJAR).     xxxx  MUDE O QUE DESEJAR, CUSTOMIZE COMO QUISER. INCLUSIVE O NOME DO SISTEMA/PROJETO.  xxxx                                                                                   xxxx***********************************************************************************xx
}

unit FPDVPrint;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.BaseImageCollection, Vcl.ImageCollection, Vcl.VirtualImageList,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtDlgs, ACBrBase, ACBrPosPrinter;

type
  TFrmPDVPrint = class(TForm)
    PrintDialog: TPrintDialog;
    pnPrincipal: TPanel;
    actComandos: TActionList;
    actImprimir: TAction;
    actSair: TAction;
    actSalvar: TAction;
    actPDF: TAction;
    dlgSalvarArquivoTexto: TSaveTextFileDialog;
    RichEditPreview: TRichEdit;
    pnTopo: TPanel;
    btnSair: TButton;
    btnSalvar: TButton;
    btnImprimir: TButton;
    ACBrPosPrinter1: TACBrPosPrinter;
    Panel2: TPanel;
    Label1: TLabel;
    cbImpressora: TComboBox;
    pnTitulo: TPanel;
    Shape2: TShape;
    Label2: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actSairExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TituloDocumento : String;
    Copias          : Integer;
    ImpressaoDireta : Boolean;
    Alinhamento     : TAlignment;
    FModelo         : TACBrPosPrinterModelo;
    FPorta          : String;
    FTexto          : WideString;

    procedure Adicionar(const aTexto: WideString );
    procedure ImprimirWindows(const aTitulo: String = '');
    procedure ImprimirPos(aPorta: String = 'RAW:EPSON TM-T20 Receipt'; aModelo: TACBrPosPrinterModelo = ppEscPosEpson);
    procedure Imprimir;

  end;

var
  FrmPDVPrint: TFrmPDVPrint;

implementation

{$R *.dfm}

procedure TFrmPDVPrint.FormCreate(Sender: TObject);
begin
  FModelo := ppEscPosEpson;
  FPorta := 'RAW:EPSON TM-T20 Receipt';

  TituloDocumento := 'Titulo do Documento';
  Copias := 1;
  ImpressaoDireta := False;
  RichEditPreview.Clear;
end;

procedure TFrmPDVPrint.FormShow(Sender: TObject);
begin
  PrintDialog.Copies    := Copias;
  PrintDialog.MinPage  := 1;
  PrintDialog.MaxPage  := 10;
  Alinhamento := taCenter;
  RichEditPreview.Alignment := Alinhamento;
end;

procedure TFrmPDVPrint.actImprimirExecute(Sender: TObject);
begin
  if Trim(RichEditPreview.Lines.Text) = '' then
  begin
    Exit;
  end;
  case cbImpressora.ItemIndex of
    0: begin
         ImprimirPos(FPorta, FModelo);
       end;
    1: begin
         ImprimirWindows();
       end;
  end;
end;

procedure TFrmPDVPrint.actSairExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmPDVPrint.actSalvarExecute(Sender: TObject);
begin
  if dlgSalvarArquivoTexto.Execute = False then
    exit;
  RichEditPreview.Lines.SaveToFile(dlgSalvarArquivoTexto.FileName);
end;

procedure TFrmPDVPrint.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TFrmPDVPrint.Adicionar(const aTexto: WideString);
begin
  RichEditPreview.Lines.Add(aTexto);
  RichEditPreview.Alignment := Alinhamento;
end;

procedure TFrmPDVPrint.Imprimir;
begin
  ImprimirPos(FPorta, FModelo);
end;

procedure TFrmPDVPrint.ImprimirPos(aPorta: String; aModelo: TACBrPosPrinterModelo);
Var
  mTexto : WideString;
begin
  ACBrPosPrinter1.Porta  := aPorta;
  ACBrPosPrinter1.Modelo := aModelo;
  ACBrPosPrinter1.Ativar ;
  try
    ACBrPosPrinter1.Buffer.Clear;
    ACBrPosPrinter1.Buffer.Add( '</zera><c>'+RichEditPreview.Lines.Text+'</c>' );
    ACBrPosPrinter1.Buffer.Add('</corte_total>'+'</zera>');
    ACBrPosPrinter1.Imprimir;
  finally
    ACBrPosPrinter1.Desativar ;
  end;
end;

procedure TFrmPDVPrint.ImprimirWindows(const aTitulo: String);
begin
  if ImpressaoDireta = False then
  begin
    if PrintDialog.Execute = False then
      Exit;
  end;
  RichEditPreview.Print(aTitulo);
end;


end.
