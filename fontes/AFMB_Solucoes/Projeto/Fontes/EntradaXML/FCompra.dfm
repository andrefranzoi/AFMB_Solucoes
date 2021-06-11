object FrmCompra: TFrmCompra
  Left = 0
  Top = 0
  Caption = 'Compra'
  ClientHeight = 599
  ClientWidth = 1134
  Color = clBtnFace
  Constraints.MinHeight = 550
  Constraints.MinWidth = 600
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 103
    Width = 1134
    Height = 444
    Align = alClient
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 0
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1124
      Height = 434
      Align = alClient
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 0
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 1120
        Height = 155
        Align = alTop
        Caption = 'Nota Fiscal de Entrada'
        TabOrder = 0
        OnExit = GroupBox2Exit
        DesignSize = (
          1120
          155)
        object Label2: TLabel
          Left = 12
          Top = 24
          Width = 56
          Height = 13
          Caption = 'Nota Fiscal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 290
          Top = 24
          Width = 43
          Height = 13
          Caption = 'Data NF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 395
          Top = 24
          Width = 64
          Height = 13
          Caption = 'Data Entrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 117
          Top = 24
          Width = 24
          Height = 13
          Caption = 'S'#233'rie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 205
          Top = 24
          Width = 34
          Height = 13
          Caption = 'Modelo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object EditData: TDBEdit
          Left = 290
          Top = 38
          Width = 100
          Height = 21
          DataField = 'DATA'
          DataSource = dsEntrada
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object EditNF: TDBEdit
          Left = 9
          Top = 38
          Width = 99
          Height = 21
          DataField = 'NOTAFISCAL'
          DataSource = dsEntrada
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object EditDataEntrada: TDBEdit
          Left = 395
          Top = 38
          Width = 100
          Height = 21
          DataField = 'DATAENTRADA'
          DataSource = dsEntrada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object EditFornecedor: TIDBEditDialog
          Left = 500
          Top = 38
          Width = 75
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
          TabOrder = 5
          Text = '0'
          Visible = True
          EditType = etNumeric
          EmptyText = 'F8 - Cliente'
          FocusColor = clWindow
          LabelCaption = 'Fornecedor:'
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
          ButtonHint = 'C'#243'digo do Cliente'
          Etched = False
          ButtonCaption = '...'
          DataField = 'FORNECEDOR'
          DataSource = dsEntrada
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditNomeFornecedor
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT CODIGO, NOME FROM CAD_CLIENTES'
            'WHERE'
            'CODIGO=:CODIGO')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_CLIENTES'
            'WHERE'
            'TIPO in ('#39'FORNECEDOR'#39','#39'OFICINA'#39','#39'TERCEIRIZADO'#39','#39'TRANSPORTADORA'#39')'
            'AND'
            'COALESCE(ATIVO,'#39'S'#39')<>'#39'N'#39
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
              Search = True
              EmptyOperation = eoNull
              DefaultComparison = scEqual
              SearchCase = scMixed
            end
            item
              FieldName = 'NOME'
              WhereSyntax = 'NOME'
              DisplayLabel = 'RAZ'#195'O SOCIAL:'
              DisplayWidth = 75
              DisplayColumnWidth = 0
              FieldType = ftString
              Search = True
              EmptyOperation = eoNull
              DefaultComparison = scContains
              SearchCase = scUpper
            end
            item
              FieldName = 'CPF_CNPJ'
              WhereSyntax = 'CPF_CNPJ'
              DisplayLabel = 'CNPJ/CPF:'
              DisplayWidth = 18
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
        object EditNomeFornecedor: TEdit
          Left = 577
          Top = 38
          Width = 526
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object EditNomePlanoContas: TEdit
          Left = 151
          Top = 119
          Width = 344
          Height = 20
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object Edit1: TEdit
          Left = 91
          Top = 76
          Width = 404
          Height = 20
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object DbEditCFOP: TIDBEditDialog
          Left = 10
          Top = 76
          Width = 75
          Height = 21
          HelpKeyWord = ''
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Text = ''
          Visible = True
          EditType = etUppercase
          FocusColor = clWindow
          LabelCaption = 'CFOP'
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
          DataField = 'CFOP'
          DataSource = dsEntrada
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = Edit1
          SQLdbCampoRetorno = 'DESCRICAO'
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT * FROM CAD_CFOP'
            'WHERE'
            'OPERACAO='#39'E'#39
            'AND'
            'CODIGO=:CODIGO'
            '')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_CFOP'
            'WHERE'
            'OPERACAO='#39'E'#39
            'AND'
            '%WHERE%')
          CountQuery.Strings = (
            'SELECT COUNT(CODIGO) FROM CAD_CFOP'
            'WHERE'
            'OPERACAO='#39'E'#39
            'AND'
            '%WHERE%')
          SearchDialogFieldList = <
            item
              FieldName = 'CODIGO'
              WhereSyntax = 'CODIGO'
              DisplayLabel = 'CFOP'
              DisplayWidth = 10
              DisplayColumnWidth = 0
              FieldType = ftInteger
              Search = True
              EmptyOperation = eoNull
              DefaultComparison = scEqual
              SearchCase = scMixed
            end
            item
              FieldName = 'DESCRICAO'
              WhereSyntax = 'DESCRICAO'
              DisplayLabel = 'Nome:'
              DisplayWidth = 70
              DisplayColumnWidth = 0
              FieldType = ftString
              Search = True
              EmptyOperation = eoNull
              DefaultComparison = scContains
              SearchCase = scUpper
            end
            item
              FieldName = 'OPERACAO'
              WhereSyntax = 'OPERACAO'
              DisplayLabel = 'Sa'#237'da/Entrada'
              DisplayWidth = 12
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
        object Edit2: TEdit
          Left = 577
          Top = 77
          Width = 526
          Height = 20
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object EditCentroCusto: TIDBEditDialog
          Left = 500
          Top = 77
          Width = 75
          Height = 21
          HelpKeyWord = ''
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          Text = ''
          Visible = True
          EditType = etUppercase
          FocusColor = clWindow
          LabelCaption = 'Centro de Custo:'
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
          DataField = 'CENTROCUSTO'
          DataSource = dsEntrada
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = Edit2
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT * FROM CAD_DEPARTAMENTOS'
            'WHERE'
            'CODIGO=:CODIGO'
            '')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_DEPARTAMENTOS'
            'WHERE'
            '%WHERE%')
          CountQuery.Strings = (
            'SELECT COUNT(CODIGO) FROM CAD_DEPARTAMENTOS'
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
        object EditPlanoConta: TIDBEditDialog
          Left = 10
          Top = 119
          Width = 138
          Height = 21
          HelpKeyWord = ''
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          Text = ''
          Visible = True
          EditType = etUppercase
          FocusColor = clBtnFace
          LabelCaption = 'Plano de Contas'
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
          DataField = 'PLANO_CONTAS'
          DataSource = dsEntrada
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
            'TIPO='#39'DEBITO'#39
            'AND'
            '%WHERE%')
          CountQuery.Strings = (
            'SELECT COUNT(*) FROM VIEW_PLANOCONTAS'
            'WHERE'
            'TIPO='#39'DEBITO'#39
            'AND'
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
        object EditTransp: TIDBEditDialog
          Left = 500
          Top = 119
          Width = 75
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
          TabOrder = 13
          Text = '0'
          Visible = True
          EditType = etNumeric
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
          DataField = 'TRANSPORTADORA'
          DataSource = dsEntrada
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
            'SELECT COUNT(*) FROM CAD_CLIENTES'
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
        object EditNomeTrasportadora: TEdit
          Left = 577
          Top = 119
          Width = 526
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
          Text = '***'
        end
        object EditSerie: TDBEdit
          Left = 114
          Top = 38
          Width = 82
          Height = 21
          DataField = 'SERIE'
          DataSource = dsEntrada
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object EditModelo: TDBEdit
          Left = 202
          Top = 38
          Width = 82
          Height = 21
          DataField = 'MODELO'
          DataSource = dsEntrada
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
      object pnContasPagar: TPanel
        Left = 846
        Top = 155
        Width = 274
        Height = 275
        Align = alRight
        BevelKind = bkTile
        BevelOuter = bvNone
        TabOrder = 1
        object gbxFatura: TGroupBox
          Left = 0
          Top = 30
          Width = 270
          Height = 130
          Align = alClient
          Caption = 'Faturas a Pagar'
          Constraints.MinHeight = 83
          TabOrder = 0
          object cxGridFatPagar: TcxGrid
            Left = 2
            Top = 15
            Width = 266
            Height = 113
            Align = alClient
            TabOrder = 0
            object grdCtaPag: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsCtaPagar
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '###,##0.00'
                  Kind = skSum
                  Column = grdCtaPagValor
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object grdCtaPagDocumento: TcxGridDBColumn
                Caption = 'Documento/Parcela'
                DataBinding.FieldName = 'DOCUMENTO'
                Width = 105
              end
              object grdCtaPagVencimento: TcxGridDBColumn
                Caption = 'Vencimento'
                DataBinding.FieldName = 'VENCIMENTO'
                PropertiesClassName = 'TcxDateEditProperties'
                MinWidth = 75
                Options.AutoWidthSizable = False
                Width = 75
              end
              object grdCtaPagValor: TcxGridDBColumn
                Caption = 'Valor'
                DataBinding.FieldName = 'VALOR'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                MinWidth = 90
                Options.AutoWidthSizable = False
                Width = 90
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = grdCtaPag
            end
          end
        end
        object gbxFrete: TGroupBox
          Left = 0
          Top = 160
          Width = 270
          Height = 111
          Align = alBottom
          Caption = 'Frete a Pagar'
          Constraints.MinHeight = 83
          TabOrder = 1
          object cxGridFatFrete: TcxGrid
            Left = 2
            Top = 15
            Width = 266
            Height = 94
            Align = alClient
            TabOrder = 0
            object grdCtaFrete: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsFretePagar
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '###,##0.00'
                  Kind = skSum
                  Column = grdCtaFreteValor
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object grdCtaFreteDocumento: TcxGridDBColumn
                Caption = 'Nota Fiscal'
                DataBinding.FieldName = 'DOCUMENTO'
                Width = 105
              end
              object grdCtaFreteVencimento: TcxGridDBColumn
                Caption = 'Vencimento'
                DataBinding.FieldName = 'VENCIMENTO'
                PropertiesClassName = 'TcxDateEditProperties'
                MinWidth = 70
                Options.AutoWidthSizable = False
                Width = 70
              end
              object grdCtaFreteValor: TcxGridDBColumn
                Caption = 'Valor'
                DataBinding.FieldName = 'VALOR'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                MinWidth = 90
                Options.AutoWidthSizable = False
                Width = 90
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = grdCtaFrete
            end
          end
        end
        object pnTituloPagar: TPanel
          Left = 0
          Top = 0
          Width = 270
          Height = 30
          Align = alTop
          Caption = 'Contas a Pagar'
          Color = clHotLight
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 2
        end
      end
      object gbProduto: TGroupBox
        Left = 0
        Top = 155
        Width = 846
        Height = 275
        Align = alClient
        Caption = '[Produtos]'
        TabOrder = 2
        object cxGridEntrada: TcxGrid
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 836
          Height = 252
          Align = alClient
          TabOrder = 0
          OnEnter = cxGridEntradaEnter
          object cxGridProduto: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            FindPanel.InfoText = 'Procurar por...'
            DataController.DataSource = dsProduto
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '###,##0'
                Kind = skSum
                Column = cxGridProdutoQTDE
              end
              item
                Format = '###,##0.00'
                Kind = skSum
                Column = cxGridProdutoVUnit
              end
              item
                Format = '###,##0.00'
                Kind = skSum
                Column = cxGridProdutoDesconto
              end
              item
                Format = '###,##0.00'
                Kind = skSum
                Column = cxGridProdutoICMSValor
              end
              item
                Format = '###,##0.00'
                Kind = skSum
                Column = cxGridProdutoIPIValor
              end
              item
                Format = '###,##0.00'
                Kind = skSum
                Column = cxGridProdutoVTotal
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsView.CellEndEllipsis = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object cxGridProdutoIDProduto: TcxGridDBColumn
              Caption = 'Produto'
              DataBinding.FieldName = 'PRODUTO'
              MinWidth = 100
              Options.AutoWidthSizable = False
              Width = 100
            end
            object cxGridProdutoDescricao: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'DESCRICAO'
              Width = 70
            end
            object cxGridProdutoUND: TcxGridDBColumn
              Caption = 'Und'
              DataBinding.FieldName = 'UND'
              MinWidth = 40
              Options.AutoWidthSizable = False
              Width = 40
            end
            object cxGridProdutoQTDE: TcxGridDBColumn
              Caption = 'Qtde'
              DataBinding.FieldName = 'QUANTIDADE'
              MinWidth = 70
              Options.AutoWidthSizable = False
              Width = 70
            end
            object cxGridProdutoVUnit: TcxGridDBColumn
              Caption = 'Val. Unit.'
              DataBinding.FieldName = 'VL_UNITARIO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              MinWidth = 70
              Options.AutoWidthSizable = False
              Width = 70
            end
            object cxGridProdutoDesconto: TcxGridDBColumn
              Caption = 'Val. Desc.'
              DataBinding.FieldName = 'DESCONTO_VLR'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              MinWidth = 70
              Options.AutoWidthSizable = False
              Width = 70
            end
            object cxGridProdutoICMS: TcxGridDBColumn
              Caption = 'ICMS %'
              DataBinding.FieldName = 'ICMS'
              MinWidth = 50
              Options.AutoWidthSizable = False
              Width = 50
            end
            object cxGridProdutoICMSValor: TcxGridDBColumn
              Caption = 'ICMS/Valor'
              DataBinding.FieldName = 'ICMS_VALOR'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              MinWidth = 65
              Options.AutoWidthSizable = False
              Width = 65
            end
            object cxGridProdutoIPI: TcxGridDBColumn
              Caption = 'IPI %'
              DataBinding.FieldName = 'IPI'
              MinWidth = 50
              Options.AutoWidthSizable = False
              Width = 50
            end
            object cxGridProdutoIPIValor: TcxGridDBColumn
              Caption = 'IPI/Valor'
              DataBinding.FieldName = 'IPI_VALOR'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              MinWidth = 65
              Options.AutoWidthSizable = False
              Width = 65
            end
            object cxGridProdutoVTotal: TcxGridDBColumn
              Caption = 'Val. Total'
              DataBinding.FieldName = 'VL_TOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              MinWidth = 70
              Options.AutoWidthSizable = False
              Width = 70
            end
          end
          object cxGridEntradaLevel1: TcxGridLevel
            GridView = cxGridProduto
          end
        end
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 1134
    Height = 50
    Align = alTop
    Constraints.MinHeight = 50
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    ExplicitWidth = 1134
    inherited Image3: TImage
      Width = 1134
      ExplicitWidth = 624
      ExplicitHeight = 60
    end
    inherited pnTitulo: TPanel
      Width = 1128
      Constraints.MinHeight = 27
      ExplicitWidth = 1128
      ExplicitHeight = 44
      inherited LblBarraTitulo: TLabel
        Width = 977
        Caption = 'Nota de Entrada [XML]'
        OnDblClick = FrmFrameBarra1LblBarraTituloDblClick
        ExplicitWidth = 1002
        ExplicitHeight = 25
      end
      inherited Image1: TImage
        ExplicitLeft = 874
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 1066
        ExplicitLeft = 568
        ExplicitHeight = 31
      end
    end
  end
  object dbProcurarCompra: TIDBEditDialog
    Left = 382
    Top = 9
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
    TabOrder = 2
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
      'SELECT * FROM VIEW_COMPRAS'
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
        FieldName = 'ENTRADA'
        WhereSyntax = 'ENTRADA'
        DisplayLabel = 'ENTRADA:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = False
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
        FieldName = 'PEDIDOCOMPRA'
        WhereSyntax = 'PEDIDOCOMPRA'
        DisplayLabel = 'PEDIDO COMPRA:'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'FORNECEDOR'
        WhereSyntax = 'FORNECEDOR'
        DisplayLabel = 'FORNECEDOR:'
        DisplayWidth = 13
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'FORNECEDOR_NOME'
        WhereSyntax = 'FORNECEDOR_NOME'
        DisplayLabel = 'FORNECEDOR NOME:'
        DisplayWidth = 35
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'QTDE_TOTAL'
        WhereSyntax = 'QTDE_TOTAL'
        DisplayLabel = 'QTDE TOTAL:'
        DisplayFormat = '###,##0'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VLR_TOTAL'
        WhereSyntax = 'VLR_TOTAL'
        DisplayLabel = 'VLR TOTAL:'
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
        FieldName = 'BAIXADO'
        WhereSyntax = 'BAIXADO'
        DisplayLabel = 'BAIXADO:'
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
  object dbProcurarPedido: TIDBEditDialog
    Left = 681
    Top = 11
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
    TabOrder = 3
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
      'SELECT * FROM VIEW_PEDIDOSCOMPRAS'
      'WHERE'
      'APROVADO IN ('#39'S'#39','#39'SIM'#39')'
      'AND'
      'EFETIVADO IN ('#39'N'#39','#39'NAO'#39')'
      'AND'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'PEDIDO COMPRA:'
        DisplayWidth = 18
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
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'DATA_ENTREGA'
        WhereSyntax = 'DATA_ENTREGA'
        DisplayLabel = 'ENTREGA:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'FORNECEDOR'
        WhereSyntax = 'FORNECEDOR'
        DisplayLabel = 'FORNECEDOR:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'FORNECEDOR_NOME'
        WhereSyntax = 'FORNECEDOR_NOME'
        DisplayLabel = 'NOME DO FORNECEDOR:'
        DisplayWidth = 43
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'QTDE_PEDIDA'
        WhereSyntax = 'QTDE_PEDIDA'
        DisplayLabel = 'QTDE:'
        DisplayWidth = 8
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VLR_TOTAL'
        WhereSyntax = 'VLR_TOTAL'
        DisplayLabel = 'VALOR TOTAL:'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'FRETE_VALOR'
        WhereSyntax = 'FRETE_VALOR'
        DisplayLabel = 'FRETE VALOR:'
        DisplayWidth = 13
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'FRETE_TIPO_STATUS'
        WhereSyntax = 'FRETE_TIPO_STATUS'
        DisplayLabel = 'FRETE:'
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
  object PanelBotoes: TPanel
    Left = 0
    Top = 547
    Width = 1134
    Height = 52
    Align = alBottom
    BevelKind = bkTile
    Color = clWhite
    Constraints.MinWidth = 848
    ParentBackground = False
    TabOrder = 4
    object PanelBotoesBottom: TPanel
      Left = 1
      Top = 1
      Width = 1128
      Height = 46
      Margins.Left = 5
      Margins.Right = 5
      Align = alClient
      BevelKind = bkSoft
      BevelOuter = bvNone
      Constraints.MinWidth = 832
      ParentBackground = False
      TabOrder = 0
      object SpbAdicionar: TSpeedButton
        Left = 0
        Top = 0
        Width = 95
        Height = 42
        Cursor = crHandPoint
        Hint = '[tecla INSERT] Adicionar novo registro'
        Align = alLeft
        Caption = 'Adicionar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001811071D392910454A3515594A3515593929
          10451811071D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001F1709267554218EB88332E1BD8633E69C6F2BBC8A6327A78A6327A79C6F
          2BBCBD8935E7B88534E07453208C1E1508240000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000100B0413825D
          249DC18A36E96C4E1E8322180929000000000000000000000000000000000000
          000000000000221809296D4E1F84C28B34EA805C249B0F0B0412000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000030220D3ABC8635E37554
          218E0B08030D0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000B08030D77552190B98633E22E210D370000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000039291045C18A36E93C2B11490000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003D2C114AC18A36E93728
          1043000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000251B0A2DC28B34EA30220D3A000000000000
          00000000000000000000000000000000000007050416271E167D271E157C0705
          041500000000000000000000000000000000000000000000000031230E3BC18A
          36E923190A2A0000000000000000000000000000000000000000000000000000
          0000000000000000000005040106AF7C30D54C36155C00000000000000000000
          0000000000000000000000000000000000002D2219900403020C0403020D2D22
          1990000000000000000000000000000000000000000000000000000000004F38
          165FAF7D31D30403010500000000000000000000000000000000000000000000
          0000000000000000000060451B74926929B10000000000000000000000000000
          000000000000000000000000000000000000281F16800000000000000000281F
          1680000000000000000000000000000000000000000000000000000000000000
          0000956B2AB45E431A7100000000000000000000000000000000000000000000
          00000000000005040106BD8935E723190A2A0000000000000000000000000000
          000000000000000000000000000000000000281F16800000000000000000281F
          1680000000000000000000000000000000000000000000000000000000000000
          0000241A0A2CBD8633E604030105000000000000000000000000000000000000
          000000000000433013519C702CBD000000000000000000000000000000000000
          000000000000000000000000000000000000281F16800000000000000000281F
          1680000000000000000000000000000000000000000000000000000000000000
          0000000000009D702BBF412F124F000000000000000000000000000000000000
          000000000000805C239C5940196C000000000000000000000000000000000000
          000000000000000000000000000000000000281F16800000000000000000281F
          1680000000000000000000000000000000000000000000000000000000000000
          0000000000005B41196E7F5B2399000000000000000000000000000000000000
          000000000000AA7A2ED0291E0C3200000000000000000000000003020209211A
          1269281F1680281F1680281F1680281F1680281F16800000000000000000281F
          1680281F1680281F1680281F1680281F16802119126803020209000000000000
          0000000000002B1F0C34AA7A30CE000000000000000000000000000000000000
          000000000000C78C38F00C09030F0000000000000000000000002C21188C0A08
          051F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000A0806212C22188B000000000000
          0000000000000E0A0411C68E35EF000000000000000000000000000000000000
          000000000000D19338FC02010002000000000000000000000000281F16810000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000029201682000000000000
          00000000000002020103D19338FC000000000000000000000000000000000000
          000000000000CB8F39F50806020A0000000000000000000000002C22188D0907
          051D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000907051E2C21188C000000000000
          0000000000000A07030CC79036F3000000000000000000000000000000000000
          000000000000B47F32DA211809280000000000000000000000000302020A221A
          126B281F1680281F1680281F1680281F1680281F16800000000000000000281F
          1680281F1680281F1680281F1680281F1680211A126A03020209000000000000
          00000000000023190A2AB38032D8000000000000000000000000000000000000
          0000000000008D6528AB4B36155B000000000000000000000000000000000000
          000000000000000000000000000000000000281F16800000000000000000281F
          1680000000000000000000000000000000000000000000000000000000000000
          0000000000004D37165D8C6326A9000000000000000000000000000000000000
          000000000000553D1867896226A5000000000000000000000000000000000000
          000000000000000000000000000000000000281F16800000000000000000281F
          1680000000000000000000000000000000000000000000000000000000000000
          0000000000008A6327A8543C1765000000000000000000000000000000000000
          000000000000100B0413C58D35EE110C05140000000000000000000000000000
          000000000000000000000000000000000000281F16800000000000000000281F
          1680000000000000000000000000000000000000000000000000000000000000
          0000110C0515C58D35EE0E0A0411000000000000000000000000000000000000
          000000000000000000007E5923987252208B0000000000000000000000000000
          000000000000000000000000000000000000281F168100000000000000002920
          1682000000000000000000000000000000000000000000000000000000000000
          00007553218D7A58229400000000000000000000000000000000000000000000
          00000000000000000000130E0517C28B34EA291E0C3200000000000000000000
          00000000000000000000000000000000000029201682130F0A3C130F0B3E2920
          1783000000000000000000000000000000000000000000000000000000002B1F
          0C34C18A36E9110C051500000000000000000000000000000000000000000000
          000000000000000000000000000047331456B88332DE140E0618000000000000
          0000000000000000000000000000000000000100000218120D4B17120D4A0100
          0002000000000000000000000000000000000000000000000000140E0618B982
          34DF453113530000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000674A1D7DAF7C30D51711061C0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001711061CAF7C30D56448
          1C79000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000060451B74BD8633E63F2D
          124C000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000402E124DBD8633E65D421A700000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000034250F3FB47F
          32DA976C2AB737270F4201010001000000000000000000000000000000000000
          0000000000000101000137270F42986D2BB8B38032D832240E3D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000504
          0106543C1866AD7C30D1BD8835E5896226A565481C7A543C1866543C18666548
          1C7A896226A5BD8835E5AA7B30CF533B17640504010600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001D1508234F39166070501F877F5B249A7F5B249A7050
          1F874F38165F1C14082200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        OnClick = SpbAdicionarClick
        ExplicitLeft = -6
        ExplicitTop = 1
      end
      object SpbEditar: TSpeedButton
        Left = 95
        Top = 0
        Width = 95
        Height = 42
        Cursor = crHandPoint
        Hint = '[tecla F3] Alterar registro'
        Align = alLeft
        Caption = 'Alterar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001912071E5F441B736A4C1E806A4C
          1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C
          1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E80684B1D7E3E2C114B0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000281C0B30C18A36E97A5822946A4C1E806A4C
          1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C
          1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806C4D1E82AF7E2FD46548
          1C7A000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000008C6326A9563E186800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000403020C110D0936020101050000000000000000000000001A130720C18C
          37EC000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000009F722CC035260F4000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000016110C47503E2CFF4B3C29F63B2F20C0281F16810101010400000000D397
          3BFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000009F722CC035260F4000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000005040310503E2CFE1D17105D17120D4A251C14751F18126302020107D397
          3BFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000009F722CC035260F4000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000413224D30F0C0830000000000000000033281CA4382C1EB46F50
          1F8A000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000009F722CC035260F4000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002E241A9620191165020101052B22188A0303020A34291DA7382C
          1EB4020201070000000000000000000000000000000000000000000000000000
          00000000000000000000000000009F722CC035260F4000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000303020B231B136F2A2117860806041A2D23198F0303020A3429
          1DA7382C1EB40202010700000000000000000000000000000000000000000000
          00000000000000000000000000009F722CC035260F4000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000005040310403121CB2B22188A0807051B2D23198F0303
          020A33281DA6382C1EB402020107000000000000000000000000000000000000
          00000000000000000000000000009F722CC035260F4000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000005040310403121CB2B2118890807051B2D22
          19900303020A33281DA6382C1EB4020201070000000000000000000000000000
          00000000000000000000000000009F722CC035260F4000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000005040310403121CB2B2118890807
          051B2D2219900303020A34271CA5382C1EB40201010600000000000000000000
          00000000000000000000000000009F722CC035260F4000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000005040310403121CB2B21
          17880907051C2D2219900303020A433425D5120E0A3900000000000000000000
          00000000000000000000000000009F722CC035260F4000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000050403104031
          21CB2A2117870907051C18120D4E493726E80A08051F00000000000000000000
          00000000000000000000000000009F722CC035260F4000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000005840
          1A75403121CB3D2E21C2463828E618120D4C0000000000000000000000000000
          00000000000000000000000000009F722CC035260F4000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000D397
          3BFF0403020E15100B420B080622000000000000000000000000000000000000
          00000000000000000000000000009F722CC035260F4000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000D397
          3BFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000009F722CC035260F4000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000D397
          3BFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000009F722CC035260F4000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000D397
          3BFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000009F722CC035260F4000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000D397
          3BFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000009F722CC035260F4000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000D397
          3BFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000009F722CC035260F4000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000D397
          3BFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000009F722CC035260F4000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000D397
          3BFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000009F722CC035260F4000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000D397
          3BFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000009F722CC035260F4000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000D397
          3BFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000009F722CC035260F4000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000D397
          3BFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000986D2BB83F2D124C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000007050209CF92
          3AFA000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000004F391660AF7F32D64431135235260F403526
          0F4035260F4035260F4035260F4035260F4035260F4035260F4035260F403526
          0F4035260F4035260F4035260F4035260F4035260F4036260F41825D249D9269
          29B1000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004A35155A976C29B6A1732DC4A173
          2DC4A1732DC4A1732DC4A1732DC4A1732DC4A1732DC4A1732DC4A1732DC4A173
          2DC4A1732DC4A1732DC4A1732DC4A1732DC4A1732DC4A1732CC37B5822950E0A
          0411000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        OnClick = SpbEditarClick
        ExplicitLeft = 90
      end
      object SpbCancelar: TSpeedButton
        Left = 285
        Top = 0
        Width = 95
        Height = 42
        Cursor = crHandPoint
        Hint = '[tecla F4] Cancelar altera'#231#245'es'
        Align = alLeft
        Caption = 'Cancelar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000002300000094000000DD000000FE0000
          00FD000000D90000008D0000001C000000000000000000000000000000000000
          00000000005F000000BF000000BF000000BF000000BF000000BF000000BF0000
          00BF000000BF000000BF000000BF000000BF000000BF000000BF000000BF0000
          009A00000000000000000000006D000000F8000000DD00000085000000550000
          00570000008A000000E6000000F50000005E0000000000000000000000000000
          00000000007F000000F10000008F0000008F0000008F0000008F0000008F0000
          008F0000008F0000008F0000008F0000008F0000008F0000008F0000008F0000
          00720000000000000070000000FF000000BC0000000400000000000000000000
          0000000000000000000800000094000000FE0000005E00000000000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000002A000000FB000000C9000000FE0000006800000000000000000000
          000000000000000000000000000000000094000000F50000001C000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000A0000000D60000000300000087000000FE00000068000000000000
          000000000000000000000000000000000008000000E60000008D000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000ED00000075000000000000000000000087000000FE000000680000
          0000000000000000000000000000000000000000008A000000D9000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0015000000FF0000004500000000000000000000000000000087000000FE0000
          00680000000000000000000000000000000000000057000000FD000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0016000000FF0000004300000000000000000000000000000000000000870000
          00FE0000006800000000000000000000000000000055000000FE000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000F10000007000000000000000000000000000000000000000000000
          0087000000FE00000068000000000000000000000085000000DD000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000A9000000CF00000000000000000000000000000000000000000000
          000000000087000000FE0000006800000004000000DD00000094000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000034000000FD0000006E000000000000000000000000000000000000
          00000000000000000087000000FE000000BC000000F800000023000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000082000000FC0000006E0000000000000000000000000000
          00000000000000000003000000C9000000FF0000006D00000000000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000082000000FD000000CF00000070000000430000
          004500000075000000D6000000FB000000700000000000000000000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000034000000A9000000F1000000FF0000
          00FF000000ED000000A00000002A000000000000000000000000000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000160000
          0015000000000000000000000000000000000000000000000000000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000005F0000
          0052000000000000000000000000000000000000000000000000000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000AF0000
          009F000000000000000000000000000000000000000000000000000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000AF0000
          009F000000000000000000000000000000000000000000000000000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000AF0000
          009F000000000000000000000000000000000000000000000000000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000AF0000
          009F000000000000000000000000000000000000000000000000000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000AF0000
          009F000000000000000000000000000000000000000000000000000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000002B0000003F0000
          003F0000003F0000003F0000003F0000003F0000003F0000003F000000C30000
          009F000000000000000000000000000000000000000000000000000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000AF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          0095000000000000000000000000000000000000000000000000000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000AF000000B40000
          000F0000000F0000000F0000000F0000000F0000003C000000F0000000C80000
          000E000000000000000000000000000000000000000000000000000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000AF000000AF0000
          00000000000000000000000000000000002C000000EA000000C80000000E0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000AF000000AF0000
          000000000000000000000000002C000000EA000000C80000000E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000AF000000AF0000
          0000000000000000002C000000EA000000C80000000E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000AF000000AF0000
          00000000002C000000EA000000C80000000E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000AF000000AF0000
          002C000000EA000000C80000000E000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000007F000000DF00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000AF000000D20000
          00EA000000C80000000E00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000007F000000E90000004F0000004F0000004F0000004F0000004F0000
          004F0000004F0000004F0000004F0000004F0000004F000000C8000000FF0000
          00C80000000E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000007F000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000C80000
          000E000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        OnClick = SpbCancelarClick
        ExplicitLeft = 270
      end
      object btnConfirmar: TSpeedButton
        Left = 665
        Top = 0
        Width = 160
        Height = 42
        Cursor = crHandPoint
        Hint = '[tecla F5] Salvar registro'
        Align = alLeft
        Caption = 'Confirmar Compra'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000F0C0831271E167D392B1FB5443524D8483628E7473727E13F31
          23C831261B9C1C160F590403020C000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001813
          0D4E403222CC443624DD2B22188A18130D4E0D0A0729080604180907051E120E
          0A3A211A1269382B1FB24B3A27EE2D23198E0605031400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000006050313382A1FB14334
          25D518130D4D0000000100000000000000000000000000000000000000000000
          00000000000000000000080604182D231891493726E81A140E54000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000B090624443624DD2B2118890201
          0105000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000100C0933433526DC281F16810000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000907051C473727E11F181164000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000007050415413024CE271E
          157C000000000000000000000000000000000000000000000000000000000000
          00000000000000000000010101043E3022C7251D157700000000000000000000
          000000000000000000000000000000000000000000003F2D124C65481C7A402E
          124D000000000000000000000000000000000000000000000000070504164737
          27E117120D490000000000000000000000000000000000000000000000000000
          00000000000000000000241C1473392D20B90000000000000000000000000000
          000000000000000000000000000000000000553D18674531135300000000412F
          124F5A41196D000000000000000000000000000000000000000000000000130F
          0B3E473727E20403020C00000000000000000000000000000000000000000000
          0000000000000403020D483927EA0C0907260000000000000000000000000000
          0000000000000000000000000000553D1867412F124F00000000000000000000
          00003D2C114A5A41196D00000000000000000000000000000000000000000000
          000034271CA5261D157800000000000000000000000000000000000000000000
          0000000000002019126735291DAA000000000000000000000000000000000000
          00000000000000000000543C1866412E124E0000000000000000000000000000
          0000000000003D2C114A5A41196D000000000000000000000000000000000000
          00000E0B082C453525E301000002000000000000000000000000000000000000
          0000000000003B2E21BD18130D4D000000000000000000000000000000000000
          000000000000543C1866402E124D00000000000000000000000034250F3F0000
          000000000000000000003D2C114A5A41196D0000000000000000000000000000
          000000000000413224CF120E0A3A000000000000000000000000000000000000
          0000010101044D3928F40403020D000000000000000000000000000000000000
          0000543C18663F2D124C00000000000000000000000062461B7660451B746045
          1B740000000000000000000000003D2C114A5B41196E00000000000000000000
          0000000000002C22188B261D1579000000000000000000000000000000000000
          00000B090624433526DC0000000000000000000000000000000000000000543C
          18663E2C114B00000000000000000000000062461B7635260F40000000003425
          0F3F60451B740000000000000000000000003D2C114A5B41196E000000000000
          0000000000001E17105F32281BA3000000000000000000000000000000000000
          0000120E0A393D2F21C600000000000000000000000000000000543C17653E2C
          114B00000000000000000000000062461C7736260F4100000000000000000000
          000035260F405F441B730000000000000000000000003D2C114A5B41196E0000
          00000000000017120C48392C20B7000000000000000000000000000000000000
          0000120E0A3A3E3022C5000000000000000000000000402E124D412E124E0000
          0000000000000000000064481C7937270F420000000000000000000000000000
          00000000000035260F405F441B730000000000000000000000003D2C114A5C42
          1A6F0000000015110C443B2E20BC000000000000000000000000000000000000
          00000D0A0729433323D7000000000000000000000000684B1D7E000000000000
          00000000000064481C7937281043000000000000000000000000000000000000
          0000000000000000000035260F405F441B730000000000000000000000003D2C
          114A5C421A6F1C160F5935291DA8000000000000000000000000000000000000
          0000020201074B3C29F602020107000000000000000046321354463213540604
          0207684B1D7E3828104400000000000000000000000000000000000000000000
          000000000000000000000000000036260F415E441A7200000000000000000000
          00003D2C114A5B421B791A140E52000000000000000000000000000000000000
          0000000000003F3123C814100B400000000000000000000000003C2B11496749
          1D7C251B0A2D0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000036260F415E441A72000000000000
          0000000000003D2C114A5D421A70000000000000000000000000000000000000
          000000000000261D157830251B9A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000036260F415E431A710000
          000000000000000000003D2C114A5D421A700000000000000000000000000000
          00000000000007060417483A29ED070604170000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000036260F415E43
          1A71000000000000000000000000412E124E4733145600000000000000000000
          000000000000000000002C21188C32271B9F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003727
          0F425E431A7100000000000000000000000070501F8700000000000000000000
          000000000000000000000403020D443624DD1B150F5600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000302020A392C
          20B73929115162461B7602020103453113534934145800000000000000000000
          0000000000000000000000000000100C0932483927EA15100B42000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000002020107382C1EB43227
          1CA000000000241A0A2C64481C793D2C114A0000000000000000000000000000
          000000000000000000000000000000000000140F0B3F483927EA1E17105F0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000080604183D2F21C134281CA90101
          0104000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000E0B082C433425D5372B
          1EB00C0907260000000000000000000000000000000000000000000000000000
          000000000000000000000101010420191266493726E8281F167F000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000002020107261D
          1579483927EA382C1EB41E1711600B0906240100000200000000000000000403
          020E130F0B3E2A211786453525E33A2C1FBA0F0C083000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000302020A1D16105B35291DA8463426DF4C3D2BF94B3827EF4A392AF34D39
          28F43E3022C7292017840E0B082C000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000001010104050403100403020D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        OnClick = btnConfirmarClick
        ExplicitTop = 1
      end
      object SpbExcluir: TSpeedButton
        Left = 380
        Top = 0
        Width = 95
        Height = 42
        Cursor = crHandPoint
        Hint = '[tecla F6] Excluir registro'
        Align = alLeft
        Caption = 'Excluir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001811071D392910454A3515594A3515593929
          10451811071D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001F1709267554218EB88332E1BD8633E69C6F2BBC8A6327A78A6327A79C6F
          2BBCBD8935E7B88534E07453208C1E1508240000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000100B0413825D
          249DC18A36E96C4E1E8322180929000000000000000000000000000000000000
          000000000000221809296D4E1F84C28B34EA805C249B0F0B0412000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000030220D3ABC8635E37554
          218E0B08030D0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000B08030D77552190B98633E22E210D370000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000039291045C18A36E93C2B11490000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003D2C114AC18A36E93728
          1043000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000251B0A2DC28B34EA30220D3A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000031230E3BC18A
          36E923190A2A0000000000000000000000000000000000000000000000000000
          0000000000000000000005040106AF7C30D54C36155C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004F38
          165FAF7D31D30403010500000000000000000000000000000000000000000000
          0000000000000000000060451B74926929B10000000000000000000000000000
          00001C160F59292016822A211786080604180000000000000000000000000000
          00000303020B292016822B2118891B150F550000000000000000000000000000
          0000956B2AB45E431A7100000000000000000000000000000000000000000000
          00000000000005040106BD8935E723190A2A0000000000000000000000000A08
          051F221A126B00000000030202092E2419930806041800000000000000000303
          020B30251A980806041900000000231B136F0C09062500000000000000000000
          0000241A0A2CBD8633E604030105000000000000000000000000000000000000
          000000000000433013519C702CBD000000000000000000000000000000000F0C
          08301A140E530000000000000000030202092F241A95080604180403020C3025
          1A9807060417000000000000000014100B4115100B4200000000000000000000
          0000000000009D702BBF412F124F000000000000000000000000000000000000
          000000000000805C239C5940196C000000000000000000000000000000000000
          00002C22188D0907051E00000000000000000302020A2F25199730251B9A0706
          041700000000000000000403020C2C22188D0201010500000000000000000000
          0000000000005B41196E7F5B2399000000000000000000000000000000000000
          000000000000AA7A2ED0291E0C32000000000000000000000000000000000000
          0000020101062D2318910907051E00000000000000000303020B070504150000
          0000000000000403020D2D23198F0504030F0000000000000000000000000000
          0000000000002B1F0C34AA7A30CE000000000000000000000000000000000000
          000000000000C78C38F00C09030F000000000000000000000000000000000000
          000000000000020101062E2319920907051E0000000000000000000000000000
          00000403020D2D23189105040310000000000000000000000000000000000000
          0000000000000E0A0411C68E35EF000000000000000000000000000000000000
          000000000000D19338FC02010002000000000000000000000000000000000000
          000000000000000000000504031034291DA70000000000000000000000000000
          00002C21188C0C09072600000000000000000000000000000000000000000000
          00000000000002020103D19338FC000000000000000000000000000000000000
          000000000000CB8F39F50806020A000000000000000000000000000000000000
          000000000000030202092E241993080604190000000000000000000000000000
          00000303020B2E24199307050415000000000000000000000000000000000000
          0000000000000A07030CC79036F3000000000000000000000000000000000000
          000000000000B47F32DA21180928000000000000000000000000000000000000
          0000030202092D2318910806041800000000000000000403020D080604190000
          0000000000000302020A2E231992070504150000000000000000000000000000
          00000000000023190A2AB38032D8000000000000000000000000000000000000
          0000000000008D6528AB4B36155B000000000000000000000000000000000000
          00002C22188D0706041700000000000000000403020D2E241A942E2319920806
          041A00000000000000000302020A2E2319920101010400000000000000000000
          0000000000004D37165D8C6326A9000000000000000000000000000000000000
          000000000000553D1867896226A5000000000000000000000000000000000A08
          06211E17105F00000000000000000403020D2E241A9406040312030201082E23
          19920807051B000000000000000019130E4F0F0C083100000000000000000000
          0000000000008A6327A8543C1765000000000000000000000000000000000000
          000000000000100B0413C58D35EE110C05140000000000000000000000000303
          020B2A211787000000000504030F2E241A940604031200000000000000000302
          01082E2419930907051E000000012A2117870504030F00000000000000000000
          0000110C0515C58D35EE0E0A0411000000000000000000000000000000000000
          000000000000000000007E5923987252208B0000000000000000000000000000
          0000110D0937281F1680281F167E050403110000000000000000000000000000
          000002020107241C1473281F1681100C09320000000000000000000000000000
          00007553218D7A58229400000000000000000000000000000000000000000000
          00000000000000000000130E0517C28B34EA291E0C3200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002B1F
          0C34C18A36E9110C051500000000000000000000000000000000000000000000
          000000000000000000000000000047331456B88332DE140E0618000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000140E0618B982
          34DF453113530000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000674A1D7DAF7C30D51711061C0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001711061CAF7C30D56448
          1C79000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000060451B74BD8633E63F2D
          124C000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000402E124DBD8633E65D421A700000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000034250F3FB47F
          32DA976C2AB737270F4201010001000000000000000000000000000000000000
          0000000000000101000137270F42986D2BB8B38032D832240E3D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000504
          0106543C1866AD7C30D1BD8835E5896226A565481C7A543C1866543C18666548
          1C7A896226A5BD8835E5AA7B30CF533B17640504010600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001D1508234F39166070501F877F5B249A7F5B249A7050
          1F874F38165F1C14082200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        OnClick = SpbExcluirClick
        ExplicitLeft = 360
      end
      object SpbImprimir: TSpeedButton
        Left = 570
        Top = 0
        Width = 95
        Height = 42
        Cursor = crHandPoint
        Hint = '[tecla F11] Imprimir registro'
        Align = alLeft
        Caption = 'Imprimir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003F000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF0000003F0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003F000000FF0000005A0000004F0000
          004F0000004F0000004F0000004F0000004F0000004F0000004F0000004F0000
          004F0000004F0000004F0000004F0000004F0000004F0000004F0000005A0000
          00FF0000003F0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003F000000FF0000000F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000F0000
          00FF0000003F0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003F000000FF0000000F000000000000
          00210000002F0000002F0000002F0000002F0000002F0000002F0000002F0000
          002F0000002F0000002F0000002F0000002F00000021000000000000000F0000
          00FF0000003F0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003F000000FF0000000F000000040000
          00F8000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000F7000000040000000F0000
          00FF0000003F0000000000000000000000000000000000000000000000000000
          00330000003F0000003F0000003F0000006F000000FF0000000F000000000000
          00150000001F0000001F0000001F0000001F0000001F0000001F0000001F0000
          001F0000001F0000001F0000001F0000001F00000016000000000000000F0000
          00FF0000006F0000003F0000003F0000003F0000003300000000000000970000
          00FF000000FF000000FF000000FF000000FF000000FF0000000F000000010000
          008E0000009F0000009F0000009F0000009F0000009F0000009F0000009F0000
          009F0000009F0000009F000000360000000000000000000000000000000F0000
          00FF000000FF000000FF000000FF000000FF000000FF00000097000000FC0000
          00720000000F0000000F0000000F0000004B000000FF0000000F000000020000
          00A0000000AF000000AF000000AF000000AF000000AF000000AF000000AF0000
          00AF000000AF000000AF000000420000000000000000000000000000000F0000
          00FF0000004B0000000F0000000F0000000F00000072000000FC000000FF0000
          004F0000000000000000000000000000003F000000FF0000000F000000000000
          00080000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
          000F0000000F0000000F0000000F0000000F00000008000000000000000F0000
          00FF0000003F0000000000000000000000000000004F000000FF000000FF0000
          004F0000000000000000000000000000003F000000FF0000000F000000040000
          00F4000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000F4000000040000000F0000
          00FF0000003F0000000000000000000000000000004F000000FF000000FF0000
          004F0000000000000000000000000000003F000000FF0000000F000000000000
          00300000003F0000003F0000003F0000003F0000003F0000003F0000003F0000
          003F0000003F0000003F0000003F0000003F00000031000000000000000F0000
          00FF0000003F0000000000000000000000000000004F000000FF000000FF0000
          004F0000000000000000000000000000003F000000FF0000000F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000F0000
          00FF0000003F0000000000000000000000000000004F000000FF000000FF0000
          004F0000000000000000000000000000003F000000FF0000004B0000003F0000
          003F0000003F0000003F0000003F0000003F0000003F0000003F0000003F0000
          003F0000003F0000003F0000003F0000003F0000003F0000003F0000004B0000
          00FF0000003F0000000000000000000000000000004F000000FF000000FF0000
          004F0000000000000000000000000000003F000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF0000003F0000000000000000000000000000004F000000FF000000FF0000
          004F000000000000000000000000000000070000001F0000001F0000001F0000
          001F0000001F0000001F0000001F0000001F0000001F0000001F0000001F0000
          001F0000001F0000001F0000001F0000001F0000001F0000001F0000001F0000
          001F000000070000000000000000000000000000004F000000FF000000FF0000
          004F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000004F000000FF000000FF0000
          004F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000004F000000FF000000FF0000
          004F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000045000000B80000004A000000000000004F000000FF000000FF0000
          004F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000C1000000FF000000CB000000000000004F000000FF000000FF0000
          004F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000005A000000D700000062000000000000004F000000FF000000FF0000
          004F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000004F000000FF000000F50000
          00960000003F0000003F0000003F0000003F0000003F0000003F0000003F0000
          003F0000003F0000003F0000003F0000003F0000003F0000003F0000003F0000
          003F0000003F0000003F0000003F0000003F0000003F0000003F0000003F0000
          003F0000003F0000003F0000003F0000003F00000096000000F50000006B0000
          00F8000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000F80000006B000000000000
          00070000000F0000000F0000000F0000004B000000FF0000001E0000000F0000
          000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
          000F0000000F0000000F0000000F0000000F0000000F0000000F0000001E0000
          00FF0000004B0000000F0000000F0000000F0000000700000000000000000000
          00000000000000000000000000000000003F000000FF0000000F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000F0000
          00FF0000003F0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003F000000FF0000000F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000F0000
          00FF0000003F0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003F000000FF0000000F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000F0000
          00FF0000003F0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003F000000FF0000000F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000F0000
          00FF0000003F0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003F000000FF0000000F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000F0000
          00FF0000003F0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003F000000FF0000000F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000F0000
          00FF0000003F0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003F000000FF0000005A0000004F0000
          004F0000004F0000004F0000004F0000004F0000004F0000004F0000004F0000
          004F0000004F0000004F0000004F0000004F0000004F0000004F0000005A0000
          00FF0000003F0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003F000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF0000003F0000000000000000000000000000000000000000}
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        OnClick = SpbImprimirClick
        ExplicitLeft = 540
      end
      object SpbSair: TSpeedButton
        Left = 1024
        Top = 0
        Width = 100
        Height = 42
        Cursor = crHandPoint
        Hint = 'Sair'
        Align = alRight
        Caption = 'Sair'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000040301052E210D3735260F4035260F4035260F4035260F403526
          0F4035260F4035260F4035260F4035260F4035260F4034250F3F1811071D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001912071EB38233DBAA792FCD9F722CC09F722CC09F722CC09F722CC09F72
          2CC09F722CC09F722CC09F722CC09F722CC09F722CC09F722CC0C28935EB6649
          1C7B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000825D249D694B1D7F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000110C0515C289
          35EB1811071D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009D702BBF35260F4000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009F72
          2CC034250F3F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009F722CC035260F4000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009F72
          2CC035260F400000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009F722CC035260F4000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009F72
          2CC035260F400000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009F722CC035260F4000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009F72
          2CC035260F400000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00005C421A6F1F16092500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009F72
          2CC035260F400000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000007050415211A126A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009F72
          2CC035260F400000000000000000000000000000000000000000000000000000
          000000000000000000000000000007050415423123D2271E157C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009F72
          2CC035260F400000000000000000000000000000000000000000000000000000
          0000000000000000000007050415423123D2281F168100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009F72
          2CC035260F400000000000000000000000000000000000000000000000000000
          00000000000007050415423123D2292016820000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009F72
          2CC035260F400000000000000000000000000000000000000000000000000000
          00000403020E423123D2473727E1281F1680281F1680281F1680281F1680281F
          1680281F1680281F1680281F1680281F1680281F1680281F1680281F1680281F
          1680281F1680281F1680211A1269000000000000000000000000000000009F72
          2CC035260F400000000000000000000000000000000000000000000000000000
          00000303020B403222CC473727E1281F1680281F1680281F1680281F1680281F
          1680281F1680281F1680281F1680281F1680281F1680281F1680281F1680281F
          1680281F1680281F1680211A126A000000000000000000000000000000009F72
          2CC035260F400000000000000000000000000000000000000000000000000000
          00000000000005040311403223CD292017830000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009F72
          2CC035260F400000000000000000000000000000000000000000000000000000
          0000000000000000000006040312413024CE2920178300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009F72
          2CC035260F400000000000000000000000000000000000000000000000000000
          000000000000000000000000000006040312403324D0281F1680000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009F72
          2CC035260F400000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000006050313231B1370000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009F72
          2CC035260F400000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00005940196C1E15082400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009F72
          2CC035260F400000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009F722CC035260F4000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009F72
          2CC035260F400000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009F722CC035260F4000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009F72
          2CC035260F400000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009F722CC035260F4000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009F72
          2CC035260F400000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009C702CBD3728104300000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000A173
          2DC432240E3D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00006C4E1E838D6528AB0A07030C000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000034250F3FC18C
          37EC0D0904100000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000007050208855F25A1CA9037F7D3973BFFD3973BFFD3973BFFD3973BFFD397
          3BFFD3973BFFD3973BFFD3973BFFD3973BFFD3973BFFD3973BFFB78331DD3B2A
          1047000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        OnClick = SpbSairClick
        ExplicitLeft = 718
        ExplicitHeight = 36
      end
      object btnEstornar: TSpeedButton
        Left = 825
        Top = 0
        Width = 95
        Height = 42
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Estornar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000015000000080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000AB000000480000000000000000000000000000
          001A000000500000008500000087000000560000002400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000AB000000480000000000000017000000A70000
          00D9000000A30000006E0000006C0000009D000000CF000000AF0000001C0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000AB0000004800000059000000DC0000001F0000
          000000000000000000000000000000000000000000000000002A000000D70000
          0052000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000AB00000058000000C000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00A4000000520000000000000000000000000000000000000000000000000000
          000000000000000000000000008B000000F9000000CB000000C7000000C70000
          0078000000000000000000000000000000000000000000000000000000000000
          0000000000D70000001C00000000000000000000000000000000000000000000
          0000000000000000000000000017000000310000002C0000002C0000002C0000
          001A000000000000000000000000000000000000000000000000000000000000
          000000000029000000AF00000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000B60000003D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000850000006E000000000000000000000000000000000000
          0000000000000000005A00000019000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000540000009F000000000000000000000000000000000000
          0000000000000000008B00000068000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000120000006B000000000000000000000000000000000000
          0000000000000000005A00000099000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000029000000CA000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000B2000000220000000000000000000000000000
          000000000000000000000000000000000000000000190000002A0000002A0000
          002A0000002A0000001800000000000000000000000000000000000000000000
          0000000000000000000000000023000000D00000000000000000000000000000
          0000000000000000000000000000000000000000007D000000C9000000C90000
          00C9000000F1000000A700000000000000000000000000000000000000000000
          000000000000000000000000000000000059000000A100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00AF00000078000000A800000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000059000000D0000000220000
          000000000000000000000000000000000000000000000000001E000000DB0000
          00590000004B000000A800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000023000000B20000
          00CA00000099000000660000006B000000A0000000D6000000A9000000180000
          00000000004B000000A800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00290000005A0000008900000088000000530000001D00000000000000000000
          00000000004B000000A800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000A0000001600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ParentFont = False
        Transparent = False
        OnClick = btnEstornarClick
        ExplicitLeft = 630
      end
      object SpbProcurar: TSpeedButton
        Left = 475
        Top = 0
        Width = 95
        Height = 42
        Cursor = crHandPoint
        Hint = 'Procurar registro'
        Align = alLeft
        Caption = 'Procurar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000100
          000217120D49110D093700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000002010105372A
          1DAE3F3123C8473727E21C150F58000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000002010105372A1DAE372A
          1DAE02010105251D15772D231891000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000002010105372A1DAE372A1DAE0201
          0105140F0B3F473926E90F0C0831000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000002010105372A1DAE372A1DAE02010105140F
          0B3F473926E9140F0B3F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000B09062317120C481A140E5416110C450907051C000000000000
          0000000000000000000002010105372A1DAE372A1DAE02010105140F0B3F4739
          26E9140F0B3F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000070504152920
          1784473727E2483829EC3C2F22C3372C1FB33D2E21C24A3729EB433323D7251C
          14750403020C02010105372A1DAE372A1DAE02010105140F0B3F473926E9140F
          0B3F000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001D17105D4B3A27EE3328
          1DA6120E0A38020201041E1508242B1F0C341E15082402010003110D09363328
          1CA4453525E33A2E1FBA372A1DAE02010105140F0B3F473926E9140F0B3F0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000281F1681483828E5130F0B3E1F16
          09256F4F1E866D4E1F844D37165D3E2C114B4B36155B6A4C1E806B4C1E811D15
          0823130E0A3B483828E5221B136C140F0B3F473926E9140F0B3F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000021191268453525E30A080620553D18676246
          1B76070502080000000000000000000000000000000000000000050401065C42
          1A6F513A17620907051D463426DF473727E2140F0B3F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000B0806224A392AF3110D09355B41196E3C2B11490000
          0000000000000000000000000000000000000000000000000000000000000000
          000037270F42543C1765100C0932483927EA0705041500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000032271CA02E241A942C1F0C35573E1869000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000050391661281C0B302D2219902C22188D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000403020E4B3C29F60B0806227755219002010002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000010100016D4E1F840A08051F483A29ED02010106000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000018120D4B403324D0140E06185E431A7100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000573E1869110C0515413024CE130F0B3D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000251C147533271CA1412F124F2D200C3600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000271C0B2F3F2D124C32271B9F211A1269000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002A2017852D23198E533B17641A12071F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000120D0516523B17632B211889271E157B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000271E157C30251A984B36155B2218092900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001B140821493414582D221990221B136D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001C160F593C2D21BE291D0B314834145700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000412F124F251B0A2D3A2D20B816110C45000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000907051C4D3C28F50504020D7554218E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000006C4E1E830302020A483A29ED0403020C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003B2E21BD221A126B563E1868291D0B31000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000024190A2B523B17632019116535291DAA00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000014100B41483628E7070604147E5923980F0B04120000
          0000000000000000000000000000000000000000000000000000000000000000
          00000C09030F7553218D06050310453525E30F0C083100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000031261B9C382C1EB40E0A05147F5B23991F17
          0926000000000000000000000000000000000000000000000000000000001B14
          08217655218F0D080310372B1EAF2B2118890000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000020201073B2E20BC372B1EB0090703126145
          1B756D4E1F842C1F0C35030201040000000002020103291E0C32674A1D7D5D42
          1A700604030D34281CA9362A1EAC010101030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000302010833271CA1443624DD1A14
          0E540A07030D43301351674A1D7D6A4C1E80674A1D7D422F13500806020B1913
          0E4F433323D72C21188C01010103000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000017120D4A3F30
          23CA483726E431261B9C231B13701E181161231B136E2F251A99473727E13B2E
          20BC120E0A380000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000D0A0729211A12692D23198E30251B9A2C21188C1F1811640A0806200000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SpbProcurarClick
        ExplicitLeft = 450
      end
      object SpbSalvar: TSpeedButton
        Left = 190
        Top = 0
        Width = 95
        Height = 42
        Cursor = crHandPoint
        Hint = '[tecla F3] Alterar registro'
        Align = alLeft
        Caption = 'Gravar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000A000000370000003C0000
          003C0000003C0000003C0000003C0000003C0000003C0000003C0000003C0000
          003C0000003C0000003C0000003C0000003C0000003C0000003C000000370000
          000A000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000A000000D9000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00D90000000A0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000037000000FF000000290000000C0000
          000C0000005C000000F40000000C0000000C0000000C0000000C0000000C0000
          000C0000000C0000000C000000F40000005C0000000C0000000C000000290000
          00FF000000370000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003C000000FF0000000C000000000000
          000000000054000000F400000000000000000000000000000000000000000000
          00000000000000000000000000F40000005400000000000000000000000C0000
          00FF0000003C0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003C000000FF0000000C000000000000
          000000000054000000F400000000000000000000000000000000000000000000
          00000000000000000000000000F40000005400000000000000000000000C0000
          00FF0000003C0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003C000000FF0000000C000000000000
          000000000054000000F400000000000000000000000000000000000000000000
          00000000000000000000000000F40000005400000000000000000000000C0000
          00FF0000003C0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003C000000FF0000000C000000000000
          000000000054000000F400000000000000000000000000000000000000000000
          00000000000000000000000000F40000005400000000000000000000000C0000
          00FF0000003C0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003C000000FF0000000C000000000000
          000000000054000000F400000000000000000000000000000000000000000000
          00000000000000000000000000F40000005400000000000000000000000C0000
          00FF0000003C0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003C000000FF0000000C000000000000
          00000000004D000000FF000000FC000000FC000000FC000000FC000000FC0000
          00FC000000FC000000FC000000FF0000004D00000000000000000000000C0000
          00FF0000003C0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003C000000FF0000000C000000000000
          000000000005000000460000004C0000004C0000004C0000004C0000004C0000
          004C0000004C0000004C000000460000000500000000000000000000000C0000
          00FF0000003C0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003C000000FF0000000C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000C0000
          00FF0000003C0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003C000000FF0000000C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000C0000
          00FF0000003C0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003C000000FF0000000C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000C0000
          00FF0000003C0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003C000000FF0000000C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000C0000
          00FF0000003C0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003C000000FF0000000C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000C0000
          00FF0000003C0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003C000000FF0000000C0000000B0000
          00BE000000CC000000CC000000CC000000CC000000CC000000CC000000CC0000
          00CC000000CC0000009A00000000000000000000000000000000000000360000
          00FF0000002E0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003C000000FF0000000C000000240000
          00FF0000008E0000007C0000007C0000007C0000007C0000007C0000007C0000
          007C000000AD000000E80000000000000000000000000000002F000000EC0000
          00AA000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003C000000FF0000000C000000240000
          00FF00000024000000BF0000004D000000000000000000000000000000000000
          000000000060000000E800000000000000000000002F000000EC000000AE0000
          0005000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003C000000FF0000000C000000240000
          00FF00000024000000D800000060000000000000000000000000000000000000
          000000000060000000E8000000000000002F000000EC000000AE000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000037000000FF000000290000002E0000
          00FF0000002E00000010000000060000000C0000000C0000000C0000000C0000
          000C00000067000000E900000036000000EC000000AE00000005000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000A000000D9000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000AA0000000500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000A000000370000003C0000
          003C0000003C0000003C0000003C0000003C0000003C0000003C0000003C0000
          003C0000003C0000003C0000002E000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        OnClick = SpbSalvarClick
        ExplicitLeft = 180
      end
    end
  end
  object rgOpcaoEntrada: TRadioGroup
    Left = 0
    Top = 50
    Width = 1134
    Height = 53
    Align = alTop
    Caption = 'Forma de Entrada'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'XML do Fornecedor'
      'Manual')
    TabOrder = 5
    OnClick = rgOpcaoEntradaClick
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 360
    Top = 320
  end
  object dsProduto: TDataSource
    DataSet = QryEntradaItem
    Left = 163
    Top = 349
  end
  object dsCtaPagar: TDataSource
    DataSet = QryCtaPagar
    Left = 231
    Top = 351
  end
  object dsFretePagar: TDataSource
    DataSet = QryFretePagar
    Left = 223
    Top = 461
  end
  object dsEntrada: TDataSource
    DataSet = QryEntrada
    Left = 59
    Top = 348
  end
  object OpenDlgXML: TOpenDialog
    Filter = 'XML|*.xml|Todos|*.*'
    Left = 655
    Top = 309
  end
  object spCompraEstoque: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPCOMPRA_ESTOQUE'
    Left = 471
    Top = 319
    ParamData = <
      item
        Position = 1
        Name = 'NCOMPRA'
        DataType = ftInteger
        FDDataType = dtInt32
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ACAO'
        DataType = ftString
        FDDataType = dtArrayRef
        ParamType = ptInput
        Size = 20
      end>
  end
  object QryEntrada: TFDQuery
    AfterPost = QryEntradaAfterPost
    AfterScroll = QryEntradaAfterScroll
    OnNewRecord = QryEntradaNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM COMPRAS'
      'WHERE'
      'CODIGO=:IDCOMPRA')
    Left = 59
    Top = 301
    ParamData = <
      item
        Name = 'IDCOMPRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QryEntradaItem: TFDQuery
    BeforePost = QryEntradaItemBeforePost
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM COMPRAS_ITENS'
      'WHERE'
      'CODIGO=:IDCOMPRA')
    Left = 163
    Top = 301
    ParamData = <
      item
        Name = 'IDCOMPRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QryCtaPagar: TFDQuery
    BeforePost = QryCtaPagarBeforePost
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM FIN_CTAPAGAR'
      'WHERE'
      'FORNECEDOR=:IDFORNECEDOR'
      'AND'
      'NOTAFISCAL=:IDNOTAFISCAL'
      'AND'
      'ORIGEM='#39'COMPRA'#39)
    Left = 233
    Top = 303
    ParamData = <
      item
        Name = 'IDFORNECEDOR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDNOTAFISCAL'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QryFretePagar: TFDQuery
    BeforePost = QryFretePagarBeforePost
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM FIN_CTAPAGAR'
      'WHERE'
      'FORNECEDOR=:IDFORNECEDOR'
      'AND'
      'NOTAFISCAL=:IDNOTAFISCAL'
      'AND'
      'ORIGEM='#39'FRETE'#39)
    Left = 227
    Top = 413
    ParamData = <
      item
        Name = 'IDFORNECEDOR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDNOTAFISCAL'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QryEstoque: TFDQuery
    BeforeOpen = QryEstoqueBeforeOpen
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'select * from cad_produtos'
      'where'
      'empresa=:idempresa')
    Left = 55
    Top = 407
    ParamData = <
      item
        Name = 'IDEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsEstoque: TDataSource
    DataSet = QryEstoque
    Left = 55
    Top = 455
  end
  object ACBrValidador1: TACBrValidador
    TipoDocto = docGTIN
    IgnorarChar = './-'
    Left = 552
    Top = 360
  end
end
