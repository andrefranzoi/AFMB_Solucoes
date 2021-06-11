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

unit FControleChequesEmitidos;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, ImgList, DB,
   DBCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, Mask,
   Buttons, ComCtrls, Shellapi, FMTBcd, SqlExpr,
   ISFEdit,
   ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FireDAC.Comp.Client,
   FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmChequesEmitidos = class(TForm)
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
      DBGrid1: TDBGrid;
      db_pagar: TFDQuery;
      ds_pagar: TDataSource;
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
      DBEdit2: TDBEdit;
      DBEdit3: TDBEdit;
      EditData: TDBEdit;
      DBEdit7: TDBEdit;
      DBEdit8: TDBEdit;
      DBEdit5: TDBEdit;
      DBEdit12: TDBEdit;
      DBEdit9: TDBEdit;
      DBEdit1: TDBEdit;
      EditCliente: TIDBEditDialog;
      EditNomeCliente: TEdit;
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
      procedure db_pagarNewRecord(DataSet: TDataSet);
      procedure FormDestroy(Sender: TObject);
      procedure db_pagarAfterOpen(DataSet: TDataSet);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmChequesEmitidos: TFrmChequesEmitidos;

implementation

uses FPrincipal, App.SQL, Biblioteca, Global, App.Funcoes, Classe.Global;

{$R *.dfm}

procedure TFrmChequesEmitidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_pagar.close;
   Action := Cafree;
end;

procedure TFrmChequesEmitidos.FormCreate(Sender: TObject);
begin
   db_pagar.Open;
end;

procedure TFrmChequesEmitidos.FormDestroy(Sender: TObject);
begin
   FrmChequesEmitidos := Nil;
end;

procedure TFrmChequesEmitidos.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmChequesEmitidos.BtnNovaNFClick(Sender: TObject);
begin
   PaginaPadrao.Activepage := Tab_Editar;
   db_pagar.Append;
   EditCliente.SetFocus;
end;

procedure TFrmChequesEmitidos.BtnSalvarClick(Sender: TObject);
begin

   If (db_pagar.state in [dsEdit, dsInsert]) then
   Begin
      db_pagar.Post;
   End;

end;

procedure TFrmChequesEmitidos.BtnCancelarClick(Sender: TObject);
begin
   // Cancelar edição
   db_pagar.Cancel;
   PaginaPadrao.Activepage := Tab_Principal;

end;

procedure TFrmChequesEmitidos.BtnExcluirClick(Sender: TObject);
begin

   if db_pagar.IsEmpty then
   Begin
      Aviso('Não há dados para excluir.');
      abort;
   End;

   IF Pergunta('Deseja excluir este registro?') = false THEN
      exit;

   db_pagar.delete;

end;

procedure TFrmChequesEmitidos.DBGrid1DblClick(Sender: TObject);
begin
   PaginaPadrao.Activepage := Tab_Editar;
end;

procedure TFrmChequesEmitidos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmChequesEmitidos.BtnProcurarClick(Sender: TObject);
begin
   if dbDlgProcurar.Execute then
   begin
      db_pagar.Locate('CODIGO', dbDlgProcurar.ResultFieldAsInteger
        ('CODIGO'), []);
   end;

end;

procedure TFrmChequesEmitidos.db_pagarAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(db_pagar);
end;

procedure TFrmChequesEmitidos.db_pagarNewRecord(DataSet: TDataSet);
begin
   db_pagar.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;
   db_pagar.FieldByName('NOTAFISCAL').AsInteger := 0;
   db_pagar.FieldByName('DOCUMENTO').AsString := '0'; //
   db_pagar.FieldByName('ESPECIE').AsString := 'CHEQUE'; //
   db_pagar.FieldByName('TIPO').AsString := 'PAGAR'; //
   db_pagar.FieldByName('QUITADO').AsString := 'N'; // Recebido
end;

end.
