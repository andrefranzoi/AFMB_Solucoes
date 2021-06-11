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

unit FAbreFechaCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FTemplateForm, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ACBrBase, ACBrEnterTab,
  ACBrUtil;

type
  TFrmAbreFechaCaixa = class(TFrmTemplateForm)
    QryUsuario: TFDQuery;
    EditID: TLabeledEdit;
    EditNome: TLabeledEdit;
    EditSenha: TLabeledEdit;
    ACBrEnterTab1: TACBrEnterTab;
    EditValor: TLabeledEdit;
    procedure EditIDExit(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditValorKeyPress(Sender: TObject; var Key: Char);
    procedure EditValorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FSenha  : String;
    FTitulo : String;
    procedure GetUsuario;

  public
    { Public declarations }
    FMovimento : String;
  end;

var
  FrmAbreFechaCaixa: TFrmAbreFechaCaixa;

implementation

{$R *.dfm}

uses FPrincipal, AppFuncoes, AppSQL;

procedure TFrmAbreFechaCaixa.FormShow(Sender: TObject);
begin
  inherited;
  if FMovimento='ABRIR' then
  begin
    lblTitulo.Caption := 'Abertura de Caixa';
    Self.Caption := 'Abertura de Caixa';
    FTitulo := 'ABERTURA DE CAIXA';
    EditID.SetFocus;
  end;
  if FMovimento='FECHAR' then
  begin
    lblTitulo.Caption := 'Fechamento de Caixa';
    Self.Caption := 'Fechamento de Caixa';
    FTitulo := 'FECHAMENTO DE CAIXA';
    EditID.Enabled := False;
    EditNome.Enabled := False;
    EditValor.Visible := False;
    EditID.Text   := FConfiguracao.Operador.ToString;
    EditNome.Text := FConfiguracao.OperadorNome;
    GetUsuario();
    EditSenha.SetFocus;
  end;
end;

procedure TFrmAbreFechaCaixa.GetUsuario;
begin
  if StrToIntDef(EditID.Text,0)<1 then
    exit;
  try
    QryUsuario.Close;
    QryUsuario.ParamByName('ID').AsInteger := StrToIntDef(EditID.Text,-1);
    QryUsuario.Open();
    if QryUsuario.IsEmpty then
    begin
      EditNome.Text := 'Operador(a) de caixa não encontrado.';
      exit;
    end;
    FSenha := QryUsuario.FieldByName('SENHA').AsString;
    EditNome.Text := QryUsuario.FieldByName('USERNAME').AsString
  finally
    QryUsuario.Close;
  end;
end;

procedure TFrmAbreFechaCaixa.EditValorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key in [VK_DELETE,VK_BACK]) then
    EditValor.Text := '';
end;

procedure TFrmAbreFechaCaixa.EditValorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9',','] ) then
  begin
    Key := #0;
  end;
end;

procedure TFrmAbreFechaCaixa.EditIDExit(Sender: TObject);
begin
  if StrToIntDef(EditID.Text,0)<1 then
    exit;
  try
    QryUsuario.Close;
    QryUsuario.ParamByName('ID').AsInteger := StrToIntDef(EditID.Text,-1);
    QryUsuario.Open();
    if QryUsuario.IsEmpty then
    begin
      informar('Operador(a) de caixa não encontrado.');
      EditID.SetFocus;
      exit;
    end;
    FSenha := QryUsuario.FieldByName('SENHA').AsString;
    EditNome.Text := QryUsuario.FieldByName('USERNAME').AsString
  finally
    QryUsuario.Close;
  end;
end;

procedure TFrmAbreFechaCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=VK_F2 then
    btnOkClick(Sender);
end;


procedure TFrmAbreFechaCaixa.btnOkClick(Sender: TObject);
var
  mTexto   : String;
  mData    : TDateTime;
  mValor   : Currency;
begin
  if StrToIntDef(EditID.Text,0)<1 then
  begin
    Informar('Informe o campo ID Operador(a)');
    EditID.SetFocus;
    exit;
  end;

  if trim(EditSenha.Text).IsEmpty then
  begin
    informar('Informe o campo Senha');
    EditSenha.SetFocus;
    Exit;
  end;

  if trim(EditSenha.Text)<>FSenha then
  begin
    informar('Senha incorreta.');
    EditSenha.SetFocus;
    Exit;
  end;

  //--------------------------------------------------------------------
  // Se for entrada
  //--------------------------------------------------------------------
  if FMovimento='ABRIR' then
  begin
    //--------------------------------------------------------------------
    //
    //--------------------------------------------------------------------
    mValor := StrToFloatDef(EditValor.Text,0);
    SQLInsertMovimento(FConfiguracao.TerminalPDV,
                         StrToInt(EditID.Text));
    FrmPrincipal.QryMovimento.Close;
    FrmPrincipal.QryMovimento.Open;
    if FrmPrincipal.QryMovimento.FieldByName('ID').AsInteger<1 then
    begin
      Informar('Erro ao gerar movimento do dia.','Problema',True);
      Abort;
    end;
    if mValor>0 then
    begin
        //--------------------------------------------------------------------
        //
        //--------------------------------------------------------------------
        SQLInsertReforco(FrmPrincipal.QryMovimento.FieldByName('ID').AsInteger,
                         FConfiguracao.TerminalPDV,
                         StrToInt(EditID.Text),
                         mValor,
                         EditNome.Text
                         );
    end;
    FConfiguracao.Operador := StrToInt(EditID.Text);
    FConfiguracao.OperadorNome := EditNome.Text;
    mData := FrmPrincipal.QryMovimento.FieldByName('INICIO').AsDateTime;
    if FConfiguracao.TIPO_IMPRESSAO = 'PDV' then // 'PDV' = BOBINA (IMPRESSORA NAO FISCAL)
    begin
      mTexto := 'Movimento do dia: '+FormatDateTime('c',mData )+sLineBreak+
                ' '+sLineBreak+
                'Operador(a)'+EditID.Text+' '+EditNome.Text+sLineBreak+
                'Valor da Abertura de Caixa: R$ '+FormatFloat('###,##0.00',mValor)+
                ' '+sLineBreak+
                ' '+sLineBreak+
                ' '+sLineBreak+
                StringOfChar('_',40)+sLineBreak+
                'Assinatura'+sLineBreak+
                ' ';
    end
    else
    begin
      mTexto := 'Movimento do dia: '+FormatDateTime('c',mData )+sLineBreak+
                ' '+sLineBreak+
                'Operador(a)'+EditID.Text+' '+EditNome.Text+sLineBreak+
                'Valor da Abertura de Caixa: R$ '+FormatFloat('###,##0.00',mValor)+
                ' '+sLineBreak+
                ' '+sLineBreak+
                ' '+sLineBreak+
                PadCenter(StringOfChar('_',40),FConfiguracao.ColunasCondensado,'_')+  sLineBreak+
                PadCenter('Assinatura',FConfiguracao.ColunasCondensado)+  sLineBreak+
                ' ';
    end;

  end;

  //--------------------------------------------------------------------
  // Se for saida, apresenta resumo do caixa
  //--------------------------------------------------------------------
  if FMovimento='FECHAR' then
  begin
    FConfiguracao.Operador     := 0;
    FConfiguracao.OperadorNome := '';
    SQLUpdateMovimento(FrmPrincipal.QryMovimento.FieldByName('ID').AsInteger,0,'FECHADO');
    mData := FrmPrincipal.QryMovimento.FieldByName('INICIO').AsDateTime;
    mValor := SQLGetValorAbertura(FrmPrincipal.QryMovimento.FieldByName('ID').AsInteger,
                                  FConfiguracao.TerminalPDV,
                                  StrToInt(EditID.Text));


      mTexto := 'Movimento do dia: '+FormatDateTime('c',mData)+sLineBreak+
                ' '+sLineBreak+
                'Operador(a) ID: '+EditID.Text+sLineBreak+
                'Operador(a)NOME: '+EditNome.Text+sLineBreak+
                'Valor da Abertura do Caixa: R$ '+FormatFloat('###,##0.00',mValor)+
                ' '+sLineBreak+
                ' '+sLineBreak+
                ' '+sLineBreak+
                StringOfChar('_',40)+sLineBreak+
                'Assinatura'+sLineBreak+
                ' ';

    FrmPrincipal.QryMovimento.Close;
    FrmPrincipal.QryMovimento.Open;
    FrmPrincipal.EncerrarVenda(False);
  end;
  ImprimirDiversos(FTitulo,mTexto);
  ModalResult := mrOk;
end;

end.
