object FrmPagamento: TFrmPagamento
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 532
  ClientWidth = 923
  Color = clWhite
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
    Width = 917
    Height = 526
    Align = alClient
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object pnBotoes: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 477
      Width = 909
      Height = 45
      Align = alBottom
      Alignment = taRightJustify
      Color = 4276288
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        AlignWithMargins = True
        Left = 678
        Top = 4
        Width = 215
        Height = 37
        Margins.Left = 15
        Margins.Right = 15
        Align = alRight
        Alignment = taRightJustify
        Caption = 'F11 - Limpar pagamentos'
        Layout = tlCenter
        ExplicitHeight = 23
      end
      object Label3: TLabel
        AlignWithMargins = True
        Left = 16
        Top = 4
        Width = 80
        Height = 37
        Margins.Left = 15
        Margins.Right = 15
        Align = alLeft
        Alignment = taRightJustify
        Caption = 'Sair (Esc)'
        Layout = tlCenter
        ExplicitHeight = 23
      end
    end
    object pnTitulo: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 909
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
        Width = 901
        Height = 49
        Align = alClient
        Brush.Style = bsClear
        Pen.Color = clWhite
        Pen.Style = psDot
        Shape = stRoundRect
        ExplicitLeft = 5
        ExplicitTop = 8
      end
      object Label2: TLabel
        AlignWithMargins = True
        Left = 16
        Top = 4
        Width = 877
        Height = 49
        Margins.Left = 15
        Margins.Right = 15
        Align = alClient
        Alignment = taCenter
        Caption = 'Fechamento da Venda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -29
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 304
        ExplicitHeight = 34
      end
    end
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 231
      Top = 67
      Width = 471
      Height = 404
      Align = alClient
      Caption = ' [Detalhamento]'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object MemRecebimento: TMemo
        AlignWithMargins = True
        Left = 5
        Top = 28
        Width = 461
        Height = 371
        Align = alClient
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          ''
          ''
          '         Dinheiro:     3,00'
          ''
          ' Cart'#227'o de D'#233'bito:    92,00'
          ''
          'Cart'#227'o de Cr'#233'dito:   100,03'
          '---------------------------'
          '            TOTAL:   195,03')
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      AlignWithMargins = True
      Left = 708
      Top = 67
      Width = 205
      Height = 404
      Align = alRight
      Color = 15856371
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
      object grpTroco: TGroupBox
        AlignWithMargins = True
        Left = 4
        Top = 325
        Width = 197
        Height = 75
        Align = alBottom
        Caption = 'TROCO'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object lblTroco: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 27
          Width = 187
          Height = 43
          Align = alClient
          Alignment = taCenter
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitWidth = 96
          ExplicitHeight = 32
        end
      end
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 4
        Top = 247
        Width = 197
        Height = 75
        Align = alTop
        Caption = 'RECEBER/RESTANTE'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object lblReceber: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 27
          Width = 187
          Height = 43
          Align = alClient
          Alignment = taCenter
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitWidth = 96
          ExplicitHeight = 32
        end
      end
      object GroupBox4: TGroupBox
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 197
        Height = 75
        Align = alTop
        Caption = 'A PAGAR'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object lblPagar: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 27
          Width = 187
          Height = 43
          Align = alClient
          Alignment = taCenter
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitWidth = 96
          ExplicitHeight = 32
        end
      end
      object GroupBox5: TGroupBox
        AlignWithMargins = True
        Left = 4
        Top = 85
        Width = 197
        Height = 75
        Align = alTop
        Caption = 'RECEBIDO'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object lblRecebido: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 27
          Width = 187
          Height = 43
          Align = alClient
          Alignment = taCenter
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitWidth = 96
          ExplicitHeight = 32
        end
      end
      object grpDesconto: TGroupBox
        AlignWithMargins = True
        Left = 4
        Top = 166
        Width = 197
        Height = 75
        Align = alTop
        Caption = 'DESCONTO'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        object lblDesconto: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 27
          Width = 187
          Height = 43
          Align = alClient
          Alignment = taCenter
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitWidth = 96
          ExplicitHeight = 32
        end
      end
    end
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 67
      Width = 221
      Height = 404
      Align = alLeft
      Caption = 'Formas de Pagamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object btnDinheiro: TButton
        AlignWithMargins = True
        Left = 5
        Top = 28
        Width = 211
        Height = 50
        Align = alTop
        Caption = ' F1 - Dinheiro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ImageIndex = 0
        ParentFont = False
        TabOrder = 0
        OnClick = btnDinheiroClick
      end
      object btnCartoDebito: TButton
        AlignWithMargins = True
        Left = 5
        Top = 84
        Width = 211
        Height = 50
        Align = alTop
        Caption = ' F2 - Cart'#227'o D'#233'bito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ImageIndex = 1
        ParentFont = False
        TabOrder = 1
        OnClick = btnCartoDebitoClick
      end
      object btnCartaoCredito: TButton
        AlignWithMargins = True
        Left = 5
        Top = 140
        Width = 211
        Height = 50
        Align = alTop
        Caption = ' F3 - Cart'#227'o Cr'#233'dito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ImageIndex = 1
        ParentFont = False
        TabOrder = 2
        OnClick = btnCartaoCreditoClick
      end
      object btnOk: TButton
        AlignWithMargins = True
        Left = 5
        Top = 356
        Width = 211
        Height = 43
        Align = alBottom
        Caption = 'Concluir Venda (F5)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ImageIndex = 3
        ParentFont = False
        TabOrder = 4
        OnClick = btnOkClick
      end
      object btnParcelar: TButton
        AlignWithMargins = True
        Left = 5
        Top = 196
        Width = 211
        Height = 50
        Align = alTop
        Caption = 'F4 - Parcelar (Credi'#225'rio)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = btnParcelarClick
      end
    end
  end
  object FDQuery1: TFDQuery
    Connection = FrmPrincipal.ConnectFirebird
    Left = 282
    Top = 134
  end
end
