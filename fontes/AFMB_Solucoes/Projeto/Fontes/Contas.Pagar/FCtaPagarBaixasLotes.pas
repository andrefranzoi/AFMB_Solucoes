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

unit FCtaPagarBaixasLotes;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, DB, FireDAC.Comp.Client, StdCtrls, StrUtils,
   Buttons, ISFEdit, ISFEditbtn,
   ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, Mask, ExtCtrls, FFrameBarra,
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmCtaPagarBaixasLotes = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
      Panel1: TPanel;
      GroupBox1: TGroupBox;
      Label4: TLabel;
      Label3: TLabel;
      MskDataFim: TMaskEdit;
      MskDataIni: TMaskEdit;
      GroupBox2: TGroupBox;
      chkFornecedor: TCheckBox;
      EditClienteNome: TEdit;
      EditFornecedor: TIDBEditDialog;
      GroupBox3: TGroupBox;
      Edit1: TEdit;
      EditMotivoBaixa: TIDBEditDialog;
      GroupBox4: TGroupBox;
      Edit2: TEdit;
      EditContaCorrente: TIDBEditDialog;
      GroupBox5: TGroupBox;
      EditNomeContaCaixa: TEdit;
      ContaCaixa: TIDBEditDialog;
      Panel2: TPanel;
      BitBtn1: TBitBtn;
      BitBtn2: TBitBtn;
      SPFIN_CTAPAGAR_BAIXARLOTE: TFDStoredProc;
      procedure BitBtn1Click(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BitBtn2Click(Sender: TObject);
      procedure chkFornecedorClick(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure MskDataIniExit(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmCtaPagarBaixasLotes: TFrmCtaPagarBaixasLotes;

implementation

uses FPrincipal, Global, App.SQL, Biblioteca;

{$R *.dfm}

procedure TFrmCtaPagarBaixasLotes.BitBtn1Click(Sender: TObject);
begin

   dtDataIni := StrToDate(MskDataIni.text);
   dtDataFim := StrToDate(MskDataFim.text);
   strFornecedor := IfThen((chkFornecedor.Checked = false),
     Trim(EditFornecedor.text), '0');
   strMotivoBaixa := Trim(EditMotivoBaixa.text);
   strContaCorrente := Trim(EditContaCorrente.text);
   strContaCaixa := Trim(ContaCaixa.text);

   if pergunta('Tem certeza que deseja efetuar essa baixa por lote?') = false
   then
      exit;

   SPFIN_CTAPAGAR_BAIXARLOTE.ParamByName('NEMPRESA').AsInteger :=
     FSistema.Empresa;
   SPFIN_CTAPAGAR_BAIXARLOTE.ParamByName('DTVENCINICIO').AsDate := dtDataIni;
   SPFIN_CTAPAGAR_BAIXARLOTE.ParamByName('DTVENCFINAL').AsDate := dtDataFim;
   SPFIN_CTAPAGAR_BAIXARLOTE.ParamByName('NFORNECEDOR').AsInteger :=
     StrToIntDef(strFornecedor, 0);
   SPFIN_CTAPAGAR_BAIXARLOTE.ParamByName('NMOTIVOBAIXA').AsInteger :=
     StrToIntDef(strMotivoBaixa, 0);
   SPFIN_CTAPAGAR_BAIXARLOTE.ParamByName('NCONTACORRENTE').AsInteger :=
     StrToIntDef(strContaCorrente, 0);
   SPFIN_CTAPAGAR_BAIXARLOTE.ParamByName('NCONTACAIXA').AsInteger :=
     StrToIntDef(strContaCaixa, 0);
   SPFIN_CTAPAGAR_BAIXARLOTE.ParamByName('ACAO').AsString := 'BAIXAR';
   SPFIN_CTAPAGAR_BAIXARLOTE.ExecProc;

   avisosistema('Baixas concluidas com sucesso.');

end;

procedure TFrmCtaPagarBaixasLotes.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TFrmCtaPagarBaixasLotes.chkFornecedorClick(Sender: TObject);
begin
   if chkFornecedor.Checked then
   Begin
      EditFornecedor.Enabled := false;
   End
   Else
   Begin
      EditFornecedor.Enabled := true;
      EditFornecedor.SetFocus;
   End;

end;

procedure TFrmCtaPagarBaixasLotes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFrmCtaPagarBaixasLotes.FormCreate(Sender: TObject);
begin

   MskDataIni.text := DateToStr(Date);
   MskDataFim.text := DateToStr(Date);

end;

procedure TFrmCtaPagarBaixasLotes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = vk_escape then
      close;

end;

procedure TFrmCtaPagarBaixasLotes.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.text := fncDataValidar(MskDataIni.text);

end;

procedure TFrmCtaPagarBaixasLotes.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.text := fncDataValidar(MskDataFim.text);

end;

end.
