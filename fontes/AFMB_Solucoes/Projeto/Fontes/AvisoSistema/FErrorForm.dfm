object FrmErrorForm: TFrmErrorForm
  Left = 321
  Top = 359
  BorderIcons = [biSystemMenu]
  Caption = 'Sistema'
  ClientHeight = 240
  ClientWidth = 602
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 160
    Height = 240
    Align = alClient
    ExplicitLeft = 8
    ExplicitTop = 32
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object Panel1: TPanel
    Left = 160
    Top = 0
    Width = 442
    Height = 240
    Align = alRight
    TabOrder = 0
    object MemoAviso: TMemo
      Tag = 1000
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 434
      Height = 131
      Align = alClient
      ParentColor = True
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object ModuloID: TMemo
      Tag = 1000
      AlignWithMargins = True
      Left = 4
      Top = 141
      Width = 434
      Height = 59
      Align = alBottom
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      Lines.Strings = (
        'M'#243'dulo: '
        'Nome:   ')
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 206
      Width = 434
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        434
        30)
      object Button1: TButton
        Left = 350
        Top = 2
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Fechar'
        ModalResult = 2
        TabOrder = 0
        OnClick = Button1Click
      end
    end
  end
end
