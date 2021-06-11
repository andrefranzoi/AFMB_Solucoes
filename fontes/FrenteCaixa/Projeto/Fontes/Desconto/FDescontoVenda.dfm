object FrmDescontoVenda: TFrmDescontoVenda
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Desconto (%) na Venda'
  ClientHeight = 305
  ClientWidth = 412
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 406
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
      Left = 17
      Top = 125
      Width = 115
      Height = 29
      Caption = 'Desconto %'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object lblReceber: TLabel
      Left = 1
      Top = 58
      Width = 404
      Height = 47
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'R$ 0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 391
    end
    object Label3: TLabel
      Left = 257
      Top = 125
      Width = 52
      Height = 29
      Caption = 'Valor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 193
      Top = 159
      Width = 26
      Height = 29
      Caption = 'ou'
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
      Width = 404
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
      object Label5: TLabel
        AlignWithMargins = True
        Left = 338
        Top = 4
        Width = 62
        Height = 37
        Align = alRight
        Caption = 'Sair (Esc)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 18
      end
      object Label6: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 94
        Height = 37
        Align = alLeft
        Caption = 'F5 - Confirmar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 18
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 404
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
        Width = 396
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
        Width = 372
        Height = 49
        Margins.Left = 15
        Margins.Right = 15
        Align = alClient
        Alignment = taCenter
        Caption = 'Desconto na Venda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 215
        ExplicitHeight = 33
      end
    end
    object EditDesconto: TcxCurrencyEdit
      Left = 17
      Top = 156
      AutoSize = False
      EditValue = 0c
      ParentFont = False
      Properties.ClearKey = 46
      Properties.DisplayFormat = ',0.00%;-,0.00%'
      Properties.MaxValue = 100.000000000000000000
      Properties.OnChange = EditDescontoPropertiesChange
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -27
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      OnKeyPress = EditDescontoKeyPress
      Height = 41
      Width = 130
    end
    object EditDescontoValor: TcxCurrencyEdit
      Left = 257
      Top = 156
      AutoSize = False
      EditValue = 0c
      ParentFont = False
      Properties.ClearKey = 46
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.OnChange = EditDescontoValorPropertiesChange
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -27
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      OnKeyPress = EditDescontoValorKeyPress
      Height = 41
      Width = 130
    end
  end
end