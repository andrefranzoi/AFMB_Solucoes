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

unit FOutrasFuncoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FTemplateForm, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, ACBrUtil;

type
  TFrmOutrasFuncoes = class(TFrmTemplateForm)
    GridPanel1: TGridPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel7: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FStatus : String;
    FData   : TDateTime;
  public
    { Public declarations }
  end;

var
  FrmOutrasFuncoes: TFrmOutrasFuncoes;

implementation

{$R *.dfm}

uses FAbreFechaCaixa, FReforcoCaixa, FPrincipal, AppFuncoes, FRetirada,
  FManutencaoNFe, FConfigurar, FConfigurarBalanca;

procedure TFrmOutrasFuncoes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  mAtualizar  : Boolean;
  mStringList : TStringList;
  mData       : String;
begin
  inherited;
  mData := '';

  mAtualizar := False;
  if Key = VK_F1 then
  begin
    Key := 0;
    FrmPrincipal.CheckCaixaAberto;
    try
      FrmAbreFechaCaixa := TFrmAbreFechaCaixa.Create(Nil);
      FrmAbreFechaCaixa.FMovimento := 'ABRIR';
      FrmAbreFechaCaixa.ShowModal;
      mAtualizar := True;
    finally
      FrmAbreFechaCaixa.Free;
    end;
  end;
  if Key = VK_F2 then
  begin
    Key := 0;
    FrmPrincipal.CheckOperador();
    try
      FrmReforcoCaixa := TFrmReforcoCaixa.Create(Nil);
      FrmReforcoCaixa.EditID.Text   := FConfiguracao.Operador.ToString;
      FrmReforcoCaixa.EditNome.Text := FConfiguracao.OperadorNome;
      FrmReforcoCaixa.ShowModal;
      mAtualizar := True;
    finally
      FrmReforcoCaixa.Free;
    end;
  end;
  if Key = VK_F3 then
  begin
    Key := 0;
    FrmPrincipal.CheckOperador();
    try
      FrmRetirada := TFrmRetirada.Create(Nil);
      FrmRetirada.EditID.Text   := FConfiguracao.Operador.ToString;
      FrmRetirada.EditNome.Text := FConfiguracao.OperadorNome;
      FrmRetirada.ShowModal;
      mAtualizar := True;
    finally
      FrmRetirada.Free;
    end;
  end;
  if (((ssAlt in Shift) = False) and (Key = VK_F4)) then // evitar conflito com Alt + F4 do proprio Windows
  begin
    Key := 0;
    mData := DateToStr(Date);
    //mData :=  InputQuery('Resumo financeiro','Informe a data (formato: dd/mm/yyyy )', mData);
    if InputQuery('Resumo financeiro','Informe a data (formato: dd/mm/yyyy )', mData) = False then
    begin
      mData := '';
    end;

    if Trim(mData) = '' then
    begin
      mData := DateToStr(StrToDateDef(mData, 0));
    end;

    mStringList := TStringList.Create;
    try
      mStringList := FrmPrincipal.RelatorioGerencial('RESUMO', StrToDateDef(mData, Date));
      ImprimirDiversos('>> RESUMO FINANCEIRO <<', mStringList.Text);
    finally
     if mStringList<>Nil then
       mStringList.Free;
    end;
  end;

  if Key = VK_F5 then
  begin
    Key := 0;
    FrmPrincipal.AbrirGaveta;
  end;

  if Key = VK_F6 then
  begin
    Key := 0;
    FrmPrincipal.CheckOperador();
    FrmPrincipal.CheckCaixaFechado();
    try
      FrmAbreFechaCaixa := TFrmAbreFechaCaixa.Create(Nil);
      FrmAbreFechaCaixa.FMovimento := 'FECHAR';
      FrmAbreFechaCaixa.ShowModal;
      mAtualizar := True;
    finally
      FrmAbreFechaCaixa.Free;
    end;
  end;

  if Key = VK_F7 then
  begin
    Key := 0;
    try
      FrmManutencaoNFe := TFrmManutencaoNFe.Create(nil);
      FrmManutencaoNFe.ShowModal;
    finally
      FrmManutencaoNFe.Free;
    end;
  end;

  if Key = VK_F8 then
  begin
    Key := 0;
    try
      FrmConfigurar := TFrmConfigurar.Create(nil);
      FrmConfigurar.ShowModal;
    finally
      FrmConfigurar.Free;
    end;
  end;

  if Key = VK_F9 then
  begin
    Key := 0;
    try
      FrmConfigurarBalanca := TFrmConfigurarBalanca.Create(nil);
      FrmConfigurarBalanca.ShowModal;
    finally
      FrmConfigurarBalanca.Free;
    end;
  end;

  if mAtualizar then
  begin
    FrmPrincipal.QryMovimento.Close;
    FrmPrincipal.QryMovimento.Open;
    FStatus := FrmPrincipal.QryMovimento.FieldByName('STATUS').AsString;
    FData   := FrmPrincipal.QryMovimento.FieldByName('INICIO').AsDateTime;
    FrmPrincipal.Identificadores();
  end;
end;

procedure TFrmOutrasFuncoes.FormShow(Sender: TObject);
begin
  inherited;
  FrmPrincipal.CheckTblMovimento();
  FStatus := FrmPrincipal.QryMovimento.FieldByName('STATUS').AsString;
  FData   := FrmPrincipal.QryMovimento.FieldByName('INICIO').AsDateTime;

end;

end.
