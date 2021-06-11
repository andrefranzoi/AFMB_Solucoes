object FrmCtaReceber: TFrmCtaReceber
  Left = 0
  Top = 1
  Caption = 'Movimenta'#231#227'o Financeira'
  ClientHeight = 561
  ClientWidth = 961
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
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
  TextHeight = 13
  object Label2: TLabel
    Left = 157
    Top = 95
    Width = 52
    Height = 13
    Caption = 'Nota Fiscal'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 309
    Top = 97
    Width = 69
    Height = 13
    Caption = 'Nosso N'#250'mero'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 233
    Top = 95
    Width = 54
    Height = 13
    Caption = 'Documento'
    FocusControl = DBEdit4
  end
  object Label10: TLabel
    Left = 10
    Top = 263
    Width = 163
    Height = 13
    Caption = 'Hist'#243'rico [aparece nos relat'#243'rios]:'
    FocusControl = DBEdit10
  end
  object Label5: TLabel
    Left = 10
    Top = 95
    Width = 27
    Height = 13
    Caption = 'Data:'
    FocusControl = EditData
  end
  object Label11: TLabel
    Left = 571
    Top = 95
    Width = 28
    Height = 13
    Caption = 'Valor:'
    FocusControl = DBEdit8
  end
  object Label12: TLabel
    Left = 82
    Top = 95
    Width = 59
    Height = 13
    Caption = 'Vencimento:'
    FocusControl = DBEdit11
  end
  object Label1: TLabel
    Left = 8
    Top = 206
    Width = 3
    Height = 13
    FocusControl = DBEdit10
  end
  object Label8: TLabel
    Left = 420
    Top = 95
    Width = 108
    Height = 13
    Caption = 'Especie de Documento'
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 961
    Height = 50
    Align = alTop
    Constraints.MinHeight = 50
    Color = 16024898
    ParentBackground = False
    ParentColor = False
    TabOrder = 21
    TabStop = True
    ExplicitWidth = 961
    inherited Image3: TImage
      Width = 961
      ExplicitWidth = 699
      ExplicitHeight = 45
    end
    inherited pnTitulo: TPanel
      Width = 955
      ExplicitWidth = 955
      ExplicitHeight = 44
      inherited LblBarraTitulo: TLabel
        Width = 804
        Caption = 'Contas a Receber'
        ExplicitWidth = 178
        ExplicitHeight = 33
      end
      inherited Image1: TImage
        ExplicitLeft = 905
        ExplicitHeight = 44
      end
      inherited Image2: TImage
        Left = 893
        ExplicitLeft = 643
        ExplicitHeight = 37
      end
    end
  end
  object DBEdit2: TDBEdit
    Left = 157
    Top = 110
    Width = 70
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOTAFISCAL'
    DataSource = BaseDados.ds_ctaReceber
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 309
    Top = 110
    Width = 105
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOSSONUMERO'
    DataSource = BaseDados.ds_ctaReceber
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 233
    Top = 110
    Width = 70
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DOCUMENTO'
    DataSource = BaseDados.ds_ctaReceber
    TabOrder = 4
  end
  object EditNomeCliente: TEdit
    Left = 76
    Top = 151
    Width = 317
    Height = 21
    CharCase = ecUpperCase
    Color = clBtnFace
    Enabled = False
    TabOrder = 9
  end
  object EditNomeVendedor: TEdit
    Left = 473
    Top = 151
    Width = 205
    Height = 21
    CharCase = ecUpperCase
    Color = clBtnFace
    Enabled = False
    TabOrder = 11
  end
  object DBEdit10: TDBEdit
    Left = 10
    Top = 278
    Width = 668
    Height = 21
    CharCase = ecUpperCase
    DataField = 'HISTORICO'
    DataSource = BaseDados.ds_ctaReceber
    TabOrder = 16
  end
  object EditData: TDBEdit
    Left = 10
    Top = 110
    Width = 70
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DATA'
    DataSource = BaseDados.ds_ctaReceber
    TabOrder = 1
  end
  object DBEdit8: TDBEdit
    Left = 571
    Top = 110
    Width = 107
    Height = 21
    CharCase = ecUpperCase
    DataField = 'VALOR'
    DataSource = BaseDados.ds_ctaReceber
    TabOrder = 7
  end
  object DBEdit11: TDBEdit
    Left = 82
    Top = 110
    Width = 70
    Height = 21
    CharCase = ecUpperCase
    DataField = 'VENCIMENTO'
    DataSource = BaseDados.ds_ctaReceber
    TabOrder = 2
  end
  object EditCliente: TIDBEditDialog
    Left = 10
    Top = 151
    Width = 65
    Height = 21
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    TabOrder = 8
    Text = ''
    Visible = True
    LabelCaption = 'Cliente'
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
    DataField = 'CLIENTE'
    DataSource = BaseDados.ds_ctaReceber
    ButtonKeyClickBtn = 119
    SQLdbFazBusca = True
    SQLdbFocusControl = EditNomeCliente
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = ' *** '
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'CODIGO=:CODIGO')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'CODIGO'
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
        DisplayLabel = 'Raz'#227'o Social:'
        DisplayWidth = 60
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end
      item
        FieldName = 'NOME_FANTASIA'
        WhereSyntax = 'NOME_FANTASIA'
        DisplayLabel = 'Nome Fantasia'
        DisplayWidth = 32
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end>
    SearchPresetList = <>
    ShowPresets = False
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
  object EstSearchDialogZeos2: TIDBEditDialog
    Left = 407
    Top = 151
    Width = 65
    Height = 21
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    TabOrder = 10
    Text = ''
    Visible = True
    LabelCaption = 'Vendedor'
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
    DataField = 'VENDEDOR'
    DataSource = BaseDados.ds_ctaReceber
    ButtonKeyClickBtn = 119
    SQLdbFazBusca = True
    SQLdbFocusControl = EditNomeVendedor
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = ' *** '
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'CODIGO=:CODIGO')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      '  TIPO='#39'VENDEDOR'#39
      'AND'
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
  object EditNomeFormaPagto: TEdit
    Left = 76
    Top = 192
    Width = 602
    Height = 21
    CharCase = ecUpperCase
    Color = clBtnFace
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 13
  end
  object EditPagamento: TIDBEditDialog
    Left = 10
    Top = 192
    Width = 65
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
    TabOrder = 12
    Text = '0'
    Visible = True
    EditType = etNumeric
    EmptyText = 'F8 - Cliente'
    FocusColor = clBtnFace
    LabelCaption = 'Forma de Pagamento'
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
    ButtonHint = 'Forma de Pagamento'
    Etched = False
    ButtonCaption = '...'
    DataField = 'FORMA_PAGTO'
    DataSource = BaseDados.ds_ctaReceber
    ButtonKeyClickBtn = 119
    SQLdbFazBusca = True
    SQLdbFocusControl = EditNomeFormaPagto
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT CODIGO, NOME FROM CAD_FORMAPAGTO'
      'WHERE'
      'CODIGO=:CODIGO')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT CODIGO, NOME FROM CAD_FORMAPAGTO'
      'WHERE'
      '%WHERE%')
    CountQuery.Strings = (
      'SELECT COUNT(NOME) FROM CAD_FORMAPAGTO'
      'WHERE'
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 400
    Width = 961
    Height = 101
    Align = alBottom
    Caption = 'Observa'#231#227'o:'
    TabOrder = 20
    Visible = False
    object DBMemo1: TDBMemo
      Left = 2
      Top = 15
      Width = 957
      Height = 84
      Align = alClient
      DataField = 'OBSERVACAO'
      DataSource = BaseDados.ds_ctaReceber
      TabOrder = 0
    end
  end
  object DBComboBox1: TDBComboBox
    Left = 420
    Top = 110
    Width = 145
    Height = 21
    Style = csDropDownList
    DataField = 'ESPECIE'
    DataSource = BaseDados.ds_ctaReceber
    Items.Strings = (
      'DINHEIRO'
      'A VISTA'
      'A PRAZO'
      'C-CREDITO'
      'C-DEBITO'
      'DUPLICATA'
      'BOLETO'
      'DDA'
      'CHEQUE'
      'CARTEIRA'
      'TICKET')
    TabOrder = 6
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 8
    Top = 321
    Width = 141
    Height = 45
    Caption = 'Enviado pra Remessa'
    Columns = 2
    DataField = 'GERARREMESSA'
    DataSource = BaseDados.ds_ctaReceber
    Items.Strings = (
      'Sim'
      'N'#227'o')
    TabOrder = 17
    Values.Strings = (
      'S'
      'N')
  end
  object DBRadioGroup2: TDBRadioGroup
    Left = 302
    Top = 321
    Width = 376
    Height = 45
    Caption = 'Inclus'#227'o no Servi'#231'o de Prote'#231#227'o ao Cr'#233'dito'
    Columns = 5
    DataField = 'PROTESTOSTATUS'
    DataSource = BaseDados.ds_ctaReceber
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Items.Strings = (
      'N'#195'O'
      'SERASA'
      'SPC'
      'CART'#211'RIO'
      'OUTROS')
    ParentFont = False
    TabOrder = 19
    Values.Strings = (
      'NAO'
      'SERASA'
      'SPC'
      'CARTORIO'
      'OUTROS')
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 501
    Width = 961
    Height = 60
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 22
    TabStop = True
    ExplicitTop = 501
    ExplicitWidth = 961
    inherited PanelBotoesBottom: TPanel
      Width = 951
      ExplicitWidth = 951
      inherited SpbAdicionar: TSpeedButton
        ExplicitLeft = 57
      end
      inherited SpbEditar: TSpeedButton
        ExplicitLeft = 257
      end
      inherited SpbCancelar: TSpeedButton
        ExplicitLeft = 357
      end
      inherited SpbSalvar: TSpeedButton
        ExplicitLeft = 157
      end
      inherited SpbExcluir: TSpeedButton
        ExplicitLeft = 457
      end
      inherited SpbImprimir: TSpeedButton
        OnClick = FrmFrameBotoes1SpbImprimirClick
        ExplicitLeft = 657
      end
      inherited SpbSair: TSpeedButton
        Left = 847
        ExplicitLeft = 847
      end
      inherited SpbExtra: TSpeedButton
        Left = 757
        ExplicitLeft = 757
      end
      inherited SpbProcurar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 551
        ExplicitTop = -1
        ExplicitHeight = 50
      end
    end
  end
  object EditConta_Credito: TIDBEditDialog
    Left = 10
    Top = 234
    Width = 92
    Height = 21
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    TabOrder = 14
    Text = '0'
    Visible = True
    EditType = etNumeric
    EmptyText = 'F8 - Pesquisar'
    LabelCaption = 'Conta Banc'#225'ria'
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
    DataField = 'CONTA_CREDITO'
    DataSource = BaseDados.ds_ctaReceber
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
    Left = 107
    Top = 234
    Width = 571
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
    TabOrder = 15
    Text = '***'
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
    TabOrder = 23
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
      'SELECT *  FROM VIEW_FIN_CTARECEBER '
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'DOCUMENTO'
        WhereSyntax = 'DOCUMENTO'
        DisplayLabel = 'DOCUMENTO:'
        DisplayWidth = 12
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
        DisplayWidth = 12
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
        FieldName = 'NOME_CLIENTE'
        WhereSyntax = 'NOME_CLIENTE'
        DisplayLabel = 'CLIENTE:'
        DisplayWidth = 30
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'NOME_VENDEDOR'
        WhereSyntax = 'NOME_VENDEDOR'
        DisplayLabel = 'VENDEDOR:'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'QUITADO'
        WhereSyntax = 'QUITADO'
        DisplayLabel = 'QUITADO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scUpper
      end
      item
        FieldName = 'DESCONTADO'
        WhereSyntax = 'DESCONTADO'
        DisplayLabel = 'BORDER'#212':'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
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
  object DBRadioGroup3: TDBRadioGroup
    Left = 155
    Top = 321
    Width = 141
    Height = 45
    Caption = 'Descontato em Border'#244
    Columns = 2
    DataField = 'DESCONTADO'
    DataSource = BaseDados.ds_ctaReceber
    Items.Strings = (
      'Sim'
      'N'#227'o')
    TabOrder = 18
    Values.Strings = (
      'S'
      'N')
  end
  object DBRadioGroup4: TDBRadioGroup
    Left = 0
    Top = 50
    Width = 961
    Height = 44
    Align = alTop
    Caption = 'Quitado'
    Columns = 2
    DataField = 'QUITADO'
    DataSource = BaseDados.ds_ctaReceber
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Items.Strings = (
      'Sim'
      'N'#227'o')
    ParentFont = False
    TabOrder = 0
    Values.Strings = (
      'S'
      'N')
  end
end
