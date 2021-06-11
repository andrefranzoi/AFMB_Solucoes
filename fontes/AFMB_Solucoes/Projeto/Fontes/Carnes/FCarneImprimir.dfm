object FrmCarneImprimir: TFrmCarneImprimir
  Left = 0
  Top = 0
  Caption = 'Carn'#234's para Pagamento'
  ClientHeight = 535
  ClientWidth = 1015
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 1015
    Height = 50
    Align = alTop
    Constraints.MinHeight = 33
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 1015
    ExplicitHeight = 50
    inherited Image3: TImage
      Width = 1015
      Height = 50
      ExplicitWidth = 960
    end
    inherited pnTitulo: TPanel
      Width = 1009
      Height = 44
      Constraints.MinHeight = 27
      ExplicitWidth = 1009
      ExplicitHeight = 27
      inherited LblBarraTitulo: TLabel
        Width = 858
        Height = 34
        Caption = 'Impress'#227'o de Carn'#234's'
        ExplicitWidth = 212
        ExplicitHeight = 25
      end
      inherited Image1: TImage
        Height = 34
        ExplicitLeft = 904
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 947
        Height = 34
        ExplicitLeft = 956
        ExplicitHeight = 31
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 495
    Width = 1015
    Height = 40
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      1015
      40)
    object btnCarne: TBitBtn
      Left = 135
      Top = 6
      Width = 110
      Height = 25
      Caption = 'F9 - Gerar Carn'#234's..'
      TabOrder = 1
      OnClick = btnCarneClick
    end
    object BtnSair: TBitBtn
      Left = 924
      Top = 6
      Width = 80
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Fechar'
      TabOrder = 3
      OnClick = BtnSairClick
    end
    object BitBtn9: TBitBtn
      Left = 251
      Top = 6
      Width = 110
      Height = 25
      Caption = 'Enviar por e-Mail'
      Enabled = False
      TabOrder = 2
      Visible = False
    end
    object dbDlgProcurar: TIDBEditDialog
      Left = 582
      Top = 8
      Width = 65
      Height = 21
      HelpKeyWord = ''
      Color = clWindow
      Enabled = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = ''
      Visible = False
      EditType = etAlphaNumeric
      EmptyText = 'Tecle F8'
      FocusColor = clBtnFace
      LabelCaption = '.'
      LabelAlwaysEnabled = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      Version = '5.0.0.0'
      ButtonStyle = bsButton
      ButtonWidth = 16
      ButtonHint = 'Procurar...'
      Etched = False
      ButtonCaption = '...'
      ButtonKeyClickBtn = 119
      SQLdbCampoRetorno = 'NOME'
      SQLdbRetornoVazio = '***'
      SQLdbCampoParametro = 'CODIGO'
      SQLdbSQL.Strings = (
        'SELECT * FROM CAD_CLIENTES'
        'WHERE'
        'TIPO='#39'TRANSPORTADORA'#39
        'AND'
        'CODIGO=:CODIGO'
        ''
        '')
      SQLdbMaxLenght = 10
      SearchQuery.Strings = (
        'SELECT *  FROM VIEW_BOLETOS'
        'WHERE'
        '%WHERE%'
        'ORDER BY DATA DESC,VENCIMENTO DESC, NOME_CLIENTE ASC')
      SearchDialogFieldList = <
        item
          FieldName = 'NOME_CLIENTE'
          WhereSyntax = 'NOME_CLIENTE'
          DisplayLabel = 'CLIENTE:'
          DisplayWidth = 35
          DisplayColumnWidth = 0
          FieldType = ftString
          Search = True
          EmptyOperation = eoNull
          DefaultComparison = scContains
          SearchCase = scUpper
        end
        item
          FieldName = 'DATA'
          WhereSyntax = 'DATA'
          DisplayLabel = 'DATA:'
          DisplayWidth = 10
          DisplayColumnWidth = 0
          FieldType = ftDateTime
          Search = False
          EmptyOperation = eoNull
          DefaultComparison = scEqual
          SearchCase = scMixed
        end
        item
          FieldName = 'VENCIMENTO'
          WhereSyntax = 'VENCIMENTO'
          DisplayLabel = 'VENCIMENTO:'
          DisplayWidth = 13
          DisplayColumnWidth = 0
          FieldType = ftDate
          Search = False
          EmptyOperation = eoNull
          DefaultComparison = scEqual
          SearchCase = scMixed
        end
        item
          FieldName = 'DOCUMENTO'
          WhereSyntax = 'DOCUMENTO'
          DisplayLabel = 'DOCUMENTO:'
          DisplayWidth = 15
          DisplayColumnWidth = 0
          FieldType = ftString
          Search = True
          EmptyOperation = eoNull
          DefaultComparison = scContains
          SearchCase = scUpper
        end
        item
          FieldName = 'NOTAFISCAL'
          WhereSyntax = 'NOTAFISCAL'
          DisplayLabel = 'NOTA FISCAL:'
          DisplayWidth = 15
          DisplayColumnWidth = 0
          FieldType = ftInteger
          Search = True
          EmptyOperation = eoNull
          DefaultComparison = scEqual
          SearchCase = scUpper
        end
        item
          FieldName = 'NOSSONUMERO'
          WhereSyntax = 'NOSSONUMERO'
          DisplayLabel = 'NOSSO NUMERO:'
          DisplayWidth = 17
          DisplayColumnWidth = 0
          FieldType = ftString
          Search = True
          EmptyOperation = eoNull
          DefaultComparison = scContains
          SearchCase = scUpper
        end
        item
          FieldName = 'VALOR'
          WhereSyntax = 'VALOR'
          DisplayLabel = 'VALOR:'
          DisplayFormat = '###,##0.00'
          DisplayWidth = 15
          DisplayColumnWidth = 0
          FieldType = ftFloat
          Search = False
          EmptyOperation = eoNull
          DefaultComparison = scEqual
          SearchCase = scMixed
        end
        item
          FieldName = 'NOME_VENDEDOR'
          WhereSyntax = 'NOME_VENDEDOR'
          DisplayLabel = 'VENDEDOR:'
          DisplayWidth = 23
          DisplayColumnWidth = 0
          FieldType = ftString
          Search = True
          EmptyOperation = eoNull
          DefaultComparison = scContains
          SearchCase = scUpper
        end>
      SearchPresetList = <>
      DialogCaption = 'Pesquisa'
      DialogWidth = 965
      DialogHeight = 0
      Store = dsFields
      CompareFormatDate = 'DDMMYYYY'
      CompareFormatTime = 'HHMMSS'
      CompareFormatDateTime = 'DDMMYYYY'
      TrueExpression = '1=1'
      DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
      ConnectionDialog = FrmPrincipal.DBConexao
      Connection = FrmPrincipal.DBConexao
    end
    object BitBtn10: TBitBtn
      Left = 16
      Top = 6
      Width = 110
      Height = 25
      Caption = 'F8 - Procurar... '
      TabOrder = 0
      OnClick = BitBtn10Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 50
    Width = 1015
    Height = 445
    Align = alClient
    TabOrder = 0
    ExplicitTop = 33
    ExplicitHeight = 462
    object cxGridView: TcxGrid
      Left = 1
      Top = 1
      Width = 1013
      Height = 443
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 460
      object cxGridBoletos: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsBoletos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        object cxGridBoletosColumn1: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'NOME_CLIENTE'
          Options.Editing = False
          Width = 391
        end
        object cxGridBoletosColumn2: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'DATA'
          Options.Editing = False
          Options.AutoWidthSizable = False
          Width = 105
        end
        object cxGridBoletosColumn3: TcxGridDBColumn
          Caption = 'Vencimento'
          DataBinding.FieldName = 'VENCIMENTO'
          Options.Editing = False
          Options.AutoWidthSizable = False
          Width = 115
        end
        object cxGridBoletosColumn4: TcxGridDBColumn
          Caption = 'Documento'
          DataBinding.FieldName = 'DOCUMENTO'
          Options.Editing = False
          Options.AutoWidthSizable = False
          Width = 112
        end
        object cxGridBoletosColumn5: TcxGridDBColumn
          Caption = 'Nota Fiscal'
          DataBinding.FieldName = 'NOTAFISCAL'
          Options.Editing = False
          Options.AutoWidthSizable = False
          Width = 78
        end
        object cxGridBoletosColumn7: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VALOR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Editing = False
          Width = 110
        end
      end
      object cxGridViewLevel1: TcxGridLevel
        GridView = cxGridBoletos
      end
    end
  end
  object dsBoletos: TDataSource
    AutoEdit = False
    DataSet = QryBoletos
    Left = 579
    Top = 172
  end
  object QryBoletos: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT *  FROM VIEW_BOLETOS'
      'WHERE'
      '--NOTAFISCAL=:NOTAFISCAL'
      'NOTAFISCAL=74'
      'ORDER BY DATA DESC,VENCIMENTO DESC, DOCUMENTO  ASC')
    Left = 576
    Top = 136
  end
  object dbCarnes: TfrxDBDataset
    UserName = 'dbCarnes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NOTAFISCAL=NOTAFISCAL'
      'DOCUMENTO=DOCUMENTO'
      'NOSSONUMERO=NOSSONUMERO'
      'DATA=DATA'
      'VENCIMENTO=VENCIMENTO'
      'VALOR=VALOR'
      'CLIENTE=CLIENTE'
      'NOME_CLIENTE=NOME_CLIENTE'
      'VENDEDOR=VENDEDOR'
      'NOME_VENDEDOR=NOME_VENDEDOR'
      'GERARBOLETO=GERARBOLETO'
      'GERARREMESSA=GERARREMESSA'
      'ENDERECO=ENDERECO'
      'NUMERO=NUMERO'
      'ENDERECO_NUMERO=ENDERECO_NUMERO'
      'CEP=CEP'
      'CPF_CNPJ=CPF_CNPJ'
      'RG_IE=RG_IE'
      'TIPO=TIPO'
      'NOME_CIDADE=NOME_CIDADE'
      'UF=UF'
      'PLN_CONTA=PLN_CONTA'
      'PLN_CONTA_NOME=PLN_CONTA_NOME')
    DataSet = QryBoletos
    BCDToCurrency = False
    Left = 576
    Top = 232
  end
  object frxReportCarnes: TfrxReport
    Version = '6.2.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40487.467288761610000000
    ReportOptions.LastChange = 43232.929804594910000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure CapaOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  //picture1.picture.loadfromfile( <ParametrosSistema."LOGO_RELA' +
        'TORIOS">   );'
      '  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 576
    Top = 296
    Datasets = <
      item
        DataSet = dbCarnes
        DataSetName = 'dbCarnes'
      end
      item
        DataSet = FrmPrincipal.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clBlack
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clBlack
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 52479
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      TitleBeforeHeader = False
      object DetelhesCarnes: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 321.259844960000000000
        ParentFont = False
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        DataSet = dbCarnes
        DataSetName = 'dbCarnes'
        RowCount = 0
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 313.700784960000000000
          Frame.Typ = []
        end
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Width = 491.338900000000000000
          Height = 309.921460000000000000
          Frame.Typ = []
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 57.472480000000020000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CLIENTE:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 56.692949999999990000
          Width = 491.338582680000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 95.047309999999990000
          Width = 491.338582680000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 76.370130000000010000
          Width = 480.000000000000000000
          Height = 18.897650000000000000
          DataField = 'NOME_CLIENTE'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbCarnes."NOME_CLIENTE"]')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 94.488250000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 132.063080000000000000
          Width = 491.338582680000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 113.385900000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'CPF_CNPJ'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbCarnes."CPF_CNPJ"]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 132.283550000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 169.858380000000000000
          Width = 491.338582680000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 151.181200000000000000
          Width = 377.952755910000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbCarnes."ENDERECO"]')
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 132.283550000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 151.181200000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbCarnes."CEP"]')
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 170.078850000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CIDADE:')
          ParentFont = False
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 207.653680000000000000
          Width = 491.338582680000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 188.976500000000000000
          Width = 377.952755910000000000
          Height = 18.897650000000000000
          DataField = 'NOME_CIDADE'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbCarnes."NOME_CIDADE"]')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 170.078850000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ESTADO:')
          ParentFont = False
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 260.567100000000000000
          Width = 491.338582680000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 188.976500000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'UF'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbCarnes."UF"]')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 340.157700000000000000
          Top = 94.488250000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RG:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 340.157700000000000000
          Top = 113.385900000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'RG_IE'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbCarnes."RG_IE"]')
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 209.653680000000000000
          Width = 480.000000000000000000
          Height = 49.133890000000000000
          DataField = 'EMP_CARNE_MSG'
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_CARNE_MSG"]')
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          AllowVectorExport = True
          Left = 268.346630000000000000
          Top = 268.126160000000000000
          Width = 129.000000000000000000
          Height = 34.015770000000000000
          BarType = bcCode39
          Expression = '<dbCarnes."DOCUMENTO">'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 21.795300000000000000
          Width = 483.779527560000000000
          Height = 15.118110240000000000
          DataField = 'EMP_ENDERECOCOMPLETO'
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_ENDERECOCOMPLETO"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 3.779530000000022000
          Width = 483.779527560000000000
          Height = 15.118120000000000000
          DataField = 'EMP_NOME'
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_NOME"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385970790000000000
          Top = 39.574830000000020000
          Width = 483.779527560000000000
          Height = 15.118110240000000000
          DataField = 'EMP_CONTATOCOMPLETO'
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_CONTATOCOMPLETO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 3.779530000000022000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DOCUMENTO:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 45.228348900000010000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VENCIMENTO:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 98.267718979999990000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 136.062994570000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DESCONTO:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 173.858270160000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ACR'#201'SCIMO')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 215.433073310000100000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'OUTROS:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 260.787570000000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR COBRADO:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 16.677167800000010000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          DataField = 'DOCUMENTO'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbCarnes."DOCUMENTO"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 62.125986689999990000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          DataField = 'VENCIMENTO'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbCarnes."VENCIMENTO"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 116.031498500000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          DataField = 'VALOR'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbCarnes."VALOR"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 3.779530000000022000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DOCUMENTO:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 45.228348900000010000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VENCIMENTO:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 98.267718979999990000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 136.062994570000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DESCONTO:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 173.858270160000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ACR'#201'SCIMO')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 215.433073310000100000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'OUTROS:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 260.787570000000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR COBRADO:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 16.677167800000010000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          DataField = 'DOCUMENTO'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbCarnes."DOCUMENTO"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724802440000000000
          Top = 61.984254410000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          DataField = 'VENCIMENTO'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbCarnes."VENCIMENTO"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724802440000000000
          Top = 116.165356770000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          DataField = 'VALOR'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbCarnes."VALOR"]')
          ParentFont = False
        end
      end
      object ContraCapa: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 325.039370080000000000
        Top = 748.346940000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 317.480314960000000000
          Frame.Typ = []
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 45.354360000000040000
          Width = 642.520100000000000000
          Height = 139.842610000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CONTRA CAPA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Capa: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 325.039370080000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'CapaOnBeforePrint'
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 317.480314960000000000
          Frame.Typ = []
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 18.897650000000000000
          Width = 86.929141180000000000
          Height = 68.031491180000000000
          AutoSize = True
          Center = True
          Frame.Typ = []
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 124.724490000000000000
          Width = 642.520100000000000000
          Height = 139.842610000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CAPA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
