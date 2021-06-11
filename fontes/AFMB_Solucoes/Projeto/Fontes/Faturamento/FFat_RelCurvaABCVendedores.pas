{
xx***********************************************************************************xx
xx                                                                                   xx
xx  AUTOR/DESENVOLVEDOR...: Adriano Zanini (2020)                                    xx
xx  DATA DO CODIGO-FONTE..: DESDE 01/02/2010                                         xx
xx  E-MAIL................: indpcp2018@gmail.com                                     xx
xx                                                                                   xx
xx  SISTEMA...............: DBVenda Retaguarda / Frente de Caixa                     xx
xx  LINGUAGEM/DB..........: Delphi 10.3 Rio (32 bits) | Firebird 2.5 (32 bits)       xx
xx                                                                                   xx
xx***********************************************************************************xx
xx                                                                                   xx
xx Eu Adriano Zanini, sou autor/desenvolvedor. Se alguem te vendeu esses fontes      xx
}

unit FFat_RelCurvaABCVendedores;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, QuickRpt, DB, SqlExpr, QRCtrls, QRExport,
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmFat_RelCurvaABCVendedores = class(TForm)
      QuickRep: TQuickRep;
      DetailBand1: TQRBand;
      QRDBText3: TQRDBText;
      QRDBText2: TQRDBText;
      qrPercent: TQRLabel;
      SummaryBand1: TQRBand;
      QRLabel13: TQRLabel;
      Qtdolicitada: TQRExpr;
      qrTotal: TQRLabel;
      TitleBand1: TQRBand;
      QRLabel2: TQRLabel;
      QRLabel1: TQRLabel;
      QRLabel15: TQRLabel;
      DB_VENDAS: TFDQuery;
      Band_Cabecalho: TQRBand;
      LblTitulo: TQRLabel;
      QRLabel8: TQRLabel;
      QRShape3: TQRShape;
      QRLabel4: TQRLabel;
      QRLabel11: TQRLabel;
      QRSysData2: TQRSysData;
      QRSysData4: TQRSysData;
      QRSysData5: TQRSysData;
      LblPeriodo: TQRLabel;
      QRShape2: TQRShape;
      LblVendedor: TQRLabel;
      LblCliente: TQRLabel;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
        var PrintReport: Boolean);
      procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
        var PrintReport: Boolean);
    procedure DB_VENDASBeforeOpen(DataSet: TDataSet);
   private
      { Private declarations }
      somag, somaP: real;
      valor1, valor2, somat: real;

   public
      { Public declarations }
   end;

var
   FrmFat_RelCurvaABCVendedores: TFrmFat_RelCurvaABCVendedores;

implementation

uses FPrincipal, Biblioteca, Global,
    FRelFaturamento;

{$R *.dfm}

procedure TFrmFat_RelCurvaABCVendedores.FormCreate(Sender: TObject);
begin
   Flutuante1 := 0;
   Flutuante2 := 0;

   case FrmRelFaturamento.RadioNF.ItemIndex of
      0:
         LblTitulo.Caption := LblTitulo.Caption + #13 + #10 +
           '(TODAS AS NOTAS FISCAIS)   ';
      1:
         LblTitulo.Caption := LblTitulo.Caption + #13 + #10 + '(NF SA�DAS)   ';
      2:
         LblTitulo.Caption := LblTitulo.Caption + #13 + #10 + '(NF ENTRADAS) ';
      3:
         LblTitulo.Caption := LblTitulo.Caption + #13 + #10 +
           '(NF CANCELADAS) ';

   end;

   dtDataIni := StrToDate(FrmRelFaturamento.MskDataIni.Text);
   dtDataFim := StrToDate(FrmRelFaturamento.MskDataFim.Text);
   LblPeriodo.Caption := 'PER�ODO: ' + DateToStr(dtDataIni) + ' - ' +
     DateToStr(dtDataFim);

   // montar script da tabela Mestre

   sqlMaster := '';
   sqlMaster := sqlMaster + ' SELECT  ';
   sqlMaster := sqlMaster + ' VENDEDOR_NOME,   ';
   sqlMaster := sqlMaster + ' Sum(TOTAL_NF)  as FATURAMENTO   ';
   sqlMaster := sqlMaster + ' FROM  VIEW_VENDAITEM ';
   sqlMaster := sqlMaster + ' WHERE  ';
   sqlMaster := sqlMaster + ' EMPRESA=:EMPRESA  ';
   sqlMaster := sqlMaster + ' AND  EMISSAO>=:DATA1 AND EMISSAO<=:DATA2 ';
   sqlMaster := sqlMaster + Tipo_NF;

   if not FrmRelFaturamento.chkCliente.Checked then
   Begin
      sqlMaster := sqlMaster + ' AND  CLIENTE=:CLIENTE ';
   End;

   if not FrmRelFaturamento.chkRepres.Checked then
   Begin
      sqlMaster := sqlMaster + '  AND VENDEDOR=:VENDEDOR ';
   End;

   sqlMaster := sqlMaster + ' GROUP BY VENDEDOR_NOME   ';
   sqlMaster := sqlMaster + ' ORDER BY FATURAMENTO DESC, VENDEDOR_NOME ASC ';

   DB_VENDAS.Close;
   DB_VENDAS.SQL.clear;
   DB_VENDAS.SQL.Add(sqlMaster);
   DB_VENDAS.ParamByName('DATA1').AsDateTime := dtDataIni;
   DB_VENDAS.ParamByName('DATA2').AsDateTime := dtDataFim;

   if not FrmRelFaturamento.chkCliente.Checked then
   Begin

      DB_VENDAS.ParamByName('CLIENTE').AsInteger :=
        StrToInt(FrmRelFaturamento.EditCliente.Text);

      LblCliente.Caption := 'CLIENTE: ' +
        FrmRelFaturamento.EditClienteNome.Text;

   End;

   if not FrmRelFaturamento.chkRepres.Checked then
   Begin

      DB_VENDAS.ParamByName('VENDEDOR').AsInteger :=
        StrToInt(FrmRelFaturamento.EditVendedor.Text);

      LblVendedor.Caption := 'VENDEDOR: ' +
        FrmRelFaturamento.EditNomeVendedor.Text;

   End;
   DB_VENDAS.Open;

   Flutuante1 := 0;
   While not DB_VENDAS.Eof do
   Begin
      Flutuante1 := Flutuante1 + DB_VENDAS.FieldByName('Faturamento').AsFloat;
      DB_VENDAS.Next;
   end;
   DB_VENDAS.First;

   if Flutuante1 <= 0 then
      Flutuante1 := 1;

   QuickRep.Preview;

   Close;

end;

procedure TFrmFat_RelCurvaABCVendedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DB_VENDAS.Close;

   Action := caFree;
End;

procedure TFrmFat_RelCurvaABCVendedores.DB_VENDASBeforeOpen(DataSet: TDataSet);
begin
   DB_Vendas.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmFat_RelCurvaABCVendedores.DetailBand1BeforePrint
  (Sender: TQRCustomBand; var PrintBand: Boolean);

var

   valor1, valor2, somat: real;

begin

   // somar faturamento
   valor1 := 0;
   valor2 := 0;
   somat := 0;

   valor1 := DB_VENDAS.FieldByName('Faturamento').AsFloat;
   valor2 := Flutuante1;

   somat := ((valor1 / valor2) * 100);

   somag := somag + somat;
   qrPercent.Caption := Formatfloat('###,##0.00%', somat);
   qrTotal.Caption := Formatfloat('###,##0.00%', somag);

end;

procedure TFrmFat_RelCurvaABCVendedores.QuickRep1BeforePrint
  (Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
   somag := 0;

end;

procedure TFrmFat_RelCurvaABCVendedores.QuickRepBeforePrint
  (Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
   valor1 := 0;
   valor2 := 0;
   somat := 0;
   somag := 0;
   somaP := 0;

end;

End.