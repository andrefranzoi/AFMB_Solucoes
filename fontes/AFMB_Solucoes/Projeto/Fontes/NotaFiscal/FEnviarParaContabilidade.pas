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

unit FEnviarParaContabilidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FEmailTemplate, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, dxGDIPlusClasses;

type
  TFrmEnviarParaContabilidade = class(TFrmEmailTemplate)
    procedure btnEnviarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetAnexo(Arquivo01, Arquivo02: String);

  end;

var
  FrmEnviarParaContabilidade: TFrmEnviarParaContabilidade;
  ArquivoAnexo01, ArquivoAnexo02: string;

implementation

uses
  FBaseDados, Classe.Parametros, FAvisoSistemaErro, FAvisoSistema, Biblioteca;

{$R *.dfm}

procedure TFrmEnviarParaContabilidade.btnCancelarClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrmEnviarParaContabilidade.btnEnviarClick(Sender: TObject);
var
  Anexo: TStringList;
  ErroEnvio: Boolean;

begin
  inherited;
  ErroEnvio := False;
  Anexo := TStringList.Create;
  Anexo.Add(ArquivoAnexo01);
  Anexo.Add(ArquivoAnexo02);

  try
    BaseDados.ACBrNFe1.EnviarEmail(lbledtPara.Text, // Para
      lbledtAssunto.Text, // Assunto
      mmoMensagem.Lines, // Mensagem
      nil, // CC
      Anexo, // Anexo
      nil); // TStream
  except
    on E: Exception do
    begin
      AvisoSistemaErro('E-MAIL NÃO ENVIADO!!' + sLineBreak + sLineBreak + E.Message);
      ErroEnvio := True;
    end;
  end;

  if not ErroEnvio then
    AvisoSistema('Email enviado com sucesso!');

  Anexo.Free;
  Self.Close;
end;

procedure TFrmEnviarParaContabilidade.FormShow(Sender: TObject);
begin
  inherited;

  // Email da contabilidade
  lbledtPara.Text := BaseDados.db_Parametros.FieldByName('CONTAB_EMAIL').AsString;

  // Nome Fantasia da Empresa
  lbledtAssunto.Text := 'Notas Fiscais ' + BaseDados.db_Parametros.FieldByName('NOMEFANTASIA').AsString;

  // Arquivo em Anexo
  mmoAnexo.Clear;
  mmoAnexo.Lines.Add(ExtractFileName(ArquivoAnexo01));
  mmoAnexo.Lines.Add(ExtractFileName(ArquivoAnexo02));

end;

procedure TFrmEnviarParaContabilidade.GetAnexo(Arquivo01, Arquivo02: String);
begin;
  ArquivoAnexo01 := Arquivo01;
  ArquivoAnexo02 := Arquivo02;
end;

end.
