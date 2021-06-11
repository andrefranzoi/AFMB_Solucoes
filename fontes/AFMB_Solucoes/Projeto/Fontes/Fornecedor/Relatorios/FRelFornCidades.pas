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

unit FRelFornCidades;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, quickrpt, Qrctrls, Db,  
   QRPDFFilt, FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmRelFornCidades = class(TForm)
      Prever: TQuickRep;
      DetailBand1: TQRBand;
      QRDBText1: TQRDBText;
      QRDBText3: TQRDBText;
      QRDBText4: TQRDBText;
      ColumnHeaderBand1: TQRBand;
      QRLabel1: TQRLabel;
      QRLabel3: TQRLabel;
      QRLabel4: TQRLabel;
      QRGroup1: TQRGroup;
      PageHeaderBand1: TQRBand;
      QRLabel15: TQRLabel;
      QRSysData3: TQRSysData;
      QRLabel16: TQRLabel;
      QRSysData4: TQRSysData;
      QRLabel17: TQRLabel;
      DB_Fornecedor: TFDQuery;
      SummaryBand1: TQRBand;
      groups: TQRExpr;
      QRLabel2: TQRLabel;
      QRDBText2: TQRDBText;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelFornCidades: TFrmRelFornCidades;

implementation

uses Biblioteca, FRelClientes, Global;

{$R *.DFM}

procedure TFrmRelFornCidades.FormCreate(Sender: TObject);
begin


   vSelect := ' SELECT * FROM VIEW_CLIENTES  ';
   vSelect := vSelect + ' WHERE ';
   vSelect := vSelect + ' TIPO=''FORNECEDOR'' ';

   if strCidade <> '' then
      vSelect := vSelect + ' AND CIDADECODIGO=' + strCidade;

   IF FrmRelClientes.chkFornecedor.Checked = False then
   Begin
      vSelect := vSelect + ' AND CODIGO=:XCLIENTE ';
   End;

   DB_Fornecedor.Close;
   DB_Fornecedor.SQL.clear;
   DB_Fornecedor.SQL.Add(vSelect);

   IF FrmRelClientes.chkFornecedor.Checked = False then
      DB_Fornecedor.ParamByName('CLIENTE').value := strFornecedor;

   DB_Fornecedor.Open;

   Prever.Preview;
   Close;

end;

procedure TFrmRelFornCidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DB_Fornecedor.Close;
   Action := cafree;

end;

end.
