object FrmAutenticarAcao: TFrmAutenticarAcao
  Left = 384
  Top = 242
  BorderStyle = bsDialog
  Caption = 'Assinatura eletr'#244'nica'
  ClientHeight = 269
  ClientWidth = 387
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 50
    Width = 387
    Height = 48
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Voc'#234' estar'#225' se responsabilizando pelas informa'#231#245'es'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
    ExplicitTop = 33
    ExplicitWidth = 356
  end
  object EditSenha: TLabeledEdit
    Left = 5
    Top = 196
    Width = 143
    Height = 27
    EditLabel.Width = 113
    EditLabel.Height = 19
    EditLabel.Caption = 'Digite sua Senha:'
    EditLabel.Font.Charset = ANSI_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'Calibri'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 0
  end
  object BtnOk: TBitBtn
    Left = 5
    Top = 236
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Ok'
    Default = True
    ModalResult = 1
    TabOrder = 1
    OnClick = BtnOkClick
  end
  object BtnCancelar: TBitBtn
    Left = 81
    Top = 236
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = BtnCancelarClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 98
    Width = 387
    Height = 54
    Align = alTop
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 3
    ExplicitTop = 81
    ExplicitWidth = 374
    object EditUsuario: TLabeledEdit
      Left = 9
      Top = 19
      Width = 271
      Height = 27
      Color = 14811135
      EditLabel.Width = 86
      EditLabel.Height = 19
      EditLabel.Caption = 'Respons'#225'vel:'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Calibri'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 387
    Height = 50
    Align = alTop
    Constraints.MinHeight = 33
    Color = clTeal
    ParentBackground = False
    ParentColor = False
    TabOrder = 4
    ExplicitWidth = 374
    ExplicitHeight = 50
    inherited Image3: TImage
      Width = 387
      Height = 50
      ExplicitWidth = 387
      ExplicitHeight = 50
    end
    inherited pnTitulo: TPanel
      Width = 381
      Height = 44
      ExplicitWidth = 368
      ExplicitHeight = 27
      inherited LblBarraTitulo: TLabel
        Width = 230
        Height = 34
        Caption = 'Assinatura eletr'#244'nica'
        ExplicitWidth = 215
        ExplicitHeight = 34
      end
      inherited Image1: TImage
        Height = 34
        ExplicitHeight = 34
      end
      inherited Image2: TImage
        Left = 319
        Height = 34
        ExplicitLeft = 319
        ExplicitHeight = 34
      end
    end
  end
end
