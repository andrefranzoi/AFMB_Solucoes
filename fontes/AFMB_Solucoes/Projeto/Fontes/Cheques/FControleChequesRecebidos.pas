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

unit FControleChequesRecebidos;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, ImgList, DB,
   DBCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, Mask,
   Buttons, ComCtrls, Shellapi,  FMTBcd, SqlExpr,
   ISFEdit, ISFEditbtn,
   ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos,  FireDAC.Comp.Client,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmChequesRecebidos = class(TForm)
      Panel2: TPanel;
      PaginaPadrao: TPageControl;
      Tab_Principal: TTabSheet;
      Panel4: TPanel;
      BtnSair: TBitBtn;
      BtnCancelar: TBitBtn;
      BtnSalvar: TBitBtn;
      BtnExcluir: TBitBtn;
      Imprimir: TBitBtn;
      BtnNovaNF: TBitBtn;
      BtnProcurar: TBitBtn;
      Panel1: TPanel;
      Label16: TLabel;
      Navegador: TDBNavigator;
      db_CtaReceber: TFDQuery;
      ds_CtaReceber: TDataSource;
      Tab_Editar: TTabSheet;
      Label3: TLabel;
      Label4: TLabel;
      Label5: TLabel;
      Label6: TLabel;
      Label8: TLabel;
      Label9: TLabel;
      Label13: TLabel;
      Label10: TLabel;
      Label11: TLabel;
      Label2: TLabel;
      DBEdit2: TDBEdit;
      DBEdit3: TDBEdit;
      EditData: TDBEdit;
      DBEdit7: TDBEdit;
      DBEdit8: TDBEdit;
      DBEdit5: TDBEdit;
      DBEdit12: TDBEdit;
      DBEdit9: TDBEdit;
      DBEdit1: TDBEdit;
      DBEdit4: TDBEdit;
      EditCliente: TIDBEditDialog;
      EditNomeCliente: TEdit;
      DBGrid1: TDBGrid;
    dbDlgProcurar: TIDBEditDialog;
      procedure BtnSairClick(Sender: TObject);
      procedure BtnNovaNFClick(Sender: TObject);
      procedure BtnSalvarClick(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
      procedure BtnExcluirClick(Sender: TObject);
      procedure DBGrid1DblClick(Sender: TObject);
      procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure BtnProcurarClick(Sender: TObject);
      procedure db_CtaReceberBeforePost(DataSet: TDataSet);
      procedure db_CtaReceberNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure db_CtaReceberAfterOpen(DataSet: TDataSet);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmChequesRecebidos: TFrmChequesRecebidos;

implementation

uses FPrincipal, App.SQL, Biblioteca, Global, FRelCheques, App.Funcoes, Classe.Global;

{$R *.dfm}

procedure TFrmChequesRecebidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  db_CtaReceber.close;
  Action := Cafree;
end;

procedure TFrmChequesRecebidos.FormCreate(Sender: TObject);
begin

   PaginaPadrao.Activepage := Tab_Principal;

   db_CtaReceber.Open;

end;

procedure TFrmChequesRecebidos.FormDestroy(Sender: TObject);
begin
  FrmChequesRecebidos := Nil;
end;

procedure TFrmChequesRecebidos.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmChequesRecebidos.BtnNovaNFClick(Sender: TObject);
begin
   // Gerar novo codigo para o ORÇAMENTO
   PaginaPadrao.Activepage := Tab_Editar;

   db_CtaReceber.Append;

   EditCliente.SetFocus;

end;

procedure TFrmChequesRecebidos.BtnSalvarClick(Sender: TObject);
begin

   If (db_CtaReceber.state in [dsEdit, dsInsert]) then
   Begin
      db_CtaReceber.Post;
   End;

end;

procedure TFrmChequesRecebidos.BtnCancelarClick(Sender: TObject);
begin
   // Cancelar edição
   db_CtaReceber.Cancel;
   PaginaPadrao.Activepage := Tab_Principal;

end;

procedure TFrmChequesRecebidos.BtnExcluirClick(Sender: TObject);
begin

   if db_CtaReceber.IsEmpty then
   Begin
      Aviso('Não há dados para excluir.');
      abort;
   End;

   IF Pergunta('Deseja excluir este registro?') = false THEN
      exit;

   db_CtaReceber.delete;

end;

procedure TFrmChequesRecebidos.DBGrid1DblClick(Sender: TObject);
begin
   PaginaPadrao.Activepage := Tab_Editar;
end;

procedure TFrmChequesRecebidos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmChequesRecebidos.BtnProcurarClick(Sender: TObject);
begin
   if dbDlgProcurar.Execute then
   begin
      db_CtaReceber.Locate('CODIGO', dbDlgProcurar.ResultFieldAsInteger('CODIGO'), []);
   end;
end;

procedure TFrmChequesRecebidos.db_CtaReceberAfterOpen(DataSet: TDataSet);
begin
  FormataCampo(db_CtaReceber);
end;

procedure TFrmChequesRecebidos.db_CtaReceberBeforePost(DataSet: TDataSet);
begin

   if db_CtaReceber.FieldByName('VENCIMENTO').IsNull then
   Begin
      db_CtaReceber.FieldByName('VENCIMENTO').AsDateTime :=
        db_CtaReceber.FieldByName('DATA').AsDateTime;
   End;

end;

procedure TFrmChequesRecebidos.db_CtaReceberNewRecord(DataSet: TDataSet);
begin
   db_CtaReceber.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;
   db_CtaReceber.FieldByName('NOTAFISCAL').AsInteger := 0;
   db_CtaReceber.FieldByName('ESPECIE').AsString := 'CHEQUE'; //
   db_CtaReceber.FieldByName('TIPO').AsString := 'RECEBER'; //
   db_CtaReceber.FieldByName('QUITADO').AsString := 'N'; // Recebido
end;

end.
