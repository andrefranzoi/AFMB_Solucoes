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

unit FComissoesRelatorios;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, FrmRelatorios, ISFEdit, ISFEditbtn,
   ISFdbEditbtn, uEstSearchDialogZeos, IDBEdit, DB,
   frxClass, frxDBSet,  FFrameBarra, Classe.Global, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmComissoesRelatorios = class(TForm)
      Panel1: TPanel;
      Panel2: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
    FrmFrameBarra1: TFrmFrameBarra;
    Painel00: TPanel;
    GroupBox2: TGroupBox;
    rAgrupar: TRadioGroup;
    MskDataFim: TMaskEdit;
    MskDataIni: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    Panel4: TPanel;
    BoxRepresentante: TGroupBox;
    chkRepres: TCheckBox;
    EditVendedor: TIDBEditDialog;
    EditNomeVendedor: TEdit;
    GroupBox1: TGroupBox;
    chkClientes: TCheckBox;
    EditCliente: TIDBEditDialog;
    EditClienteNome: TEdit;
    Painel01: TPanel;
    RadioG: TRadioGroup;
    GroupBox3: TGroupBox;
    GroupBox5: TGroupBox;
    chkFormaPagto: TCheckBox;
    EditNomeFormaPagto: TEdit;
    EditPagamento: TIDBEditDialog;
    GroupBoxContabanco: TGroupBox;
    chkContaBancaria: TCheckBox;
    EditContaCorrente: TEdit;
    EditContaBancaria: TIDBEditDialog;
    GroupBoxContaCaixa: TGroupBox;
    chkContaCaixa: TCheckBox;
    EditContaCaixa: TIDBEditDialog;
    EditContaCaixaNome: TEdit;
    rgpMovimentacao: TRadioGroup;
    fsd_ComissaoPedidos: TfrxDBDataset;
    db_ComissaoPedidos: TFDQuery;
    fsr_ComissaoPedidos: TfrxReport;
      procedure FormCreate(Sender: TObject);
      procedure MskDataIniExit(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSairClick(Sender: TObject);
      procedure chkClientesClick(Sender: TObject);
      procedure chkRepresClick(Sender: TObject);
    procedure chkContaCaixaClick(Sender: TObject);
    procedure chkContaBancariaClick(Sender: TObject);
    procedure chkFormaPagtoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

   private
    procedure prcScriptPedido;
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmComissoesRelatorios: TFrmComissoesRelatorios;

implementation

uses FPrincipal, Biblioteca, Global, App.SQL;

{$R *.DFM}

procedure TFrmComissoesRelatorios.FormCreate(Sender: TObject);
begin

   MskDataIni.text := DateToStr(date - 90);
   MskDataFim.text := DateToStr(date + 90);

end;

procedure TFrmComissoesRelatorios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
      close;

end;

procedure TFrmComissoesRelatorios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := Cafree;
end;

procedure TFrmComissoesRelatorios.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.text := fncDataValidar(MskDataIni.text);

end;

procedure TFrmComissoesRelatorios.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.text := fncDataValidar(MskDataFim.text);
end;


procedure TFrmComissoesRelatorios.chkFormaPagtoClick(Sender: TObject);
begin
   if chkFormaPagto.Checked = true then
   Begin
      EditPagamento.Enabled := False;
   End
   Else
   Begin
      EditPagamento.Enabled := true;
      EditPagamento.SetFocus;
   End;

end;

procedure TFrmComissoesRelatorios.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmComissoesRelatorios.chkClientesClick(Sender: TObject);
begin

   if chkClientes.Checked = true then
   Begin
      EditCliente.Enabled := False;
   End
   Else
   Begin
      EditCliente.Enabled := true;
      EditCliente.SetFocus;
   End;

end;

procedure TFrmComissoesRelatorios.chkContaBancariaClick(Sender: TObject);
begin
   if chkContaBancaria.Checked = true then
   Begin
      EditContaBancaria.Enabled := False;
   End
   Else
   Begin
      EditContaBancaria.Enabled := true;
      EditContaBancaria.SetFocus;
   End;

end;

procedure TFrmComissoesRelatorios.chkContaCaixaClick(Sender: TObject);
begin
   if chkContaCaixa.Checked = true then
   Begin
      EditContaCaixa.Enabled := False;
   End
   Else
   Begin
      EditContaCaixa.Enabled := true;
      EditContaCaixa.SetFocus;
   End;

end;

procedure TFrmComissoesRelatorios.chkRepresClick(Sender: TObject);
begin
   if chkRepres.Checked = true then
   Begin
      EditVendedor.Enabled := False;

   End
   Else
   Begin
      EditVendedor.Enabled := true;
      EditVendedor.SetFocus;
   End;

end;

procedure TFrmComissoesRelatorios.Btn_ImprimirClick(Sender: TObject);
begin

   dtDataIni           := StrToDate(MskDataIni.text);
   dtDataFim           := StrToDate(MskDataFim.text);
   strVendedor         := Trim(EditVendedor.text);
   strContaCaixa       := Trim(EditContaCaixa.text);
   strContaCorrente    := Trim(EditContaBancaria.text);
   strFormaPagamento   := Trim(EditPagamento.text);

   strNomeAgrupamento := UpperCase( rAgrupar.Items[rAgrupar.ItemIndex]+':' );

   case rAgrupar.ItemIndex of

      0:
         Begin
            strOrdemDados := '  DC, VENCIMENTO, VENDEDOR_NOME,  CLIENTE_NOME ';
         End;

      1:
         Begin
            strOrdemDados := '  DC, DATA, VENDEDOR_NOME,  CLIENTE_NOME ';
         End;

      2:
         Begin
            strOrdemDados := '  DC, VENDEDOR_NOME ';
         End;

      3:
         Begin
            strOrdemDados := ' DC, CLIENTE_NOME ';
         End;

   End;

   case rgpMovimentacao.ItemIndex of

      0:   strCreditoDebito := ' DC  LIKE ' + QuotedStr('%');
      1:   strCreditoDebito := ' DC=' + QuotedStr('CREDITO');
      2:   strCreditoDebito := ' DC=' + QuotedStr('DEBITO');

   End;

   prcScriptPedido;
   case radiog.itemindex of
      0: begin
            fsr_comissaopedidos.showreport;
         end;
   end;

end;

Procedure TFrmComissoesRelatorios.prcScriptPedido;
begin
//

   case RadioG.ItemIndex of

      0:Begin
         fsr_ComissaoPedidos.Variables['rptParametro'] := '';

         db_ComissaoPedidos.close;
         db_ComissaoPedidos.sql.clear;
         db_ComissaoPedidos.sql.add('SELECT * FROM VIEW_FIN_COMISSOES');
         db_ComissaoPedidos.sql.add('WHERE');
         db_ComissaoPedidos.sql.add('EMPRESA=:EMPRESA');
         db_ComissaoPedidos.sql.add('AND');

         if rAgrupar.ItemIndex=0 then
            db_ComissaoPedidos.sql.add('VENCIMENTO between :DATA1 AND :DATA2');

         if rAgrupar.ItemIndex=1 then
            db_ComissaoPedidos.sql.add('DATA between :DATA1 AND :DATA2');


         if not chkClientes.Checked then
         Begin
            db_ComissaoPedidos.sql.add('AND');
            db_ComissaoPedidos.sql.add('CLIENTE=:CLIENTE');
            db_ComissaoPedidos.ParamByName('CLIENTE').AsInteger :=        StrToIntDef(Trim(EditCliente.Text),0);
         End;

         if not chkRepres.Checked then
         Begin
            db_ComissaoPedidos.sql.add('AND');
            db_ComissaoPedidos.sql.add('VENDEDOR=:VENDEDOR');
            db_ComissaoPedidos.ParamByName('VENDEDOR').AsInteger :=       StrToIntDef(strVendedor,0);
         End;

         if not chkContaCaixa.Checked then
         Begin
            db_ComissaoPedidos.sql.add('AND');
            db_ComissaoPedidos.sql.add('CONTACAIXA=:CONTACAIXA');
            db_ComissaoPedidos.ParamByName('CONTACAIXA').AsInteger :=       StrToIntDef(EditContaCaixa.Text,0);
         End;

         if not chkContaBancaria.Checked then
         Begin
            db_ComissaoPedidos.sql.add('AND');
            db_ComissaoPedidos.sql.add('CONTACORRENTE=:CONTACORRENTE');
            db_ComissaoPedidos.ParamByName('CONTACORRENTE').AsInteger :=       StrToIntDef(EditContaBancaria.Text,0);
         End;

         if not chkFormaPagto.Checked then
         Begin
            db_ComissaoPedidos.sql.add('AND');
            db_ComissaoPedidos.sql.add('FORMA_PAGTO=:FORMA_PAGTO');
            db_ComissaoPedidos.ParamByName('FORMA_PAGTO').AsInteger :=       StrToIntDef(EditPagamento.Text,0);
         End;


         if rgpMovimentacao.ItemIndex = 0 then
         Begin
            fsr_ComissaoPedidos.Variables['rptParametro'] := QuotedStr('Periodo: ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Movimentação: Todos)');
            db_ComissaoPedidos.sql.add(' AND ');
            db_ComissaoPedidos.sql.add( strCreditoDebito  );
         End;

         if rgpMovimentacao.ItemIndex = 1 then
         Begin
            fsr_ComissaoPedidos.Variables['rptParametro'] := QuotedStr('Periodo: ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Movimentação: Créditos)');
            db_ComissaoPedidos.sql.add(' AND ');
            db_ComissaoPedidos.sql.add( strCreditoDebito  );
         End;

         if rgpMovimentacao.ItemIndex = 2 then
         Begin
            fsr_ComissaoPedidos.Variables['rptParametro'] := QuotedStr('Periodo: ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Movimentação: Débitos)');
            db_ComissaoPedidos.sql.add(' AND ');
            db_ComissaoPedidos.sql.add( strCreditoDebito  );
         End;


         db_ComissaoPedidos.sql.add('ORDER BY ' + strOrdemDados);

         db_ComissaoPedidos.ParamByName('DATA1').AsDateTime    := dtDataIni;
         db_ComissaoPedidos.ParamByName('DATA2').AsDateTime    := dtDataFim;
         db_ComissaoPedidos.ParamByName('EMPRESA').AsInteger   := FSistema.Empresa;

      End;



   end;


end;

end.
