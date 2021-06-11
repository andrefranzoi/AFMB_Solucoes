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

unit FRelPedidos;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, FrmRelatorios, ISFEdit,
   ISFEditbtn, ISFdbEditbtn, uEstSearchDialogZeos, IDBEdit, frxClass, frxDBSet,
   DB, FireDAC.Comp.Client, Spin, Classe.Global, FireDAC.Stan.Intf,
   FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
   FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
   FireDAC.Comp.DataSet;

type
   TFrmRelPedidos = class(TForm)
      Panel1: TPanel;
      GroupBox2: TGroupBox;
      Label3: TLabel;
      Label4: TLabel;
      MskDataIni: TMaskEdit;
      MskDataFim: TMaskEdit;
      Panel2: TPanel;
      RadioG_Ordem: TRadioGroup;
      RdPedidos: TRadioGroup;
      FrameRelatorios1: TFrameRelatorios;
      QryComissaoPedido: TFDQuery;
      fsd_ComissaoPedidos: TfrxDBDataset;
      GroupBox1: TGroupBox;
      EditClienteNome: TEdit;
      EditCliente: TIDBEditDialog;
      chkCliente: TCheckBox;
      fsr_ComissaoPedidos: TfrxReport;
      EditNomeVendedor: TEdit;
      EditVendedor: TIDBEditDialog;
      chkRepres: TCheckBox;
      Panel3: TPanel;
      RadioG: TRadioGroup;
      fsd_Pedidos: TfrxDBDataset;
      QryPedido: TFDQuery;
      fsr_Pedidos: TfrxReport;
      GrpProduto: TGroupBox;
      PainelProdutos: TPanel;
      EditProduto: TIDBEditDialog;
      chk_Referencia: TCheckBox;
      RdgFiltro: TRadioGroup;
      Btn_Imprimir: TBitBtn;
      BtnSair: TBitBtn;
      procedure Btn_SairClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure MskDataIniExit(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure chkRepresClick(Sender: TObject);
      procedure EditMarcaKeyPress(Sender: TObject; var Key: Char);
      procedure DCodClienteKeyPress(Sender: TObject; var Key: Char);
      procedure RadioGClick(Sender: TObject);
      procedure chkClienteClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BtnSairClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure chk_ReferenciaClick(Sender: TObject);

   private
      procedure ScriptPedido;
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelPedidos: TFrmRelPedidos;

implementation

uses Biblioteca, Global, FPrincipal, App.SQL, App.Funcoes;

{$R *.DFM}

procedure TFrmRelPedidos.Btn_SairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmRelPedidos.chkClienteClick(Sender: TObject);
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

procedure TFrmRelPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFrmRelPedidos.FormCreate(Sender: TObject);
begin
   Achar[0] := '';
   MskDataIni.Text := dateToStr(Date);
   MskDataFim.Text := dateToStr(Date);
   PainelProdutos.Enabled := False;
end;

procedure TFrmRelPedidos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      Close;

end;

Procedure TFrmRelPedidos.MskDataIniExit(Sender: TObject);
Begin
   MskDataIni.Text := fncDataValidar(MskDataIni.Text);
End;

procedure TFrmRelPedidos.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.Text := fncDataValidar(MskDataFim.Text);
end;

procedure TFrmRelPedidos.BtnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmRelPedidos.Btn_ImprimirClick(Sender: TObject);
begin
   dtDataIni := StrToDate(MskDataIni.Text);
   dtDataFim := StrToDate(MskDataFim.Text);
   strVendedor := Trim(EditVendedor.Text);

   // por Data de Entrega
   If RadioG_Ordem.ItemIndex = 0 then
   Begin
      strOrdemDados := ' CODIGO ';
   End;

   // por Ordem de Pedido
   If RadioG_Ordem.ItemIndex = 1 then
   Begin
      strOrdemDados := 'DATA, CLIENTE_NOME ';
   End;

   // por nome do cliente
   If RadioG_Ordem.ItemIndex = 2 then
   Begin
      strOrdemDados := 'DATA_ENTREGA,  CLIENTE_NOME ';
   End;

   // por nome do cliente
   If RadioG_Ordem.ItemIndex = 3 then
   Begin
      strOrdemDados := 'CLIENTE_NOME, DATA ';
   End;

   If RadioG_Ordem.ItemIndex = 3 then
   Begin
      strOrdemDados := 'VENDEDOR_NOME, DATA ';
   End;

   ScriptPedido;
   try
      case RadioG.ItemIndex of
         0:
            begin
               QryPedido.Open;
               fsr_Pedidos.ShowReport;
            end;
         1:
            begin
               QryComissaoPedido.Open;
               fsr_ComissaoPedidos.ShowReport;
            end;
      end;
   finally
      QryPedido.Close;
      QryComissaoPedido.Close;
      MsgEsperar('', '', False);
   end;

End;

Procedure TFrmRelPedidos.ScriptPedido;
begin
   //

   case RadioG.ItemIndex of

      0:
         Begin

            fsr_Pedidos.Variables['rptParametro'] := '';

            QryPedido.Close;
            QryPedido.SQL.clear;
            QryPedido.SQL.add('SELECT * FROM VIEW_PEDIDOSVENDAS');
            QryPedido.SQL.add('WHERE');
            QryPedido.SQL.add('EMPRESA=' + FSistema.Empresa.ToString);

            case RdgFiltro.ItemIndex of
               0:
                  QryPedido.SQL.add('  AND DATA>=:DATA1 AND DATA<=:DATA2');
               1:
                  QryPedido.SQL.add
                    ('  AND DATA_ENTREGA>=:DATA1 AND DATA_ENTREGA<=:DATA2');
               2:
                  QryPedido.SQL.add
                    ('  AND DATA_FATURAMENTO>=:DATA1 AND DATA_FATURAMENTO<=:DATA2');
            end;

            if not chkCliente.Checked then
            Begin
               QryPedido.SQL.add('AND CLIENTE=:CLIENTE');
               QryPedido.ParamByName('CLIENTE').AsInteger :=
                 StrToIntDef(Trim(EditCliente.Text), 0);
            End;

            if not chkRepres.Checked then
            Begin
               QryPedido.SQL.add('AND VENDEDOR=:VENDEDOR');
               QryPedido.ParamByName('VENDEDOR').AsInteger :=
                 StrToIntDef(strVendedor, 0);
            End;

            if RdPedidos.ItemIndex = 0 then
               fsr_Pedidos.Variables['rptParametro'] :=
                 QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' +
                 MskDataIni.Text + '  -  ' + MskDataFim.Text +
                 ' - (Todos os Pedidos)');

            if RdPedidos.ItemIndex = 1 then
            Begin
               fsr_Pedidos.Variables['rptParametro'] :=
                 QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' +
                 MskDataIni.Text + '  -  ' + MskDataFim.Text +
                 ' - (Não Aprovados)');
               QryPedido.SQL.add('AND  APROVADO IN (''N'')');
            End;

            if RdPedidos.ItemIndex = 2 then
            Begin
               fsr_Pedidos.Variables['rptParametro'] :=
                 QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' +
                 MskDataIni.Text + '  -  ' + MskDataFim.Text +
                 ' - (Aprovados)');
               QryPedido.SQL.add('AND  APROVADO IN (''S'')');
            End;

            if RdPedidos.ItemIndex = 3 then
            Begin
               fsr_Pedidos.Variables['rptParametro'] :=
                 QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' +
                 MskDataIni.Text + '  -  ' + MskDataFim.Text +
                 ' - (Faturados)');
               QryPedido.SQL.add('AND  STATUS IN (''S'')');
               QryPedido.SQL.add('AND  APROVADO IN (''S'')');
            End;

            if RdPedidos.ItemIndex = 4 then
            Begin
               fsr_Pedidos.Variables['rptParametro'] :=
                 QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' +
                 MskDataIni.Text + '  -  ' + MskDataFim.Text +
                 ' - (Não Faturados)');
               QryPedido.SQL.add('AND  STATUS IN (''N'')');
            End;

            QryPedido.SQL.add(' ORDER BY ' + strOrdemDados);

            QryPedido.ParamByName('DATA1').AsDateTime := dtDataIni;
            QryPedido.ParamByName('DATA2').AsDateTime := dtDataFim;

         End;
      1:
         Begin
            fsr_ComissaoPedidos.Variables['rptParametro'] := '';

            QryComissaoPedido.Close;
            QryComissaoPedido.SQL.clear;
            QryComissaoPedido.SQL.add('SELECT * FROM VIEW_PEDIDOSCOMISSAO');
            QryComissaoPedido.SQL.add('WHERE');
            QryComissaoPedido.SQL.add('EMPRESA=' + FSistema.Empresa.ToString);
            QryComissaoPedido.SQL.add
              ('AND DATAFATURAMENTO>=:DATA1 AND DATAFATURAMENTO<=:DATA2    ');
            if not chkCliente.Checked then
            Begin
               QryComissaoPedido.SQL.add('AND CLIENTE=:CLIENTE');
               QryComissaoPedido.ParamByName('CLIENTE').AsInteger :=
                 StrToIntDef(Trim(EditCliente.Text), 0);
            End;

            if not chkRepres.Checked then
            Begin
               QryComissaoPedido.SQL.add('AND VENDEDOR=:VENDEDOR');
               QryComissaoPedido.ParamByName('VENDEDOR').AsInteger :=
                 StrToIntDef(strVendedor, 0);
            End;

            if RdPedidos.ItemIndex = 0 then
               fsr_ComissaoPedidos.Variables['rptParametro'] :=
                 QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' +
                 MskDataIni.Text + '  -  ' + MskDataFim.Text +
                 ' - (Todos os Pedidos)');

            if RdPedidos.ItemIndex = 1 then
            Begin
               fsr_ComissaoPedidos.Variables['rptParametro'] :=
                 QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' +
                 MskDataIni.Text + '  -  ' + MskDataFim.Text +
                 ' - (Não Aprovados)');
               QryComissaoPedido.SQL.add('AND  APROVADO  IN (''N'')');
            End;

            if RdPedidos.ItemIndex = 2 then
            Begin
               fsr_ComissaoPedidos.Variables['rptParametro'] :=
                 QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' +
                 MskDataIni.Text + '  -  ' + MskDataFim.Text +
                 ' - (Aprovados)');
               QryComissaoPedido.SQL.add('AND  APROVADO IN (''S'')');
            End;

            if RdPedidos.ItemIndex = 3 then
            Begin
               fsr_ComissaoPedidos.Variables['rptParametro'] :=
                 QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' +
                 MskDataIni.Text + '  -  ' + MskDataFim.Text +
                 ' - (Faturados)');
               QryComissaoPedido.SQL.add('AND  STATUS IN (''S'')');
            End;

            if RdPedidos.ItemIndex = 4 then
            Begin
               fsr_ComissaoPedidos.Variables['rptParametro'] :=
                 QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' +
                 MskDataIni.Text + '  -  ' + MskDataFim.Text +
                 ' - (Não Faturados)');
               QryComissaoPedido.SQL.add('AND  STATUS IN (''N'')');
            End;

            QryComissaoPedido.SQL.add('ORDER BY VENDEDORNOME, CLIENTE_NOME');
            QryComissaoPedido.ParamByName('DATA1').AsDateTime := dtDataIni;
            QryComissaoPedido.ParamByName('DATA2').AsDateTime := dtDataFim;

         End;
   end;

end;

procedure TFrmRelPedidos.chkRepresClick(Sender: TObject);
begin
   if chkRepres.Checked = true then
   Begin
      EditVendedor.Enabled := False;

   End
   Else
   Begin
      EditVendedor.Enabled := true;
      EditVendedor.SelectAll;
      EditVendedor.SetFocus;
   End;

end;

procedure TFrmRelPedidos.chk_ReferenciaClick(Sender: TObject);
begin
   if chk_Referencia.Checked then
   begin
      EditProduto.Text := '';
      PainelProdutos.Enabled := False;
   end
   else
   begin
      PainelProdutos.Enabled := true;
   end;
end;

procedure TFrmRelPedidos.EditMarcaKeyPress(Sender: TObject; var Key: Char);
begin

   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
   Begin
      Key := #0;
      Erro('Esse campo é somente numerico' + #13 + #10 +
        'Tecle F8 para pesquisar as marcas cadastradas');
   End;

end;

procedure TFrmRelPedidos.DCodClienteKeyPress(Sender: TObject; var Key: Char);
begin
   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
   Begin
      Key := #0;
      Erro('Esse campo é somente numerico' + #13 + #10 +
        'Tecle F8 para pesquisar os clientes');
   End;

end;

procedure TFrmRelPedidos.RadioGClick(Sender: TObject);
begin

   TRadioGroup(RdPedidos.Controls[3]).Enabled := true;

   If RadioG.ItemIndex = 7 then
      RdPedidos.ItemIndex := 3
   else
      RdPedidos.ItemIndex := 0;

   If (RadioG.ItemIndex = 1) then
   Begin
      TRadioGroup(RdPedidos.Controls[3]).Enabled := False;
   End;

   If (RadioG.ItemIndex = 2) then
   Begin
      TRadioGroup(RdPedidos.Controls[3]).Enabled := False;
   End;

end;

end.
