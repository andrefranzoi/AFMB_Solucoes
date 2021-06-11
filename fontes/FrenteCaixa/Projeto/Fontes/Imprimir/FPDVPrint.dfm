object FrmPDVPrint: TFrmPDVPrint
  Left = 0
  Top = 0
  Caption = 'Imprimir'
  ClientHeight = 578
  ClientWidth = 789
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
  object pnPrincipal: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 66
    Width = 783
    Height = 460
    Align = alClient
    BevelKind = bkTile
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object RichEditPreview: TRichEdit
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 773
      Height = 450
      TabStop = False
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      PlainText = True
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
      Zoom = 100
    end
  end
  object pnTopo: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 532
    Width = 783
    Height = 43
    Align = alBottom
    BevelKind = bkFlat
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object btnSair: TButton
      AlignWithMargins = True
      Left = 185
      Top = 3
      Width = 85
      Height = 33
      Action = actSair
      Align = alLeft
      TabOrder = 2
    end
    object btnSalvar: TButton
      AlignWithMargins = True
      Left = 94
      Top = 3
      Width = 85
      Height = 33
      Action = actSalvar
      Align = alLeft
      TabOrder = 1
    end
    object btnImprimir: TButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 85
      Height = 33
      Action = actImprimir
      Align = alLeft
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 544
      Top = 0
      Width = 235
      Height = 39
      Align = alRight
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 3
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 231
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'Local de impress'#227'o'
        ExplicitWidth = 90
      end
      object cbImpressora: TComboBox
        Left = 0
        Top = 14
        Width = 231
        Height = 21
        Align = alBottom
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 0
        Text = 'PDV (Impressora N'#227'o Fiscal)'
        Items.Strings = (
          'PDV (Impressora N'#227'o Fiscal)'
          'Windows (voc'#234' escolhe a impressora)')
      end
    end
  end
  object pnTitulo: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 783
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
      Width = 775
      Height = 49
      Align = alClient
      Brush.Style = bsClear
      Pen.Color = clWhite
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
      Width = 751
      Height = 49
      Margins.Left = 15
      Margins.Right = 15
      Align = alClient
      Alignment = taCenter
      Caption = 'Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 104
      ExplicitHeight = 23
    end
  end
  object PrintDialog: TPrintDialog
    Collate = True
    Options = [poPrintToFile, poPageNums, poSelection, poWarning, poHelp]
    Left = 400
    Top = 160
  end
  object actComandos: TActionList
    Left = 280
    Top = 160
    object actImprimir: TAction
      Category = 'Comandos'
      Caption = 'Imprimir'
      ImageIndex = 0
      ShortCut = 16464
      OnExecute = actImprimirExecute
    end
    object actSalvar: TAction
      Category = 'Comandos'
      Caption = 'Salvar'
      ImageIndex = 1
      ShortCut = 16467
      OnExecute = actSalvarExecute
    end
    object actPDF: TAction
      Category = 'Comandos'
      Caption = 'PDF'
      ImageIndex = 2
      Visible = False
    end
    object actSair: TAction
      Category = 'Comandos'
      Caption = 'Sair (Esc)'
      ImageIndex = 8
      ShortCut = 27
      OnExecute = actSairExecute
    end
  end
  object dlgSalvarArquivoTexto: TSaveTextFileDialog
    DefaultExt = 'txt'
    Filter = '*.txt|txt|*.*|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Salvar rel'#225'torio'
    Left = 523
    Top = 163
  end
  object ACBrPosPrinter1: TACBrPosPrinter
    Modelo = ppEscPosEpson
    Device.NomeDocumento = 'ACBrPorPrinterDemo'
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 0
    VerificarImpressora = True
    Left = 152
    Top = 160
  end
end
