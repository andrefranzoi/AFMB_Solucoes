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

unit FRelCaixaSimplificado;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   quickrpt, Qrctrls, ExtCtrls,   DB,
   QRPDFFilt,
   QRXMLSFilt, QRWebFilt, QRExport, FireDAC.Comp.Client, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
   TFrmRelCaixaSintetico = class(TForm)
      QuickRep: TQuickRep;
      EmpresaTitulo: TQRBand;
      QRLabel1: TQRLabel;
      QRLabel3: TQRLabel;
      QRSysData1: TQRSysData;
      QRLabel4: TQRLabel;
      QRSysData2: TQRSysData;
      Cabecalho: TQRBand;
      QRLabel9: TQRLabel;
      QRLabel8: TQRLabel;
      QRLabel11: TQRLabel;
      Datalhes: TQRBand;
      Vlr_Credito: TQRDBText;
      QRDBText3: TQRDBText;
      QRDBText2: TQRDBText;
      Sql_MovmCaixa: TFDQuery;
      SummaryBand1: TQRBand;
      QRLabel2: TQRLabel;
      QRLabel6: TQRLabel;
      Vlr_Debito: TQRDBText;
      Vlr_SaldoAtual: TQRDBText;
      QRLabel12: TQRLabel;
      Vlr_SaldoAnterior: TQRDBText;
      QRDBText6: TQRDBText;
      QRExpr5: TQRExpr;
      QRExpr2: TQRExpr;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelCaixaSintetico: TFrmRelCaixaSintetico;

implementation

uses FPrincipal, FRelMovCaixa, Global, Biblioteca;

{$R *.DFM}

procedure TFrmRelCaixaSintetico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Sql_MovmCaixa.Close;

   Action := caFree;
end;

procedure TFrmRelCaixaSintetico.FormCreate(Sender: TObject);
begin

   Sql_MovmCaixa.Params.Clear;

   sqlMaster :=
     ' SELECT * FROM SP_CAIXA_SALDO_01(:DATA1, :DATA2, :SLDANTERIOR, :PLANO_CTA) ';

   Sql_MovmCaixa.Close;
   Sql_MovmCaixa.SQL.Clear;
   Sql_MovmCaixa.SQL.Add(sqlMaster);
   Sql_MovmCaixa.ParamByName('data1').AsDateTime :=
     StrToDate(FrmRelMovCaixa.FrameDatas1.MskDataIni.Text);
   Sql_MovmCaixa.ParamByName('data2').AsDateTime :=
     StrToDate(FrmRelMovCaixa.FrameDatas1.MskDataFim.Text);

   // Informar se deve ou não Incluir o Saldo Anterior
   if (FrmRelMovCaixa.RadioGSaldoAnterior.ItemIndex = 0) then
      Sql_MovmCaixa.ParamByName('SLDANTERIOR').AsString := 'S'
   Else
      Sql_MovmCaixa.ParamByName('SLDANTERIOR').AsString := 'N';

   if not FrmRelMovCaixa.chkPlanos.checked then
   Begin
      Sql_MovmCaixa.ParamByName('PLANO_CTA').AsString :=
        FrmRelMovCaixa.EditPlanoContas.Text;
   End;
   Sql_MovmCaixa.Open;

   QuickRep.Preview;
   Close;

end;

end.
