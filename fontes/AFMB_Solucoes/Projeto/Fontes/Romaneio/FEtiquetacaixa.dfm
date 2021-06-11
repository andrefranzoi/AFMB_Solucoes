object FrmEtiquetacaixa: TFrmEtiquetacaixa
  Left = 1
  Top = 1
  BorderStyle = bsDialog
  Caption = 'Etiqueta de Volumes'
  ClientHeight = 566
  ClientWidth = 1026
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -15
  Font.Name = 'Calibri'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 18
  object DBGrid1: TDBGrid
    Left = 0
    Top = 50
    Width = 1026
    Height = 434
    Align = alClient
    DataSource = ds_notasfiscais
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -15
    TitleFont.Name = 'Calibri'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOTAFISCAL'
        Title.Caption = 'NOTA FISCAL:'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'DATA:'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE_NOME'
        Title.Caption = 'CLIENTE:'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 434
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_TOTAL'
        Title.Caption = 'VALOR DA NF:'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRANSPORTADORA_VOLUME'
        Title.Caption = 'VOLUMES:'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRANSPORTADORA_NOME'
        Title.Caption = 'TRANSPORTADORA:'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 151
        Visible = True
      end>
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 1026
    Height = 50
    Align = alTop
    Constraints.MinHeight = 50
    Color = 16024898
    ParentBackground = False
    ParentColor = False
    TabOrder = 3
    ExplicitWidth = 1026
    inherited Image3: TImage
      Width = 1026
      ExplicitWidth = 826
    end
    inherited pnTitulo: TPanel
      Width = 1020
      Constraints.MinHeight = 27
      ExplicitWidth = 1020
      ExplicitHeight = 27
      inherited LblBarraTitulo: TLabel
        Width = 869
        Caption = 'Etiqueta de Volumes'
        ExplicitWidth = 210
        ExplicitHeight = 25
      end
      inherited Image1: TImage
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 958
        ExplicitLeft = 770
        ExplicitHeight = 31
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 525
    Width = 1026
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BtnImprimir: TBitBtn
      Left = 11
      Top = 6
      Width = 90
      Height = 25
      Caption = 'Imprimir...'
      TabOrder = 0
      OnClick = BtnImprimirClick
    end
    object BtnProcurar: TBitBtn
      Left = 111
      Top = 6
      Width = 90
      Height = 25
      Caption = '&Procurar - F8'
      TabOrder = 1
      OnClick = BtnProcurarClick
    end
    object BtnSair: TBitBtn
      Left = 211
      Top = 6
      Width = 90
      Height = 25
      Caption = 'Sair'
      TabOrder = 2
      OnClick = BtnSairClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 484
    Width = 1026
    Height = 41
    Align = alBottom
    TabOrder = 1
    object EditQtde: TLabeledEdit
      Left = 88
      Top = 7
      Width = 70
      Height = 26
      Alignment = taCenter
      EditLabel.Width = 45
      EditLabel.Height = 18
      EditLabel.Caption = 'C'#243'pias:'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clBlack
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Calibri'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      LabelPosition = lpLeft
      NumbersOnly = True
      TabOrder = 0
      Text = '1'
    end
  end
  object dbProcurarNFe: TIDBEditDialog
    Left = 176
    Top = 6
    Width = 65
    Height = 22
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
    LabelCaption = 'Transportadora:'
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
    ButtonHint = 'Transportadora:'
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
      'SELECT * FROM VIEW_NOTAFISCAL'
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'PEDIDO'
        WhereSyntax = 'PEDIDO'
        DisplayLabel = 'PEDIDO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'NOTAFISCAL'
        WhereSyntax = 'NOTAFISCAL'
        DisplayLabel = 'NOTA FISCAL:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'EMISSAO'
        WhereSyntax = 'EMISSAO'
        DisplayLabel = 'EMISS'#195'O:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'CFOP'
        WhereSyntax = 'CFOP'
        DisplayLabel = 'CFOP:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'IMPRESSO'
        WhereSyntax = 'IMPRESSO'
        DisplayLabel = 'IMPRESSO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'OPERACAO'
        WhereSyntax = 'OPERACAO'
        DisplayLabel = 'OPERA'#199#195'O:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'CLIENTE_NOME'
        WhereSyntax = 'CLIENTE_NOME'
        DisplayLabel = 'CLIENTE:'
        DisplayWidth = 30
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'NF_QTDE_PRODUTOS'
        WhereSyntax = 'NF_QTDE_PRODUTOS'
        DisplayLabel = 'QTDE PRODUTOS:'
        DisplayFormat = '###,##0'
        DisplayWidth = 16
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'NF_VALOR_PRODUTOS'
        WhereSyntax = 'NF_VALOR_PRODUTOS'
        DisplayLabel = 'VALOR PRODUTOS:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 18
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'NF_VALOR_TOTAL'
        WhereSyntax = 'NF_VALOR_TOTAL'
        DisplayLabel = 'VALOR NF:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 16
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
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
  object db_notasfiscais: TFDQuery
    AfterOpen = db_notasfiscaisAfterOpen
    AfterScroll = db_notasfiscaisAfterScroll
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  '
      '    DISTINCT(EMPRESA) AS EMPRESA,'
      '    NOTAFISCAL,'
      '    CLIENTE,'
      '    CLIENTE_NOME,'
      '    DATA,'
      '    TRANSPORTADORA_NOME,'
      '    TRANSPORTADORA_VOLUME,'
      
        '    '#39'('#39'||CAST(CLIENTE_DDD AS VARCHAR(10))||'#39') '#39'||  CLIENTE_FONE ' +
        'AS CLIENTE_FONE,'
      '    VLR_TOTAL'
      'FROM VIEW_ROMANEIO'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'ORDER BY NOTAFISCAL, CLIENTE_NOME')
    Left = 152
    Top = 88
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object ds_notasfiscais: TDataSource
    DataSet = db_notasfiscais
    Left = 40
    Top = 88
  end
  object db_clientes: TFDQuery
    MasterSource = ds_notasfiscais
    MasterFields = 'EMPRESA;NOTAFISCAL'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT DISTINCT * FROM VIEW_ROMANEIO'
      ''
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'NOTAFISCAL=:NOTAFISCAL')
    Left = 152
    Top = 168
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end
      item
        Name = 'NOTAFISCAL'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
  end
  object dbfp_notasfiscais: TfrxDBDataset
    UserName = 'db_notasfiscais'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'NOTAFISCAL=NOTAFISCAL'
      'CLIENTE=CLIENTE'
      'CLIENTE_NOME=CLIENTE_NOME'
      'DATA=DATA'
      'TRANSPORTADORA_NOME=TRANSPORTADORA_NOME'
      'TRANSPORTADORA_VOLUME=TRANSPORTADORA_VOLUME'
      'CLIENTE_FONE=CLIENTE_FONE'
      'VLR_TOTAL=VLR_TOTAL')
    DataSet = db_notasfiscais
    BCDToCurrency = False
    Left = 304
    Top = 88
  end
  object dbfp_clientes: TfrxDBDataset
    UserName = 'db_clientes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'ROMANEIO=ROMANEIO'
      'DATA=DATA'
      'DATA_ENTRADASAIDA=DATA_ENTRADASAIDA'
      'NOTAFISCAL=NOTAFISCAL'
      'OPERACAO=OPERACAO'
      'VLR_TOTAL=VLR_TOTAL'
      'TRANSPORTADORA=TRANSPORTADORA'
      'TRANSPORTADORA_NOME=TRANSPORTADORA_NOME'
      'TRANSPORTADORA_CNPJ=TRANSPORTADORA_CNPJ'
      'TRANSPORTADORA_IE=TRANSPORTADORA_IE'
      'TRANSPORTADORA_ENDERECO=TRANSPORTADORA_ENDERECO'
      'TRANSPORTADORA_BAIRRO=TRANSPORTADORA_BAIRRO'
      'TRANSPORTADORA_CEP=TRANSPORTADORA_CEP'
      'TRANSPORTADORA_NOMECIDADE=TRANSPORTADORA_NOMECIDADE'
      'TRANSPORTADORA_UF=TRANSPORTADORA_UF'
      'TRANSPORTADORA_DDD=TRANSPORTADORA_DDD'
      'TRANSPORTADORA_FONE=TRANSPORTADORA_FONE'
      'TRANSPORTADORA_FAX=TRANSPORTADORA_FAX'
      'TRANSPORTADORA_CONTATO=TRANSPORTADORA_CONTATO'
      'TRANSPORTADORA_EMAIL=TRANSPORTADORA_EMAIL'
      'TRANSPORTADORA_VOLUME=TRANSPORTADORA_VOLUME'
      'TRANSPORTADORA_FRETE=TRANSPORTADORA_FRETE'
      'TRANSPORTADORA_FRETE_STATUS=TRANSPORTADORA_FRETE_STATUS'
      'CLIENTE=CLIENTE'
      'CLIENTE_NOME=CLIENTE_NOME'
      'CLIENTE_CNPJ=CLIENTE_CNPJ'
      'CLIENTE_IE=CLIENTE_IE'
      'CLIENTE_ENDERECO=CLIENTE_ENDERECO'
      'CLIENTE_BAIRRO=CLIENTE_BAIRRO'
      'CLIENTE_CEP=CLIENTE_CEP'
      'CLIENTE_NOMECIDADE=CLIENTE_NOMECIDADE'
      'CLIENTE_UF=CLIENTE_UF'
      'CLIENTE_DDD=CLIENTE_DDD'
      'CLIENTE_FONE=CLIENTE_FONE'
      'CLIENTE_FAX=CLIENTE_FAX'
      'CLIENTE_CONTATO=CLIENTE_CONTATO'
      'CLIENTE_EMAIL=CLIENTE_EMAIL'
      'VENDEDOR=VENDEDOR'
      'VENDEDOR_NOME=VENDEDOR_NOME')
    DataSet = db_clientes
    BCDToCurrency = False
    Left = 304
    Top = 168
  end
  object frx_Romeio: TfrxReport
    Version = '6.2.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40905.983237453700000000
    ReportOptions.LastChange = 40912.775777731500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 312
    Top = 264
    Datasets = <
      item
        DataSet = dbfp_clientes
        DataSetName = 'db_clientes'
      end
      item
        DataSet = dbfp_notasfiscais
        DataSetName = 'db_notasfiscais'
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
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
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
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Height = 370.393940000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559055120000000000
          Top = 46.488188980000000000
          Width = 532.913385830000000000
          Height = 22.677165350000000000
          DataField = 'CLIENTE_NOME'
          DataSet = dbfp_clientes
          DataSetName = 'db_clientes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[db_clientes."CLIENTE_NOME"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559055120000000000
          Top = 71.527520000000000000
          Width = 532.913385830000000000
          Height = 22.677165350000000000
          DataField = 'CLIENTE_ENDERECO'
          DataSet = dbfp_clientes
          DataSetName = 'db_clientes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[db_clientes."CLIENTE_ENDERECO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559055120000000000
          Top = 96.763760000000000000
          Width = 532.913385830000000000
          Height = 22.677165350000000000
          DataSet = dbfp_clientes
          DataSetName = 'db_clientes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[db_clientes."CLIENTE_BAIRRO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559055120000000000
          Top = 149.236240000000000000
          Width = 140.944960000000000000
          Height = 22.677165350000000000
          DataSet = dbfp_clientes
          DataSetName = 'db_clientes'
          DisplayFormat.FormatStr = '#####-###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[db_clientes."CLIENTE_CEP"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559055120000000000
          Top = 122.543290000000000000
          Width = 532.913385830000000000
          Height = 22.677165350000000000
          DataSet = dbfp_clientes
          DataSetName = 'db_clientes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[db_clientes."CLIENTE_NOMECIDADE"]/[db_clientes."CLIENTE_UF"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 46.488188980000000000
          Width = 140.385900000000000000
          Height = 22.677165350000000000
          DataSet = dbfp_clientes
          DataSetName = 'db_clientes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '([db_clientes."CLIENTE_DDD"]) [db_clientes."CLIENTE_FONE"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559055120000000000
          Top = 7.559055118110240000
          Width = 187.401670000000000000
          Height = 26.456702680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'DESTINAT'#193'RIO:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 252.787570000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Color = clSilver
          Frame.Typ = [ftTop]
        end
        object BarCode1: TfrxBarCodeView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Top = 186.976500000000000000
          Width = 109.000000000000000000
          Height = 52.913420000000000000
          BarType = bcCode93Extended
          Expression = '<db_clientes."NOTAFISCAL">'
          Frame.Typ = []
          Rotation = 0
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 277.913385830000000000
          Width = 532.913385830000000000
          Height = 15.118110240000000000
          DataField = 'EMP_NOME'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_NOME"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 295.094620000000000000
          Width = 532.913385830000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_ENDERECO"], N'#186': [frx_dsEmpresa."EMP_NUMERO"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 313.330860000000000000
          Width = 532.913385830000000000
          Height = 15.118110240000000000
          DataField = 'EMP_BAIRRO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_BAIRRO"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 348.803340000000000000
          Width = 140.944960000000000000
          Height = 15.118110240000000000
          DataField = 'EMP_CEP'
          DisplayFormat.FormatStr = '#####-###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_CEP"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 331.110390000000000000
          Width = 532.913385830000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_CIDADE"]/[frx_dsEmpresa."EMP_UF"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590914880000000000
          Top = 277.913385830000000000
          Width = 140.385900000000000000
          Height = 15.118110240000000000
          DataField = 'EMP_FONE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_FONE"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 257.126160000000000000
          Width = 100.472480000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'REMETENTE:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 372.614410000000000000
          Top = 7.559055120000000000
          Width = 215.976500000000000000
          Height = 22.677165350000000000
          DataSet = dbfp_clientes
          DataSetName = 'db_clientes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'NOTA FISCAL: [db_clientes."NOTAFISCAL"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 192.756030000000000000
          Width = 215.976500000000000000
          Height = 22.677165350000000000
          DataSet = dbfp_clientes
          DataSetName = 'db_clientes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'QTDE VOLUMES: [db_clientes."TRANSPORTADORA_VOLUME"]')
          ParentFont = False
        end
      end
    end
  end
end
