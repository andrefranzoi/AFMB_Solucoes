{--------------------------------------------------------------------------------+
|  SISTEMA...............: DBVenda                                               |
|  PORTE DE EMPRESA......: Para micro e pequena empresa                          |
|  SEGMENTO..............: Comércio em geral que emita Vendas/NF-e/NFC-e/SAT     |
|  LINGUAGEM/DB..........: Delphi 10.3 Rio (32 bits) | Firebird 2.5 (32 bits)    |
|--------------------------------------------------------------------------------|
|  AUTOR/PROGRAMADOR.....: Adriano Zanini (2019)                                 |
|  E-MAIL................: indpcp2018@gmail.com                                  ||--------------------------------------------------------------------------------||  Você não pode comercializar o codigo-fonte. Nem mesmo parcialmente!           ||  Comercialize somente o sistema compilado (com o nome/interface que desejar).  |
+--------------------------------------------------------------------------------}

unit FPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Hash, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Clipbrd, Vcl.ComCtrls, System.StrUtils, System.Types,
  Vcl.Buttons;

type

  TFrmPrincipal = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Button2: TBitBtn;
    GroupBox2: TGroupBox;
    EditDias: TLabeledEdit;
    EditChaveLicenca: TLabeledEdit;
    btnGerar: TBitBtn;
    Label1: TLabel;
    dtDataHoje: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    Panel1: TPanel;
    btnVerificar: TBitBtn;
    MemoTeste: TMemo;
    EditChave: TEdit;
    btnClipBoard: TBitBtn;
    procedure btnGerarClick(Sender: TObject);
    procedure btnVerificarClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditChaveLicencaEnter(Sender: TObject);
    procedure btnClipBoardClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure ChecarDadosLicenca;
    { Private declarations }
  public
    { Public declarations }
  end;


var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses App.Licenca, App.Constantes;


procedure TFrmPrincipal.btnClipBoardClick(Sender: TObject);
begin
  EditChaveLicenca.SelectAll;
  EditChaveLicenca.CopyToClipboard;
  ShowMessage('Copiado para a área de transferência!')
end;

procedure TFrmPrincipal.btnGerarClick(Sender: TObject);
begin
  EditChaveLicenca.Text := GerarChave(EditDias.Text,
                               dtDataHoje.Date,
                               _CHAVESEGREDO) ;
  EditChave.Text := EditChaveLicenca.Text;
  btnClipBoard.Enabled := Trim(EditChaveLicenca.Text) > '';
end;

procedure TFrmPrincipal.btnVerificarClick(Sender: TObject);
begin
  ChecarDadosLicenca();
end;

procedure TFrmPrincipal.EditChaveLicencaEnter(Sender: TObject);
begin
  PostMessage(EditChaveLicenca.Handle, EM_SETSEL, 0, -1);
end;

procedure TFrmPrincipal.ChecarDadosLicenca;
var
  mDecodificar : String;
  mSequencia   : TStringDynArray;
  mData, mDataLimite : TDate;
  mDias : Integer;
  mChave : String;
begin
  MemoTeste.Clear;
  MemoTeste.Lines.Add('');
  MemoTeste.Lines.Add('Chave            : Sem informação');
  MemoTeste.Lines.Add('Data da Chave    : Sem informação');
  MemoTeste.Lines.Add('Tempo de Licença : Sem informação' );
  MemoTeste.Lines.Add('Data Limite      : Sem informação');

  mData := 0;
  mDias := 0;
  mChave := EditChave.Text;
  if mChave.IsEmpty then
    exit;
  mDecodificar := ReverterChave(mChave, _CHAVESEGREDO);
  mSequencia   :=  mDecodificar.Split(['|']);
  mData := StrToDateDef(mSequencia[0],0);
  mDias := StrToIntDef(mSequencia[1],0);
  mDataLimite := mData + mDias;
  if mDias<1 then
    mChave := _ERROCHAVE;
  MemoTeste.Clear;
  MemoTeste.Lines.Add('');
  MemoTeste.Lines.Add('Chave            : '+IfThen(mDias<1,_ERROCHAVE,mChave));
  MemoTeste.Lines.Add('Data da Chave    : '+IfThen(mDias<1,_ERROCHAVE,DateToStr(mData)));
  MemoTeste.Lines.Add('Tempo de Licença : '+IfThen(mDias<1,_ERROCHAVE,mDias.ToString+' dias') );
  MemoTeste.Lines.Add('Data Limite      : '+IfThen(mDias<1,_ERROCHAVE,DateToStr(mDataLimite)) );
  MemoTeste.Lines.Add('');
  MemoTeste.Lines.Add('');

end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  EditDias.Text := _DIAS_EXPIRAR.ToString;
  dtDataHoje.Date := Date;
end;

procedure TFrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_escape then
    close;
end;

end.

