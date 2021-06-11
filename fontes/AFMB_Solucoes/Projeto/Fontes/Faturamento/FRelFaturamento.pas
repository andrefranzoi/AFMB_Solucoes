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

unit FRelFaturamento;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, Db,
   SqlExpr, Grids, DBGrids, FrmRelatorios, ISFEdit, ISFEditbtn, ISFdbEditbtn,
   uEstSearchDialogZeos, IDBEdit, frxClass, frxDBSet,
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmRelFaturamento = class(TForm)
      Panel1: TPanel;
      PainelBotoes: TPanel;
      RadioG_Ordem: TRadioGroup;
      RadioNF: TRadioGroup;
    FrameRelatorios1: TFrameRelatorios;
    db_ComissaoPedidos: TFDQuery;
    fsd_ComissaoPedidos: TfrxDBDataset;
    fsr_ComissaoPedidos: TfrxReport;
    Panel2: TPanel;
    RadioG: TRadioGroup;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    MskDataIni: TMaskEdit;
    MskDataFim: TMaskEdit;
    GroupBox1: TGroupBox;
    EditClienteNome: TEdit;
    EditCliente: TIDBEditDialog;
    chkCliente: TCheckBox;
    chkRepres: TCheckBox;
    EditVendedor: TIDBEditDialog;
    EditNomeVendedor: TEdit;
    GroupBox3: TGroupBox;
    QryFrenteCaixa: TFDQuery;
    frxDBFrenteCaixa: TfrxDBDataset;
    frxFrenteCaixa: TfrxReport;
    GrpProduto: TGroupBox;
    PainelProdutos: TPanel;
    EditProduto: TIDBEditDialog;
    chk_Referencia: TCheckBox;
    BtnSair: TBitBtn;
    Btn_Imprimir: TBitBtn;
      procedure Btn_SairClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure MskDataIniExit(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BtnSairClick(Sender: TObject);
      procedure chkRepresClick(Sender: TObject);
      procedure chkClienteClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure db_ComissaoPedidosBeforeOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure db_ComissaoPedidosAfterOpen(DataSet: TDataSet);
    procedure chk_ReferenciaClick(Sender: TObject);
    procedure RadioGClick(Sender: TObject);

   private
    procedure ScriptPedido;
      { Private declarations }

   public
      { Public declarations }

   end;

var
   FrmRelFaturamento: TFrmRelFaturamento;

implementation

uses Biblioteca, FPrincipal, Global, 
   FFat_RelRepres,
   FFat_RelCurvaABC_Clientes, FFat_RelCurvaABCVendedores,
   FFat_RelCurvaABCFormaPagto, FFat_RelResumo_CFOP,
   FFat_RelComissao, FFat_RelComissaoAnalitico,
   FFat_RelNFAnalitico,
   FFat_RelNFAnaliticoProdutos, FFat_RelNotaFiscal, App.Funcoes;

{$R *.DFM}

procedure TFrmRelFaturamento.Btn_SairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmRelFaturamento.FormShow(Sender: TObject);
begin
//  TRadioGroup(RadioG.Controls[2]).Enabled:= False;
//  TRadioGroup(RadioG.Controls[3]).Enabled:= False;
//  TRadioGroup(RadioG.Controls[6]).Enabled:= False;
end;

procedure TFrmRelFaturamento.FormCreate(Sender: TObject);
begin
  PainelProdutos.Enabled := False;
  GrpProduto.Visible := False;
  MskDataIni.Text := dateToStr(Date);
  MskDataFim.Text := dateToStr(Date);
end;

procedure TFrmRelFaturamento.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.Text := fncDataValidar(MskDataIni.Text);
end;

procedure TFrmRelFaturamento.RadioGClick(Sender: TObject);
begin
  GrpProduto.Visible := False;
  case RadioG.ItemIndex of
    5: GrpProduto.Visible := True;
  end;

end;

procedure TFrmRelFaturamento.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.Text := fncDataValidar(MskDataFim.Text);
end;

procedure TFrmRelFaturamento.Btn_ImprimirClick(Sender: TObject);
begin
   case RadioNF.ItemIndex of
        0: Tipo_NF := '   AND  OPERACAO  LIKE ' + QuotedStr('%');
        1: Tipo_NF := '   AND  OPERACAO=' + QuotedStr('S');
      2,3: Tipo_NF := '   AND  OPERACAO=' + QuotedStr('E');
        4: Tipo_NF := '   AND  OPERACAO=' + QuotedStr('C');
        5: Tipo_NF := '   AND  TIPONF IN (' + QuotedStr('NFCE')+ ', '+QuotedStr('SAT')+')';
   end;

   case RadioG_Ordem.ItemIndex of
      0: strOrdemDados := ' EMISSAO, NOTAFISCAL ';
      1: strOrdemDados := ' NOTAFISCAL ';
      2: strOrdemDados := ' CLIENTE_NOME ';
      3: strOrdemDados := ' VENDEDOR_NOME ';
   end;

   // -------------------------------------------------------------------------
   // Mostra relatorio selecionado
   // -------------------------------------------------------------------------
   case RadioG.ItemIndex of
       0: FrmFat_RelNotaFiscal := TFrmFat_RelNotaFiscal.create(self);
       1: FrmFat_RelRepres := TFrmFat_RelRepres.create(self);
       2: FrmFat_RelComissao := TFrmFat_RelComissao.create(self);
       3: FrmFat_RelComissaoAnalitico :=  TFrmFat_RelComissaoAnalitico.create(self);
       4: FrmFat_RelNFAnalitico := TFrmFat_RelNFAnalitico.create(self);
       5: FrmFat_RelNFAnaliticoProdutos := TFrmFat_RelNFAnaliticoProdutos.create(self);
       6: FrmFat_RelCurvaABC_Clientes   := TFrmFat_RelCurvaABC_Clientes.create(self);
       7: FrmFat_RelCurvaABCVendedores  := TFrmFat_RelCurvaABCVendedores.create(self);
       8: FrmFat_RelCurvaABCFormaPagto  := TFrmFat_RelCurvaABCFormaPagto.create(self);
       9: FrmFat_RelResumo_CFOP := TFrmFat_RelResumo_CFOP.create(self);
      10: begin
            ScriptPedido;
            fsr_ComissaoPedidos.ShowReport;
          end;
      11: begin
            try
              QryFrenteCaixa.Close;
              QryFrenteCaixa.ParamByName('DTINI').AsDate := StrToDateDef(MskDataIni.Text, Date);
              QryFrenteCaixa.ParamByName('DTFIM').AsDate := StrToDateDef(MskDataFim.Text, Date);
              QryFrenteCaixa.Open;
              frxFrenteCaixa.ShowReport;
            finally
              QryFrenteCaixa.Close;
            end;
          end;
   End;

End;

Procedure TFrmRelFaturamento.ScriptPedido;
begin
//
   dtDataIni := StrToDate(MskDataIni.Text);
   dtDataFim := StrToDate(MskDataFim.Text);

   db_ComissaoPedidos.close;
   db_ComissaoPedidos.sql.clear;
   db_ComissaoPedidos.sql.add('SELECT * FROM VIEW_PEDIDOSCOMISSAO');
   db_ComissaoPedidos.sql.add('WHERE');
   db_ComissaoPedidos.sql.add('EMPRESA=:EMPRESA');
   db_ComissaoPedidos.sql.add('AND');
   db_ComissaoPedidos.sql.add('DATA between :DATA1 AND :DATA2');


   if not chkCliente.Checked then
   Begin
      db_ComissaoPedidos.sql.add('AND');
      db_ComissaoPedidos.sql.add('CLIENTE=:CLIENTE');
      db_ComissaoPedidos.ParamByName('CLIENTE').AsInteger :=        StrToInt(FrmRelFaturamento.EditCliente.Text);
   End;

   if not chkRepres.Checked then
   Begin
      db_ComissaoPedidos.sql.add('AND');
      db_ComissaoPedidos.sql.add('VENDEDOR=:VENDEDOR');
      db_ComissaoPedidos.ParamByName('VENDEDOR').AsInteger :=        StrToInt(FrmRelFaturamento.EditCliente.Text);
   End;

   db_ComissaoPedidos.sql.add('ORDER BY VENDEDORNOME, CLIENTE_NOME');
   db_ComissaoPedidos.ParamByName('DATA1').AsDateTime := dtDataIni;
   db_ComissaoPedidos.ParamByName('DATA2').AsDateTime := dtDataFim;

   db_ComissaoPedidos.open;

end;

procedure TFrmRelFaturamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      Close;

end;


procedure TFrmRelFaturamento.BtnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmRelFaturamento.chkRepresClick(Sender: TObject);
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

procedure TFrmRelFaturamento.chk_ReferenciaClick(Sender: TObject);
begin
   if chk_Referencia.Checked then
   begin
      EditProduto.Text := '';
      PainelProdutos.Enabled := False;
   end
   else
   begin
     PainelProdutos.Enabled := True;
   end;
end;

procedure TFrmRelFaturamento.db_ComissaoPedidosAfterOpen(DataSet: TDataSet);
begin
  FormataCampo(db_ComissaoPedidos);
end;

procedure TFrmRelFaturamento.db_ComissaoPedidosBeforeOpen(DataSet: TDataSet);
begin
   db_ComissaoPedidos.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmRelFaturamento.chkClienteClick(Sender: TObject);
begin
   if chkCliente.Checked = true then
   Begin
      EditCliente.Enabled := False;
   End
   Else
   Begin
      EditCliente.Enabled := true;
      EditCliente.SetFocus;
   End;

end;

procedure TFrmRelFaturamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.
