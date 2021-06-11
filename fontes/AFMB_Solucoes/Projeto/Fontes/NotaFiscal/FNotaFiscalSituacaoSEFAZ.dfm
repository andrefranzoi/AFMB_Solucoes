object FrmNotaFiscalSituacaoSEFAZ: TFrmNotaFiscalSituacaoSEFAZ
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'NF-e (Nota Fiscal Eletr'#244'nica)'
  ClientHeight = 449
  ClientWidth = 894
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 894
    Height = 50
    Align = alTop
    Constraints.MinHeight = 50
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    ExplicitWidth = 894
    inherited Image3: TImage
      Width = 894
      ExplicitTop = 33
      ExplicitWidth = 894
      ExplicitHeight = 60
    end
    inherited pnTitulo: TPanel
      Width = 888
      Constraints.MinHeight = 27
      ExplicitWidth = 888
      ExplicitHeight = 54
      inherited LblBarraTitulo: TLabel
        Width = 737
        Caption = 'Situa'#231#227'o da Nota Fiscal na SEFAZ'
        ExplicitLeft = 76
        ExplicitTop = 5
        ExplicitWidth = 737
        ExplicitHeight = 44
      end
      inherited Image1: TImage
        ExplicitLeft = 838
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 826
        ExplicitLeft = 826
        ExplicitHeight = 31
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 408
    Width = 894
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object MemoDados: TMemo
    Left = 0
    Top = 50
    Width = 894
    Height = 358
    Align = alClient
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 2
    ExplicitTop = 60
    ExplicitHeight = 348
  end
end
