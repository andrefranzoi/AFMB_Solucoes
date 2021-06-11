object FrmOpcaoVenda: TFrmOpcaoVenda
  Left = 229
  Top = 107
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Venda'
  ClientHeight = 364
  ClientWidth = 482
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 482
    Height = 50
    Align = alTop
    Constraints.MinHeight = 50
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 5
    ExplicitWidth = 353
    inherited Image3: TImage
      Width = 482
      ExplicitTop = 0
      ExplicitWidth = 353
    end
    inherited pnTitulo: TPanel
      Width = 476
      Constraints.MinHeight = 27
      ExplicitWidth = 347
      ExplicitHeight = 44
      inherited LblBarraTitulo: TLabel
        Width = 325
        Caption = 'Venda - Tipo de Opera'#231#227'o'
        ExplicitWidth = 158
        ExplicitHeight = 33
      end
      inherited Image1: TImage
        ExplicitLeft = 297
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 414
        ExplicitLeft = 387
        ExplicitHeight = 17
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 50
    Width = 482
    Height = 41
    Align = alTop
    BorderWidth = 3
    Caption = 'pressione a tecla correspondente'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    ExplicitWidth = 353
  end
  object BtnImportar: TButton
    Left = 108
    Top = 96
    Width = 265
    Height = 49
    Caption = 'F3 - Pedido de Venda'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BtnImportarClick
  end
  object BtnDigitar: TButton
    Left = 108
    Top = 160
    Width = 265
    Height = 49
    Caption = 'F4 - Digitar nota inteira'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BtnDigitarClick
  end
  object BtnSair: TButton
    Left = 108
    Top = 288
    Width = 265
    Height = 49
    Caption = 'ESC - Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BtnSairClick
  end
  object Button1: TButton
    Left = 108
    Top = 224
    Width = 265
    Height = 49
    Caption = 'F5 - Devolu'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Visible = False
    OnClick = Button1Click
  end
end
