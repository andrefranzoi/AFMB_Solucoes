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

unit FRomaneio;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, DB, Grids, DBGrids,
   FrmRelatorios, frxClass, frxDBSet, Classe.Global, FireDAC.Stan.Intf,
   FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
   FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
   FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmRomaneio = class(TForm)
      Panel1: TPanel;
      GroupBox2: TGroupBox;
      Label3: TLabel;
      Label4: TLabel;
      MskDataIni: TMaskEdit;
      MskDataFim: TMaskEdit;
      Panel2: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
      DBGrid1: TDBGrid;
      ds_transportadora: TDataSource;
      db_transportadora: TFDQuery;
      FrameRelatorios1: TFrameRelatorios;
      dbromaneio_clientes: TFDQuery;
      dbfp_romaneio_clientes: TfrxDBDataset;
      frx_Romeio: TfrxReport;
      dbfp_transportadora: TfrxDBDataset;
      procedure Btn_SairClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure MskDataIniExit(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BtnSairClick(Sender: TObject);
      procedure DBGrid1Enter(Sender: TObject);
      procedure DBGrid1DblClick(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure GroupBox2Exit(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure db_transportadoraAfterOpen(DataSet: TDataSet);

   private
      procedure CarregarDados;
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRomaneio: TFrmRomaneio;

implementation

uses Biblioteca, FPrincipal, Global, App.Funcoes;

{$R *.DFM}

procedure TFrmRomaneio.Btn_SairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmRomaneio.MskDataIniExit(Sender: TObject);
begin
   if TESTAR_DATA(MskDataIni.text) = false then
   begin
      Aviso('Data Inválida...');
      MskDataIni.setfocus;
   end;
   CarregarDados;

end;

procedure TFrmRomaneio.MskDataFimExit(Sender: TObject);
begin
   if TESTAR_DATA(MskDataFim.text) = false then
   begin
      Aviso('Data Inválida...');
      MskDataFim.setfocus;
   end;

   CarregarDados;

end;

procedure TFrmRomaneio.Btn_ImprimirClick(Sender: TObject);
begin

   dbromaneio_clientes.Close;
   dbromaneio_clientes.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   dbromaneio_clientes.ParamByName('DATA1').AsDate :=
     StrTodate(MskDataIni.text);
   dbromaneio_clientes.ParamByName('DATA2').AsDate :=
     StrTodate(MskDataFim.text);
   dbromaneio_clientes.ParamByName('TRANSPORTADORA').AsInteger :=
     db_transportadora.Fieldbyname('TRANSPORTADORA').AsInteger;

   frx_Romeio.ShowReport;

   dbromaneio_clientes.Close;

   {
     Try
     wInteger[0] := db_transportadora.Fieldbyname('TRANSP').AsInteger;
     Except
     wInteger[0] := 0;
     End;

     FrmPrintRomaneio := TFrmPrintRomaneio.Create(Self);
   }

End;

procedure TFrmRomaneio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      Close;

end;

procedure TFrmRomaneio.FormShow(Sender: TObject);
begin
   CarregarDados;
end;

procedure TFrmRomaneio.GroupBox2Exit(Sender: TObject);
begin
   CarregarDados;
end;

procedure TFrmRomaneio.BtnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmRomaneio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := cafree;
end;

procedure TFrmRomaneio.FormCreate(Sender: TObject);
begin

   MskDataIni.text := dateToStr(Date);
   MskDataFim.text := dateToStr(Date);

   CarregarDados;

end;

procedure TFrmRomaneio.DBGrid1Enter(Sender: TObject);
begin
   CarregarDados;
end;

procedure TFrmRomaneio.db_transportadoraAfterOpen(DataSet: TDataSet);
begin
   FormataCampo(db_transportadora);
end;

procedure TFrmRomaneio.DBGrid1DblClick(Sender: TObject);
begin
   Btn_Imprimir.Click;
end;

procedure TFrmRomaneio.CarregarDados;
begin
   db_transportadora.Close;
   db_transportadora.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   db_transportadora.ParamByName('DATA1').AsDate := StrTodate(MskDataIni.text);
   db_transportadora.ParamByName('DATA2').AsDate := StrTodate(MskDataFim.text);
   db_transportadora.open;

end;

end.
