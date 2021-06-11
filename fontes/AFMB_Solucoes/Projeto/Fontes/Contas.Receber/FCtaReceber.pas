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

unit FCtaReceber;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, FFrameBotoes, FFramePadrao, FFrameBarra, StdCtrls, Mask, DBCtrls,
   ISFEdit, ISFEditbtn, ISFdbEditbtn, uEstSearchDialogZeos, IDBEdit, ExtCtrls,
   Classe.Global;

type
   TFrmCtaReceber = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
      Label2: TLabel;
      DBEdit2: TDBEdit;
      Label3: TLabel;
      DBEdit3: TDBEdit;
      Label4: TLabel;
      DBEdit4: TDBEdit;
      EditNomeCliente: TEdit;
      EditNomeVendedor: TEdit;
      DBEdit10: TDBEdit;
      Label10: TLabel;
      Label5: TLabel;
      EditData: TDBEdit;
      Label11: TLabel;
      DBEdit8: TDBEdit;
      Label12: TLabel;
      DBEdit11: TDBEdit;
      EditCliente: TIDBEditDialog;
      EstSearchDialogZeos2: TIDBEditDialog;
      EditNomeFormaPagto: TEdit;
      EditPagamento: TIDBEditDialog;
      Label1: TLabel;
      GroupBox1: TGroupBox;
      DBMemo1: TDBMemo;
      DBComboBox1: TDBComboBox;
    Label8: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    FrmFrameBotoes1: TFrmFrameBotoes;
    EditConta_Credito: TIDBEditDialog;
    EditContaCorrente: TEdit;
    dbDlgProcurar: TIDBEditDialog;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
      procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmCtaReceber: TFrmCtaReceber;

implementation

uses FPrincipal, FBaseDados, Global, FCtaReceberGeraParcelas;

{$R *.dfm}

procedure TFrmCtaReceber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   BaseDados.db_ctaReceber.Close;
   BaseDados.db_ctaReceber.ParamByName('CODIGO').Clear;
   Action := CaFree;
end;

procedure TFrmCtaReceber.FormCreate(Sender: TObject);
begin

   BaseDados.db_ctaReceber.Close;
   BaseDados.db_ctaReceber.ParamByName('CODIGO').Clear;

   FrmFrameBotoes1.DataSource := BaseDados.ds_ctaReceber;

   BaseDados.db_ctaReceber.Open;

end;

procedure TFrmCtaReceber.FormDestroy(Sender: TObject);
begin
  FrmCtaReceber := Nil;
end;

procedure TFrmCtaReceber.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
      close;

end;

procedure TFrmCtaReceber.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditData.Setfocus;

end;

procedure TFrmCtaReceber.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmCtaReceber.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmCtaReceber.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmCtaReceber.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
begin
   // relatorios

end;

procedure TFrmCtaReceber.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin

   dbDlgProcurar.SearchQuery.Clear;
   dbDlgProcurar.SearchQuery.Add('SELECT * FROM VIEW_FIN_CTARECEBER ');
   dbDlgProcurar.SearchQuery.Add('WHERE');
   dbDlgProcurar.SearchQuery.Add('EMPRESA='+IntToStr(FSistema.Empresa));
   dbDlgProcurar.SearchQuery.Add('AND');
   dbDlgProcurar.SearchQuery.Add('%WHERE%');
   dbDlgProcurar.SearchQuery.Add('ORDER BY DATA DESC, VENCIMENTO DESC');
   dbDlgProcurar.SearchQuery.Add('');

   if dbDlgProcurar.Execute then
   begin
      BaseDados.db_ctaReceber.Close;
      BaseDados.db_ctaReceber.ParamByName('EMPRESA').AsInteger   := FSistema.Empresa ;
      BaseDados.db_ctaReceber.ParamByName('CODIGO').AsInteger    := dbDlgProcurar.ResultFieldAsInteger('CODIGO');
      BaseDados.db_ctaReceber.Open;
   end;


end;

procedure TFrmCtaReceber.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmCtaReceber.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

end.
