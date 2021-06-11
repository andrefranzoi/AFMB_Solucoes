object FrmNotaFiscalCancelar: TFrmNotaFiscalCancelar
  Left = 229
  Top = 107
  BorderStyle = bsDialog
  Caption = 'Nota Fiscal | Cancelar'
  ClientHeight = 347
  ClientWidth = 617
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -15
  Font.Name = 'Calibri'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object Panel1: TPanel
    Left = 0
    Top = 306
    Width = 617
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BtnOk: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 165
      Height = 33
      Align = alLeft
      Caption = 'Enviar Cancelamento'
      TabOrder = 0
      OnClick = BtnOkClick
    end
    object BtnSair: TBitBtn
      AlignWithMargins = True
      Left = 531
      Top = 4
      Width = 82
      Height = 33
      Align = alRight
      Caption = 'Sair (Esc)'
      TabOrder = 1
      OnClick = BtnSairClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 63
    Width = 617
    Height = 243
    Align = alClient
    Caption = 
      'Motivo do Cancelamento [exig'#234'ncia da Receita Estadual: no minimo' +
      ' 15 caracteres]'
    TabOrder = 0
    object dbMemoJustificar: TMemo
      Left = 2
      Top = 20
      Width = 613
      Height = 193
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      OnChange = dbMemoJustificarChange
    end
    object painelCaracteres: TPanel
      Left = 2
      Top = 213
      Width = 613
      Height = 28
      Align = alBottom
      Alignment = taLeftJustify
      Caption = '[..]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object pnTitulo: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 611
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
      Width = 603
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
    object Label3: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 4
      Width = 579
      Height = 49
      Margins.Left = 15
      Margins.Right = 15
      Align = alClient
      Alignment = taCenter
      Caption = 'Cancelamento de Venda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -29
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 336
      ExplicitHeight = 34
    end
  end
end
