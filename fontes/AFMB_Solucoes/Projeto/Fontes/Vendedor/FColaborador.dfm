object FrmColaborador: TFrmColaborador
  Left = 0
  Top = 1
  HelpContext = 9
  BorderStyle = bsDialog
  Caption = 'Cadastro de Colaboradores'
  ClientHeight = 573
  ClientWidth = 995
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 463
    Width = 995
    Height = 50
    Align = alClient
    Caption = 'Observa'#231#245'es'
    TabOrder = 1
    object DBMemo1: TDBMemo
      Left = 2
      Top = 15
      Width = 991
      Height = 33
      Align = alClient
      DataField = 'OBSERVACAO'
      DataSource = DS_Vendedor
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 513
    Width = 995
    Height = 60
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 513
    ExplicitWidth = 995
    inherited PanelBotoesBottom: TPanel
      Width = 985
      ExplicitWidth = 985
      inherited SpbAdicionar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbAdicionarClick
        ExplicitLeft = 91
      end
      inherited SpbEditar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbEditarClick
        ExplicitLeft = 291
      end
      inherited SpbCancelar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbCancelarClick
        ExplicitLeft = 391
      end
      inherited SpbSalvar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSalvarClick
        ExplicitLeft = 191
      end
      inherited SpbExcluir: TSpeedButton
        OnClick = FrmFrameBotoes1SpbExcluirClick
        ExplicitLeft = 491
      end
      inherited SpbImprimir: TSpeedButton
        ExplicitLeft = 691
      end
      inherited SpbSair: TSpeedButton
        Left = 881
        OnClick = FrmFrameBotoes1SpbSairClick
        ExplicitLeft = 881
      end
      inherited SpbExtra: TSpeedButton
        Left = 791
        ExplicitLeft = 791
      end
      inherited SpbProcurar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 591
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 995
    Height = 50
    Align = alTop
    Constraints.MinHeight = 36
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 3
    ExplicitWidth = 995
    inherited Image3: TImage
      Width = 995
      ExplicitTop = 36
      ExplicitWidth = 995
      ExplicitHeight = 36
    end
    inherited pnTitulo: TPanel
      Width = 989
      Constraints.MinHeight = 30
      ExplicitWidth = 989
      ExplicitHeight = 44
      inherited LblBarraTitulo: TLabel
        Width = 838
        Caption = 'Cadastro de Colaboradores'
        ExplicitWidth = 157
        ExplicitHeight = 28
      end
      inherited Image1: TImage
        ExplicitLeft = 939
        ExplicitHeight = 34
      end
      inherited Image2: TImage
        Left = 927
        ExplicitLeft = 939
        ExplicitHeight = 34
      end
    end
  end
  object dbEditPesquisar: TIDBEditDialog
    Left = 624
    Top = 9
    Width = 75
    Height = 21
    Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    ShowHint = True
    TabOrder = 4
    Text = ''
    Visible = False
    LabelCaption = 'Cole'#231#227'o:'
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
      'SELECT NOME FROM CAD_COLECAO'
      'WHERE'
      'CODIGO=:CODIGO'
      '')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'TIPO IN ('#39'VENDEDOR'#39','#39'REPRESENTANTE'#39','#39'EMPRESA'#39','#39'FUNCIONARIO'#39')'
      'AND'
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
        FieldName = 'NOME'
        WhereSyntax = 'NOME'
        DisplayLabel = 'NOME:'
        DisplayWidth = 90
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
  object GroupBox4: TGroupBox
    Left = 0
    Top = 50
    Width = 995
    Height = 413
    Align = alTop
    TabOrder = 0
    object Label6: TLabel
      Left = 542
      Top = 323
      Width = 62
      Height = 13
      Caption = 'Comiss'#227'o (%)'
      FocusControl = DBEdit1
    end
    object Label4: TLabel
      Left = 619
      Top = 323
      Width = 116
      Height = 13
      Caption = 'Sal'#225'rio (campo opcional)'
      FocusControl = DBEdit4
    end
    object Label68: TLabel
      Left = 5
      Top = 280
      Width = 88
      Height = 15
      Caption = 'E-mail (contato)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label69: TLabel
      Left = 384
      Top = 280
      Width = 90
      Height = 15
      Caption = 'Site (home page)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 5
      Top = 56
      Width = 70
      Height = 15
      Caption = 'Raz'#227'o Social'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 5
      Top = 95
      Width = 82
      Height = 15
      Caption = 'Nome Fantasia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label70: TLabel
      Left = 383
      Top = 14
      Width = 124
      Height = 15
      Caption = 'Incri'#231#227'o Estadual (I.E.)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label40: TLabel
      Left = 238
      Top = 239
      Width = 43
      Height = 15
      Caption = 'Contato'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label33: TLabel
      Left = 5
      Top = 239
      Width = 110
      Height = 15
      Caption = 'Fone (DDD+N'#250'mero)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label43: TLabel
      Left = 120
      Top = 239
      Width = 104
      Height = 15
      Caption = 'Cel. (DDD+N'#250'mero)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 3
      Top = 14
      Width = 41
      Height = 15
      Caption = 'C'#243'digo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 245
      Top = 14
      Width = 50
      Height = 15
      Caption = 'CNPJ/CPF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 542
      Top = 339
      Width = 65
      Height = 21
      CharCase = ecUpperCase
      DataField = 'COMISSAO'
      DataSource = DS_Vendedor
      TabOrder = 19
    end
    object DBEdit4: TDBEdit
      Left = 619
      Top = 339
      Width = 124
      Height = 21
      CharCase = ecUpperCase
      DataField = 'SALARIO'
      DataSource = DS_Vendedor
      TabOrder = 20
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 749
      Top = 14
      Width = 214
      Height = 393
      Hint = 'informe se o(a) vendedor(a) deve receber comiss'#227'o nas vendas'
      Caption = 'Classifica'#231#227'o'
      DataField = 'TIPO'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Items.Strings = (
        'Vendedor(a)'
        'Representante'
        'Operador(a) de Caixa'
        'Televendas')
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Values.Strings = (
        'VENDEDOR'
        'REPRESENTANTE'
        'OPERADORCAIXA'
        'TELEVENDA')
    end
    object DBEdit47: TDBEdit
      Left = 44
      Top = 254
      Width = 73
      Height = 23
      DataField = 'FONE'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object DBEdit50: TDBEdit
      Left = 5
      Top = 295
      Width = 354
      Height = 23
      TabStop = False
      CharCase = ecLowerCase
      DataField = 'EMAIL'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object DBEdit51: TDBEdit
      Left = 384
      Top = 295
      Width = 359
      Height = 23
      CharCase = ecLowerCase
      DataField = 'SITE'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object EdRazaoSocial: TDBEdit
      Left = 5
      Top = 72
      Width = 738
      Height = 23
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object EdFantasia: TDBEdit
      Left = 5
      Top = 112
      Width = 738
      Height = 23
      CharCase = ecUpperCase
      DataField = 'NOME_FANTASIA'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object EdRGInscrEst: TDBEdit
      Left = 383
      Top = 32
      Width = 140
      Height = 23
      CharCase = ecUpperCase
      DataField = 'RG_IE'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit59: TDBEdit
      Left = 238
      Top = 254
      Width = 505
      Height = 23
      DataField = 'CONTATO'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object EditcodRegiao2: TIDBEditDialog
      Left = 9
      Top = 338
      Width = 56
      Height = 23
      HelpKeyWord = ''
      Color = clWindow
      Enabled = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      Text = ''
      Visible = True
      LabelCaption = 'Regi'#227'o'
      LabelAlwaysEnabled = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -12
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      Version = '5.0.0.0'
      ButtonStyle = bsButton
      ButtonWidth = 16
      ButtonHint = 'Procurar...'
      Etched = False
      ButtonCaption = '...'
      DataField = 'REGIAO'
      DataSource = DS_Vendedor
      ButtonKeyClickBtn = 119
      SQLdbFazBusca = True
      SQLdbFocusControl = EditRegiao2
      SQLdbCampoRetorno = 'NOME'
      SQLdbRetornoVazio = '***'
      SQLdbCampoParametro = 'CODIGO'
      SQLdbSQL.Strings = (
        'SELECT * FROM CAD_REGIOES'
        'WHERE'
        'CODIGO=:CODIGO')
      SQLdbMaxLenght = 10
      SearchQuery.Strings = (
        'SELECT * FROM CAD_REGIOES'
        'WHERE'
        '%WHERE%')
      CountQuery.Strings = (
        'SELECT COUNT(*) FROM CAD_REGIOES'
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
          FieldName = 'NOME'
          WhereSyntax = 'NOME'
          DisplayLabel = 'Nome:'
          DisplayWidth = 90
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
    object EditRegiao2: TEdit
      Left = 67
      Top = 338
      Width = 173
      Height = 23
      Color = clBtnFace
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      Text = '***'
    end
    object DBEdit24: TDBEdit
      Left = 5
      Top = 254
      Width = 38
      Height = 23
      DataField = 'DDD_FONE'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object DBEdit57: TDBEdit
      Left = 159
      Top = 254
      Width = 73
      Height = 23
      DataField = 'CELULAR'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object EditTransportadora: TIDBEditDialog
      Left = 248
      Top = 338
      Width = 70
      Height = 23
      HelpKeyWord = ''
      Color = clWindow
      Enabled = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      Text = ''
      Visible = True
      EditType = etAlphaNumeric
      EmptyText = 'Tecle F8'
      FocusColor = clBtnFace
      LabelCaption = 'Transportadora:'
      LabelAlwaysEnabled = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -12
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      Version = '5.0.0.0'
      ButtonStyle = bsButton
      ButtonWidth = 16
      ButtonHint = 'Transportadora:'
      Etched = False
      ButtonCaption = '...'
      DataField = 'TRANSPORTADORA'
      DataSource = DS_Vendedor
      ButtonKeyClickBtn = 119
      SQLdbFazBusca = True
      SQLdbFocusControl = EditNomeTrasportadora
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
        'SELECT * FROM CAD_CLIENTES'
        'WHERE'
        'TIPO='#39'TRANSPORTADORA'#39
        'AND'
        '%WHERE%')
      CountQuery.Strings = (
        'SELECT count(*) FROM CAD_CLIENTES'
        'WHERE'
        'TIPO='#39'TRANSPORTADORA'#39
        'AND'
        '%WHERE%')
      SearchDialogFieldList = <
        item
          FieldName = 'CODIGO'
          WhereSyntax = 'CODIGO'
          DisplayLabel = 'C'#243'digo'
          DisplayWidth = 10
          DisplayColumnWidth = 0
          FieldType = ftInteger
          Search = False
          EmptyOperation = eoNull
          DefaultComparison = scEqual
          SearchCase = scMixed
        end
        item
          FieldName = 'NOME'
          WhereSyntax = 'NOME'
          DisplayLabel = 'Nome:'
          DisplayWidth = 90
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
    object EditNomeTrasportadora: TEdit
      Left = 319
      Top = 338
      Width = 192
      Height = 23
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 18
      Text = '***'
    end
    object DBEdit9: TDBEdit
      Left = 3
      Top = 32
      Width = 83
      Height = 23
      CharCase = ecUpperCase
      Color = clBtnFace
      DataField = 'CODIGO'
      DataSource = DS_Vendedor
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object EditConta_Credito: TIDBEditDialog
      Left = 9
      Top = 386
      Width = 92
      Height = 21
      HelpKeyWord = ''
      CharCase = ecUpperCase
      Color = clWindow
      Enabled = True
      TabOrder = 21
      Text = '0'
      Visible = True
      EditType = etNumeric
      EmptyText = 'F8 - Pesquisar'
      LabelCaption = 'Conta Corrente (C/C banc'#225'ria)'
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
      DataField = 'CONTACORRENTE'
      DataSource = DS_Vendedor
      ButtonKeyClickBtn = 119
      SQLdbFazBusca = True
      SQLdbFocusControl = EditContaCorrente
      SQLdbCampoRetorno = 'DADOS_CONTA'
      SQLdbRetornoVazio = ' *** '
      SQLdbCampoParametro = 'CODIGO'
      SQLdbSQL.Strings = (
        'SELECT DADOS_CONTA   FROM VIEW_CONTA_CORRENTE_DADOS'
        'WHERE'
        'CODIGO=:CODIGO'
        '')
      SQLdbMaxLenght = 10
      SearchQuery.Strings = (
        'SELECT * FROM VIEW_CONTA_CORRENTE_DADOS'
        'WHERE'
        '%WHERE%')
      CountQuery.Strings = (
        'SELECT count(*) FROM VIEW_CONTA_CORRENTE_DADOS'
        'WHERE'
        '%WHERE%')
      SearchDialogFieldList = <
        item
          FieldName = 'DADOS_CONTA'
          WhereSyntax = 'DADOS_CONTA'
          DisplayLabel = 'CONTA CORRENTE:'
          DisplayWidth = 100
          DisplayColumnWidth = 0
          FieldType = ftString
          Search = True
          EmptyOperation = eoNull
          DefaultComparison = scBeginsWith
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
    object EditContaCorrente: TEdit
      Left = 108
      Top = 386
      Width = 635
      Height = 19
      CharCase = ecUpperCase
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
      Text = '***'
    end
    object rgTipo: TDBRadioGroup
      Left = 92
      Top = 14
      Width = 148
      Height = 41
      Caption = 'Tipo de Cadastro'
      Columns = 2
      DataField = 'CLASSIFICACAO'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      Items.Strings = (
        'Juridica'
        'F'#237'sica')
      ParentFont = False
      TabOrder = 1
      Values.Strings = (
        'J'
        'F')
      OnChange = rgTipoChange
    end
    object EditCNPJ: TcxDBMaskEdit
      Left = 245
      Top = 33
      DataBinding.DataField = 'CPF_CNPJ'
      DataBinding.DataSource = DS_Vendedor
      TabOrder = 2
      Width = 132
    end
    object grpEnderecoPJ: TGroupBox
      Left = 4
      Top = 137
      Width = 746
      Height = 101
      Caption = '[Endere'#231'o]'
      Color = clBtnFace
      Ctl3D = True
      ParentBackground = False
      ParentColor = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      object Label1: TLabel
        Left = 11
        Top = 14
        Width = 20
        Height = 15
        Caption = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 95
        Top = 14
        Width = 50
        Height = 15
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 424
        Top = 14
        Width = 46
        Height = 15
        Caption = 'N'#250'mero:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 476
        Top = 14
        Width = 78
        Height = 15
        Caption = 'Complemento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 11
        Top = 55
        Width = 35
        Height = 15
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 247
        Top = 55
        Width = 79
        Height = 15
        Caption = 'C'#243'digo Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 337
        Top = 55
        Width = 38
        Height = 15
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label29: TLabel
        Left = 702
        Top = 55
        Width = 14
        Height = 15
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label31: TLabel
        Left = 636
        Top = 55
        Width = 55
        Height = 15
        Caption = 'C'#243'digo UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit10: TDBEdit
        Left = 11
        Top = 30
        Width = 77
        Height = 23
        DataField = 'CEP'
        DataSource = DS_Vendedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit12: TDBEdit
        Left = 424
        Top = 30
        Width = 50
        Height = 23
        Hint = 'N'#250'mero do Endere'#231'o'
        CharCase = ecUpperCase
        DataField = 'NUMERO'
        DataSource = DS_Vendedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object DBEdit21: TDBEdit
        Left = 476
        Top = 30
        Width = 262
        Height = 23
        CharCase = ecUpperCase
        DataField = 'COMPLEMENTO'
        DataSource = DS_Vendedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 3
      end
      object DBEdit22: TDBEdit
        Left = 11
        Top = 70
        Width = 232
        Height = 23
        CharCase = ecUpperCase
        DataField = 'BAIRRO'
        DataSource = DS_Vendedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit23: TDBEdit
        Left = 247
        Top = 70
        Width = 83
        Height = 23
        Hint = 'Codigo IBGE da CIDADE'
        CharCase = ecUpperCase
        DataField = 'IDCIDADE'
        DataSource = DS_Vendedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit37: TDBEdit
        Left = 336
        Top = 70
        Width = 294
        Height = 23
        Hint = 'Tecle F8 para pesquisar'
        CharCase = ecUpperCase
        DataField = 'NOMECIDADE'
        DataSource = DS_Vendedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit40: TDBEdit
        Left = 702
        Top = 70
        Width = 36
        Height = 23
        CharCase = ecUpperCase
        DataField = 'UF'
        DataSource = DS_Vendedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        MaxLength = 2
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit42: TDBEdit
        Left = 95
        Top = 30
        Width = 323
        Height = 23
        Hint = 'N'#250'mero do Endere'#231'o'
        CharCase = ecUpperCase
        DataField = 'ENDERECO'
        DataSource = DS_Vendedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object DBEdit43: TDBEdit
        Left = 636
        Top = 70
        Width = 62
        Height = 23
        Hint = 'Codigo IBGE do ESTADO/UF'
        CharCase = ecUpperCase
        DataField = 'CODIGOUF'
        DataSource = DS_Vendedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
    end
    object DBEdit60: TDBEdit
      Left = 120
      Top = 254
      Width = 38
      Height = 23
      DataField = 'DDD_CELULAR'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
  end
  object DS_Vendedor: TDataSource
    DataSet = db_Vendedor
    OnStateChange = DS_VendedorStateChange
    Left = 848
    Top = 16
  end
  object db_Vendedor: TFDQuery
    AfterOpen = db_VendedorAfterOpen
    AfterPost = db_VendedorAfterPost
    OnNewRecord = db_VendedorNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'CODIGO=:CODIGO'
      'AND'
      'TIPO IN ('#39'VENDEDOR'#39','#39'REPRESENTANTE'#39','#39'EMPRESA'#39','#39'FUNCIONARIO'#39')')
    Left = 760
    Top = 16
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
