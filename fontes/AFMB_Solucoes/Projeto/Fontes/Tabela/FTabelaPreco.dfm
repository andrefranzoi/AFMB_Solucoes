object FrmTabelaPreco: TFrmTabelaPreco
  Left = 1
  Top = 1
  Caption = 'Tabela de Pre'#231'os'
  ClientHeight = 578
  ClientWidth = 993
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 518
    Width = 993
    Height = 60
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TabStop = True
    ExplicitTop = 518
    ExplicitWidth = 993
    inherited PanelBotoesBottom: TPanel
      Width = 983
      ExplicitWidth = 983
      inherited SpbAdicionar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbAdicionarClick
        ExplicitLeft = 89
      end
      inherited SpbEditar: TSpeedButton
        ExplicitLeft = 289
      end
      inherited SpbCancelar: TSpeedButton
        ExplicitLeft = 389
      end
      inherited SpbSalvar: TSpeedButton
        ExplicitLeft = 189
      end
      inherited SpbExcluir: TSpeedButton
        ExplicitLeft = 489
      end
      inherited SpbImprimir: TSpeedButton
        Visible = True
        OnClick = FrmFrameBotoes1SpbImprimirClick
        ExplicitLeft = 689
      end
      inherited SpbSair: TSpeedButton
        Left = 879
        OnClick = FrmFrameBotoes1SpbSairClick
        ExplicitLeft = 879
      end
      inherited SpbExtra: TSpeedButton
        Left = 789
        ExplicitLeft = 789
      end
      inherited SpbProcurar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 589
      end
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 53
    Width = 987
    Height = 141
    Align = alTop
    TabOrder = 1
    ExplicitTop = 63
    object Label1: TLabel
      Left = 85
      Top = 9
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object Label2: TLabel
      Left = 5
      Top = 9
      Width = 36
      Height = 13
      Caption = 'Tabela:'
    end
    object Label3: TLabel
      Left = 164
      Top = 9
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object EditData: TDBEdit
      Left = 85
      Top = 24
      Width = 73
      Height = 21
      Color = clBtnFace
      DataField = 'DATA'
      DataSource = ds_TabelaPreco
      Enabled = False
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 5
      Top = 24
      Width = 73
      Height = 21
      Color = clBtnFace
      DataField = 'CODIGO'
      DataSource = ds_TabelaPreco
      Enabled = False
      TabOrder = 0
    end
    object EditNome: TDBEdit
      Left = 164
      Top = 24
      Width = 355
      Height = 21
      Hint = 'Informe o nome da tabela de pre'#231'o'
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = ds_TabelaPreco
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object GroupBox1: TGroupBox
      Left = 5
      Top = 50
      Width = 514
      Height = 43
      TabOrder = 3
      object BoxGrupo: TRadioGroup
        Left = 5
        Top = 7
        Width = 160
        Height = 30
        Caption = 'Grupo de Produtos'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Todos'
          'Selecionar')
        TabOrder = 0
      end
      object EditGrupoNome: TEdit
        Left = 287
        Top = 11
        Width = 220
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        TabOrder = 2
        Text = '***'
      end
      object EditGrupo: TIDBEditDialog
        Left = 235
        Top = 11
        Width = 49
        Height = 21
        Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
        HelpKeyWord = ''
        Color = clWindow
        Enabled = True
        ShowHint = True
        TabOrder = 1
        Text = ''
        Visible = True
        LabelCaption = 'Grupo:'
        LabelPosition = lpLeftCenter
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
        DataField = 'GRUPO'
        DataSource = ds_TabelaPreco
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditGrupoNome
        SQLdbCampoRetorno = 'DESCRICAO '
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT DESCRICAO FROM CAD_GRUPO'
          'WHERE'
          'CODIGO=:CODIGO'
          '')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_GRUPO'
          'WHERE'
          '%WHERE%')
        CountQuery.Strings = (
          'SELECT COUNT(*) FROM CAD_GRUPO'
          'WHERE'
          '%WHERE%')
        SearchDialogFieldList = <
          item
            FieldName = 'CODIGO'
            WhereSyntax = 'CODIGO'
            DisplayLabel = 'C'#243'digo:'
            DisplayWidth = 10
            DisplayColumnWidth = 0
            FieldType = ftInteger
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'DESCRICAO'
            WhereSyntax = 'DESCRICAO'
            DisplayLabel = 'Nome:'
            DisplayWidth = 80
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end>
        SearchPresetList = <>
        DialogCaption = 'Pesquisa'
        DialogWidth = 0
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
    end
    object GroupBox2: TGroupBox
      Left = 5
      Top = 95
      Width = 514
      Height = 44
      TabOrder = 4
      object BoxSubgrupo: TRadioGroup
        Left = 3
        Top = 8
        Width = 147
        Height = 32
        Caption = 'Subgrupo de Produtos'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Todos'
          'Selecionar')
        TabOrder = 0
      end
      object EditSubGrupoNome: TEdit
        Left = 287
        Top = 13
        Width = 220
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        TabOrder = 2
        Text = '***'
      end
      object EditSubgrupo: TIDBEditDialog
        Left = 235
        Top = 13
        Width = 49
        Height = 21
        Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
        HelpKeyWord = ''
        Color = clWindow
        Enabled = True
        ShowHint = True
        TabOrder = 1
        Text = ''
        Visible = True
        LabelCaption = 'Subgrupo:'
        LabelPosition = lpLeftCenter
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
        DataField = 'SUBGRUPO'
        DataSource = ds_TabelaPreco
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditSubGrupoNome
        SQLdbCampoRetorno = 'DESCRICAO '
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT DESCRICAO FROM CAD_SUBGRUPO'
          'WHERE'
          'CODIGO=:CODIGO'
          '')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_SUBGRUPO'
          'WHERE'
          '%WHERE%')
        CountQuery.Strings = (
          'SELECT COUNT(*) FROM CAD_SUBGRUPO'
          'WHERE'
          '%WHERE%')
        SearchDialogFieldList = <
          item
            FieldName = 'CODIGO'
            WhereSyntax = 'CODIGO'
            DisplayLabel = 'C'#243'digo:'
            DisplayWidth = 10
            DisplayColumnWidth = 0
            FieldType = ftInteger
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'DESCRICAO'
            WhereSyntax = 'DESCRICAO'
            DisplayLabel = 'Nome:'
            DisplayWidth = 80
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end>
        SearchPresetList = <>
        DialogCaption = 'Pesquisa'
        DialogWidth = 0
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
    end
    object GroupBox7: TGroupBox
      Left = 525
      Top = 24
      Width = 366
      Height = 115
      Caption = 'Reajustar de Pre'#231'o'
      TabOrder = 5
      object LblPercentual: TLabel
        Left = 5
        Top = 62
        Width = 62
        Height = 13
        Caption = 'Percentual %'
      end
      object RDGPercentual: TDBRadioGroup
        Left = 2
        Top = 15
        Width = 362
        Height = 44
        Align = alTop
        Columns = 3
        DataField = 'AJUSTE_TIPO'
        DataSource = ds_TabelaPreco
        Items.Strings = (
          'N'#227'o'
          'Acr'#233'scimo'
          'Desconto')
        TabOrder = 0
        Values.Strings = (
          'NAO'
          'ACRESCIMO'
          'DESCONTO')
      end
      object EditPercentualx: TDBEdit
        Left = 3
        Top = 77
        Width = 76
        Height = 21
        DataField = 'AJUSTE_VALOR'
        DataSource = ds_TabelaPreco
        TabOrder = 1
      end
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 197
    Width = 993
    Height = 321
    Align = alClient
    Caption = 'Produtos da Tabela de Pre'#231'os'
    TabOrder = 2
    OnEnter = GroupBox4Enter
    ExplicitTop = 207
    ExplicitHeight = 311
    object GroupBox5: TGroupBox
      AlignWithMargins = True
      Left = 5
      Top = 34
      Width = 126
      Height = 282
      Align = alLeft
      Caption = 'Processos'
      TabOrder = 0
      ExplicitHeight = 272
      object BtnImportar: TBitBtn
        Left = 2
        Top = 15
        Width = 122
        Height = 25
        Align = alTop
        Caption = 'Gerar Tabela'
        TabOrder = 0
        OnClick = BtnImportarClick
      end
      object BtnRecalcular: TBitBtn
        Left = 2
        Top = 40
        Width = 122
        Height = 25
        Hint = 'Recalcular Pre'#231'o de Venda'
        Align = alTop
        Caption = 'Recalcular Pre'#231'o'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BtnRecalcularClick
      end
      object BtnCancelar: TBitBtn
        Left = 2
        Top = 255
        Width = 122
        Height = 25
        Cursor = crHandPoint
        Align = alBottom
        Caption = 'cancelar processo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Visible = False
        OnClick = BtnCancelarClick
        ExplicitTop = 245
      end
      object BtnExcluirTudo: TBitBtn
        Left = 2
        Top = 65
        Width = 122
        Height = 25
        Align = alTop
        Caption = 'Excluir Tudo'
        TabOrder = 2
        OnClick = BtnExcluirTudoClick
      end
    end
    object GroupBox6: TGroupBox
      AlignWithMargins = True
      Left = 137
      Top = 34
      Width = 851
      Height = 282
      Align = alClient
      Caption = 'Grade de Refer'#234'ncias (F9 - Localizar na grade)'
      TabOrder = 1
      OnEnter = GroupBox6Enter
      ExplicitHeight = 272
      object cxGrid1: TcxGrid
        Left = 2
        Top = 15
        Width = 847
        Height = 265
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 255
        object cxGridProdutos: TcxGridDBTableView
          OnKeyDown = cxGridProdutosKeyDown
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsListaProduto
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          object cxGridProdutosColumn1: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'REFERENCIA'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Options.Editing = False
            Options.AutoWidthSizable = False
            Width = 150
          end
          object cxGridProdutosColumn2: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'DESCRICAO'
            Options.Editing = False
            Width = 470
          end
          object cxGridProdutosColumn3: TcxGridDBColumn
            Caption = 'Pre'#231'o de Venda'
            DataBinding.FieldName = 'PRC_VENDA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Filtering = False
            Options.AutoWidthSizable = False
            Width = 150
          end
          object cxGridProdutosColumn5: TcxGridDBColumn
            Width = 20
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGridProdutos
        end
      end
    end
    object ProgressBar1: TProgressBar
      Left = 2
      Top = 15
      Width = 989
      Height = 16
      Align = alTop
      TabOrder = 2
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 993
    Height = 50
    Align = alTop
    Constraints.MinHeight = 50
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 3
    ExplicitWidth = 993
    inherited Image3: TImage
      Width = 993
      ExplicitWidth = 993
      ExplicitHeight = 60
    end
    inherited pnTitulo: TPanel
      Width = 987
      Constraints.MinHeight = 27
      ExplicitWidth = 987
      ExplicitHeight = 54
      inherited LblBarraTitulo: TLabel
        Width = 836
        Caption = 'Tabela de Pre'#231'os'
        ExplicitLeft = 116
        ExplicitTop = -23
        ExplicitWidth = 868
        ExplicitHeight = 25
      end
      inherited Image1: TImage
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 925
        ExplicitLeft = 937
        ExplicitHeight = 31
      end
    end
  end
  object dbProcurarProduto: TIDBEditDialog
    Left = 397
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
      'SELECT *  FROM VIEW_REFERENCIAS'
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'REFERENCIA'
        WhereSyntax = 'REFERENCIA'
        DisplayLabel = 'REFER'#202'NCIA:'
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end
      item
        FieldName = 'DESCRICAO'
        WhereSyntax = 'DESCRICAO'
        DisplayLabel = 'DESCRI'#199#195'O:'
        DisplayWidth = 45
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end
      item
        FieldName = 'GRUPO_NOME'
        WhereSyntax = 'GRUPO_NOME'
        DisplayLabel = 'GRUPO:'
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end
      item
        FieldName = 'SUBGRUPO_NOME'
        WhereSyntax = 'SUBGRUPO_NOME'
        DisplayLabel = 'SUBGRUPO:'
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end
      item
        FieldName = 'PRC_CUSTO'
        WhereSyntax = 'PRC_CUSTO'
        DisplayLabel = 'PRE'#199'O CUSTO:'
        DisplayFormat = '###,##0.0000'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VALOR_VENDA'
        WhereSyntax = 'VALOR_VENDA'
        DisplayLabel = 'PRE'#199'O VENDA:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end>
    SearchPresetList = <>
    DialogCaption = 'Pesquisa'
    DialogWidth = 900
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
  object LocalizaTabelaPreco: TIDBEditDialog
    Left = 521
    Top = 8
    Width = 70
    Height = 21
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = ''
    Visible = False
    EditType = etUppercase
    EmptyText = 'F8 - Pesquisar'
    FocusColor = clWindow
    LabelCaption = 'Tabela de Valores:'
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
    SQLdbFazBusca = True
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT * FROM  TPRECOSERVICO'
      'WHERE'
      'CODIGO=:CODIGO'
      '')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM TPRECO'
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'C'#211'DIGO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'DATA'
        WhereSyntax = 'DATA'
        DisplayLabel = 'DATA:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'NOME'
        WhereSyntax = 'NOME'
        DisplayLabel = 'NOME:'
        DisplayWidth = 80
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end>
    SearchPresetList = <>
    DialogCaption = 'Pesquisa'
    DialogWidth = 0
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
  object ds_TabelaPreco: TDataSource
    DataSet = db_TabelaPreco
    Left = 252
    Top = 360
  end
  object db_ReferenciasImportar: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_PRODUTOS'
      'ORDER BY CODIGO'
      '')
    Left = 396
    Top = 150
  end
  object ds_ParametrosDescontos: TDataSource
    DataSet = DB_ParametrosDescontos
    Left = 940
    Top = 102
  end
  object DB_ParametrosDescontos: TFDQuery
    BeforePost = DB_ParametrosDescontosBeforePost
    MasterSource = ds_TabelaPreco
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM TPRECO_DESCONTOS'
      'WHERE'
      ''
      'CODIGO=:CODIGO'
      ''
      'ORDER BY QTDE1_PARAM, QTDE2_PARAM, DESCONTO'
      '')
    Left = 936
    Top = 48
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object DB_ParametrosDescontosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object DB_ParametrosDescontosQTDE1_PARAM: TIntegerField
      FieldName = 'QTDE1_PARAM'
    end
    object DB_ParametrosDescontosQTDE2_PARAM: TIntegerField
      FieldName = 'QTDE2_PARAM'
    end
    object DB_ParametrosDescontosDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00%'
      EditFormat = '###,##0.00'
    end
    object DB_ParametrosDescontosCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      DisplayFormat = '###,##0.00%'
      EditFormat = '###,##0.00'
    end
  end
  object db_TabelaReferenciaDeletar: TFDQuery
    BeforePost = QryListaProdutoBeforePost
    MasterSource = ds_TabelaPreco
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'DELETE FROM TPRECO_REFERENCIAS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 540
    Top = 150
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object frx_dsTabela: TfrxDBDataset
    UserName = 'dbsTabela'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'ATIVO=ATIVO'
      'DATA=DATA'
      'DATAREVISAO=DATAREVISAO'
      'NOME=NOME'
      'PRAZO_MEDIO=PRAZO_MEDIO'
      'VALOR_MIN=VALOR_MIN'
      'GRUPO=GRUPO'
      'SUBGRUPO=SUBGRUPO'
      'COLECAO=COLECAO'
      'AJUSTE_TIPO=AJUSTE_TIPO'
      'AJUSTE_VALOR=AJUSTE_VALOR'
      'MOEDA=MOEDA')
    DataSet = db_TabelaPreco
    BCDToCurrency = False
    Left = 640
    Top = 384
  end
  object frx_dsTabelaReferencias: TfrxDBDataset
    UserName = 'dbsTabelaReferencias'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DATA_ATUALIZADA=DATA_ATUALIZADA'
      'REFERENCIA=REFERENCIA'
      'DESCRICAO=DESCRICAO'
      'PRC_VENDA=PRC_VENDA')
    DataSet = db_TabelaDetalhes
    BCDToCurrency = False
    Left = 752
    Top = 376
  end
  object frx_TabelaPrecos: TfrxReport
    Version = '6.2.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40905.983237453700000000
    ReportOptions.LastChange = 40924.460993206000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 640
    Top = 296
    Datasets = <
      item
        DataSet = frx_dsTabela
        DataSetName = 'dbsTabela'
      end
      item
        DataSet = frx_dsTabelaReferencias
        DataSetName = 'dbsTabelaReferencias'
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
      Columns = 2
      ColumnWidth = 95.000000000000000000
      ColumnPositions.Strings = (
        '0'
        '95')
      Frame.Typ = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 13.228346460000000000
        ParentFont = False
        Top = 181.417440000000000000
        Width = 359.055350000000000000
        DataSet = frx_dsTabelaReferencias
        DataSetName = 'dbsTabelaReferencias'
        RowCount = 0
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 84.283464570000000000
          Width = 187.504020000000000000
          Height = 12.094488190000000000
          DataField = 'DESCRICAO'
          DataSet = frx_dsTabelaReferencias
          DataSetName = 'dbsTabelaReferencias'
          DisplayFormat.FormatStr = '####,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbsTabelaReferencias."DESCRICAO"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Width = 56.440940000000000000
          Height = 12.094488190000000000
          DataField = 'REFERENCIA'
          DataSet = frx_dsTabelaReferencias
          DataSetName = 'dbsTabelaReferencias'
          DisplayFormat.FormatStr = '####,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbsTabelaReferencias."REFERENCIA"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 296.464566930000000000
          Width = 54.803149610000000000
          Height = 12.094488190000000000
          DataField = 'PRC_VENDA'
          DataSet = frx_dsTabelaReferencias
          DataSetName = 'dbsTabelaReferencias'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbsTabelaReferencias."PRC_VENDA"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Align = baLeft
          AllowVectorExport = True
          Height = 13.228346460000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 3.779530000000022000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DataField = 'SRV_EMPRESA'
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_EMPRESA"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 536.693259999999900000
          Top = 3.779530000000022000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DataField = 'SRV_SITE'
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_SITE"]')
          ParentFont = False
        end
        object Line15: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 1.889763780000010000
          Width = 718.110700000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 102.047302680000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 84.267716540000000000
          Top = 84.661353860000000000
          Width = 66.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DESCRI'#199#195'O:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 84.661353860000000000
          Width = 71.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'REFER'#202'NCIA:')
          ParentFont = False
        end
        object MemoTitulo: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000001000
          Width = 550.464750000000000000
          Height = 52.913388270000000000
          DataSet = frx_dsTabela
          DataSetName = 'dbsTabela'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Georgia'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'TABELA DE PRE'#199'OS: [dbsTabela."NOME"]')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 3.779530000000001000
          Width = 162.511750000000000000
          Height = 52.913388270000000000
          Fill.BackColor = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 566.149603860000000000
          Top = 5.669293780000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 567.149603860000000000
          Top = 20.409451260000000000
          Width = 36.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 567.149603860000000000
          Top = 35.527561500000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 632.299215040000000000
          Top = 5.669293780000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 632.299215040000000000
          Top = 20.409451260000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 632.299215040000000000
          Top = 35.527561500000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 273.787386930000000000
          Top = 84.661417320000000000
          Width = 77.480329610000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PRE'#199'O VENDA:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 22.677180000000000000
          Width = 381.732405510000000000
          Height = 15.118112680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'EMPRESA: [frx_dsEmpresa."EMP_NOME_FANTASIA"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 102.047310000000000000
          Width = 718.110700000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 444.882128980000000000
          Top = 84.661417320000000000
          Width = 66.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DESCRI'#199#195'O:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 364.393940000000000000
          Top = 84.661417320000000000
          Width = 71.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'REFER'#202'NCIA:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 634.740389370000000000
          Top = 84.661417320000000000
          Width = 77.480329610000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PRE'#199'O VENDA:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 359.055118110000000000
          Top = 56.929190000000010000
          Height = 44.976377950000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          Align = baLeft
          AllowVectorExport = True
          Top = 56.692949999999990000
          Height = 44.976377950000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object Line2: TfrxLineView
        Align = baRight
        AllowVectorExport = True
        Left = 718.110700000000000000
        Top = 181.417440000000000000
        Height = 13.228346460000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line7: TfrxLineView
        Align = baRight
        AllowVectorExport = True
        Left = 718.110700000000000000
        Top = 75.590600000000000000
        Height = 44.976377950000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
    end
  end
  object db_TabelaDetalhes: TFDQuery
    MasterSource = ds_TabelaPreco
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM TPRECO_REFERENCIAS'
      'WHERE'
      'CODIGO=:CODIGO'
      'ORDER BY REFERENCIA')
    Left = 748
    Top = 310
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 21
      end>
  end
  object QryListaProduto: TFDQuery
    AfterOpen = QryListaProdutoAfterOpen
    BeforePost = QryListaProdutoBeforePost
    AfterScroll = QryListaProdutoAfterScroll
    MasterSource = ds_TabelaPreco
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM TPRECO_REFERENCIAS '
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 352
    Top = 312
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsListaProduto: TDataSource
    DataSet = QryListaProduto
    Left = 353
    Top = 366
  end
  object db_TabelaPreco: TFDQuery
    OnNewRecord = db_TabelaPrecoNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM TPRECO')
    Left = 248
    Top = 306
  end
end
