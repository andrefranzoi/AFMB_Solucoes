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

unit FUsuarios;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
   cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
   cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
   dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
   Data.DB, cxDBData, cxCalendar, cxCheckBox, Vcl.ExtCtrls, Vcl.DBCtrls,
   Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, cxGridLevel, cxGridCustomTableView,
   cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
   Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
   FFrameBotoes, System.Actions, Vcl.ActnList, FFrameBarra;

type
   TFrmUsuarios = class(TForm)
      QryExcluirAcesso: TFDQuery;
      QryUsuarioSetarAcesso: TFDQuery;
      QueryMenu: TFDQuery;
      dsMenu: TDataSource;
      dsDados: TDataSource;
      QryDados: TFDQuery;
      pgControl: TPageControl;
      tabRegistro: TTabSheet;
      cxGrid1: TcxGrid;
      cxGridDB: TcxGridDBTableView;
      cxGridDBID: TcxGridDBColumn;
      cxGridDBNome: TcxGridDBColumn;
      cxGridNivel: TcxGridLevel;
      tabDetalhe: TTabSheet;
      gbDados: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      Label4: TLabel;
      EditID: TDBEdit;
      EditUsuario: TDBEdit;
      EditSenha: TDBEdit;
      gbPermissao: TGroupBox;
      cxGridAcessos: TcxGrid;
      cxGridMenus: TcxGridDBTableView;
      cxGridMenusColumn1: TcxGridDBColumn;
      cxGridMenusColumn2: TcxGridDBColumn;
      cxGridMenusColumn3: TcxGridDBColumn;
      cxGridAcessosLevel1: TcxGridLevel;
      FrmFrameBotoes1: TFrmFrameBotoes;
      FrmFrameBarra1: TFrmFrameBarra;
      Panel1: TPanel;
      btnBloquear: TBitBtn;
      btnRecriar: TBitBtn;
      btnLiberar: TBitBtn;
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure btnRecriarClick(Sender: TObject);
      procedure btnLiberarClick(Sender: TObject);
      procedure btnBloquearClick(Sender: TObject);
      procedure cxGridDBDblClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure dsDadosStateChange(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure pgControlChanging(Sender: TObject; var AllowChange: Boolean);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure QryDadosNewRecord(DataSet: TDataSet);
   private
      { Private declarations }
      FTreeView_Listar: TTreeView;
      FCategoria: TStringList;
      FIteMMenu: TStringList;

      FMudarAba: Boolean;
      procedure MudarAbaDetalhe;
      procedure ChecarModoEdicao;
      function EncontrarNo(aNome: string): TTreeNode;
      procedure ListarMenus;
      procedure ValidarCampos;
      procedure ReabrirQryAcesso;

   public
      { Public declarations }
   end;

var
   FrmUsuarios: TFrmUsuarios;

implementation

{$R *.dfm}

uses Biblioteca, FPrincipal;

procedure TFrmUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := CaFree;
   FrmUsuarios := Nil;
end;

procedure TFrmUsuarios.FormCreate(Sender: TObject);
begin
   pgControl.ActivePageIndex := 0;
   FrmFrameBotoes1.DataSource := dsDados;
   FTreeView_Listar := TTreeView.Create(Self);
   FCategoria := TStringList.Create;
   FIteMMenu := TStringList.Create;
   FCategoria.Duplicates := dupIgnore;
   FIteMMenu.Duplicates := dupIgnore;
   QryDados.Open();

end;

procedure TFrmUsuarios.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   if (QryDados.Active = False) then
   begin
      Informar('Tabela não está ativa.');
   end;
   ChecarModoEdicao();
   pgControl.ActivePageIndex := 1;
   FMudarAba := True;
   EditUsuario.SetFocus;
   QryDados.Append;

end;

procedure TFrmUsuarios.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   QueryMenu.Cancel;
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   pgControl.ActivePageIndex := 0;
end;

procedure TFrmUsuarios.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);
end;

procedure TFrmUsuarios.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);
end;

function TFrmUsuarios.EncontrarNo(aNome: string): TTreeNode;
var
   i: Integer;
begin

   Result := nil;
   with FTreeView_Listar.Items do
   begin
      for i := 0 to Pred(Count) do
         if Item[i].Text = aNome then
         begin
            Result := Item[i];
            Break;
         end;
   end;
end;

procedure TFrmUsuarios.btnBloquearClick(Sender: TObject);
begin
   try
      QueryMenu.close;
      QryUsuarioSetarAcesso.ParamByName('ID').AsInteger :=
        QryDados.FieldByName('ID').AsInteger;
      QryUsuarioSetarAcesso.ParamByName('ACAO').AsString := 'NAO';
      QryUsuarioSetarAcesso.ExecSQL;
   finally
      QueryMenu.Open;
   end;
end;

procedure TFrmUsuarios.btnLiberarClick(Sender: TObject);
begin
   try
      QueryMenu.close;
      QryUsuarioSetarAcesso.ParamByName('ID').AsInteger :=
        QryDados.FieldByName('ID').AsInteger;
      QryUsuarioSetarAcesso.ParamByName('ACAO').AsString := 'SIM';
      QryUsuarioSetarAcesso.ExecSQL;
   finally
      QueryMenu.Open;
   end;
end;

procedure TFrmUsuarios.btnRecriarClick(Sender: TObject);
begin
   if Pergunta
     ('Esse processo irá recriar todos os Menus para este usuário... Continuar?')
     = False then
      exit;
   ListarMenus();
end;

procedure TFrmUsuarios.ChecarModoEdicao;
begin
   if (QryDados.State in [dsedit, dsinsert]) then
   begin
      Informar('Há um registro em edição no momento.');
      exit;
   end;
end;

procedure TFrmUsuarios.cxGridDBDblClick(Sender: TObject);
begin
   MudarAbaDetalhe();
end;

procedure TFrmUsuarios.dsDadosStateChange(Sender: TObject);
begin
   if (FrmFrameBotoes1.DataSource.State in [dsinsert, dsedit]) then
      FrmFrameBotoes1.AtivaEdicao
   else
      FrmFrameBotoes1.DesativaEdicao;
end;

procedure TFrmUsuarios.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   // QryDados.Locate('ID',DlgProcurar.Configurar.Resultado.ToInteger,[]);

end;

procedure TFrmUsuarios.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmUsuarios.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   ValidarCampos();
   inherited;
   // if not (QryDados.State in [dsedit,dsinsert]) then
   // exit;
   FrmFrameBotoes1.SpbSalvarClick(Sender);
   if (QueryMenu.State in [dsedit, dsinsert]) then
      QueryMenu.Post;
   ReabrirQryAcesso();
   pgControl.ActivePageIndex := 0;
end;

procedure TFrmUsuarios.ListarMenus;
var
   i, IC: Integer;
   mAction: TAction;
begin
   FCategoria.Clear;
   FIteMMenu.Clear;

   for i := 0 to Pred(FrmPrincipal.ActionRibbon.ActionCount) do
   begin
      if FCategoria.IndexOf(FrmPrincipal.ActionRibbon.Actions[i].Category) < 0
      then
      begin
         FCategoria.Add(FrmPrincipal.ActionRibbon.Actions[i].Category);
      end;
   end;
   try
      QueryMenu.DisableControls;
      QueryMenu.close;
      try
         QryExcluirAcesso.ParamByName('ID').AsInteger :=
           QryDados.FieldByName('ID').AsInteger;
         QryExcluirAcesso.ExecSQL;
      finally
         QueryMenu.Open;
      end;
      for IC := 0 to FCategoria.Count - 1 do
      begin
         for i := 0 to Pred(FrmPrincipal.ActionRibbon.ActionCount) do
         begin
            mAction := TAction(FrmPrincipal.ActionRibbon.Actions[i]);
            if FCategoria[IC] = mAction.Category then
            begin
               QueryMenu.Append;
               QueryMenu.FieldByName('ID').AsInteger :=
                 QryDados.FieldByName('ID').AsInteger;
               QueryMenu.FieldByName('CATEGORIA').AsString := FCategoria[IC];
               QueryMenu.FieldByName('MENU').AsString :=
                 UpperCase(mAction.Name);
               QueryMenu.FieldByName('TITULO').AsString :=
                 StringReplace(mAction.Caption, '&', '', []);
               QueryMenu.FieldByName('ACESSO').AsString := 'NAO';
               QueryMenu.Post;
            end;
         end;
      end;
   finally
      QueryMenu.EnableControls;
   end;
end;

procedure TFrmUsuarios.MudarAbaDetalhe;
begin
   if not QryDados.Active then
      exit;
   if QryDados.Fields.FindField('ID') = nil then
      exit;
   if QryDados.FieldByName('ID').AsInteger < 1 then
      exit;
   ReabrirQryAcesso();
   FMudarAba := True;
   pgControl.ActivePageIndex := 1;
   QryDados.Edit; // colocar em edição

end;

procedure TFrmUsuarios.pgControlChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
   MudarAbaDetalhe;
   AllowChange := FMudarAba;
end;

procedure TFrmUsuarios.QryDadosNewRecord(DataSet: TDataSet);
begin
   QryDados.FieldByName('ACESSOVISIVEL').AsString := 'NAO';
end;

procedure TFrmUsuarios.ReabrirQryAcesso;
begin
   QueryMenu.close;
   QueryMenu.ParamByName('ID').AsInteger := QryDados.FieldByName('ID')
     .AsInteger;
   QueryMenu.Open;
end;

procedure TFrmUsuarios.ValidarCampos;
begin
   gbDados.SetFocus;
   // forçar foco sair dos campos edits para atualizar campos (problema com TSpeedButton que não tira o foco do objeto. Temos que forçar sair o foco).
   if QryDados.FieldByName('USERNAME').AsString = '' then
   begin
      Informar('Campo "Usuário" é obrigatorio.');
      EditUsuario.SetFocus;
      abort;
   end;
   if QryDados.FieldByName('SENHA').AsString = '' then
   begin
      Informar('Campo "Senha" é obrigatorio.');
      EditSenha.SetFocus;
      abort;
   end;
end;

end.
