object FrmCPFCNPJ: TFrmCPFCNPJ
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Excluir item'
  ClientHeight = 305
  ClientWidth = 399
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 393
    Height = 299
    Align = alClient
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 75
      Top = 116
      Width = 125
      Height = 29
      Caption = 'CPF ou CNPJ:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object pnTitulo: TPanel
      Left = 1
      Top = 253
      Width = 391
      Height = 45
      Align = alBottom
      Color = 4276288
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object btnOk: TButton
        Left = 1
        Top = 1
        Width = 120
        Height = 43
        Align = alLeft
        Caption = 'Ok (Enter)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = False
        OnClick = btnOkClick
      end
      object btnSair: TButton
        Left = 270
        Top = 1
        Width = 120
        Height = 43
        Align = alRight
        Caption = 'Sair (Esc)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = False
        OnClick = btnSairClick
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 391
      Height = 57
      Align = alTop
      Color = 4276288
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      object Shape2: TShape
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 383
        Height = 49
        Align = alClient
        Brush.Color = 4276288
        Pen.Color = 6403220
        Pen.Style = psDot
        Shape = stRoundRect
        ExplicitLeft = 1
        ExplicitWidth = 321
      end
      object Label2: TLabel
        AlignWithMargins = True
        Left = 16
        Top = 4
        Width = 359
        Height = 49
        Margins.Left = 15
        Margins.Right = 15
        Align = alClient
        Alignment = taCenter
        Caption = 'Informar CPF/CNPJ'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 210
        ExplicitHeight = 33
      end
    end
    object EditDocumento: TEdit
      AlignWithMargins = True
      Left = 75
      Top = 143
      Width = 230
      Height = 41
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Calibri'
      Font.Style = []
      MaxLength = 14
      NumbersOnly = True
      ParentFont = False
      TabOrder = 2
    end
  end
end