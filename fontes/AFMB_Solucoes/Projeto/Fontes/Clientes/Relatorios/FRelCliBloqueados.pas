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

unit FRelCliBloqueados;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, quickrpt, Qrctrls, Db,  
   QRPDFFilt, FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmRelCliBloqueados = class(TForm)
      Prever: TQuickRep;
      DetailBand1: TQRBand;
      ColumnHeaderBand1: TQRBand;
      QRGroup1: TQRGroup;
      QRExpr1: TQRExpr;
      PageHeaderBand1: TQRBand;
      ADO_Clientes: TFDQuery;
      QRLabel15: TQRLabel;
      QRLabel17: TQRLabel;
      QRSysData4: TQRSysData;
      QRLabel16: TQRLabel;
      QRSysData3: TQRSysData;
      QRDBText4: TQRDBText;
      QRDBText2: TQRDBText;
      QRDBText3: TQRDBText;
      QRDBText1: TQRDBText;
      QRLabel4: TQRLabel;
      QRLabel2: TQRLabel;
      QRLabel3: TQRLabel;
      QRLabel1: TQRLabel;
      SummaryBand1: TQRBand;
      QRLabel5: TQRLabel;
      QRDBText5: TQRDBText;
      QRLabel6: TQRLabel;
      QRDBText6: TQRDBText;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelCliBloqueados: TFrmRelCliBloqueados;

implementation

uses Biblioteca, FRelClientes, FPrincipal,
   Global;

{$R *.DFM}

procedure TFrmRelCliBloqueados.FormCreate(Sender: TObject);
begin

   vSelect := ' SELECT * FROM VIEW_CLIENTES  ';
   vSelect := vSelect + ' WHERE  ';
   vSelect := vSelect + ' TIPO=' + QuotedStr('CLIENTE');
   vSelect := vSelect + ' AND BLOQUEADO=' + QuotedStr('S');
   vSelect := vSelect + ' AND (DATA>=:data1 AND DATA<=:data2) ';

   if strCliente <> '' then
      vSelect := vSelect + ' AND CODIGO=' + strCliente;

   if strVendedor <> '' then
      vSelect := vSelect + ' AND VENDEDOR=' + strVendedor;

   if strCidade <> '' then
      vSelect := vSelect + ' AND CIDADECODIGO=' + strCidade;

   if strEstado <> '' then
      vSelect := vSelect + ' AND UF=' + QuotedStr(strEstado);

   vSelect := vSelect + ' ORDER BY ' + strOrdemDados;

   ADO_Clientes.Close;
   ADO_Clientes.SQL.clear;
   ADO_Clientes.SQL.Add(vSelect);
   ADO_Clientes.ParamByName('data1').AsDateTime :=  dtDataIni;
   ADO_Clientes.ParamByName('data2').AsDateTime :=  dtDataFim;
   ADO_Clientes.Open;

  try
    Prever.Preview;
  finally
    ADO_Clientes.Close;
    Close;
  end;

end;

procedure TFrmRelCliBloqueados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   ADO_Clientes.Close;
   Action := cafree;

end;

end.
