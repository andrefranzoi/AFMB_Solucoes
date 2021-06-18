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

unit FTransportadoras;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
   cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
   cxData, cxDataStorage, cxNavigator,
   cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
   cxCalendar, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
   cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
   cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
   Vcl.Buttons, Vcl.ExtCtrls, cxTextEdit, cxMaskEdit, cxDBEdit, Vcl.Mask,
   ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos,
   FFrameBotoes, FFrameBarra,
   Winapi.ShellAPI,
   Classe.Global,
   CoreTableClass, dxDateRanges, dxSkinsCore, dxSkinsDefaultPainters, ACBrBase, ACBrSocket, ACBrCEP;

type
   TFrmTransportadoras = class(TForm)
      DS_Transportadora: TDataSource;
      db_Transportadora: TFDQuery;
      FrmFrameBarra1: TFrmFrameBarra;
      FrmFrameBotoes1: TFrmFrameBotoes;
      TransportadoraProcurar: TIDBEditDialog;
      pgPrincipal: TPageControl;
      TabPrincipal: TTabSheet;
      GroupBox1: TGroupBox;
      Label5: TLabel;
      Label7: TLabel;
      Label68: TLabel;
      Label69: TLabel;
      Label33: TLabel;
      lblCNPJ: TLabel;
      lblIE: TLabel;
      Label3: TLabel;
      Label40: TLabel;
      EdRazaoSocial: TDBEdit;
      EdFantasia: TDBEdit;
      DBEdit47: TDBEdit;
      DBEdit50: TDBEdit;
      DBEdit51: TDBEdit;
      DBEdit24: TDBEdit;
      EdRGInscrEst: TDBEdit;
      DBEdit9: TDBEdit;
      DBEdit59: TDBEdit;
      rgpAtivo: TDBRadioGroup;
      TabObservacoes: TTabSheet;
      GroupBox20: TGroupBox;
      DBRichEdit1: TDBRichEdit;
      dbClienteAlertas: TFDQuery;
      dsClienteAlertas: TDataSource;
      dbClienteAnexos: TFDQuery;
      dsClienteAnexos: TDataSource;
      rgTipo: TDBRadioGroup;
      OpenDialogArquivos: TOpenDialog;
      EditCNPJ: TcxDBMaskEdit;
      grpEnderecoPJ: TGroupBox;
      Label1: TLabel;
      Label8: TLabel;
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
    ACBrCEP: TACBrCEP;
    IDBEditDialog1: TIDBEditDialog;
    edtCidade: TEdit;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure Sair1Click(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure db_TransportadoraNewRecord(DataSet: TDataSet);
      procedure db_TransportadoraAfterPost(DataSet: TDataSet);
      procedure EditCodCidade2KeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure db_TransportadoraATIVOChange(Sender: TField);
      procedure rgTipoChange(Sender: TObject);
      procedure BitBtn4Click(Sender: TObject);
      procedure FormDestroy(Sender: TObject);
      procedure db_TransportadoraAfterOpen(DataSet: TDataSet);
      procedure DS_TransportadoraStateChange(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure db_TransportadoraBeforePost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

   private
      { Private declarations }

   public
      { Public declarations }
   end;

var
   FrmTransportadoras: TFrmTransportadoras;

implementation

uses FPrincipal, App.SQL, Biblioteca, Global, Classe.Usuarios, App.Funcoes;

{$R *.DFM}

procedure TFrmTransportadoras.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := DS_Transportadora;
   TCoreTables.abrir([db_Transportadora, dbClienteAlertas, dbClienteAnexos]);
   pgPrincipal.ActivePageIndex := 0;
end;

procedure TFrmTransportadoras.FormDestroy(Sender: TObject);
begin
   FrmTransportadoras := Nil;
end;

procedure TFrmTransportadoras.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = #13) then
   begin
      Key := #0;
      Perform(Wm_NextDlgCtl, 0, 0);
   end;
end;

procedure TFrmTransportadoras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   TCoreTables.Fechar([db_Transportadora, dbClienteAlertas, dbClienteAnexos]);
   Action := cafree;
end;

procedure TFrmTransportadoras.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   rgTipo.SetFocus;
end;

procedure TFrmTransportadoras.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   TCoreTables.Cancelar([db_Transportadora, dbClienteAlertas, dbClienteAnexos]);
end;

procedure TFrmTransportadoras.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmTransportadoras.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmTransportadoras.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if TransportadoraProcurar.Execute then
   Begin
      db_Transportadora.Close;
      db_Transportadora.ParamByName('CODIGO').AsInteger :=
        TransportadoraProcurar.ResultFieldAsInteger('CODIGO');;
      db_Transportadora.Open;
   End;
end;

procedure TFrmTransportadoras.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmTransportadoras.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
   TCoreTables.Gravar([db_Transportadora, dbClienteAlertas, dbClienteAnexos]);
end;

procedure TFrmTransportadoras.rgTipoChange(Sender: TObject);
begin
   if not(db_Transportadora.state in [dsEdit, dsInsert]) then
      Exit;
   EditCNPJ.Clear;
   case rgTipo.ItemIndex of
      0:
         EditCNPJ.Properties.EditMask := '99.999.999/9999-99';
      1:
         EditCNPJ.Properties.EditMask := '999.999.999-99';
   end;
   EditCNPJ.SetFocus;
end;

procedure TFrmTransportadoras.BitBtn4Click(Sender: TObject);
var
   fStream: TFileStream;
begin

   if not OpenDialogArquivos.Execute then
      Exit;

   try
      fStream := TFileStream.Create(OpenDialogArquivos.FileName, fmOpenRead);
      fStream.Position := 0;

      dbClienteAnexos.Append;
      TBlobField(dbClienteAnexos.FieldByName('ARQUIVOANEXO'))
        .LoadFromStream(fStream);
      dbClienteAnexos.FieldByName('DATAALTERACAO').AsDateTime := Now;
      dbClienteAnexos.FieldByName('NOMEARQUIVO').AsString :=
        ExtractFileName(OpenDialogArquivos.FileName);
      dbClienteAnexos.FieldByName('TIPOARQUIVO').AsString :=
        ExtractFileExt(OpenDialogArquivos.FileName);
      if (dbClienteAnexos.state in [dsEdit, dsInsert]) then
         dbClienteAnexos.Post;
   finally
      fStream.Free;

   end;

end;

procedure TFrmTransportadoras.DBEdit10Exit(Sender: TObject);
begin
   if DBEdit10.Text <> '' then
   begin
      ACBrCEP.BuscarPorCEP(DBEdit10.Text);

      if ACBrCEP.Enderecos.Count <= 0 then
      begin
         Informar('Nenhum endereço foi encontrado com o CEP digitado');
         DBEdit10.SetFocus;
         Abort;
      end
      else
      begin
         with ACBrCEP.Enderecos[0] do
         begin
            DS_Transportadora.DataSet.FieldByName('ENDERECO').AsString    := Logradouro;
            DS_Transportadora.DataSet.FieldByName('BAIRRO').AsString      := Bairro;
            DS_Transportadora.DataSet.FieldByName('IDCIDADE').AsString    := IBGE_Municipio;
            edtCidade.Text := Municipio;
            DS_Transportadora.DataSet.FieldByName('UF').AsString := UF;
         end;
         DBEdit12.SetFocus;
         DBEdit12.SelectAll;
      end;
   end;
end;

procedure TFrmTransportadoras.db_TransportadoraAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(db_Transportadora);
end;

procedure TFrmTransportadoras.db_TransportadoraAfterPost(DataSet: TDataSet);
begin
   db_Transportadora.ParamByName('CODIGO').AsInteger := db_Transportadora.FieldByName('CODIGO').AsInteger;
   edtCidade.Clear;
end;

procedure TFrmTransportadoras.db_TransportadoraATIVOChange(Sender: TField);
begin
   db_Transportadora.FieldByName('ATIVODATA').AsDateTime := Date;
end;

procedure TFrmTransportadoras.db_TransportadoraBeforePost(DataSet: TDataSet);
begin
   edtCidade.Text := db_Transportadora.FieldByName('NOMECIDADE').AsString;
end;

procedure TFrmTransportadoras.db_TransportadoraNewRecord(DataSet: TDataSet);
begin
   db_Transportadora.FieldByName('DATA').AsDateTime := Date;
   db_Transportadora.FieldByName('CLASSIFICACAO').AsString := 'J';
   db_Transportadora.FieldByName('TIPO').AsString := 'TRANSPORTADORA';
   db_Transportadora.FieldByName('BLOQUEADO').AsString := 'N';

   db_Transportadora.FieldByName('IDCIDADE').AsInteger  := FParametros.Empresa.IDCidade;
   db_Transportadora.FieldByName('CODIGOUF').AsInteger  := FParametros.Empresa.IDUF;
   db_Transportadora.FieldByName('NOMECIDADE').AsString := FParametros.Empresa.Cidade;
   db_Transportadora.FieldByName('UF').AsString := FParametros.Empresa.UF;

end;

procedure TFrmTransportadoras.DS_TransportadoraStateChange(Sender: TObject);
begin
   if (FrmFrameBotoes1.DataSource.state in [dsInsert, dsEdit]) then
      FrmFrameBotoes1.AtivaEdicao
   else
      FrmFrameBotoes1.DesativaEdicao;
end;

procedure TFrmTransportadoras.EditCodCidade2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key = VK_HOME then
   begin
      If pergunta('Acessar site do IBGE para Consulta de Município?')
        = false Then
         Exit;
      strURL := 'http://www.ibge.gov.br/home/geociencias/areaterritorial/area.shtm';
      ShellExecute(0, nil, pchar(strURL), nil, nil, SW_SHOW);
   end;
end;

procedure TFrmTransportadoras.Sair1Click(Sender: TObject);
begin
   Close;
end;

end.
