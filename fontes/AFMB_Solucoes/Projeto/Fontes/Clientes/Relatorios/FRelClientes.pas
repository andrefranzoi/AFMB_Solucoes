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

unit FRelClientes;

interface

uses
   Windows, Messages, SysUtils, StrUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, ComCtrls, FrmRelatorios, ISFEdit,
   ISFEditbtn, ISFdbEditbtn, uEstSearchDialogZeos, IDBEdit;

type
   TFrmRelClientes = class(TForm)
      Panel1: TPanel;
    pgControle: TPageControl;
      Tab_clientes: TTabSheet;
      Tab_fornecedores: TTabSheet;
      RadioGForn: TRadioGroup;
      BoxCidadesForn: TGroupBox;
      Label8: TLabel;
      DCodCidadeForn: TEdit;
      chkCidadesForn: TCheckBox;
      BoxEstadosForn: TGroupBox;
      Label9: TLabel;
      chkEstadosForn: TCheckBox;
      dCodEstadoForn: TComboBox;
      Panel2: TPanel;
      GroupBox2: TGroupBox;
      Label3: TLabel;
      Label4: TLabel;
      MskDataIni: TMaskEdit;
      MskDataFim: TMaskEdit;
      RadioG: TRadioGroup;
      Panel3: TPanel;
    bxRepresentante: TGroupBox;
      chkRepres: TCheckBox;
      BoxCidades: TGroupBox;
      Label2: TLabel;
    EditCidade: TEdit;
      chkCidades: TCheckBox;
      BoxEstados: TGroupBox;
      Label1: TLabel;
      chkEstados: TCheckBox;
    EditEstado: TComboBox;
      BoxClientes: TGroupBox;
      chkCliente: TCheckBox;
      EditNomeVendedor: TEdit;
    EditVendedor: TIDBEditDialog;
    FrameRelatorios1: TFrameRelatorios;
    RadioGroupOrdenar: TRadioGroup;
    EditClienteNome: TEdit;
    EditCliente: TIDBEditDialog;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    chkFornecedor: TCheckBox;
    EditFornecedor: TIDBEditDialog;
    EditNomeCliente: TEdit;
    BtnSair: TBitBtn;
    btnImprimir: TBitBtn;
      procedure FormCreate(Sender: TObject);
      procedure MskDataIniExit(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure btnImprimirClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BtnSairClick(Sender: TObject);
      procedure chkClienteClick(Sender: TObject);
      procedure chkRepresClick(Sender: TObject);
      procedure chkCidadesClick(Sender: TObject);
      procedure chkEstadosClick(Sender: TObject);
      procedure RadioGClick(Sender: TObject);
      procedure MaskEdit1Exit(Sender: TObject);
      procedure MaskEdit2Exit(Sender: TObject);
      procedure chkCidadesFornClick(Sender: TObject);
      procedure chkEstadosFornClick(Sender: TObject);
      procedure RadioGFornClick(Sender: TObject);
    procedure chkFornecedorClick(Sender: TObject);
    procedure Tab_clientesShow(Sender: TObject);
    procedure Tab_fornecedoresShow(Sender: TObject);
   private
      { Private declarations }
      fTipoRelatorio : String;
   public
      { Public declarations }
      property TipoRelatorio  : string read fTipoRelatorio write fTipoRelatorio;
   end;

var
   FrmRelClientes: TFrmRelClientes;

implementation

uses FPrincipal, App.SQL, Biblioteca, Global, FRelCliFones, FRelCliAnalitico,
  FRelCliCidades, FRelEstados, FRelRepresentantes, FRelCliBloqueados,
  FRelFornFones, FRelFornCidades, FRelFornEstados;

{$R *.DFM}

procedure TFrmRelClientes.FormCreate(Sender: TObject);
begin
   pgControle.TabIndex := 0;
   MskDataIni.Text := DateToStr(Date - 1825); // 5 aos antes
   MskDataFim.Text := DateToStr(Date);

   MaskEdit1.Text := DateToStr(Date - 1825); // 5 aos antes
   MaskEdit2.Text := DateToStr(Date);

end;

procedure TFrmRelClientes.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.Text := fncDataValidar(MskDataIni.Text);
end;

procedure TFrmRelClientes.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.Text := fncDataValidar(MskDataFim.Text);
end;

procedure TFrmRelClientes.btnImprimirClick(Sender: TObject);
begin

   if fTipoRelatorio='CLIENTE'  then
   begin
     if RadioGroupOrdenar.ItemIndex = 0 then
        strOrdemDados :='VENDEDOR_NOME, NOME';

     if RadioGroupOrdenar.ItemIndex = 1 then
        strOrdemDados :='NOME';

     if RadioGroupOrdenar.ItemIndex = 2 then
        strOrdemDados :='CIDADENOME, NOME';

     if RadioGroupOrdenar.ItemIndex = 3 then
        strOrdemDados :=   'UF, NOME';

     dtDataIni    := StrToDateDef(MskDataIni.Text, Date());
     dtDataFim    := StrToDateDef(MskDataFim.Text, Date());
     strCliente   := ifthen((Trim(EditCliente.text) = '0'), '', Trim(EditCliente.text));
     strVendedor  := ifthen((Trim(EditVendedor.text) = '0'), '', Trim(EditVendedor.text));
     strCidade    := ifthen((Trim(EditCidade.text) = '0'), '', Trim(EditCidade.text));
     strEstado    := Copy(Trim(EditEstado.text),1 ,2);

     case RadioG.ItemIndex of
       0 : FrmRelCliFones := TFrmRelCliFones.create(self);
       1 : FrmRelCliAnalit := TFrmRelCliAnalit.create(self);
       2 : FrmRelCliCidades := TFrmRelCliCidades.create(self);
       3 : FrmRelEstados := TFrmRelEstados.create(self);
       4 : FrmRelRepresentantes := TFrmRelRepresentantes.create(self);
       5 : FrmRelCliBloqueados := TFrmRelCliBloqueados.create(self);
     end;
   end;

   // Fornecedor
   if fTipoRelatorio='FORNECEDOR'  then
   begin
     dtDataIni     := StrToDateDef(MaskEdit1.Text, Date());
     dtDataFim     := StrToDateDef(MaskEdit2.Text, Date());
     strFornecedor := ifthen((Trim(EditFornecedor.text) = '0'), '', Trim(EditFornecedor.text));
     strCidade     := ifthen((Trim(DCodCidadeForn.text) = '0'), '', Trim(DCodCidadeForn.text));
     strEstado     := Copy(Trim(dCodEstadoForn.text),1 ,2);

      case RadioGForn.ItemIndex of
        0 : FrmRelFornFones := TFrmRelFornFones.create(self);
        1 : FrmRelFornCidades := TFrmRelFornCidades.create(self);
        2 : FrmRelFornEstados := TFrmRelFornEstados.create(self);
      end;
   end;
end;

procedure TFrmRelClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      Close;

end;

procedure TFrmRelClientes.BtnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmRelClientes.chkClienteClick(Sender: TObject);
begin

   if chkCliente.Checked = true then
   Begin
      EditCliente.Enabled := False;
      EditCliente.Text := '0';
   End
   Else
   Begin

      EditCliente.Enabled := true;
      EditCliente.SetFocus;
   End;

end;

procedure TFrmRelClientes.chkRepresClick(Sender: TObject);
begin
   if chkRepres.Checked = true then
   Begin
      EditVendedor.Enabled := False;
      EditVendedor.Text := '0';
   End
   Else
   Begin
      EditVendedor.Enabled := true;
      EditVendedor.SetFocus;
   End;

end;

procedure TFrmRelClientes.chkCidadesClick(Sender: TObject);
begin
   If chkCidades.Checked = true then
   begin
      EditCidade.Enabled := False;
      EditCidade.Text := '';
   end
   Else
   Begin
      EditCidade.Enabled := true;
      EditCidade.SetFocus;
   End;

end;

procedure TFrmRelClientes.chkEstadosClick(Sender: TObject);
begin
   If chkEstados.Checked = true then
   begin
      EditEstado.Enabled := False;
      EditEstado.ItemIndex := -1;
   end
   Else
   Begin
      EditEstado.Enabled := true;
      EditEstado.SetFocus;
   End;

end;

procedure TFrmRelClientes.RadioGClick(Sender: TObject);
begin
  BoxCidades.Visible := RadioG.ItemIndex = 2;
  BoxEstados.Visible := RadioG.ItemIndex = 3;
  bxRepresentante.Visible := RadioG.ItemIndex = 4;

  if BoxCidades.Visible = False then
  begin
    EditCidade.Text := '0';
    chkCidades.Checked := True;
  end;

  if BoxEstados.Visible = False then
  begin
    EditEstado.Text := '';
    EditEstado.ItemIndex := -1;
    chkEstados.Checked := True;
  end;

  if bxRepresentante.Visible = False then
  begin
    EditVendedor.Text := '0';
    chkRepres.Checked := True;
  end;

end;

procedure TFrmRelClientes.MaskEdit1Exit(Sender: TObject);
begin
   MaskEdit1.Text := fncDataValidar(MaskEdit1.Text);

end;

procedure TFrmRelClientes.MaskEdit2Exit(Sender: TObject);
begin
   MaskEdit2.Text := fncDataValidar(MaskEdit2.Text);

end;

procedure TFrmRelClientes.chkCidadesFornClick(Sender: TObject);
begin

   If chkCidadesForn.Checked = true then
   begin
      DCodCidadeForn.Enabled := False;
      DCodCidadeForn.Text := '';
   end
   Else
   Begin
      DCodCidadeForn.Enabled := true;
      DCodCidadeForn.SelectAll;
      DCodCidadeForn.SetFocus;
   End;

end;

procedure TFrmRelClientes.chkEstadosFornClick(Sender: TObject);
begin

   If chkEstadosForn.Checked = true then
   begin
      dCodEstadoForn.Enabled := False;
      dCodEstadoForn.Text := '';
      dCodEstadoForn.ItemIndex := -1;
   end
   Else
   Begin
      dCodEstadoForn.Enabled := true;
      dCodEstadoForn.SetFocus;
   End;

end;

procedure TFrmRelClientes.chkFornecedorClick(Sender: TObject);
begin

   If chkFornecedor.Checked  then
   begin
     EditFornecedor.Enabled := False ;
     EditFornecedor.Text := '';
   end
   else
   begin
     EditFornecedor.Enabled := True;
   end;
end;

procedure TFrmRelClientes.RadioGFornClick(Sender: TObject);
begin
  BoxCidadesForn.Visible := RadioGForn.ItemIndex = 1;
  BoxEstadosForn.Visible := RadioGForn.ItemIndex = 2;

  if BoxCidadesForn.Visible = False then
  begin
    DCodCidadeForn.Text := '0';
    chkCidadesForn.Checked := True;
  end;

  if BoxEstadosForn.Visible = False then
  begin
    dCodEstadoForn.Text := '';
    dCodEstadoForn.ItemIndex := -1;
    chkEstadosForn.Checked := True;
  end;

  chkCidadesFornClick(Sender);
  chkEstadosFornClick(Sender);

end;

procedure TFrmRelClientes.Tab_clientesShow(Sender: TObject);
begin
  RadioGClick(Sender);
end;

procedure TFrmRelClientes.Tab_fornecedoresShow(Sender: TObject);
begin
  RadioGFornClick(Sender);
end;

end.
