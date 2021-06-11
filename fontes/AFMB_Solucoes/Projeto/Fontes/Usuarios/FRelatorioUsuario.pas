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

unit FRelatorioUsuario;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, DBCtrls, DB, Grids, DBGrids, StdCtrls, Buttons,
   FFrameBarra, FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
   FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
   FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmUsuarioLog = class(TForm)
      GroupBox2: TGroupBox;
      GridUsuario: TDBGrid;
      db_Usuario: TFDQuery;
      DS_Usuario: TDataSource;
      db_UsuarioLog: TFDQuery;
      DS_Log: TDataSource;
      GroupBox1: TGroupBox;
      GroupBox3: TGroupBox;
      DBGrid1: TDBGrid;
      DBMemo1: TDBMemo;
      Panel1: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
      FrmFrameBarra1: TFrmFrameBarra;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSairClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmUsuarioLog: TFrmUsuarioLog;

implementation

uses Biblioteca;

{$R *.dfm}

procedure TFrmUsuarioLog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   db_Usuario.close;
   db_UsuarioLog.close;

   Action := cafree;
end;

procedure TFrmUsuarioLog.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmUsuarioLog.FormCreate(Sender: TObject);
begin
   db_Usuario.open;
   db_UsuarioLog.open;

end;

procedure TFrmUsuarioLog.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_F12 then
   begin
      If pergunta('Deseja realmente limpar todos os LOGs do usuário ' +
        db_Usuario.fieldbyname('UserName').asstring + '?') = true then
      begin
         db_UsuarioLog.first;
         While not db_UsuarioLog.eof do
         begin
            db_UsuarioLog.Delete;
         end;
         Aviso('Todos os LOGs foram excluidos');
      end;
   end;

end;

end.
