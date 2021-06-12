unit FSplash;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, jpeg, StdCtrls, pngimage, dxGDIPlusClasses, cxGraphics,
   cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxActivityIndicator;

Type
   TFrmSplash = class(TForm)
      Panel1: TPanel;
      lblStatus: TPanel;
      Label2: TLabel;
      Label5: TLabel;
      TitleImage: TImage;
      dxActivityIndicator: TdxActivityIndicator;
      Label1: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      Label6: TLabel;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormDestroy(Sender: TObject);
      procedure FormShow(Sender: TObject);
   private
      { Private declarations }

   public
      { Public declarations }
   end;

var
   FrmSplash: TFrmSplash;

implementation

uses FPrincipal, Classe.Global;

{$R *.dfm}

procedure TFrmSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := cafree;
end;

procedure TFrmSplash.FormDestroy(Sender: TObject);
begin
   if FrmSplash <> nil then
      FrmSplash := Nil;
end;

procedure TFrmSplash.FormShow(Sender: TObject);
begin
   dxActivityIndicator.Active := True;
end;

end.
