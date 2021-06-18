﻿{
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

unit FCadClientes;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Winapi.ShellAPI, cxGraphics,
   cxControls, cxLookAndFeels,
   cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
   cxDataStorage, cxEdit, cxNavigator,
   cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
   cxCalendar, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, Vcl.Menus, frxClass, frxDBSet,
   FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtDlgs, Vcl.Grids,
   Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls, cxGridLevel,
   cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
   cxGridCustomView, cxGrid, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Mask, ISFEdit,
   ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FFrameBotoes,
   FFrameBarra,
   CoreTableClass,
   Classe.Global, dxDateRanges, dxSkinsCore, dxSkinsDefaultPainters,
   dxBar, ACBrBase, ACBrSocket, ACBrCEP;

type
   TFrmClientes = class(TForm)
      OpenPictureDialog1: TOpenPictureDialog;
      FrmFrameBarra1: TFrmFrameBarra;
      FrmFrameBotoes1: TFrmFrameBotoes;
      db_Pedido: TFDQuery;
      ds_Pedido: TDataSource;
      db_ctareceber: TFDQuery;
      ds_ctareceber: TDataSource;
      db_PedidoSum: TFDQuery;
      db_ctareceberSum: TFDQuery;
      frdb_Pedido: TfrxDBDataset;
      frdb_ctareceber: TfrxDBDataset;
      frdb_Clientes: TfrxDBDataset;
      frxReportCliente: TfrxReport;
      db_ViewCliente: TFDQuery;
      EditClienteLocalizar: TIDBEditDialog;
      OpenDialogArquivos: TOpenDialog;
      DS_Clientes: TDataSource;
      db_Clientes: TFDQuery;
      dbClienteCobrancas: TFDQuery;
      dsClienteCobrancas: TDataSource;
      QryAnexos: TFDQuery;
      dsAnexos: TDataSource;
      PgClientes: TPageControl;
      Tab_PFisica: TTabSheet;
      Pg_CadastroF: TPageControl;
      Tab_FBasicos: TTabSheet;
      Label10: TLabel;
      Label11: TLabel;
      Label14: TLabel;
      Label15: TLabel;
      Label25: TLabel;
      Label30: TLabel;
      Spb_email1: TSpeedButton;
      Label61: TLabel;
      Label22: TLabel;
      Label32: TLabel;
      Label60: TLabel;
      RgSexo: TDBRadioGroup;
      DBEdit2: TDBEdit;
      EditCPF: TDBEdit;
      DBEdit3: TDBEdit;
      DBEdit5: TDBEdit;
      DBEdit16: TDBEdit;
      DBEdit18: TDBEdit;
      EditcodRegiao1: TIDBEditDialog;
      EditVendedor1: TEdit;
      DBEdit66: TDBEdit;
      DBEdit13: TDBEdit;
      DBEdit14: TDBEdit;
      DBEdit61: TDBEdit;
      DBEdit62: TDBEdit;
      EditRegiao1: TEdit;
      EditCodevendedor: TIDBEditDialog;
      GroupBox9: TGroupBox;
      Panel3: TPanel;
      BitBtn1: TBitBtn;
      BitBtn2: TBitBtn;
      DBImage1: TDBImage;
      GroupBox2: TPanel;
      Label52: TLabel;
      Label18: TLabel;
      Label51: TLabel;
      Label56: TLabel;
      Label21: TLabel;
      Label20: TLabel;
      Label19: TLabel;
      EditCEP0: TDBEdit;
      DBEdit30: TDBEdit;
      edtComplemento: TDBEdit;
      EditBairro1: TDBEdit;
      EditUF1: TDBEdit;
      edtEndereco: TDBEdit;
      DBEdit9: TDBEdit;
      DBRadioGroup4: TDBRadioGroup;
      Tab_FImportantes: TTabSheet;
      Label57: TLabel;
      Label13: TLabel;
      Label53: TLabel;
      Label55: TLabel;
      RDGCredito: TDBRadioGroup;
      DBEdit39: TDBEdit;
      DBEdit27: TDBEdit;
      DBEdit28: TDBEdit;
      DBEdit29: TDBEdit;
      DBRadioGroup3: TDBRadioGroup;
      DBRadioGroup1: TDBRadioGroup;
      Tab_PJuridica: TTabSheet;
      Pg_CadastroJ: TPageControl;
      Tab_JBasico: TTabSheet;
      Label68: TLabel;
      Label69: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      Label5: TLabel;
      Label70: TLabel;
      Label40: TLabel;
      Label33: TLabel;
      Label43: TLabel;
      Label4: TLabel;
      SpeedButton1: TSpeedButton;
      DBEdit47: TDBEdit;
      DBEdit50: TDBEdit;
      DBEdit51: TDBEdit;
      EditNome: TDBEdit;
      EdFantasia: TDBEdit;
      EdRGInscrEst: TDBEdit;
      EditCNPJ: TDBEdit;
      DBEdit59: TDBEdit;
      EditcodRegiao2: TIDBEditDialog;
      EditRegiao2: TEdit;
      DBEdit24: TDBEdit;
      DBEdit57: TDBEdit;
      DBEdit60: TDBEdit;
      grpEnderecoPJ: TGroupBox;
      Label6: TLabel;
      Label7: TLabel;
      Label16: TLabel;
      Label17: TLabel;
      Label26: TLabel;
      Label28: TLabel;
      Label29: TLabel;
      Label31: TLabel;
      DBEdit10: TDBEdit;
      DBEdit12: TDBEdit;
      DBEdit21: TDBEdit;
      DBEdit22: TDBEdit;
      DBEdit40: TDBEdit;
      DBEdit42: TDBEdit;
      DBEdit43: TDBEdit;
      EditTransportadora: TIDBEditDialog;
      EditNomeTrasportadora: TEdit;
      EditAtividade: TIDBEditDialog;
      EditNomeAtividade: TEdit;
      EditCodigo: TDBEdit;
      rgpAtivo: TDBRadioGroup;
      EditPlanoPagamentoPadrao: TEdit;
      EditPagamento: TIDBEditDialog;
      IDBEditDialog3: TIDBEditDialog;
      Edit3: TEdit;
      GroupBox10: TGroupBox;
      Label12: TLabel;
      Label42: TLabel;
      Label41: TLabel;
      Label44: TLabel;
      DBEdit26: TDBEdit;
      DBEdit19: TDBEdit;
      DBEdit11: TDBEdit;
      DBEdit41: TDBEdit;
      rgBloqueio: TDBRadioGroup;
      DBRadioGroup2: TDBRadioGroup;
      TabSheet5: TTabSheet;
      GroupBox20: TGroupBox;
      DBRichEdit1: TDBRichEdit;
      Tab_Historico: TTabSheet;
      Panel2: TPanel;
      Splitter1: TSplitter;
      GroupBox4: TGroupBox;
      GridPedidos: TDBGrid;
      GroupBox6: TGroupBox;
      GridFinanceiro: TDBGrid;
      Panel4: TPanel;
      LblVendas: TLabel;
      LblReceber: TLabel;
      LblPago: TLabel;
      LblSaldoReceber: TLabel;
      LblQuantidade: TLabel;
      ACBrCEP: TACBrCEP;
    edtJurCidade: TEdit;
    IDBEditDialog1: TIDBEditDialog;
    IDBEditDialog2: TIDBEditDialog;
    edtFisCidade: TEdit;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);

      procedure Iniciar;
      procedure DBGrid12KeyPress(Sender: TObject; var Key: Char);
      procedure Spb_email1Click(Sender: TObject);
      procedure Spb_http1Click(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure CodCidadeKeyPress(Sender: TObject; var Key: Char);
      procedure BitBtn2Click(Sender: TObject);
      procedure BitBtn1Click(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure Tab_HistoricoShow(Sender: TObject);
      procedure Tab_HistoricoExit(Sender: TObject);
      procedure GridFinanceiroDrawColumnCell(Sender: TObject; const Rect: TRect;
        DataCol: Integer; Column: TColumn; State: TGridDrawState);
      procedure db_PedidoBeforeOpen(DataSet: TDataSet);
      procedure db_ctareceberBeforeOpen(DataSet: TDataSet);
      procedure db_ctareceberSumBeforeOpen(DataSet: TDataSet);
      procedure db_PedidoSumBeforeOpen(DataSet: TDataSet);
      procedure db_ClientesAfterPost(DataSet: TDataSet);
      procedure db_ClientesBeforePost(DataSet: TDataSet);
      procedure db_ClientesNewRecord(DataSet: TDataSet);
      procedure dbClienteAnexosBeforePost(DataSet: TDataSet);
      procedure dbClienteCobrancasBeforePost(DataSet: TDataSet);
      procedure db_ClientesUpdateRecord(DataSet: TDataSet;
        UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
      procedure EditCodevendedorChange(Sender: TObject);
      procedure EditCNPJExit(Sender: TObject);
      procedure EditCPFExit(Sender: TObject);
      procedure btnAdicionarClick(Sender: TObject);
      procedure btnRemoverClick(Sender: TObject);
      procedure btnAbrirClick(Sender: TObject);
      procedure cxGridAnexoDblClick(Sender: TObject);
      procedure cxGridAnexoCustomDrawCell(Sender: TcxCustomGridTableView;
        ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
        var ADone: Boolean);
      procedure FormShow(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure DS_ClientesStateChange(Sender: TObject);
      procedure FormDestroy(Sender: TObject);
      procedure db_ClientesAfterOpen(DataSet: TDataSet);
      procedure db_PedidoAfterOpen(DataSet: TDataSet);
      procedure db_ctareceberAfterOpen(DataSet: TDataSet);
      procedure db_ViewClienteAfterOpen(DataSet: TDataSet);
      procedure dbClienteCobrancasAfterOpen(DataSet: TDataSet);
      procedure SpeedButton1Click(Sender: TObject);
      procedure EditCEP0Exit(Sender: TObject);
      procedure DBEdit10Exit(Sender: TObject);
      procedure FormKeyPress(Sender: TObject; var Key: Char);

   private
      { Private declarations }
      FCoreTables: TCoreTables;
      procedure RefreshTabelas;
      Function ChecarCliente(const aTipo, aDocumento: String): Boolean;

   public
      { Public declarations }
      FDefineTipoCliente: String;
   end;

var
   FrmClientes: TFrmClientes;

implementation

uses FPrincipal, App.SQL, Biblioteca, Global,
   FBaseDados,
   Classe.Usuarios, App.Funcoes, Classe.CEP, Classe.Cliente, App.Constantes;

{$R *.dfm}

procedure TFrmClientes.btnRemoverClick(Sender: TObject);
begin
   if QryAnexos.IsEmpty then
      exit;
   if not pergunta('Confirma exclusão do registro?') then
      exit;
   QryAnexos.Delete;
end;

procedure TFrmClientes.FormCreate(Sender: TObject);
begin
   FDefineTipoCliente := FTipoCliente;
   FrmFrameBotoes1.DataSource := DS_Clientes;
end;

procedure TFrmClientes.FormDestroy(Sender: TObject);
begin
   FrmClientes := Nil;
end;

procedure TFrmClientes.Iniciar;
begin
   db_Clientes.Close;
   If (FDefineTipoCliente = 'J') then
   Begin

      // Definir clientes Pessoas Juridicas
      db_Clientes.SQL.clear;
      db_Clientes.SQL.add('SELECT *  FROM CAD_CLIENTES');
      db_Clientes.SQL.add('WHERE');
      db_Clientes.SQL.add('CODIGO=:CODIGO');
      db_Clientes.SQL.add('AND');
      db_Clientes.SQL.add('CLASSIFICACAO=''J''');
      db_Clientes.SQL.add('AND');
      db_Clientes.SQL.add('TIPO=''CLIENTE'' ');
      db_Clientes.SQL.add('ORDER BY NOME  ');

      FrmFrameBarra1.LblBarraTitulo.Caption :=
        'Cadastro de Clientes - Pessoa Juridica';
      PgClientes.Pages[0].Destroy; { }
      PgClientes.ActivePage := Tab_PJuridica; { }
      strTipoPessoa := 'J'; { salvar o tipo de cliente automaticamente }
   End;

   If (FDefineTipoCliente = 'F') then
   Begin

      // Definir clientes Pessoas Fisicas
      db_Clientes.SQL.clear;
      db_Clientes.SQL.add('SELECT *  FROM CAD_CLIENTES');
      db_Clientes.SQL.add('WHERE');
      db_Clientes.SQL.add('CODIGO=:CODIGO');
      db_Clientes.SQL.add('AND');
      db_Clientes.SQL.add('CLASSIFICACAO=''F''');
      db_Clientes.SQL.add('AND');
      db_Clientes.SQL.add('TIPO=''CLIENTE'' ');
      db_Clientes.SQL.add('ORDER BY NOME  ');

      FrmFrameBarra1.LblBarraTitulo.Caption :=
        'Cadastro de Clientes - Pessoa Fisica';
      PgClientes.Pages[1].Destroy;
      PgClientes.ActivePage := Tab_PFisica;
      strTipoPessoa := 'F';

   End;

   db_Clientes.ParamByName('CODIGO').DataType := ftInteger;
   db_Clientes.ParamByName('CODIGO').ParamType := ptInput;
   db_Clientes.Open; { abrir tabelas clientes }

   If (FDefineTipoCliente = 'F') then
      db_Clientes.FieldByName('CPF_CNPJ').EditMask := '999.999.999-99';

   If (FDefineTipoCliente = 'J') then
      db_Clientes.FieldByName('CPF_CNPJ').EditMask :=
        '99.999.999/9999-99' { CNPJ };

End;

procedure TFrmClientes.GridFinanceiroDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   If (Column.Field.FieldName = 'QUITADO') and
     (db_ctareceber.FieldByName('QUITADO').AsString = 'NAO') Then
   Begin
      GridFinanceiro.Canvas.FillRect(Rect);
      GridFinanceiro.Canvas.Font.Color := clRed;
      // GridFinanceiro.Canvas.TextOut(Rect.Left+(Column.Width div 2)-10,Rect.Top, Column.Field.AsString);
      GridFinanceiro.Canvas.TextOut(Rect.Left + (Column.Width div 2) - 10,
        Rect.Top, Column.Field.AsString);
   End;

end;

procedure TFrmClientes.db_ClientesAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(db_Clientes);
end;

procedure TFrmClientes.db_ClientesAfterPost(DataSet: TDataSet);
begin
   if not(db_Clientes.State in [dsedit, dsinsert]) then
      exit;
   db_Clientes.ParamByName('CODIGO').AsInteger :=
     db_Clientes.FieldByName('CODIGO').AsInteger;
   // db_Clientes.Refresh;
end;

procedure TFrmClientes.db_ClientesBeforePost(DataSet: TDataSet);
begin
   if not(db_Clientes.State in [dsedit, dsinsert]) then
      exit;
   db_Clientes.ParamByName('CODIGO').AsInteger := db_Clientes.FieldByName('CODIGO').AsInteger;

   if edtJurCidade.text <> '' then
      db_Clientes.ParamByName('NOMECIDADE').AsString := edtJurCidade.text;
end;

procedure TFrmClientes.db_ClientesNewRecord(DataSet: TDataSet);
begin
   if not(db_Clientes.State in [dsedit, dsinsert]) then
      exit;
   db_Clientes.FieldByName('DATA').AsDateTime := Date;
   db_Clientes.FieldByName('CLASSIFICACAO').AsString :=
     UpperCase(strTipoPessoa);
   db_Clientes.FieldByName('BLOQUEADO').AsString := 'N';
   db_Clientes.FieldByName('TIPO').AsString := 'CLIENTE';
   db_Clientes.FieldByName('ATIVO').AsString := 'S';
   db_Clientes.FieldByName('IDCIDADE').AsInteger :=
     FParametros.Empresa.IDCidade;
   db_Clientes.FieldByName('CODIGOUF').AsInteger := FParametros.Empresa.IDUF;
   db_Clientes.FieldByName('NOMECIDADE').AsString := FParametros.Empresa.Cidade;
   db_Clientes.FieldByName('UF').AsString := FParametros.Empresa.UF;
end;

procedure TFrmClientes.db_ClientesUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
   if (db_Clientes.FieldByName('ATIVO').NewValue <> db_Clientes.FieldByName
     ('ATIVO').OldValue) then
      db_Clientes.FieldByName('ATIVODATA').AsDateTime := Date;

   strCNPJ := '';
   if strTipoPessoa = 'F' then
   begin
      If CPF(db_Clientes.FieldByName('CPF_CNPJ').AsString) = False Then
      Begin
         db_Clientes.FieldByName('CPF_CNPJ').AsString := '';
         Atencao('CPF inválido ');
         exit;
      End;

      strCNPJ := FrmClientes.EditCPF.Text;
      If (db_Clientes.State in [dsedit, dsinsert]) then
      Begin

         If fncCliente_cnpj(strCNPJ) then
         begin
            FrmClientes.FrmFrameBotoes1.SpbCancelar.Click;
            db_Clientes.Cancel;
            strTipoCadastro :=
              GetClienteCampo(fncCliente_ID_CNPJ(strCNPJ), 'TIPO');

            AvisoSistemaErro('Já existe cadastro com esse documento: ' + strCNPJ
              + sLineBreak + 'Está Localizado no cadastro de: ' +
              strTipoCadastro + sLineBreak + 'Tipo de Pessoa: ' +
              fncTipoPessoa(GetClienteCampo(fncCliente_ID_CNPJ(strCNPJ),
              'CLASSIFICACAO'))

              );

            db_Clientes.Close;
            db_Clientes.ParamByName('CODIGO').clear;
            db_Clientes.ParamByName('CODIGO').AsInteger :=
              fncCliente_ID_CNPJ(strCNPJ);
            db_Clientes.Open;
            Atencao('CPF já está cadastrado');
         end;
      End;

   end;

   if strTipoPessoa = 'J' then
   begin

      If CNPJ(db_Clientes.FieldByName('CPF_CNPJ').AsString) = False Then
      Begin
         db_Clientes.FieldByName('CPF_CNPJ').clear;
         Atencao('CNPJ inválido ');
         exit;
      End;

      strCNPJ := FrmClientes.EditCNPJ.Text;
      If (db_Clientes.State in [dsedit, dsinsert]) then
      Begin

         If fncCliente_cnpj(strCNPJ) then
         begin
            FrmClientes.FrmFrameBotoes1.SpbCancelar.Click;
            db_Clientes.Cancel;

            strTipoCadastro :=
              GetClienteCampo(fncCliente_ID_CNPJ(strCNPJ), 'TIPO');
            AvisoSistemaErro('Já existe cadastro com esse documento: ' + strCNPJ
              + sLineBreak + 'Está Localizado no cadastro de: ' +
              strTipoCadastro + sLineBreak + 'Tipo de Pessoa: ' +
              fncTipoPessoa(GetClienteCampo(fncCliente_ID_CNPJ(strCNPJ),
              'CLASSIFICACAO'))

              );

            db_Clientes.Close;
            db_Clientes.ParamByName('CODIGO').AsInteger :=
              fncCliente_ID_CNPJ(strCNPJ);
            db_Clientes.Open;
            db_Clientes.Refresh;

         end;
      End;

   End;

end;

procedure TFrmClientes.db_ctareceberAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(db_ctareceber);
end;

procedure TFrmClientes.db_ctareceberBeforeOpen(DataSet: TDataSet);
begin
   db_ctareceber.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmClientes.db_ctareceberSumBeforeOpen(DataSet: TDataSet);
begin
   db_ctareceberSum.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TFrmClientes.db_PedidoAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(db_Pedido);
end;

procedure TFrmClientes.db_PedidoBeforeOpen(DataSet: TDataSet);
begin
   db_Pedido.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TFrmClientes.db_PedidoSumBeforeOpen(DataSet: TDataSet);
begin
   db_PedidoSum.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TFrmClientes.db_ViewClienteAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(db_ViewCliente);
end;

procedure TFrmClientes.DS_ClientesStateChange(Sender: TObject);
begin
   if (FrmFrameBotoes1.DataSource.State in [dsinsert, dsedit]) then
      FrmFrameBotoes1.AtivaEdicao
   else
      FrmFrameBotoes1.DesativaEdicao;
end;

procedure TFrmClientes.dbClienteAnexosBeforePost(DataSet: TDataSet);
begin
   QryAnexos.FieldByName('IDCLIENTE').AsInteger :=
     db_Clientes.FieldByName('CODIGO').AsInteger;
end;

procedure TFrmClientes.dbClienteCobrancasAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(dbClienteCobrancas);
end;

procedure TFrmClientes.dbClienteCobrancasBeforePost(DataSet: TDataSet);
begin
   dbClienteCobrancas.FieldByName('IDCLIENTE').AsInteger :=
     db_Clientes.FieldByName('CODIGO').AsInteger;
end;

procedure TFrmClientes.DBEdit10Exit(Sender: TObject);
begin
   if DBEdit10.Text <> '' then
   begin
      ACBrCEP.BuscarPorCEP(DBEdit10.Text);

      if ACBrCEP.Enderecos.Count <= 0 then
      begin
         Informar('Nenhum endereço foi encontrado com o CEP digitado');
         EditCEP0.SetFocus;
         Abort;
      end
      else
      begin
         with ACBrCEP.Enderecos[0] do
         begin
            DS_Clientes.DataSet.FieldByName('ENDERECO').AsString    := Logradouro;
            DS_Clientes.DataSet.FieldByName('COMPLEMENTO').AsString := Complemento;
            DS_Clientes.DataSet.FieldByName('BAIRRO').AsString      := Bairro;
            DS_Clientes.DataSet.FieldByName('IDCIDADE').AsString    := IBGE_Municipio;
            edtJurCidade.Text                                       := Municipio;
            DS_Clientes.DataSet.FieldByName('UF').AsString          := UF;
         end;
         edtEndereco.SetFocus;
         edtEndereco.SelectAll;
      end;
   end;
end;

procedure TFrmClientes.DBGrid12KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmClientes.Spb_email1Click(Sender: TObject);
var
   eMail: String;
begin

   eMail := db_Clientes.FieldByName('EMAIL').AsString;
   If not empty(eMail) Then
   Begin
      ShellExecute(GetDesktopWindow, 'open', pchar(eMail), nil, nil,
        sw_ShowNormal);
   End
   Else
      Erro('campo E-mail está vazio...' + chr(13) + 'Verifique.');

End;

procedure TFrmClientes.Spb_http1Click(Sender: TObject);
begin

   strURL := db_Clientes.FieldByName('SITE').AsString;
   If not empty(strURL) Then
   Begin
      ShellExecute(0, nil, pchar(strURL), nil, nil, SW_SHOW);
      // ShellExecute(Handle, 'open', pchar(eMail), '', '',SW_SHOW);
   End
   Else
      Erro('o campo Site está vazio...' + chr(13) + 'Verifique.');

end;

procedure TFrmClientes.SpeedButton1Click(Sender: TObject);
begin
   Informar('DICAS:' + sLineBreak + sLineBreak + '=> Isento, escreva: ISENTO' +
     sLineBreak + '=> Não Contribuinte, escreva: NC');

end;

{ pessoa fisica }
procedure TFrmClientes.Tab_HistoricoExit(Sender: TObject);
begin
   db_Pedido.Close;
   db_ctareceber.Close;
   db_PedidoSum.Close;
   db_ctareceberSum.Close;
end;

procedure TFrmClientes.RefreshTabelas;
begin
   db_Pedido.Close;
   db_ctareceber.Close;
   db_PedidoSum.Close;
   db_ctareceberSum.Close;

   db_Pedido.Open;
   db_ctareceber.Open;
   db_PedidoSum.Open;
   db_ctareceberSum.Open;

   LblQuantidade.Caption := 'Quantidade Vendida: ' + FormatFloat('###,##0',
     db_PedidoSum.FieldByName('QTDE_TOTAL').AsFloat);
   LblVendas.Caption := 'Total Vendas: ' + FormatSettings.CurrencyString + ' ' +
     FormatFloat('###,##0.00', db_PedidoSum.FieldByName('VLR_TOTAL').AsFloat);
   LblReceber.Caption := 'A Receber: ' + FormatSettings.CurrencyString + ' ' +
     FormatFloat('###,##0.00',
     db_ctareceberSum.FieldByName('TOTALRECEBER').AsFloat);
   LblPago.Caption := 'Recebidos: ' + FormatSettings.CurrencyString + ' ' +
     FormatFloat('###,##0.00',
     db_ctareceberSum.FieldByName('TOTALPAGO').AsFloat);
   LblSaldoReceber.Caption := 'Saldo a Receber: ' +
     FormatSettings.CurrencyString + ' ' + FormatFloat('###,##0.00',
     db_ctareceberSum.FieldByName('SALSOFINAL').AsFloat);
end;

procedure TFrmClientes.Tab_HistoricoShow(Sender: TObject);
begin
   RefreshTabelas;
end;

procedure TFrmClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_F5 then
   begin
      If (db_Clientes.State in [dsBrowse]) then
         db_Clientes.Refresh;
   end;

   If Key = VK_ESCAPE then
   begin
      if PgClientes.ActivePageIndex <> 0 then
      begin
         FrmFrameBotoes1.SpbCancelarClick(Sender);
      end
      else
      begin
         FrmFrameBotoes1SpbSairClick(Sender);
      end;
   End;
end;

procedure TFrmClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = #13) then
   begin
      Key := #0;
      Perform(Wm_NextDlgCtl, 0, 0);
   end;
end;

procedure TFrmClientes.FormShow(Sender: TObject);
begin
   FDefineTipoCliente := FTipoCliente;

   FrmFrameBotoes1.DataSource := DS_Clientes;
   FrmFrameBotoes1.DataSource.DataSet := DS_Clientes.DataSet;
   Pg_CadastroF.ActivePageIndex := 0;
   Pg_CadastroJ.ActivePageIndex := 0;
   FCoreTables := TCoreTables.Create;
   // iniciar de acordo com a escolha do usuário
   Iniciar;
   { abrir tabelas complementares }
   FCoreTables.Abrir([QryAnexos, dbClienteCobrancas]);
end;

procedure TFrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FCadCliIni := False;

   { abrir tabelas complementares }
   FCoreTables.Fechar([db_Clientes, QryAnexos, dbClienteCobrancas]);
   FCoreTables.Free;
   Action := cafree;
end;

procedure TFrmClientes.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   If (FDefineTipoCliente = 'J') then
   Begin
      PgClientes.ActivePage := Tab_PJuridica; { }
      Pg_CadastroJ.Enabled := True;
   End;

   If (FDefineTipoCliente = 'F') then
   Begin
      PgClientes.ActivePage := Tab_PFisica;
      Pg_CadastroF.Enabled := True;
   End;

   PgClientes.ActivePageIndex := 0;

   If (FDefineTipoCliente = 'J') then
   Begin
      Pg_CadastroJ.ActivePageIndex := 0;
      EditCNPJ.SetFocus;
   End;

   If (FDefineTipoCliente = 'F') then
   Begin
      Pg_CadastroF.ActivePageIndex := 0;
      EditCPF.SetFocus;
   End;

   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   // db_Clientes.Append;
   db_Clientes.ParamByName('CODIGO').AsInteger :=
     db_Clientes.FieldByName('CODIGO').AsInteger;

end;

procedure TFrmClientes.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   PgClientes.ActivePageIndex := 0;

   If (FDefineTipoCliente = 'J') then
   Begin
      Pg_CadastroJ.ActivePageIndex := 0;
   End;

   If (FDefineTipoCliente = 'F') then
   Begin
      Pg_CadastroF.ActivePageIndex := 0;
   End;

   FrmFrameBotoes1.SpbCancelarClick(Sender);
   FCoreTables.Cancelar([QryAnexos]);

end;

procedure TFrmClientes.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);
end;

procedure TFrmClientes.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   if db_Clientes.IsEmpty then
   Begin
      aviso('Não há dados para excluir.');
      exit;
   End;
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmClientes.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
begin

   If (FDefineTipoCliente = 'J') then
   Begin
      Pg_CadastroJ.ActivePageIndex := 0;
   End;

   If (FDefineTipoCliente = 'F') then
   Begin
      Pg_CadastroF.ActivePageIndex := 0;
   End;

   iAchar[0] := db_Clientes.FieldByName('CODIGO').AsInteger;

   // If (TipoCliente = 'J') then
   // Begin
   frxReportCliente.ShowReport;
   // End;

   If (FDefineTipoCliente = 'F') then
   Begin
      // frxReportFisica.
   End;

   db_ViewCliente.Close;

end;

procedure TFrmClientes.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
var
   mID: Integer;
begin
   If (FDefineTipoCliente = 'J') then
      Pg_CadastroJ.Enabled := True;
   If (FDefineTipoCliente = 'F') then
      Pg_CadastroF.Enabled := True;

   EditClienteLocalizar.SearchQuery.clear;
   EditClienteLocalizar.SearchQuery.add('SELECT * FROM VIEW_CLIENTES');
   EditClienteLocalizar.SearchQuery.add('WHERE');
   EditClienteLocalizar.SearchQuery.add('TIPO=' + QuotedStr('CLIENTE'));
   EditClienteLocalizar.SearchQuery.add('AND');
   EditClienteLocalizar.SearchQuery.add('CLASSIFICACAO=' +
     QuotedStr(FDefineTipoCliente));
   EditClienteLocalizar.SearchQuery.add('AND');
   EditClienteLocalizar.SearchQuery.add('%WHERE%');
   if not EditClienteLocalizar.Execute Then
      exit;
   mID := EditClienteLocalizar.ResultFieldAsInteger('CODIGO');
   db_Clientes.Close;
   db_Clientes.ParamByName('CODIGO').AsInteger := mID;
   db_Clientes.Open;
   db_Clientes.Edit;
   RefreshTabelas;
end;

procedure TFrmClientes.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmClientes.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

   If (FDefineTipoCliente = 'J') then
   begin
      FCoreTables.Gravar([QryAnexos, dbClienteCobrancas]);
   end;
end;

procedure TFrmClientes.CodCidadeKeyPress(Sender: TObject; var Key: Char);
begin
   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
      Key := #0;

end;

procedure TFrmClientes.cxGridAnexoCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
   if AViewInfo.GridRecord.Selected then
      ACanvas.Brush.Color := _COR_HIGHLIGHT;
end;

procedure TFrmClientes.cxGridAnexoDblClick(Sender: TObject);
begin
   btnAbrirClick(Sender);
end;

Function TFrmClientes.ChecarCliente(const aTipo, aDocumento: String): Boolean;
Var
   mID: Integer;
begin
   result := False;
   mID := FConexao.ExecSQLScalar
     ('select CODIGO  from cad_clientes where CLASSIFICACAO=:stipo and CPF_CNPJ=:sdocumento',
     [aTipo, Trim(aDocumento)]);

   if mID > 0 then
   begin
      FrmFrameBotoes1SpbCancelarClick(self);
      db_Clientes.Close;
      db_Clientes.ParamByName('CODIGO').AsInteger := mID;
      db_Clientes.Open;
      db_Clientes.Edit;
   end;
   result := mID > 0;
end;

procedure TFrmClientes.EditCEP0Exit(Sender: TObject);
begin
   if EditCEP0.Text <> '' then
   begin
      ACBrCEP.BuscarPorCEP(EditCEP0.Text);

      if ACBrCEP.Enderecos.Count <= 0 then
      begin
         Informar('Nenhum endereço foi encontrado com o CEP digitado');
         EditCEP0.SetFocus;
         Abort;
      end
      else
      begin
         with ACBrCEP.Enderecos[0] do
         begin
            DS_Clientes.DataSet.FieldByName('ENDERECO').AsString := Logradouro;
            DS_Clientes.DataSet.FieldByName('COMPLEMENTO').AsString := Complemento;
            DS_Clientes.DataSet.FieldByName('BAIRRO').AsString := Bairro;
            DS_Clientes.DataSet.FieldByName('IDCIDADE').AsString := IBGE_Municipio;
            DS_Clientes.DataSet.FieldByName('NOMECIDADE').AsString := Municipio;
            DS_Clientes.DataSet.FieldByName('UF').AsString := UF;
         end;
         edtEndereco.SetFocus;
         edtEndereco.SelectAll;
      end;
   end;
end;

procedure TFrmClientes.EditCNPJExit(Sender: TObject);
begin
   ChecarCliente('J', EditCNPJ.Text);
end;

procedure TFrmClientes.EditCodevendedorChange(Sender: TObject);
begin
   if not(db_Clientes.State in [dsedit, dsinsert]) then
      exit;
   db_Clientes.FieldByName('REGIAO').AsInteger :=
     fncBuscaVendedorRegiao(db_Clientes.FieldByName('CODIGO').AsInteger);
end;

procedure TFrmClientes.EditCPFExit(Sender: TObject);
begin
   ChecarCliente('F', EditCPF.Text);
end;

procedure TFrmClientes.BitBtn1Click(Sender: TObject);
begin

   If empty(db_Clientes.FieldByName('CODIGO').AsString) then
      exit;

   If OpenPictureDialog1.Execute = False then
      exit;

   If not(db_Clientes.State in [dsedit, dsinsert]) then
   Begin
      FrmFrameBotoes1.SpbEditarClick(Sender);
   End;

   db_Clientes.FieldByName('FOTO').clear;
   DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmClientes.BitBtn2Click(Sender: TObject);
begin

   If empty(db_Clientes.FieldByName('CODIGO').AsString) then
      exit;

   If pergunta('Deseja limpar a foto do(a) cliente?') = False then
      exit;

   If not(db_Clientes.State in [dsedit, dsinsert]) then
   Begin
      FrmFrameBotoes1.SpbEditarClick(Sender);
   End;

   db_Clientes.FieldByName('FOTO').clear;
   DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmClientes.btnAbrirClick(Sender: TObject);
Var
   mLocalArquivo: String;
begin
   if QryAnexos.IsEmpty then
      exit;

   mLocalArquivo := _ARQUIVO_EXPORTAR + QryAnexos.FieldByName
     ('NOMEARQUIVO').AsString;
   TBlobField(QryAnexos.FieldByName('ARQUIVOANEXO')).SaveToFile(mLocalArquivo);
   ShellExecute(handle, 'open', pchar(mLocalArquivo), '', '', sw_ShowNormal);
end;

procedure TFrmClientes.btnAdicionarClick(Sender: TObject);
var
   fStream: TFileStream;
begin

   if not OpenDialogArquivos.Execute then
      exit;

   try
      fStream := TFileStream.Create(OpenDialogArquivos.FileName, fmOpenRead);
      fStream.Position := 0;

      QryAnexos.Append;

      TBlobField(QryAnexos.FieldByName('ARQUIVOANEXO')).LoadFromStream(fStream);
      QryAnexos.FieldByName('IDCLIENTE').AsInteger :=
        db_Clientes.FieldByName('CODIGO').AsInteger;
      QryAnexos.FieldByName('NOMEARQUIVO').AsString :=
        ExtractFileName(OpenDialogArquivos.FileName);
      QryAnexos.FieldByName('TIPOARQUIVO').AsString :=
        ExtractFileExt(OpenDialogArquivos.FileName);
      QryAnexos.FieldByName('IDUSUARIO').AsInteger := FUsuario.ID;
      QryAnexos.FieldByName('USUARIO').AsString := FUsuario.Nome;
      QryAnexos.FieldByName('DATAALTERACAO').AsDateTime := Date;

      if (QryAnexos.State in [dsedit, dsinsert]) then
         QryAnexos.Post;

      QryAnexos.Refresh;
   finally
      fStream.Free;

   end;

end;

end.
