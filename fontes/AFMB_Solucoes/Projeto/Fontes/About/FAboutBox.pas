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

unit FAboutBox;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, StdCtrls, ComCtrls, jpeg, ShellAPI,  pngimage, FFrameBarra,
  dxGDIPlusClasses;

type
   TFrmAboutBox = class(TForm)
    FrmFrameBarra1: TFrmFrameBarra;
    PanelTop: TPanel;
    LicensedToLabel: TLabel;
    lblVersaoSistema: TLabel;
    AdditionalLabel: TLabel;
    AdditionalInfoLabel: TLabel;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    btnOk: TButton;
    TitleImage: TImage;
    Label6: TLabel;
    Label1: TLabel;
      procedure FormCreate(Sender: TObject);
      procedure Label6Click(Sender: TObject);
    procedure BtnAcessarClick(Sender: TObject);
    procedure AdvSmoothLabel2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject); // ?
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmAboutBox: TFrmAboutBox;

implementation

uses FPrincipal, App.SQL, Biblioteca, Global, Classe.Global, App.Constantes,
  App.Funcoes;


{$R *.dfm}

procedure TFrmAboutBox.AdvSmoothLabel2Click(Sender: TObject);
begin
   strURL := SITE_EMPRESA;
   shellexecute(0, nil, pchar(strURL), nil, nil, SW_SHOW);
end;

procedure TFrmAboutBox.BtnAcessarClick(Sender: TObject);
begin
   close;
end;

procedure TFrmAboutBox.btnOkClick(Sender: TObject);
begin
 Close;
end;

procedure TFrmAboutBox.FormCreate(Sender: TObject);
var
   MS: TMemoryStatus;
   Ano, Mes, Dia: Word;
begin
   Caption := 'Sistema ' + Application.Title;
   DecodeDate(Date, Ano, Mes, Dia);
   MS.dwLength := sizeof(MemoryStatus);
   GlobalMemoryStatus(MS);
end;

procedure TFrmAboutBox.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_ESCAPE then
    close;
end;

procedure TFrmAboutBox.FormShow(Sender: TObject);
begin
  lblVersaoSistema.Caption := GetVersao(Application.ExeName) +  ' (v. 2021)';
end;

procedure TFrmAboutBox.Label6Click(Sender: TObject);
begin

   strURL := 'informar email';
   shellexecute(0, nil, pchar(strURL), nil, nil, SW_SHOW);

end;

end.



