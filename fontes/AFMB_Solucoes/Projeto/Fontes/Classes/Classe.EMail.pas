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

Unit Classe.EMail;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type

   { TMailConfig }
   TEmail = Class(TPersistent)
   Private
      { Private declarations }
      FPOPHost: String;
      FPOPPorta: Integer;
      FSMTPHost: String;
      FSMTPPorta: Integer;
      FUsuario: String;
      FSenha: String;
      FSSLTSL: Boolean;
      FNome: String;
   Public
      { Public declarations }
      constructor Create;

      property POPHost: String read FPOPHost write FPOPHost;
      property POPPorta: Integer read FPOPPorta write FPOPPorta;
      property SMTPHost: String read FSMTPHost write FSMTPHost;
      property SMTPPorta: Integer read FSMTPPorta write FSMTPPorta;
      property Usuario: String read FUsuario write FUsuario;
      property Senha: String read FSenha write FSenha;
      property SSLTSL: Boolean read FSSLTSL write FSSLTSL;
      property Nome: String read FNome write FNome;
   End;

implementation

{ TEmail }
constructor TEmail.Create;
begin
   FPOPHost := '';
   FPOPPorta := 0;
   FSMTPHost := '';
   FSMTPPorta := 0;
   FUsuario := '';
   FSenha := '';
   FSSLTSL := False;
   FNome := '';
end;

end.
