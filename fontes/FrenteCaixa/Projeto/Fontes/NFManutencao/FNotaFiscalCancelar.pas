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

unit FNotaFiscalCancelar;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, Buttons, DBCtrls, DB, Vcl.Mask;

type
   TFrmNotaFiscalCancelar = class(TForm)
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnSair: TBitBtn;
    GroupBox1: TGroupBox;
    dbMemoJustificar: TMemo;
    painelCaracteres: TPanel;
    pnTitulo: TPanel;
    Shape2: TShape;
    Label3: TLabel;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbMemoJustificarChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
     FJustificativa : String;
     mTipo : String;
    procedure Sair;
   public
      { Public declarations }
     FIDVenda : String;
     FIDNF : String;
     FTipoNF : String;
   end;

var
   FrmNotaFiscalCancelar: TFrmNotaFiscalCancelar;

implementation


{$R *.dfm}

uses FManutencaoNFe, AppFuncoes;


procedure TFrmNotaFiscalCancelar.BtnSairClick(Sender: TObject);
begin
  Sair();
end;

procedure TFrmNotaFiscalCancelar.FormCreate(Sender: TObject);
begin
  FIDVenda := '';
  FIDNF := '';
  FTipoNF := '';
  ModalResult := mrNone;
end;

procedure TFrmNotaFiscalCancelar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if (FrmManutencaoNFe.QryNFe.state in [dsedit,dsinsert] ) then
      FrmManutencaoNFe.QryNFe.Cancel;
   Action :=Cafree;
end;

procedure TFrmNotaFiscalCancelar.FormShow(Sender: TObject);
begin
   if FTipoNF = 'NFCE' then
     mTipo := 'NFC-e Número: '+ZeroEsquerda(FIDNF,6)
   else if FTipoNF = 'SAT' then
     mTipo := 'SAT Número: '+ZeroEsquerda(FIDNF,6);
   Caption := mTipo +' | Cancelar ';
   dbMemoJustificarChange(Sender);
end;

procedure TFrmNotaFiscalCancelar.dbMemoJustificarChange(Sender: TObject);
begin
  FJustificativa :='';
  FJustificativa:=Trim(dbMemoJustificar.Text);
  painelCaracteres.Caption :=Concat(' caracteres: ',IntToStr( Length(FJustificativa.Trim) )  );
end;

procedure TFrmNotaFiscalCancelar.BtnOkClick(Sender: TObject);
begin
  FJustificativa :='';
  FJustificativa:=Trim(dbMemoJustificar.Text);
  FJustificativa:=UpperCase(FJustificativa);
  painelCaracteres.Caption :=Concat(' caracteres: ',IntToStr( Length(FJustificativa) )  );
  if Length(FJustificativa.Trim) < 15 then
  begin
    Informar('Escreva uma justificativa válida para o cancelamento da '+mTipo+'.'+
             sLineBreak+
             'O minimo é 15 caracteres.',
             'Cancelar Documento Fiscal',True);
    Abort;
  end;
  if Pergunta('Tem certeza que deseja CANCELAR?') then
  begin
    ModalResult := mrOk; // Esse comando já força fechamento do formulário.
  end
  else
  begin
    ModalResult := mrNone;
    Close;
  end;
end;

procedure TFrmNotaFiscalCancelar.Sair;
begin
  ModalResult := mrCancel;
  Close;
end;


procedure TFrmNotaFiscalCancelar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   IF Key = VK_ESCAPE then
   begin
      Sair();
   end;

end;

end.
