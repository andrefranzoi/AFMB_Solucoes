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

unit FFat_RelNFAnaliticoProdutos;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, quickrpt, Qrctrls, Db,   QRPrntr, QRExport, QRPREV,
   QRPDFFilt, Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmFat_RelNFAnaliticoProdutos = class(TForm)
      DB_Vendas: TFDQuery;
      QuickRep1: TQuickRep;
      Cabecalho: TQRBand;
      QRBand2: TQRBand;
      Vlr_Debito: TQRDBText;
      Vlr_Credito: TQRDBText;
      Vlr_SaldoAnterior: TQRDBText;
      QRDBText3: TQRDBText;
      QuebraReport: TQRGroup;
      TotalNotaFiscal: TQRBand;
      QRBand4: TQRBand;
      QRDBText7: TQRDBText;
      QRDBText8: TQRDBText;
      QRDBText9: TQRDBText;
      QRDBText5: TQRDBText;
      QRExpr1: TQRExpr;
      QRExpr2: TQRExpr;
      QRExpr4: TQRExpr;
      QRExpr5: TQRExpr;
      QRExpr6: TQRExpr;
      QRLabel14: TQRLabel;
      QRExpr3: TQRExpr;
      QRExpr7: TQRExpr;
      QRExpr8: TQRExpr;
      QRExpr9: TQRExpr;
      QRDBText4: TQRDBText;
      QRDBText1: TQRDBText;
      QRDBText2: TQRDBText;
      QRLabel6: TQRLabel;
      QRLabel5: TQRLabel;
      QRLabel3: TQRLabel;
      QRLabel2: TQRLabel;
      QRLabel1: TQRLabel;
      QRLabel11: TQRLabel;
      LblSldAnterior: TQRLabel;
      QRLabel4: TQRLabel;
      QRLabel8: TQRLabel;
      QRLabel15: TQRLabel;
      Band_Cabecalho: TQRBand;
      LblTitulo: TQRLabel;
      QRLabel28: TQRLabel;
      QRLabel29: TQRLabel;
      QRLabel30: TQRLabel;
      QRSysData2: TQRSysData;
      QRSysData1: TQRSysData;
      QRSysData5: TQRSysData;
      LblPeriodo: TQRLabel;
      QRShape1: TQRShape;
      LblVendedor: TQRLabel;
      LblCliente: TQRLabel;
    QRDBText6: TQRDBText;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DB_VendasBeforeOpen(DataSet: TDataSet);
   private
      { Private declarations }
      somag, somaP: real;
   public
      { Public declarations }
   end;

var
   FrmFat_RelNFAnaliticoProdutos: TFrmFat_RelNFAnaliticoProdutos;

implementation

uses Biblioteca, Global, FPrincipal, FRelFaturamento;

{$R *.DFM}

procedure TFrmFat_RelNFAnaliticoProdutos.FormCreate(Sender: TObject);
var
  mProduto : String;
begin
  mProduto := Trim(FrmRelFaturamento.EditProduto.Text);
  case FrmRelFaturamento.RadioNF.ItemIndex of
     0:  LblTitulo.Caption := LblTitulo.Caption + #13 + #10 + '(TODAS AS NOTAS FISCAIS)   ';
     1:  LblTitulo.Caption := LblTitulo.Caption + #13 + #10 + '(NF SAÍDAS)   ';
     2:  LblTitulo.Caption := LblTitulo.Caption + #13 + #10 + '(NF ENTRADAS) ';
     3:  LblTitulo.Caption := LblTitulo.Caption + #13 + #10 + '(NF CANCELADAS) ';
     4:  LblTitulo.Caption := LblTitulo.Caption + #13 + #10 + '(SOMENTE CUPOM FISCAL)   ';
  end;

  dtDataIni := StrToDate(FrmRelFaturamento.MskDataIni.Text);
  dtDataFim := StrToDate(FrmRelFaturamento.MskDataFim.Text);
  LblPeriodo.Caption := 'PERÍODO: ' + DateToStr(dtDataIni) + ' - ' + DateToStr(dtDataFim);

  sqlMaster := '';
  sqlMaster := sqlMaster + ' SELECT * FROM  VIEW_VENDAITEM ';
  sqlMaster := sqlMaster + '  WHERE  ';
  sqlMaster := sqlMaster + '  EMPRESA=:EMPRESA  ';
  sqlMaster := sqlMaster + ' AND EMISSAO>=:DATA1 AND EMISSAO<=:DATA2 ';
  sqlMaster := sqlMaster + Tipo_NF;

  if mProduto <> '' then
  begin
    sqlMaster := sqlMaster + ' AND PRODUTO='+mProduto;
  end;

  if not FrmRelFaturamento.chkCliente.Checked then
  Begin
    sqlMaster := sqlMaster + '  AND CLIENTE=:CLIENTE ';
  End;

  if not FrmRelFaturamento.chkRepres.Checked then
  Begin
     sqlMaster := sqlMaster + '  AND VENDEDOR=:VENDEDOR ';
  End;

  case FrmRelFaturamento.RadioNF.ItemIndex of
     4:
     Begin
        sqlMaster := sqlMaster + '  AND CUPOM='+QuotedStr('S');
     End;
  end;
   sqlMaster := sqlMaster + ' ORDER BY ' + strOrdemDados + ', DESCRICAO ';

  DB_Vendas.Close;
  DB_Vendas.SQL.clear;
  DB_Vendas.SQL.Add(sqlMaster);
  DB_Vendas.ParamByName('DATA1').AsDateTime := dtDataIni;
  DB_Vendas.ParamByName('DATA2').AsDateTime := dtDataFim;
  if True then

  if not FrmRelFaturamento.chkCliente.Checked then
  Begin

     DB_Vendas.ParamByName('CLIENTE').AsInteger :=
       StrToInt(FrmRelFaturamento.EditCliente.Text);

     LblCliente.Caption := 'CLIENTE: ' +
       FrmRelFaturamento.EditClienteNome.Text;

  End;

  if not FrmRelFaturamento.chkRepres.Checked then
  Begin

     DB_Vendas.ParamByName('VENDEDOR').AsInteger :=
       StrToInt(FrmRelFaturamento.EditVendedor.Text);

     LblVendedor.Caption := 'VENDEDOR: ' +
       FrmRelFaturamento.EditNomeVendedor.Text;

  End;

  DB_Vendas.Open;
  QuickRep1.Preview;

  Close;

end;

procedure TFrmFat_RelNFAnaliticoProdutos.DB_VendasBeforeOpen(DataSet: TDataSet);
begin
   DB_Vendas.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmFat_RelNFAnaliticoProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DB_Vendas.Close;

   Action := caFree;

end;

end.
