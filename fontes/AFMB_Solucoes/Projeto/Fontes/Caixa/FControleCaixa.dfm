object FrmControleCaixa: TFrmControleCaixa
  Left = 189
  Top = 108
  VertScrollBar.Style = ssFlat
  Caption = 'Controle de Caixa'
  ClientHeight = 470
  ClientWidth = 1047
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
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
  PixelsPerInch = 96
  TextHeight = 15
  object PaginaCaixa: TPageControl
    Left = 0
    Top = 74
    Width = 1047
    Height = 335
    Cursor = crHandPoint
    ActivePage = Tab_Edicao
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Tab_Principal: TTabSheet
      Caption = 'Registros'
      object DbGrid_NotaFiscal: TDBGrid
        Left = 0
        Top = 0
        Width = 1039
        Height = 307
        Align = alClient
        DataSource = DS_Caixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentColor = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Calibri'
        TitleFont.Style = []
        OnDblClick = DbGrid_NotaFiscalDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'DATA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Data Emiss'#227'o:'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOCUMENTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Documento'
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Opera'#231#227'o'
            Width = 139
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HISTORICO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Hist'#243'rico'
            Width = 379
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_CREDITO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Cr'#233'dito'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_DEBITO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'D'#233'bito'
            Width = 120
            Visible = True
          end>
      end
    end
    object Tab_Edicao: TTabSheet
      Caption = 'Edi'#231#227'o'
      ImageIndex = 1
      object Label3: TLabel
        Left = 31
        Top = 45
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Caption = 'Documento'
      end
      object Label4: TLabel
        Left = 5
        Top = 19
        Width = 81
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data Documento'
      end
      object Label7: TLabel
        Left = 44
        Top = 130
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Hist'#243'rico'
      end
      object LblCredito: TLabel
        Left = 25
        Top = 161
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor Cr'#233'dito'
      end
      object LblDebito: TLabel
        Left = 27
        Top = 187
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor D'#233'bito'
      end
      object EditDocumento: TDBEdit
        Left = 90
        Top = 42
        Width = 92
        Height = 21
        DataField = 'DOCUMENTO'
        DataSource = DS_Caixa
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 90
        Top = 15
        Width = 92
        Height = 21
        DataField = 'DATA'
        DataSource = DS_Caixa
        TabOrder = 0
      end
      object DBEdit9: TDBEdit
        Left = 90
        Top = 127
        Width = 488
        Height = 21
        CharCase = ecUpperCase
        DataField = 'HISTORICO'
        DataSource = DS_Caixa
        TabOrder = 6
      end
      object EditVlrCredito: TDBEdit
        Left = 90
        Top = 156
        Width = 92
        Height = 21
        DataField = 'VLR_CREDITO'
        DataSource = DS_Caixa
        TabOrder = 7
      end
      object EditVlrDebito: TDBEdit
        Left = 90
        Top = 184
        Width = 92
        Height = 21
        DataField = 'VLR_DEBITO'
        DataSource = DS_Caixa
        TabOrder = 8
      end
      object EditNomePlanoContas: TEdit
        Left = 187
        Top = 71
        Width = 391
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        TabOrder = 3
        Text = '***'
      end
      object DCodPlano: TIDBEditDialog
        Left = 89
        Top = 70
        Width = 92
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
        TabOrder = 2
        Text = ''
        Visible = True
        OnChange = DCodPlanoChange
        EditType = etUppercase
        EmptyText = 'F8 - Pesquisar'
        FocusColor = clBtnFace
        LabelCaption = 'Plano de Contas'
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
        ButtonHint = 'Plano de Contas'
        Etched = False
        ButtonCaption = '...'
        DataField = 'PLN_CONTA'
        DataSource = DS_Caixa
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditNomePlanoContas
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO_PLANO'
        SQLdbSQL.Strings = (
          'SELECT * FROM VIEW_PLANOCONTAS'
          'WHERE'
          'CODIGO_PLANO=:CODIGO_PLANO'
          '')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM VIEW_PLANOCONTAS'
          'WHERE'
          '%WHERE%')
        CountQuery.Strings = (
          'SELECT COUNT(*) FROM VIEW_PLANOCONTAS'
          'WHERE'
          '%WHERE%')
        SearchDialogFieldList = <
          item
            FieldName = 'CODIGO_PLANO'
            WhereSyntax = 'CODIGO_PLANO'
            DisplayLabel = 'C'#211'DIGO'
            DisplayWidth = 15
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scBeginsWith
            SearchCase = scUpper
          end
          item
            FieldName = 'NOME'
            WhereSyntax = 'NOME'
            DisplayLabel = 'PLANO DE CONTA'
            DisplayWidth = 74
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'TIPO'
            WhereSyntax = 'TIPO'
            DisplayLabel = 'TIPO'
            DisplayWidth = 10
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scBeginsWith
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
      object EditNomeContaCaixa: TEdit
        Left = 187
        Top = 100
        Width = 391
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        Text = '***'
      end
      object ContaProcurar: TIDBEditDialog
        Left = 89
        Top = 99
        Width = 92
        Height = 21
        HelpKeyWord = ''
        Color = clWindow
        Enabled = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Text = '0'
        Visible = True
        EditType = etAlphaNumeric
        EmptyText = 'Tecle F8'
        FocusColor = clBtnFace
        LabelCaption = 'Conta Caixa:'
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
        DataField = 'CONTACAIXA'
        DataSource = DS_Caixa
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditNomeContaCaixa
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_CONTAS'
          'WHERE'
          'CODIGO=:CODIGO'
          'AND'
          'EMPRESA=1')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_CONTAS'
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
            SearchCase = scUpper
          end
          item
            FieldName = 'NOME'
            WhereSyntax = 'NOME'
            DisplayLabel = 'NOME DA CONTA:'
            DisplayWidth = 60
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'SALDOINICIAL'
            WhereSyntax = 'SALDOINICIAL'
            DisplayLabel = 'SALDO INICIAL:'
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
            FieldName = 'SALDOATUAL'
            WhereSyntax = 'SALDOATUAL'
            DisplayLabel = 'SALDO ATUAL:'
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
  end
  object Navegador: TDBNavigator
    Left = 0
    Top = 50
    Width = 1047
    Height = 24
    DataSource = DS_Caixa
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alTop
    Flat = True
    Hints.Strings = (
      'In'#237'cio do Arquivo'
      'Registro Anterior'
      'Pr'#243'ximo Registro'
      'Final do Arquivo')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 409
    Width = 1047
    Height = 61
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 409
    ExplicitWidth = 1047
    ExplicitHeight = 61
    inherited PanelBotoesBottom: TPanel
      Width = 1037
      Height = 55
      ExplicitWidth = 1037
      ExplicitHeight = 55
      inherited SpbAdicionar: TSpeedButton
        Height = 51
        OnClick = FrmFrameBotoes1SpbAdicionarClick
        ExplicitLeft = 52
        ExplicitHeight = 51
      end
      inherited SpbEditar: TSpeedButton
        Height = 51
        OnClick = FrmFrameBotoes1SpbEditarClick
        ExplicitLeft = 246
        ExplicitTop = 1
        ExplicitHeight = 51
      end
      inherited SpbCancelar: TSpeedButton
        Height = 51
        OnClick = FrmFrameBotoes1SpbCancelarClick
        ExplicitLeft = 352
        ExplicitHeight = 51
      end
      inherited SpbSalvar: TSpeedButton
        Height = 51
        OnClick = FrmFrameBotoes1SpbSalvarClick
        ExplicitLeft = 152
        ExplicitHeight = 51
      end
      inherited SpbExcluir: TSpeedButton
        Height = 51
        OnClick = FrmFrameBotoes1SpbExcluirClick
        ExplicitLeft = 452
        ExplicitHeight = 51
      end
      inherited SpbImprimir: TSpeedButton
        Height = 51
        OnClick = FrmFrameBotoes1SpbImprimirClick
        ExplicitLeft = 652
        ExplicitHeight = 51
      end
      inherited SpbSair: TSpeedButton
        Left = 933
        Height = 51
        OnClick = FrmFrameBotoes1SpbSairClick
        ExplicitLeft = 842
        ExplicitHeight = 51
      end
      inherited SpbExtra: TSpeedButton
        Left = 843
        Height = 51
        ExplicitLeft = 752
        ExplicitHeight = 51
      end
      inherited SpbProcurar: TSpeedButton
        Height = 51
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 546
        ExplicitTop = 1
        ExplicitHeight = 51
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 1047
    Height = 50
    Align = alTop
    Constraints.MinHeight = 50
    Color = 16024898
    ParentBackground = False
    ParentColor = False
    TabOrder = 3
    ExplicitWidth = 1047
    inherited Image3: TImage
      Width = 1047
      ExplicitWidth = 639
      ExplicitHeight = 60
    end
    inherited pnTitulo: TPanel
      Width = 1041
      Constraints.MinHeight = 27
      ExplicitWidth = 1041
      ExplicitHeight = 44
      inherited LblBarraTitulo: TLabel
        Width = 890
        Caption = 'Lan'#231'amento Caixa'
        Font.Height = -17
        ExplicitWidth = 153
        ExplicitHeight = 23
      end
      inherited Image1: TImage
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 979
        ExplicitLeft = 583
        ExplicitHeight = 31
      end
    end
  end
  object dbEditPesquisar: TIDBEditDialog
    Left = 428
    Top = 6
    Width = 65
    Height = 23
    HelpKeyWord = ''
    Color = clWindow
    Enabled = True
    TabOrder = 4
    Text = ''
    Visible = False
    LabelCaption = 'C'#243'digo da M'#225'quina'
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
    SQLdbFazBusca = True
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = ' *** '
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT * FROM CAD_MAQUINAS'
      'WHERE'
      'CODIGO=:CODIGO')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM VIEW_FIN_CAIXA_CONTAS'
      'WHERE'
      '%WHERE%'
      ''
      '')
    SearchDialogFieldList = <
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
        FieldName = 'DOCUMENTO'
        WhereSyntax = 'DOCUMENTO'
        DisplayLabel = 'DOCUMENTO:'
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'RECEITAS'
        WhereSyntax = 'RECEITAS'
        DisplayLabel = 'RECEITAS:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'DESPESAS'
        WhereSyntax = 'DESPESAS'
        DisplayLabel = 'DESPESAS:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'HISTORICO'
        WhereSyntax = 'HISTORICO'
        DisplayLabel = 'HIST'#211'RICO:'
        DisplayWidth = 45
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'CONTACAIXANOME'
        WhereSyntax = 'CONTACAIXANOME'
        DisplayLabel = 'CONTA CAIXA:'
        DisplayWidth = 25
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
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
  object DS_Caixa: TDataSource
    DataSet = db_CAIXA
    OnStateChange = DS_CaixaStateChange
    Left = 436
    Top = 58
  end
  object db_CAIXA: TFDQuery
    AfterOpen = db_CAIXAAfterOpen
    OnNewRecord = db_CAIXANewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM CTRL_CAIXA'
      'ORDER BY DATA DESC, DOCUMENTO ASC')
    Left = 500
    Top = 58
  end
end
