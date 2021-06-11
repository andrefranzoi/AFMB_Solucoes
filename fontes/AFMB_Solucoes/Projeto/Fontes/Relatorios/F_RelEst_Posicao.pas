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

unit F_RelEst_Posicao;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB,
    Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrm_RelEst_Posicao = class(TForm)
      DB_ESTOQUE: TFDQuery;
      QuickRep: TQuickRep;
      EmpresaTitulo: TQRBand;
      QRLabel1: TQRLabel;
      QRLabel3: TQRLabel;
      QRSysData1: TQRSysData;
      QRLabel4: TQRLabel;
      QRSysData2: TQRSysData;
      Cabecalho: TQRBand;
      QRLabel5: TQRLabel;
      QRLabel14: TQRLabel;
      Datalhes: TQRBand;
      QRDBText2: TQRDBText;
      QRDBText4: TQRDBText;
      QRDBText11: TQRDBText;
      QuebraProduto: TQRGroup;
      TotalProduto: TQRBand;
      QRExpr5: TQRExpr;
      SummaryBand1: TQRBand;
      QRExpr10: TQRExpr;
      QRLabel16: TQRLabel;
      QRLabel7: TQRLabel;
      QRDBText13: TQRDBText;
      QRLabel15: TQRLabel;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   Frm_RelEst_Posicao: TFrm_RelEst_Posicao;

implementation

uses FPrincipal, Global, Biblioteca, FRelEstoque;

{$R *.dfm}

procedure TFrm_RelEst_Posicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   DB_ESTOQUE.close;
   Action := Cafree;

end;

procedure TFrm_RelEst_Posicao.FormCreate(Sender: TObject);
begin
   CodIni := '';
   CodFim := StringOfChar('Z',20);
   if FrmRelEstoque.chk_Referencia.Checked = False then
   begin
     CodIni := FrmRelEstoque.EditProdutoInicio.Text;
     CodFim := FrmRelEstoque.EditProdutoFim.Text;
   end;
   sqlMaster := '';
   sqlMaster := sqlMaster + ' SELECT * FROM VIEW_ESTOQUE_MATERIAIS ';
   sqlMaster := sqlMaster + ' WHERE ';
   sqlMaster := sqlMaster + ' EMPRESA=:EMPRESA ';
   sqlMaster := sqlMaster + ' AND ';
   if not FrmRelEstoque.chkFornecedor.Checked then
   Begin
      sqlMaster := sqlMaster + ' FORNECEDOR=:fornecedor01 ';
      sqlMaster := sqlMaster + ' AND ';
   End;
   if not FrmRelEstoque.chkgrupos.Checked then
   Begin
      sqlMaster := sqlMaster + ' GRUPO=:grupo01 ';
      sqlMaster := sqlMaster + ' AND ';
   End;
   sqlMaster := sqlMaster + ' REFERENCIA>=:produto1 AND  REFERENCIA<=:produto2 ';
   sqlMaster := sqlMaster + ' ORDER BY ' + strOrdemDados;

   DB_ESTOQUE.close;
   DB_ESTOQUE.sql.clear;
   DB_ESTOQUE.sql.add(sqlMaster);
   if not FrmRelEstoque.chkFornecedor.Checked then
      DB_ESTOQUE.ParamByName('fornecedor01').Value := strFornecedor;
   if not FrmRelEstoque.chkgrupos.Checked then
      DB_ESTOQUE.ParamByName('grupo01').Value := strGrupo;
   DB_ESTOQUE.ParamByName('produto1').Value := CodIni;
   DB_ESTOQUE.ParamByName('produto2').Value := CodFim;
   DB_ESTOQUE.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   DB_ESTOQUE.open;
   try
     QuickRep.Preview;
   finally
     Close;
   end;
end;

end.
