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
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 617
    Height = 50
    Align = alTop
    Constraints.MinHeight = 50
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 3
    ExplicitWidth = 617
    inherited Image3: TImage
      Width = 617
      ExplicitTop = 33
      ExplicitWidth = 617
      ExplicitHeight = 60
    end
    inherited pnTitulo: TPanel
      Width = 611
      Constraints.MinHeight = 27
      ExplicitWidth = 611
      ExplicitHeight = 54
      inherited LblBarraTitulo: TLabel
        Width = 460
        Caption = 'Nota Fiscal | Cancelar'
        ExplicitWidth = 221
        ExplicitHeight = 25
      end
      inherited Image1: TImage
        ExplicitLeft = 561
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 549
        ExplicitLeft = 558
        ExplicitHeight = 31
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 306
    Width = 617
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BtnOk: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Ok'
      TabOrder = 0
      OnClick = BtnOkClick
    end
    object BtnSair: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = BtnSairClick
    end
  end
  object PnlValorDevolucao: TPanel
    Left = 0
    Top = 244
    Width = 617
    Height = 62
    Align = alBottom
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 11
      Top = 3
      Width = 32
      Height = 18
      Caption = 'Data:'
    end
    object Label2: TLabel
      Left = 195
      Top = 3
      Width = 51
      Height = 18
      Caption = 'Usu'#225'rio:'
    end
    object DBEdit1: TDBEdit
      Left = 11
      Top = 24
      Width = 121
      Height = 26
      Color = clBtnFace
      DataField = 'CANCELAMENTO_DATA'
      DataSource = FrmNotaFiscalEmitidas.DS_Vendas
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 195
      Top = 24
      Width = 201
      Height = 26
      Color = clBtnFace
      DataField = 'CANCELAMENTO_USUARIO'
      DataSource = FrmNotaFiscalEmitidas.DS_Vendas
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 50
    Width = 617
    Height = 194
    Align = alClient
    Caption = 
      'Motivo do Cancelamento [exig'#234'ncia da Receita Estadual: no minimo' +
      ' 16 caracteres]'
    TabOrder = 0
    ExplicitTop = 60
    ExplicitHeight = 184
    object dbMemoJustificar: TDBMemo
      Left = 2
      Top = 20
      Width = 613
      Height = 144
      Align = alClient
      DataField = 'CANCELAMENTO_MOTIVO'
      DataSource = FrmNotaFiscalEmitidas.DS_Vendas
      ScrollBars = ssVertical
      TabOrder = 0
      OnChange = dbMemoJustificarChange
      ExplicitHeight = 134
    end
    object painelCaracteres: TPanel
      Left = 2
      Top = 164
      Width = 613
      Height = 28
      Align = alBottom
      Alignment = taLeftJustify
      Caption = 'painelCaracteres'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ExplicitTop = 154
    end
  end
end
