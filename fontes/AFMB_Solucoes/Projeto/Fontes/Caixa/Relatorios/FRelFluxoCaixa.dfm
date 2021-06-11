object FrmRelFluxoCaixa: TFrmRelFluxoCaixa
  Left = 1
  Top = 1
  Caption = 'Relat'#243'rio Financeiro'
  ClientHeight = 542
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 23
  object PainelPrincipal: TPanel
    Left = 0
    Top = 50
    Width = 463
    Height = 446
    Align = alClient
    BevelWidth = 2
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object PainelParametros: TPanel
      Left = 2
      Top = 2
      Width = 459
      Height = 442
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 453
        Height = 214
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Periodo (Movimento)'
        TabOrder = 0
        object Label4: TLabel
          Left = 25
          Top = 122
          Width = 27
          Height = 23
          Caption = 'At'#233
        end
        object Label3: TLabel
          Left = 25
          Top = 33
          Width = 23
          Height = 23
          Caption = 'De'
        end
        object MskDataFim: TMaskEdit
          Left = 25
          Top = 149
          Width = 125
          Height = 31
          EditMask = '99/99/9999'
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
          OnExit = MskDataFimExit
        end
        object MskDataIni: TMaskEdit
          Left = 25
          Top = 61
          Width = 125
          Height = 31
          EditMask = '99/99/9999'
          MaxLength = 10
          TabOrder = 0
          Text = '  /  /    '
          OnExit = MskDataIniExit
        end
      end
    end
  end
  inline FrameRelatoriosBotoes1: TFrameRelatoriosBotoes
    Left = 0
    Top = 496
    Width = 463
    Height = 46
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 496
    ExplicitWidth = 463
    inherited Panel1: TPanel
      Width = 463
      ExplicitWidth = 463
      inherited SpbImprimir: TBitBtn
        OnClick = FrameRelatoriosBotoes1SpbImprimirClick
      end
      inherited SpbSair: TBitBtn
        OnClick = FrameRelatoriosBotoes1SpbSairClick
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 463
    Height = 50
    Align = alTop
    Constraints.MinHeight = 50
    Color = 16024898
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 463
    inherited Image3: TImage
      Width = 463
      ExplicitWidth = 463
    end
    inherited pnTitulo: TPanel
      Width = 457
      Constraints.MinHeight = 27
      ExplicitWidth = 457
      ExplicitHeight = 44
      inherited LblBarraTitulo: TLabel
        Width = 306
        Caption = 'Financeiro - Relatorio Caixa'
        ExplicitWidth = 276
        ExplicitHeight = 25
      end
      inherited Image1: TImage
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 395
        ExplicitLeft = 407
        ExplicitHeight = 31
      end
    end
  end
  object db_FluxoCaixa: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM  FNC_FLUXOCAIXA(:DTINICIAL, :DTFINAL)'
      'ORDER BY DATAMOVIMENTO')
    Left = 336
    Top = 48
    ParamData = <
      item
        Name = 'DTINICIAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DTFINAL'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object fx_FluxoCaixa: TfrxDBDataset
    UserName = 'fx_FluxoCaixa'
    CloseDataSource = True
    FieldAliases.Strings = (
      'DATAMOVIMENTO=DATAMOVIMENTO'
      'DESCRICAO=DESCRICAO'
      'SALDOINICIAL=SALDOINICIAL'
      'SALDOATUAL=SALDOATUAL'
      'RECEBER=RECEBER'
      'PAGAR=PAGAR'
      'SALDOS=SALDOS')
    DataSet = db_FluxoCaixa
    BCDToCurrency = False
    Left = 336
    Top = 168
  end
  object frxReport_Analitico: TfrxReport
    Version = '6.2.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.200000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43087.825870636600000000
    ReportOptions.LastChange = 44048.958427106480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 336
    Top = 112
    Datasets = <
      item
        DataSet = FrmPrincipal.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = fx_FluxoCaixa
        DataSetName = 'fx_FluxoCaixa'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Height = 17.007874020000000000
        ParentFont = False
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        DataSet = fx_FluxoCaixa
        DataSetName = 'fx_FluxoCaixa'
        RowCount = 0
        object Shape2: TfrxShapeView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 17.007874020000000000
          Fill.BackColor = clWhite
          Frame.Typ = []
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 0.661409999999989400
          Width = 56.692913390000000000
          Height = 15.118120000000000000
          DataField = 'DATAMOVIMENTO'
          DataSet = fx_FluxoCaixa
          DataSetName = 'fx_FluxoCaixa'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fx_FluxoCaixa."DATAMOVIMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 118.677165350000000000
          Top = 0.661409999999989400
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          DataField = 'RECEBER'
          DataSet = fx_FluxoCaixa
          DataSetName = 'fx_FluxoCaixa'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[fx_FluxoCaixa."RECEBER"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 217.716535430000000000
          Top = 0.661409999999989400
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          DataField = 'PAGAR'
          DataSet = fx_FluxoCaixa
          DataSetName = 'fx_FluxoCaixa'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[fx_FluxoCaixa."PAGAR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 309.464566930000000000
          Top = 0.661409999999989400
          Width = 94.488188980000000000
          Height = 15.118120000000000000
          DataField = 'SALDOS'
          DataSet = fx_FluxoCaixa
          DataSetName = 'fx_FluxoCaixa'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[fx_FluxoCaixa."SALDOS"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Height = 49.133890000000000000
        ParentFont = False
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Height = 105.826840000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Align = baWidth
          AllowVectorExport = True
          Top = 86.590600000000000000
          Width = 718.110700000000000000
          Height = 17.007874020000000000
          Fill.BackColor = 15724527
          Frame.Typ = []
        end
        object Shape1: TfrxShapeView
          Align = baWidth
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 718.110700000000000000
          Height = 68.031496060000000000
          Fill.BackColor = 15724527
          Frame.Typ = []
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 508.236550000000000000
          Top = 5.559059999999999000
          Width = 204.606060000000000000
          Height = 22.322820000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'RELAT'#211'RIO CAIXA')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 508.771658430000000000
          Top = 30.125989130000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 508.771658430000000000
          Top = 44.866146610000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 574.031466769999900000
          Top = 44.866146610000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 1.425047950000000000
          Top = 5.338590000000000000
          Width = 411.968645510000000000
          Height = 41.574822680000000000
          AutoWidth = True
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_NOME"]'
            ''
            'RELAT'#211'RIO CAIXA - SINT'#201'TICO')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 573.134231730000000000
          Top = 30.125989130000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Line23: TfrxLineView
          AllowVectorExport = True
          Left = 468.086921730000000000
          Top = 1.889763780000000000
          Height = 68.031496060000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 88.440944881889770000
          Width = 75.590563390000000000
          Height = 11.338582680000000000
          AllowHTMLTags = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'MOVIMENTO:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 118.677165350000000000
          Top = 88.440944880000000000
          Width = 75.590551181102360000
          Height = 11.338582680000000000
          AllowHTMLTags = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            'RECEITAS:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 217.716535430000000000
          Top = 88.440944880000000000
          Width = 75.590551180000000000
          Height = 11.338582680000000000
          AllowHTMLTags = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            'DESPESAS:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 309.464566930000000000
          Top = 88.440944880000000000
          Width = 94.488188980000000000
          Height = 11.338582680000000000
          AllowHTMLTags = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            'SALDO:')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 118.677165350000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fx_FluxoCaixa."RECEBER">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 217.716535430000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fx_FluxoCaixa."PAGAR">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 309.464566930000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataSet = fx_FluxoCaixa
          DataSetName = 'fx_FluxoCaixa'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fx_FluxoCaixa."SALDOS"]')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
end
