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

unit FControleCaixa;

interface

uses
   Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Grids, ExtCtrls, Mask, Buttons, DBGrids, DBCtrls, Db,
   Menus, SysUtils, ComCtrls, QRCtrls, ImgList,
   Variants,
   ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   uEstSearchDialogZeos, FFrameBotoes, FFrameBarra,

   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type

   TFrmControleCaixa = class(TForm)
      PaginaCaixa: TPageControl;
      Tab_Principal: TTabSheet;
      Tab_Edicao: TTabSheet;
      DbGrid_NotaFiscal: TDBGrid;
      DS_Caixa: TDataSource;
      db_CAIXA: TFDQuery;
      Label3: TLabel;
      EditDocumento: TDBEdit;
      Label4: TLabel;
      DBEdit4: TDBEdit;
      Label7: TLabel;
      DBEdit9: TDBEdit;
      LblCredito: TLabel;
      EditVlrCredito: TDBEdit;
      EditVlrDebito: TDBEdit;
      LblDebito: TLabel;
      EditNomePlanoContas: TEdit;
      Navegador: TDBNavigator;
      FrmFrameBotoes1: TFrmFrameBotoes;
      FrmFrameBarra1: TFrmFrameBarra;
      DCodPlano: TIDBEditDialog;
      EditNomeContaCaixa: TEdit;
      ContaProcurar: TIDBEditDialog;
      dbEditPesquisar: TIDBEditDialog;
      procedure FormCreate(Sender: TObject);

      procedure DbGrid_ItensKeyPress(Sender: TObject; var Key: Char);
      procedure Sair1Click(Sender: TObject);

      // Rotinas Tercerizadas

      procedure Mnu_SairClick(Sender: TObject);
      procedure DbGrid_NotaFiscalDblClick(Sender: TObject);
      procedure BtnExcluirClick(Sender: TObject);
      procedure db_CAIXANewRecord(DataSet: TDataSet);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
      procedure db_CAIXAAfterOpen(DataSet: TDataSet);
      procedure FormDestroy(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure DCodPlanoChange(Sender: TObject);
      procedure DS_CaixaStateChange(Sender: TObject);

   private
      { Private declarations }
   public
      { Public declarations }

   end;

var
   FrmControleCaixa: TFrmControleCaixa;
   vlrvar: Integer;

implementation

uses FPrincipal, App.SQL, Biblioteca, Global, FRelMovCaixa, Classe.Usuarios,
   App.Funcoes;

{$R *.DFM}

procedure TFrmControleCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_CAIXA.close;
   Action := cafree;
end;

procedure TFrmControleCaixa.FormCreate(Sender: TObject);
begin

   PaginaCaixa.ActivePage := Tab_Principal;
   FrmFrameBotoes1.DataSource := DS_Caixa;

   db_CAIXA.Open;

End;

procedure TFrmControleCaixa.FormDestroy(Sender: TObject);
begin
   FrmControleCaixa := Nil;
end;

procedure TFrmControleCaixa.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   PaginaCaixa.ActivePage := Tab_Edicao;

   db_CAIXA.close;
   db_CAIXA.Open;
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditDocumento.SetFocus;

end;

procedure TFrmControleCaixa.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   PaginaCaixa.ActivePage := Tab_Principal;

end;

procedure TFrmControleCaixa.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmControleCaixa.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   AcaoUserName[0] := 'Deletou registro do movimento de caixa: ' + sLineBreak +
     'Documento.......: ' + db_CAIXA.FieldByName('DOCUMENTO').AsString + #13 +
     #10 + 'Data............: ' + db_CAIXA.FieldByName('DATA').AsString + #13 +
     #10 + 'Operação........: ' + db_CAIXA.FieldByName('DC').AsString + #13 +
     #10 + 'Historico.......: ' + db_CAIXA.FieldByName('HISTORICO').AsString +
     #13 + #10 + 'Valor...........: ' + iif(db_CAIXA.FieldByName('VLR_CREDITO')
     .AsFloat = 0, db_CAIXA.FieldByName('VLR_CREDITO').AsString,
     db_CAIXA.FieldByName('VLR_DEBITO').AsString);

   FrmFrameBotoes1.SpbExcluirClick(Sender);

   FUsuario.LogUsuario('controle de caixa', AcaoUserName[0]);

end;

procedure TFrmControleCaixa.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
begin

   FrmRelMovCaixa := TFrmRelMovCaixa.create(self);
   FrmRelMovCaixa.Showmodal;

end;

procedure TFrmControleCaixa.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbEditPesquisar.Execute then
   begin
      FrmFrameBotoes1.SpbCancelarClick(Sender);
      db_CAIXA.first;
      db_CAIXA.Locate('CODIGO', dbEditPesquisar.ResultFieldAsInteger
        ('CODIGO'), []);
   End;
end;

procedure TFrmControleCaixa.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmControleCaixa.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmControleCaixa.DbGrid_ItensKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmControleCaixa.Sair1Click(Sender: TObject);
begin
   close;
end;

procedure TFrmControleCaixa.Mnu_SairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmControleCaixa.DbGrid_NotaFiscalDblClick(Sender: TObject);
begin

   PaginaCaixa.ActivePage := Tab_Edicao;
   TDatas := db_CAIXA.FieldByName('DATA').AsDateTime;

End;

procedure TFrmControleCaixa.BtnExcluirClick(Sender: TObject);
begin

   If db_CAIXA.IsEmpty then
   Begin
      Informar('Não há dados para excluir');
      Exit;
   end;

   AcaoUserName[0] := 'Deletou registro do movimento de caixa: ' + sLineBreak +
     'Data Movimento..: ' + db_CAIXA.FieldByName('DATA').AsString + sLineBreak +
     'Operacao........: ' + BuscaPlanoContasTipo
     (db_CAIXA.FieldByName('PLN_CONTA').AsString) + #13 + #10 +
     'Historico.......: ' + db_CAIXA.FieldByName('HISTORICO').AsString +
     sLineBreak + 'Valor...........: ' + iif(db_CAIXA.FieldByName('VLR_CREDITO')
     .AsFloat = 0, db_CAIXA.FieldByName('VLR_CREDITO').AsString,
     db_CAIXA.FieldByName('VLR_DEBITO').AsString);

   If Pergunta('Deseja realmente excluir este registro?') = False Then
      Exit;

   db_CAIXA.Delete;
   FUsuario.LogUsuario('controle de caixa', AcaoUserName[0]);

End;

procedure TFrmControleCaixa.db_CAIXANewRecord(DataSet: TDataSet);
begin
   db_CAIXA.FieldByName('DATA').AsDateTime := Date;
end;

procedure TFrmControleCaixa.DCodPlanoChange(Sender: TObject);
begin
   If (db_CAIXA.state in [dsedit, dsinsert]) then
   begin
      db_CAIXA.FieldByName('PLN_CONTA_CLASSE').AsInteger :=
        BuscaPlanoContasID(db_CAIXA.FieldByName('PLN_CONTA').AsString);
      db_CAIXA.FieldByName('DC').AsString :=
        BuscaPlanoContasTipo(db_CAIXA.FieldByName('PLN_CONTA').AsString);
   end;
end;

procedure TFrmControleCaixa.DS_CaixaStateChange(Sender: TObject);
begin
   if (FrmFrameBotoes1.DataSource.state in [dsinsert, dsedit]) then
      FrmFrameBotoes1.AtivaEdicao
   else
      FrmFrameBotoes1.DesativaEdicao;
end;

procedure TFrmControleCaixa.db_CAIXAAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(db_CAIXA);
end;

End.
