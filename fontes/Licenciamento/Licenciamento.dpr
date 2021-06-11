program Licenciamento;

uses
  Vcl.Forms,
  FPrincipal in 'FPrincipal.pas' {FrmPrincipal},
  App.Constantes in '..\DBVenda\Projeto\Fontes\Classes\App.Constantes.pas',
  App.Licenca in '..\DBVenda\Projeto\Fontes\Classes\App.Licenca.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
