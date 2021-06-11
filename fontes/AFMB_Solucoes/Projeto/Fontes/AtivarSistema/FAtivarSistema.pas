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

unit FAtivarSistema;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes,
   Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Classe.Global,
   FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def,
   FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.VCLUI.Wait, Data.DB,
   FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Mask,
   Vcl.DBCtrls, FFrameBarra, Vcl.ExtCtrls, App.Licenca, Vcl.Buttons;

type
   TFrmAtivarSistema = class(TForm)
      Panel1: TPanel;
      BtnAtivar: TBitBtn;
      BtnSair: TBitBtn;
      Panel2: TPanel;
      FrmFrameBarra1: TFrmFrameBarra;
      Panel3: TPanel;
      db_AtivacaoLocal: TFDQuery;
      DS_AtivacaoLocal: TDataSource;
      EditChave: TLabeledEdit;
      procedure BtnAtivarClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure BtnSairClick(Sender: TObject);
   private
      procedure MsgChaveInvalida;
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmAtivarSistema: TFrmAtivarSistema;

implementation

uses FPrincipal, Biblioteca, Global, App.Funcoes, App.Constantes,
   App.SQL;

{$R *.dfm}

procedure TFrmAtivarSistema.BtnAtivarClick(Sender: TObject);
Var
   mChave: String;
   aDBQuery: TFDQuery;
   mData: TDate;
   nDias: Integer;
begin
   ModalResult := mrNone;
   mChave := Trim(EditChave.Text);
   if mChave.IsEmpty then
   begin
      Atencao('Informe uma chave válida.');
      EditChave.SetFocus;
      Exit;
   end;

   if VerificarChave(mChave, mData, nDias) = False then
   begin
      MsgChaveInvalida();
      EditChave.SetFocus;
      Exit;
   end;
   InserirLicenca(mChave);
   // ---------------------------------------------------------------------
   // Checagem novamente, ultima vez.
   // ---------------------------------------------------------------------
   if GetTempoLicenca() > 0 then
   begin
      ModalResult := mrOk;
   end
   else
   begin
      MsgChaveInvalida();
      EditChave.SetFocus;
      Exit;
   end;
end;

procedure TFrmAtivarSistema.MsgChaveInvalida;
begin
   Atencao('Chave informada é inválida.');
end;

procedure TFrmAtivarSistema.BtnSairClick(Sender: TObject);
begin
   FrmPrincipal.FDiasAtivar := 0;
end;

procedure TFrmAtivarSistema.FormCreate(Sender: TObject);
begin
   FrmPrincipal.FDiasAtivar := 0;
   ModalResult := mrNone;
end;

end.
