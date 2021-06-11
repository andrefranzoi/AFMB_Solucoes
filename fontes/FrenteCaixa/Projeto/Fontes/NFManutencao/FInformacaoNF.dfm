object FrmInformacaoNF: TFrmInformacaoNF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Informa'#231#245'es Gerais'
  ClientHeight = 517
  ClientWidth = 1013
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 476
    Width = 1013
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 903
      Top = 4
      Width = 106
      Height = 33
      Align = alRight
      Caption = 'Sair (Esc)'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object MemoDados: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 66
    Width = 1007
    Height = 407
    Align = alClient
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object pnTitulo: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1007
    Height = 57
    Align = alTop
    Color = 4276288
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object Shape2: TShape
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 999
      Height = 49
      Align = alClient
      Brush.Color = 4276288
      Pen.Color = 6403220
      Pen.Style = psDot
      Shape = stRoundRect
      ExplicitLeft = 5
      ExplicitTop = 8
      ExplicitWidth = 901
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 4
      Width = 975
      Height = 49
      Margins.Left = 15
      Margins.Right = 15
      Align = alClient
      Alignment = taCenter
      Caption = 'Informa'#231#245'es Gerais'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -29
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 288
      ExplicitHeight = 34
    end
  end
end
