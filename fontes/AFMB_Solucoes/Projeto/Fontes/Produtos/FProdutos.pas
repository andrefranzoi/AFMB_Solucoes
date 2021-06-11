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

unit FProdutos;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes,
   Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Classe.Global, Data.DB,
   FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Vcl.ExtDlgs,
   FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
   Vcl.ExtCtrls, Vcl.Mask, Vcl.Buttons, Vcl.ComCtrls, ISFEdit, ISFEditbtn,
   ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FFrameBarra, FFrameBotoes,
   cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
   cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
   cxDBLookupEdit, cxDBExtLookupComboBox, cxDBLookupComboBox, dxSkinsCore,
   dxSkinsDefaultPainters, cxDBEdit, ACBrBase, ACBrValidador, ACBrUtil,
   RecordProduto,
   RecordFornecedor;

type
   TFrmProdutos = class(TForm)
      Panel1: TPanel;
      CB_Copiar: TCheckBox;
      db_ChecarExistencia: TFDQuery;
      QryProduto: TFDQuery;
      QryCSTICMS: TFDQuery;
      dsCSTICMS: TDataSource;
      FrmFrameBotoes1: TFrmFrameBotoes;
      FrmFrameBarra1: TFrmFrameBarra;
      OpenPictureDialog1: TOpenPictureDialog;
      dbProcurarFichaTecnica: TIDBEditDialog;
      dsANP: TDataSource;
      QryANP: TFDQuery;
      PageControl1: TPageControl;
      Tab0: TTabSheet;
      Panel2: TPanel;
      Label2: TLabel;
      Label9: TLabel;
      Label3: TLabel;
      Label11: TLabel;
      Label6: TLabel;
      EditCodigoProp: TDBEdit;
      EditData: TDBEdit;
      EditDescricao: TDBEdit;
      EditUnidade: TDBEdit;
      DBEdit_CodigoBarra: TDBEdit;
      GroupBox3: TGroupBox;
      Panel4: TPanel;
      SpeedButton6: TSpeedButton;
      SpeedButton7: TSpeedButton;
      Panel5: TPanel;
      pgDetalhes: TPageControl;
      TabTributacao: TTabSheet;
      gpbImpostos: TGroupBox;
      Label7: TLabel;
      Label1: TLabel;
      Label24: TLabel;
      Label15: TLabel;
      Label5: TLabel;
      Label37: TLabel;
      DBEdit3: TDBEdit;
      DBEdit22: TDBEdit;
      DBEdit15: TDBEdit;
      dbEditPesquisar: TIDBEditDialog;
      EditNomeNCM: TEdit;
      DBEdit17: TDBEdit;
      DBEdit18: TDBEdit;
      TabEstoque: TTabSheet;
      TabOutrosDados: TTabSheet;
      GroupBox9: TGroupBox;
      Label14: TLabel;
      Label18: TLabel;
      Label19: TLabel;
      Label23: TLabel;
      Label25: TLabel;
      Label17: TLabel;
      DBEdit12: TDBEdit;
      DBEdit14: TDBEdit;
      DBEdit10: TDBEdit;
      DBEdit16: TDBEdit;
      DBEdit4: TDBEdit;
      DBEdit9: TDBEdit;
      grpCabecalho1: TGroupBox;
      EditGrupo: TIDBEditDialog;
      Edit1: TEdit;
      EditSubGrupo: TIDBEditDialog;
      Edit2: TEdit;
      GroupBox1: TGroupBox;
      Label26: TLabel;
      Label8: TLabel;
      Label20: TLabel;
      DBEdit_PrcCusto: TDBEdit;
      DBEdit_MLucro: TDBEdit;
      EditVlrVenda: TDBEdit;
      EditCFOP: TIDBEditDialog;
      NomeCFOP: TEdit;
      IDBEditDialog1: TIDBEditDialog;
      Edit3: TEdit;
      cxDBLookupComboBox1: TcxDBLookupComboBox;
      cxDBLookupComboBox2: TcxDBLookupComboBox;
      Label16: TLabel;
      QryOrigemProduto: TFDQuery;
      dsOrigemProduto: TDataSource;
      QryCSOSN: TFDQuery;
      dsCSOSN: TDataSource;
      Label29: TLabel;
      cxDBLookupComboBox3: TcxDBLookupComboBox;
      QryCSTPIS: TFDQuery;
      dsCSTPIS: TDataSource;
      QryCSTCOFINS: TFDQuery;
      dsCSTCOFINS: TDataSource;
      dsCSTIPI: TDataSource;
      QryCSTIPI: TFDQuery;
      cxDBLookupComboBox4: TcxDBLookupComboBox;
      Label30: TLabel;
      cxDBLookupComboBox5: TcxDBLookupComboBox;
      Label31: TLabel;
      cxDBLookupComboBox6: TcxDBLookupComboBox;
      Label34: TLabel;
      DBEdit2: TDBEdit;
      Label35: TLabel;
      DBRadioGroup2: TDBRadioGroup;
      ACBrValidador1: TACBrValidador;
      GroupBox7: TGroupBox;
      Label10: TLabel;
      Label13: TLabel;
      Label22: TLabel;
      DBEdit1: TDBEdit;
      DBEdit8: TDBEdit;
      EditQtde: TDBEdit;
      DBEdit5: TDBEdit;
      Label4: TLabel;
      dsProduto: TDataSource;
      IDBEditDialog2: TIDBEditDialog;
      EditNomeFornecedor: TEdit;
      EditCodigoFabricante: TDBEdit;
      Label27: TLabel;
      DBRadioGroup1: TDBRadioGroup;
      DBRadioGroup4: TDBRadioGroup;
      pnBotoesImportar: TPanel;
      lblMensagem: TLabel;
      btnImpCancelar: TBitBtn;
      btnImpConfirmar: TBitBtn;
      QryUpdateCodProprio: TFDQuery;
      QryProdutoFoto: TFDQuery;
      Panel3: TPanel;
      FotoReferencia: TImage;
      TabSheet2: TTabSheet;
      GroupBox2: TGroupBox;
      DBMemo1: TDBMemo;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);

      procedure FormShow(Sender: TObject);

      procedure SetarPrecoVenda;
      procedure EditCodigoPropExit(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure QryProdutoAfterPost(DataSet: TDataSet);
      procedure QryProdutoBeforePost(DataSet: TDataSet);
      procedure QryProdutoNewRecord(DataSet: TDataSet);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure SpeedButton6Click(Sender: TObject);
      procedure Atualizar_Foto;
      procedure SpeedButton7Click(Sender: TObject);
      procedure QryProdutoBeforeOpen(DataSet: TDataSet);
      procedure DBEdit_MLucroExit(Sender: TObject);
      procedure dbEditPesquisarExit(Sender: TObject);
      procedure dsProdutoStateChange(Sender: TObject);
      procedure FormDestroy(Sender: TObject);
      procedure DBEdit_PrcCustoExit(Sender: TObject);
      procedure QryProdutoAfterOpen(DataSet: TDataSet);
      procedure btnImpCancelarClick(Sender: TObject);
      procedure btnImpConfirmarClick(Sender: TObject);
      procedure QryProdutoFotoBeforePost(DataSet: TDataSet);

   private
      { Private declarations }
      FTryIDGtin: Integer;
      nESTOQUESALDO, nPESO_LIQUIDO, nPESO_M2, NPRC_CUSTOBRUTO, nTOTAL: Currency;
      nTeste: Currency;
      Procedure CadProdImp();
      procedure ValidarCampos;
   public
      { Public declarations }
      FIDProduto: Integer;
      FIDFornecedor: Integer;
   end;

Const
   _NOVOCODIGO = '';

var
   FrmProdutos: TFrmProdutos;
   varProduto: TProduto;
   FStart: Boolean;
   FImpedirShow: Boolean;

implementation

uses FPrincipal, App.SQL, Biblioteca, Global, Classe.Usuarios, FBaseDados,
   App.Funcoes, FCompra;

{$R *.dfm}

procedure TFrmProdutos.FormCreate(Sender: TObject);
begin
   // Requisito necessário (quando é chamado do formulario "TFrmCompra")
   if FStart then
   begin
      LockWindowUpdate(Handle);
      // Evitar refresh de tela (para evitar que formulario fique piscando na tela)
      SendMessage(Handle, WM_SETREDRAW, WPARAM(False), 0);
      // Evitar refresh de tela (para evitar que formulario fique piscando na tela)
   end;
   FIDProduto := 0;
   FIDFornecedor := 0;
   pnBotoesImportar.Visible := False;
   FrmFrameBotoes1.DataSource := dsProduto;
   PageControl1.ActivePageIndex := 0;
   pgDetalhes.ActivePageIndex := 0;
   QryProduto.close;
   QryProduto.Open;
   QryProdutoFoto.Open;
   QryANP.Open;
   QryCSTICMS.Open;
   QryOrigemProduto.Open;
   QryCSOSN.Open;
   QryCSTPIS.Open;
   QryCSTCOFINS.Open;
   QryCSTIPI.Open;
   ACBrValidador1.TipoDocto := docGTIN;
end;

procedure TFrmProdutos.FormDestroy(Sender: TObject);
begin
   FrmProdutos := Nil;
end;

procedure TFrmProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (QryProduto.state in [dsEdit, dsInsert]) then
      QryProduto.cancel;
   FUsuario.LogUsuario('controle de estoque',
     'Finalizou o uso do módulo controle de estoque');
   QryProdutoFoto.close;
   QryANP.close;
   QryCSTICMS.close;
   QryOrigemProduto.close;
   QryCSOSN.close;
   QryCSTPIS.close;
   QryCSTCOFINS.close;
   QryCSTIPI.close;
   QryProduto.close;
   Action := Cafree;
end;

// o processo de editar e gravar atualia varios campos padronizados do estoque
procedure TFrmProdutos.FormShow(Sender: TObject);
begin
   // Requisito necessário (quando é chamado do formulario "TFrmCompra")
   if FStart then
   begin
      LockWindowUpdate(Handle);
      // Evitar refresh de tela (para evitar que formulario fique piscando na tela)
      SendMessage(Handle, WM_SETREDRAW, WPARAM(False), 0);
      // Evitar refresh de tela (para evitar que formulario fique piscando na tela)
   end;
   // Requisito necessário (quando é chamado do formulario "TFrmCompra")
   if FImpedirShow = True then
      Exit;

   pgDetalhes.TabIndex := 0;
   FUsuario.LogUsuario('controle de estoque',
     'Acessou o módulo controle de estoque');
   pgDetalhes.ActivePageIndex := 0;
   CadProdImp();
   EditDescricao.SetFocus;
end;

procedure TFrmProdutos.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FTryIDGtin := 0;
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   if CB_Copiar.Checked then
   begin
      QryProduto.FieldByName('GRUPO').AsString := Achar[01];
      QryProduto.FieldByName('SUBGRUPO').AsString := Achar[02];
      QryProduto.FieldByName('DESCRICAO').AsString := Achar[03];
      QryProduto.FieldByName('UNIDADE').AsString := Achar[04];
      QryProduto.FieldByName('CODIGO_FABRICANTE').AsString := Achar[06];
   end;
   EditDescricao.SetFocus;
end;

procedure TFrmProdutos.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FTryIDGtin := 0;
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   Atualizar_Foto;
end;

procedure TFrmProdutos.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FTryIDGtin := 0;
   FrmFrameBotoes1.SpbEditarClick(Sender);
end;

procedure TFrmProdutos.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FTryIDGtin := 0;
   FrmFrameBotoes1.SpbExcluirClick(Sender);
   QryProduto.ParamByName('IDCODIGO').Clear;
   Atualizar_Foto;
end;

procedure TFrmProdutos.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
var
   mIDProduto: Integer;
begin
   try
      dsProduto.AutoEdit := False;
      mIDProduto := -1;
      dbProcurarFichaTecnica.SearchQuery.Clear;
      dbProcurarFichaTecnica.SearchQuery.Add('SELECT *  FROM VIEW_REFERENCIAS');
      dbProcurarFichaTecnica.SearchQuery.Add('WHERE');
      dbProcurarFichaTecnica.SearchQuery.Add
        ('EMPRESA=' + IntToStr(FSistema.Empresa));
      dbProcurarFichaTecnica.SearchQuery.Add('AND');
      dbProcurarFichaTecnica.SearchQuery.Add('%WHERE%');
      dbProcurarFichaTecnica.SearchQuery.Add('');
      if dbProcurarFichaTecnica.Execute then
      begin
         QryProduto.cancel;
         mIDProduto := dbProcurarFichaTecnica.ResultFieldAsInteger('CODIGO');
         QryProduto.close;
         QryProduto.ParamByName('IDCODIGO').AsInteger := mIDProduto;
         QryProduto.Open;
         Atualizar_Foto;
      end;
   finally
      dsProduto.AutoEdit := True;
   end;
end;

procedure TFrmProdutos.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);
end;

procedure TFrmProdutos.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   if EditDescricao.Focused then
      EditUnidade.SetFocus;

   ValidarCampos();
   FTryIDGtin := 0;
   if not(QryProduto.state in [dsEdit, dsInsert]) then
      Exit;
   FrmFrameBotoes1.SpbSalvarClick(Sender);
   Atualizar_Foto;
end;

procedure TFrmProdutos.QryProdutoNewRecord(DataSet: TDataSet);
begin
   QryProduto.FieldByName('REFERENCIA').AsString := _NOVOCODIGO;
   QryProduto.FieldByName('DATA').AsDateTime := Date;
   QryProduto.FieldByName('ATIVO').AsString := 'S';
   QryProduto.FieldByName('UNIDADE').AsString := 'UN';
end;

procedure TFrmProdutos.dbEditPesquisarExit(Sender: TObject);
begin
   if (QryProduto.state in [dsEdit, dsInsert]) then
      QryProduto.FieldByName('IDCEST').AsString :=
        GetNCMCEST(QryProduto.FieldByName('IDNCM').AsString);
end;

procedure TFrmProdutos.DBEdit_MLucroExit(Sender: TObject);
begin
   SetarPrecoVenda();
end;

procedure TFrmProdutos.DBEdit_PrcCustoExit(Sender: TObject);
begin
   SetarPrecoVenda();
end;

procedure TFrmProdutos.QryProdutoAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(QryProduto);
   TFloatField(QryProduto.FieldByName('ESTOQUEMINIMO')).DisplayFormat :=
     '##0.##0';
   TFloatField(QryProduto.FieldByName('ESTOQUEMAXIMO')).DisplayFormat :=
     '##0.##0';
   TFloatField(QryProduto.FieldByName('ESTOQUESALDO')).DisplayFormat :=
     '##0.##0';
   TFloatField(QryProduto.FieldByName('ESTOQUEMINIMO')).EditFormat := '##0.##0';
   TFloatField(QryProduto.FieldByName('ESTOQUEMAXIMO')).EditFormat := '##0.##0';
   TFloatField(QryProduto.FieldByName('ESTOQUESALDO')).EditFormat := '##0.##0';
end;

procedure TFrmProdutos.QryProdutoAfterPost(DataSet: TDataSet);
var
   mID: Integer;
begin
   mID := StrToIntDef(QryProduto.FieldByName('CODIGO_FABRICANTE').AsString, 0);
   QryProduto.ParamByName('IDCODIGO').AsInteger :=
     QryProduto.FieldByName('CODIGO').AsInteger;
   Achar[01] := QryProduto.FieldByName('GRUPO').AsString;
   Achar[02] := QryProduto.FieldByName('SUBGRUPO').AsString;
   Achar[03] := QryProduto.FieldByName('DESCRICAO').AsString;
   Achar[04] := QryProduto.FieldByName('UNIDADE').AsString;
   Achar[06] := QryProduto.FieldByName('CODIGO_FABRICANTE').AsString;

   // --------------------------------------------------------------------------------------------------------------
   // No evento para salvar o registro, valida o GTIN (EAN).
   // Se não for valido, utiliza o ID do produto. Porem, na primeira vez está salvando como "-1".
   // Essa rotina abaixo, corrige o problema. A varivel FTryIDGtin evita loop infinito neste evento "AfterPost" caso a tentativa (try) dê algum erro.
   // --------------------------------------------------------------------------------------------------------------
   QryProduto.Refresh;

   // --------------------------------------------------------------------------
   // Se codigo proprio estiver em branco, colocar o ID sequencial no lugar.
   // --------------------------------------------------------------------------
   if FStart = False then
   begin
      If Trim(QryProduto.FieldByName('REFERENCIA').AsString) = _NOVOCODIGO then
      begin
         try
            QryUpdateCodProprio.ParamByName('EMPRESA').AsInteger :=
              FSistema.Empresa;
            QryUpdateCodProprio.ParamByName('IDCODIGO').AsInteger :=
              QryProduto.FieldByName('CODIGO').AsInteger;
            QryUpdateCodProprio.ExecSQL;
         finally
            QryUpdateCodProprio.close;
         end;
      end;
   end;
end;

procedure TFrmProdutos.QryProdutoBeforeOpen(DataSet: TDataSet);
begin
   QryProduto.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TFrmProdutos.QryProdutoBeforePost(DataSet: TDataSet);
begin
   if (QryProduto.FieldByName('PRC_CUSTO').AsCurrency <= 0) and
     (QryProduto.FieldByName('PRC_VENDA').AsCurrency > 0) then
   begin
      QryProduto.FieldByName('PRC_CUSTO').AsCurrency :=
        QryProduto.FieldByName('PRC_VENDA').AsCurrency;
   end;
   QryProduto.FieldByName('PRC_VENDA').AsCurrency :=
     RoundABNT(QryProduto.FieldByName('PRC_VENDA').AsCurrency, 2);

   If Empty(QryProduto.FieldByName('UNIDADE').AsString) then
      QryProduto.FieldByName('UNIDADE').AsString := 'UN';

end;

procedure TFrmProdutos.QryProdutoFotoBeforePost(DataSet: TDataSet);
begin
   QryProdutoFoto.FieldByName('CODIGO').AsInteger :=
     QryProduto.FieldByName('CODIGO').AsInteger;
   QryProdutoFoto.FieldByName('REFERENCIA').AsString :=
     QryProduto.FieldByName('REFERENCIA').AsString;
end;

procedure TFrmProdutos.SetarPrecoVenda;
var
   mPLucro: Currency;
   mVCusto: Currency;
   mVLucro: Currency;
begin
   if (QryProduto.state in [dsEdit, dsInsert]) = False then
      Exit;
   if QryProduto.FieldByName('PRC_CUSTO').AsCurrency < 0 then
      QryProduto.FieldByName('PRC_CUSTO').AsCurrency := 0;
   if QryProduto.FieldByName('PRC_VENDA').AsCurrency < 0 then
      QryProduto.FieldByName('PRC_VENDA').AsCurrency :=
        QryProduto.FieldByName('PRC_CUSTO').AsCurrency;
   if QryProduto.FieldByName('PRC_VENDA').AsCurrency < QryProduto.FieldByName
     ('PRC_CUSTO').AsCurrency then
      QryProduto.FieldByName('PRC_VENDA').AsCurrency :=
        QryProduto.FieldByName('PRC_CUSTO').AsCurrency;

   mVCusto := QryProduto.FieldByName('PRC_CUSTO').AsCurrency;
   mPLucro := QryProduto.FieldByName('MG_LUCRO').AsCurrency;
   if mPLucro < 0 then
   begin
      mPLucro := (mPLucro * -1); // evitar valor negativo
      QryProduto.FieldByName('MG_LUCRO').AsCurrency := mPLucro;
   end;
   mVLucro := GetValorPercentual(mVCusto, mPLucro);
   if QryProduto.FieldByName('PRC_VENDA').AsCurrency = 0 then
      QryProduto.FieldByName('PRC_VENDA').AsCurrency := (mVCusto + mVLucro);
   if mPLucro > 0 then
      QryProduto.FieldByName('PRC_VENDA').AsCurrency := (mVCusto + mVLucro);

end;

procedure TFrmProdutos.EditCodigoPropExit(Sender: TObject);
var
   mIDProduto: Integer;
begin
   mIDProduto := QryProduto.FieldByName('CODIGO').AsInteger;
   db_ChecarExistencia.close;
   db_ChecarExistencia.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   db_ChecarExistencia.ParamByName('REFERENCIA').AsString :=
     QryProduto.FieldByName('REFERENCIA').AsString;
   db_ChecarExistencia.Open;

   if FStart = False then
   begin
      If (QryProduto.state in [dsEdit, dsInsert]) then
      Begin
         If db_ChecarExistencia.FieldByName('REGISTROS').AsInteger > 0 then
         Begin
            FrmFrameBotoes1.SpbCancelarClick(Sender);

            QryProduto.close;
            QryProduto.ParamByName('IDCODIGO').AsInteger := mIDProduto;
            QryProduto.Open;

            Informar('Produto ' + QryProduto.FieldByName('REFERENCIA').AsString
              + ' já está cadastrado');
            if EditCodigoProp.Enabled then
               EditCodigoProp.SetFocus;
         End;
      end;
   end;
   db_ChecarExistencia.close;
end;

procedure TFrmProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = vk_F5 then
   begin
      if (QryProduto.state in [dsBrowse]) then
         QryProduto.Refresh;
   end;
end;

procedure TFrmProdutos.dsProdutoStateChange(Sender: TObject);
begin
   if (FrmFrameBotoes1.DataSource.state in [dsInsert, dsEdit]) then
      FrmFrameBotoes1.AtivaEdicao
   else
      FrmFrameBotoes1.DesativaEdicao;
end;

procedure TFrmProdutos.SpeedButton6Click(Sender: TObject);
var
   mIDProduto: Integer;
begin
   mIDProduto := QryProduto.FieldByName('CODIGO').AsInteger;
   if mIDProduto < 1 Then
   begin
      Atencao('Não há produto na tela para vincular foto.');
      Exit;
   end;

   if OpenPictureDialog1.Execute = False then
      Exit;

   try
      QryProdutoFoto.close;
      GravarProdutoCaminhoFoto(mIDProduto, OpenPictureDialog1.FileName);
   finally
      QryProdutoFoto.Open;
      Atualizar_Foto;
   end;
end;

procedure TFrmProdutos.SpeedButton7Click(Sender: TObject);
begin

   if Empty(QryProduto.FieldByName('REFERENCIA').AsString) Then
   begin
      TratarErros('Não há produto na tela para excluir foto.');
      Exit;
   end;

   if not(QryProduto.state in [dsEdit, dsInsert]) then
   begin

      QryProdutoFoto.close;
      QryProdutoFoto.Open;

      QryProdutoFoto.Edit;
      QryProdutoFoto.FieldByName('FOTO_PATH').Clear;
      QryProdutoFoto.Post;

   end;

   Atualizar_Foto;

end;

procedure TFrmProdutos.Atualizar_Foto;
begin
   try
      QryProdutoFoto.close;
      QryProdutoFoto.Open;
      // foto principal
      if fileexists(QryProdutoFoto.FieldByName('FOTO_PATH').AsString) then
      Begin
         FotoReferencia.Picture := Nil;
         FotoReferencia.Picture.LoadFromFile
           (QryProdutoFoto.FieldByName('FOTO_PATH').AsString);
      End
      Else
      Begin
         FotoReferencia.Picture := Nil;
      End;

   finally
      QryProdutoFoto.close;
   end;

   Update;
end;

procedure TFrmProdutos.btnImpCancelarClick(Sender: TObject);
begin
   QryProduto.cancel;
   QryProduto.close;
   ModalResult := mrCancel;
end;

procedure TFrmProdutos.ValidarCampos;
begin
   if Trim(QryProduto.FieldByName('DESCRICAO').AsString) = '' then
   begin
      Informar('Informe o campo Descrição (nome do produto)');
      EditUnidade.SetFocus;
      EditDescricao.SetFocus;
      Abort;
   end;

   // If Trim(QryProduto.FieldByName('REFERENCIA').AsString) = '' then
   // begin
   // Informar('Informe o campo Código Próprio');
   // EditCodigo.SetFocus;
   // Abort;
   // end;
   //
   // If Trim(QryProduto.FieldByName('REFERENCIA').AsString) = _NOVOCODIGO then
   // begin
   // Informar('Informe o campo Código Próprio'+sLineBreak+
   // 'Troque "'+_NOVOCODIGO+'" por outro código.');
   // EditCodigo.SetFocus;
   // Abort;
   // end;

   // if (QryProduto.FieldByName('PRC_VENDA').AsCurrency <= 0) then
   // begin
   // Informar('Informe o Preço de Venda.');
   // EditVlrVenda.SetFocus;
   // Abort;
   // end;

end;

procedure TFrmProdutos.btnImpConfirmarClick(Sender: TObject);
var
   mCodProdProprio: String;
begin
   if EditDescricao.Focused then
      EditUnidade.SetFocus;

   ValidarCampos();
   if (QryProduto.state in [dsEdit, dsInsert]) then
      QryProduto.Post;
   FIDProduto := QryProduto.FieldByName('CODIGO').AsInteger;
   mCodProdProprio := QryProduto.FieldByName('REFERENCIA').AsString;
   if FIDProduto > 0 then
      Aviso('Código do Produto: ' + IntToStr(FIDProduto) + ' | ' +
        mCodProdProprio);
   QryProduto.close;
   ModalResult := mrOk;
end;

procedure TFrmProdutos.CadProdImp;
begin
   if FStart = False then
      Exit;
   if Trim(varProduto.CodPropFornec) <> '' then
   begin
      QryProduto.Append;
      // ----------------------------------------------------------------------
      //
      // ----------------------------------------------------------------------
      QryProduto.FieldByName('REFERENCIA').AsString :=
        OnlyNumber(varProduto.CodPropFornec);
      QryProduto.FieldByName('CODIGO_FABRICANTE').AsString :=
        varProduto.CodPropFornec;
      QryProduto.FieldByName('FORNECEDOR').AsInteger := varProduto.IDFornec;
      QryProduto.FieldByName('DESCRICAO').AsString := varProduto.Descricao;
      QryProduto.FieldByName('UNIDADE').AsString := varProduto.Unidade;
      QryProduto.FieldByName('CODIGO_BARRA').AsString := varProduto.GTIN;
      QryProduto.FieldByName('PRC_CUSTO').AsCurrency := varProduto.VlrCusto;
      QryProduto.FieldByName('IDNCM').AsString := varProduto.CEST;
      QryProduto.FieldByName('IDCEST').AsString := varProduto.NCM;
      QryProduto.FieldByName('IDCSTORIGEM').AsInteger := varProduto.Origem;
      QryProduto.FieldByName('IDCSTICMS').AsInteger := varProduto.CST_ICSM;
      QryProduto.FieldByName('IDCSOSNICMS').AsInteger := varProduto.CSOSN;
      QryProduto.FieldByName('IDANP').AsString := varProduto.ANP;
      QryProduto.FieldByName('INDESCALA').AsString := varProduto.IndEscala;
      QryProduto.FieldByName('IDCSTIPI').AsInteger := varProduto.CST_IPI;
      QryProduto.FieldByName('IDCSTPIS').AsInteger := varProduto.CST_PIS;
      QryProduto.FieldByName('IDCSTCOFINS').AsInteger := varProduto.CST_COFINS;
      QryProduto.FieldByName('XPED').AsString := varProduto.xPed;
      QryProduto.FieldByName('NITEMPED').AsInteger := varProduto.nItemPed;
      SetarPrecoVenda();
      // ----------------------------------------------------------------------
      //
      // ----------------------------------------------------------------------
      varProduto.Limpar();
      QryProduto.FieldByName('PRC_VENDA').AsCurrency := 0;
      // Forçar ficar 0 (zero) para chamar atenção do usuário.
   end;
   LockWindowUpdate(0);
   // Evitar refresh de tela (para evitar que formulario fique piscando na tela)
   SendMessage(Handle, WM_SETREDRAW, WPARAM(True), 0);
   RedrawWindow(Self.Handle, nil, 0, RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or
     RDW_ALLCHILDREN);
   Invalidate;
end;

end.
