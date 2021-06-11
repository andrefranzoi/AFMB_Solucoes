object FrmCompraEntrada: TFrmCompraEntrada
  Left = 249
  Top = 16
  VertScrollBar.Style = ssFlat
  Caption = 'Compras'
  ClientHeight = 535
  ClientWidth = 956
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object BoxFornecedor: TGroupBox
    Left = 0
    Top = 50
    Width = 956
    Height = 137
    Align = alTop
    Caption = 'Dados Principais'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    ExplicitTop = 33
    object Label2: TLabel
      Left = 83
      Top = 14
      Width = 56
      Height = 13
      Caption = 'Nota Fiscal:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 10
      Top = 14
      Width = 26
      Height = 13
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 169
      Top = 14
      Width = 37
      Height = 13
      Caption = 'Entrada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 679
      Top = 94
      Width = 49
      Height = 14
      Caption = 'Validade:'
    end
    object Label14: TLabel
      Left = 610
      Top = 94
      Width = 29
      Height = 14
      Caption = 'Lote:'
    end
    object Label1: TLabel
      Left = 518
      Top = 94
      Width = 78
      Height = 14
      Caption = 'Valor do Frete'
    end
    object DBEditData: TDBEdit
      Left = 10
      Top = 28
      Width = 65
      Height = 21
      Color = clBtnFace
      DataField = 'DATA'
      DataSource = ds_Compras
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object EditDocumento: TDBEdit
      Left = 81
      Top = 28
      Width = 82
      Height = 21
      DataField = 'NOTAFISCAL'
      DataSource = ds_Compras
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit7: TDBEdit
      Left = 169
      Top = 28
      Width = 89
      Height = 21
      DataField = 'DATAENTRADA'
      DataSource = ds_Compras
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit16: TDBEdit
      Left = 610
      Top = 109
      Width = 65
      Height = 22
      DataField = 'LOTE'
      DataSource = ds_Compras
      TabOrder = 14
    end
    object DBEdit17: TDBEdit
      Left = 680
      Top = 109
      Width = 65
      Height = 22
      DataField = 'VALIDADE'
      DataSource = ds_Compras
      TabOrder = 15
    end
    object EditFornecedor: TIDBEditDialog
      Left = 264
      Top = 28
      Width = 70
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
      Text = '0'
      Visible = True
      OnChange = EditFornecedorChange
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
      DataSource = ds_Compras
      ButtonKeyClickBtn = 119
      SQLdbFazBusca = True
      SQLdbFocusControl = EditNomeCliente
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
    object EditNomeCliente: TEdit
      Left = 336
      Top = 28
      Width = 409
      Height = 21
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object EditNomePlanoContas: TEdit
      Left = 595
      Top = 68
      Width = 150
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
      TabOrder = 10
    end
    object Edit1: TEdit
      Left = 88
      Top = 68
      Width = 150
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
      TabOrder = 6
    end
    object DbEditCFOP: TIDBEditDialog
      Left = 10
      Top = 68
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
      TabOrder = 5
      Text = ''
      Visible = True
      EditType = etUppercase
      EmptyText = 'F8 - Pesquisar'
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
      DataSource = ds_Compras
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
      Left = 319
      Top = 68
      Width = 131
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
    object EstSearchDialogZeos1: TIDBEditDialog
      Left = 244
      Top = 68
      Width = 74
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
      EmptyText = 'F8 - Pesquisar'
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
      DataSource = ds_Compras
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
    object EditPlano: TIDBEditDialog
      Left = 456
      Top = 68
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
      TabOrder = 9
      Text = ''
      Visible = True
      EditType = etUppercase
      EmptyText = 'F8 - Pesquisar'
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
      DataSource = ds_Compras
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
    object EditTransportadora: TIDBEditDialog
      Left = 10
      Top = 109
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
      TabOrder = 11
      Text = ''
      Visible = True
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
      DataField = 'TRANSPORTADORA'
      DataSource = ds_Compras
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
      Left = 88
      Top = 109
      Width = 424
      Height = 21
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
      Text = '***'
    end
    object DBEdit2: TDBEdit
      Left = 518
      Top = 109
      Width = 71
      Height = 22
      DataField = 'FRETE_VALOR'
      DataSource = ds_Compras
      TabOrder = 13
    end
  end
  object BoxProdutos: TGroupBox
    Left = 0
    Top = 187
    Width = 956
    Height = 175
    Align = alClient
    Caption = 'ITENS DA NOTA FISCAL'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    OnEnter = BoxProdutosEnter
    ExplicitTop = 170
    ExplicitHeight = 192
    object DBGrid_Produtos: TDBGrid
      Left = 2
      Top = 15
      Width = 952
      Height = 120
      Align = alClient
      Color = 14811135
      DataSource = ds_ComprasItens
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Calibri'
      TitleFont.Style = [fsBold]
      OnEnter = DBGrid_ProdutosEnter
      OnKeyDown = DBGrid_ProdutosKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'PRODUTO'
          ReadOnly = True
          Title.Caption = 'PRODUTO:'
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          ReadOnly = True
          Title.Caption = 'DESCRI'#199#195'O DO PRODUTO:'
          Width = 171
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UND'
          ReadOnly = True
          Title.Caption = 'UNIDADE:'
          Width = 56
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Alignment = taRightJustify
          Title.Caption = 'QTDE:'
          Width = 75
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'VL_UNITARIO'
          Title.Alignment = taRightJustify
          Title.Caption = 'VALOR UNIT'#193'RIO:'
          Width = 97
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'DESCONTO'
          Title.Alignment = taRightJustify
          Title.Caption = 'DESCONTO %:'
          Width = 80
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'ICMS'
          Title.Alignment = taRightJustify
          Title.Caption = 'ICMS %'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ICMS_VALOR'
          Title.Alignment = taRightJustify
          Title.Caption = 'ICMS VALOR:'
          Width = 73
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'IPI'
          Title.Alignment = taRightJustify
          Title.Caption = 'IPI %'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IPI_VALOR'
          Title.Alignment = taRightJustify
          Title.Caption = 'IPI VALOR:'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_TOTAL'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'VALOR TOTAL:'
          Width = 85
          Visible = True
        end>
    end
    object GroupBox4: TGroupBox
      Left = 2
      Top = 135
      Width = 952
      Height = 38
      Align = alBottom
      Enabled = False
      TabOrder = 1
      ExplicitTop = 152
      object Label5: TLabel
        Left = 218
        Top = 14
        Width = 156
        Height = 13
        Alignment = taRightJustify
        Caption = 'QUANTIDADE DE PRODUTOS:'
      end
      object DBEdit10: TDBEdit
        Left = 376
        Top = 10
        Width = 73
        Height = 21
        Color = 14811135
        DataField = 'QTDE_PRODUTOS'
        DataSource = ds_Compras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  inline FrmFrameBotoes_II1: TFrmFrameBotoes_II
    Left = 0
    Top = 461
    Width = 956
    Height = 74
    Align = alBottom
    PopupMenu = FrmFrameBotoes_II1.PopupMenu1
    TabOrder = 2
    TabStop = True
    ExplicitTop = 461
    ExplicitWidth = 956
    ExplicitHeight = 74
    inherited PainelBotoes: TPanel
      Width = 956
      Height = 74
      OnDblClick = FrmFrameBotoes_II1PainelBotoesDblClick
      ExplicitWidth = 956
      ExplicitHeight = 74
      inherited SpbSair: TSpeedButton
        Height = 72
        OnClick = FrmFrameBotoes_II1SpbSairClick
        ExplicitTop = 1
        ExplicitHeight = 72
      end
      inherited SpbImprimir: TSpeedButton
        Left = 521
        Height = 72
        OnClick = FrmFrameBotoes_II1SpbImprimirClick
        ExplicitLeft = 521
        ExplicitTop = 1
        ExplicitHeight = 72
      end
      inherited SpbProcurar: TSpeedButton
        Left = 391
        Height = 72
        OnClick = FrmFrameBotoes_II1SpbProcurarClick
        ExplicitLeft = 385
        ExplicitTop = -2
        ExplicitHeight = 72
      end
      inherited SpbExcluir: TSpeedButton
        Height = 72
        OnClick = FrmFrameBotoes_II1SpbExcluirClick
        ExplicitLeft = 255
        ExplicitTop = -2
        ExplicitHeight = 72
      end
      inherited SpbCancelar: TSpeedButton
        Height = 72
        OnClick = FrmFrameBotoes_II1SpbCancelarClick
        ExplicitTop = 1
        ExplicitHeight = 72
      end
      inherited SpbSalvar: TSpeedButton
        Height = 72
        OnClick = FrmFrameBotoes_II1SpbSalvarClick
        ExplicitLeft = 125
        ExplicitTop = -2
        ExplicitHeight = 72
      end
      inherited SpbEditar: TSpeedButton
        Height = 72
        OnClick = FrmFrameBotoes_II1SpbEditarClick
        ExplicitLeft = 60
        ExplicitTop = -2
        ExplicitHeight = 72
      end
      inherited SpbAdicionar: TSpeedButton
        Height = 72
        OnClick = FrmFrameBotoes_II1SpbAdicionarClick
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitHeight = 72
      end
      inherited SpbExtra1: TSpeedButton
        Left = 326
        Height = 72
        Hint = 'Estornar Compra'
        Caption = 'Estornar...'
        Enabled = False
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000002000000070000000C0000001100000012000000100000
          000B000000040000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000030000
          000200000004020E0429093410800E5519C3116C1FEF106B1EEF0C5317C70732
          0E8A020D03340000000900000002000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000030B3D14840000
          0009051B09451A6128C22C9247FF2C994EFF33A157FF41A865FF45A664FF3997
          51FF155C24CA0419075300000008000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000004177D29FF0C45
          1696186228C04FB371FF4BC27EFF4FC784FF4BB774FF3C9C57FF1F8132FF1E7E
          30FF38954FFF175C24C7020D0331000000040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000003187E2AFF4AA8
          65FF2F9D4FFF5ED393FF53CE8BFF49B672FF247236D308300E76020E0431020E
          0431072E0D7A216D31D507320E83000000080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000002187F2AFF87DC
          AEFF4EC680FF56D28DFF40B46BFF217134D10418083E00000005000000020000
          00020000000703170642093E1195000000090000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001197F2BFF93E5
          BCFF58D28FFF50C883FF279343FF0931106F00000006000000070000000D0000
          000F0000001100000016062B0C72000000140000000400000000000000000000
          000000000000000000008D6A4DB7C59469FFC49269FFC49267FFC39167FFC38F
          66FFC28E65FFC18E63FFC18D62FFC08D62FFBF8B61FFDCBFA6FF19802CFF97E9
          C0FF97E8C0FF87DCADFF49A764FF69955CFFD3B69DFF70925DFF117220FF1071
          20FF10701FFF0F6E1DFF0E6D1EFF0D6B1CFF0000000E00000000000000000000
          00000000000000000000C7956CFFFFFFFFFFF7EDE3FFF6ECE2FFF6EBE1FFF5EB
          E0FFF5EADFFFF5EADFFFF5EADEFFF4E9DDFFF4E8DCFFF4E8DCFF1A812DFF1980
          2CFF197F2CFF197F2BFF187E2AFF177D29FF83AE7EFFE9DBCEFF689966FF43A0
          5DFF5BBD82FF34A45BFF34A25AFF0E6E1DFF0000001100000000000000000000
          00000000000000000000C8986FFFFFFFFFFFFBF6F0FFFBF6EFFFFBF5EEFFFBF5
          EDFFFBF4ECFFFBF4ECFFFAF4ECFFFAF4ECFFF9F3EBFFFAF3ECFFF9F2EAFFA5C6
          A1FFF7F1E8FFF8F1E7FFF8F0E7FFF7EFE5FFF8EFE5FFF2EAE1FF8BAB83FF3F9F
          5BFF5ECF92FF4EC683FF3DA964FF0F6F1EFF0000001000000000000000000000
          00000000000000000000C99A70FFFFFFFFFFFBF6F0FFFBF6F0FFFBF5F0FFFBF5
          EFFFFBF4EEFFFBF4EDFFFAF4ECFFFAF4ECFFF9F3ECFFFAF3ECFFF9F2EAFF7FB2
          82FFC8D8C0FFF6EFE8FFF8F0E7FFF8F0E6FFF5ECE3FFC0CEB7FF4F995CFF4DBB
          79FF50CB87FF46BD77FF58BB7EFF0F701EFF0000000F00000000000000000000
          00000000000000000000CA9B73FFFFFFFFFFFBF6F0FFFBF6F1FFFBF6F0FFFBF6
          F0FFFBF5EFFFFBF5EEFFFAF4EDFFFAF4ECFFF9F4ECFFFAF4ECFFF9F2EAFF95BE
          96FF58A568FF9BC09AFFD7DFCDFFD6DECBFF97BB93FF4E9D5DFF4AB874FF52CF
          8AFF4DC883FF369E55FF3F9E5AFF10711FFF0000000D00000000000000000000
          00000000000000000000CC9D75FFFFFFFFFFFCF7F2FFFCF7F1FFCAA07AFFC9A0
          79FFC9A079FFC99F79FFC89F79FFFAF4EEFFD3B296FFFAF4ECFFF9F4ECFFDFE5
          D5FF62A86DFF41A15BFF248938FF218635FF2F974AFF45B66FFF5AD391FF65D6
          9AFF4DB270FF1A6028C10A40139A117321FF0000000B00000000000000000000
          00000000000000000000CD9E76FFFFFFFFFFFCF8F3FFFCF8F2FFF3E6DAFFF3E5
          D9FFF2E5D9FFF2E5D9FFF2E5D8FFFAF5EFFFFAF4EEFFFAF4EDFFFAF4ECFFFAF4
          ECFFC7DAC1FF62A96DFF47A661FF68C188FF86DAABFF8BDEB3FF70C994FF49A7
          64FF1B622ABE041B08420000000A093911850000000500000000000000000000
          00000000000000000000CEA078FFFFFFFFFFFCF8F4FFFCF8F3FFCBA37EFFCCA3
          7DFFCBA27DFFCAA17CFFCBA17BFFFBF6F0FFD4B597FFFAF4EEFFD3B396FFFBF4
          EDFFFBF4ECFFE0E6D5FF91B68AFF549B5AFF2B873AFF2A8639FF529858FF82A1
          71FF020E04220000000200000001000000020000000100000000000000000000
          00000000000000000000CFA27BFFFFFFFFFFFCF8F4FFFCF8F4FFF3E7DCFFF3E6
          DBFFF3E6DAFFF3E6DBFFF2E5D9FFFCF6F0FFFBF5F0FFFAF5EFFFFAF4EEFFFBF4
          EEFFFBF4EEFFFAF4EDFFF0E3D6FFF0E3D5FFF8F3EAFFF7F2E9FFF2E6DAFFDFC6
          B0FF000000010000000000000000000000000000000000000000000000000000
          00000000000000000000D1A47CFFFFFFFFFFFCF9F4FFFCF9F4FFCDA581FFCDA6
          80FFCDA580FFCCA47FFFCCA37FFFFCF7F1FFD5B69AFFFBF6F0FFD4B598FFFBF5
          F0FFD5B598FFFAF4EEFFCAA07AFFC9A07AFFFAF4EBFFFAF3ECFFF5E8DEFFC290
          65FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D1A47EFFFFFFFFFFFDF9F5FFFDF9F4FFF3E8DCFFF3E8
          DCFFF3E8DCFFF3E8DBFFF3E7DBFFFCF8F2FFFBF7F1FFFBF6F1FFFBF6F0FFFBF6
          F0FFFBF6F0FFFBF5EFFFF2E4D7FFF1E4D6FFFAF4ECFFFAF4ECFFF5E9DEFFC491
          68FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D2A780FFFFFFFFFFFDFAF5FFFDFAF5FFD0A984FFD0A8
          83FFCFA882FFCEA782FFCEA682FFFCF8F3FFD7B89CFFFCF7F2FFD6B79BFFFCF7
          F0FFD6B69AFFFBF6F0FFCBA37DFFCBA27CFFFAF4EEFFFAF4EDFFF5EADFFFC493
          6AFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D3A882FFFFFFFFFFFDFAF7FFFDFAF6FFF3E8DDFFF3E8
          DDFFF3E8DCFFF3E8DCFFF3E7DCFFFCF8F3FFFCF7F2FFFCF7F2FFFCF8F2FFFBF7
          F2FFFBF6F0FFFCF7F0FFF2E5D8FFF2E5D9FFFBF5EFFFFBF5EDFFF6ECE0FFC695
          6CFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D5A983FFFFFFFFFFFDFAF8FFFDFAF8FFD2AB87FFD1AB
          87FFD1AA86FFD0AA86FFD0AA85FFFCF9F4FFD9BB9FFFFCF8F2FFD8B99DFFFBF7
          F2FFD8B99CFFFCF7F0FFCEA580FFCDA580FFFBF6F0FFFBF5EFFFF6ECE2FFC796
          6DFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D5AB85FFFFFFFFFFFDFAF8FFFDFAF9FFF3E9E0FFF3E9
          DFFFF3E8DEFFF3E8DDFFF3E9DCFFFCF9F5FFFCF9F4FFFDF9F4FFFCF8F3FFFBF8
          F2FFFBF8F2FFFCF7F2FFF2E5DAFFF2E6D9FFFBF7F0FFFBF5F0FFF7ECE4FFC898
          6FFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D7AC87FFFFFFFFFFFDFBF9FFFDFBF9FFD4AD8AFFD4AE
          8AFFD3AD8AFFD3AC89FFD2AC88FFFDF9F5FFDABDA1FFFDF9F4FFD9BCA0FFFCF9
          F3FFD9BA9FFFFCF7F3FFD0A884FFCFA883FFFBF7F0FFFBF6F0FFF7EDE5FFC999
          71FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D7AD89FFFFFFFFFFFDFCF9FFFDFCF9FFF3E9E0FFF3E9
          E0FFF3E9DFFFF3E9DEFFF3E9DEFFFDF9F6FFFDF9F5FFFCF9F4FFFCF9F4FFFDF8
          F4FFFDF8F4FFE9E6E2FFD9CFC3FFD6CBC0FFD5D1CCFFD1CDC8FFCAC4BDFFA47F
          5DFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D9AF8AFFFFFFFFFFFEFCFAFFFEFCF9FFD5B08DFFD5B0
          8DFFD4B08CFFD4AE8BFFD4AE8BFFFDFAF6FFDBBEA3FFFCFAF6FFDBBEA2FFFDF9
          F5FFDAB18FFFCA9264FFC89264FFC79063FFC58B5BFFC48958FFC38757FFC791
          66FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D9B08BFFFFFFFFFFFEFDFAFFFEFDFAFFF3EBE1FFF3EB
          E0FFF3EAE0FFF3E9E0FFF3E9E0FFFDFBF7FFFDFBF7FFFDFAF7FFFDF9F6FFFDF9
          F5FFCF986BFFFFFFFFFFF3E8DCFFF2E6D9FFF6EAE0FFE6CBB5FFD6AF8EFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000DAB28DFFFFFFFFFFFEFDFAFFFEFDFBFFD7B290FFD7B2
          8FFFD6B18FFFD6B18EFFD5B18DFFFDFCF9FFDDC1A5FFFDFAF7FFDCC0A4FFFDF9
          F5FFD09C70FFFFFFFFFFF3E9DFFFEFE1D1FFE7CFB9FF977050BF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000DBB38EFFFFFFFFFFFEFDFBFFFEFDFBFFFEFDFBFFFEFD
          FAFFFEFCF9FFFEFCF9FFFEFCF9FFFDFCF9FFFDFBF8FFFDFBF7FFFDFAF7FFFDFA
          F7FFD3A073FFFFFFFFFFF9F3EDFFE8D2BEFF987252BE00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000DCB38FFFFFFFFFFFFEFEFCFFFFFEFCFFFFFDFCFFFEFD
          FBFFFEFDF9FFFEFDF9FFFEFDFAFFFEFCF9FFFDFCF9FFFDFCF8FFFDFBF9FFFDFB
          F8FFD4A277FFFAF5F1FFE9D3C1FF997354BE0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000DDB490FFFFFFFFFFFEFEFCFFFFFEFCFFFFFDFCFFFEFD
          FBFFFEFDFBFFFEFDFBFFFEFDFAFFFEFCF9FFFDFCF9FFFDFCF9FFFDFBF9FFFDFB
          F9FFD6A57AFFE9D4C3FF997657BE000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000DDB591FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFD8A87DFFDCB899FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000A5876DBDDDB692FFDDB591FFDDB491FFDCB490FFDCB3
          90FFDBB38FFFDBB28EFFDAB28DFFDAB18DFFDAB18CFFD9B08BFFD8AF8AFFD8AE
          8AFFD8AC84FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Visible = True
        OnClick = FrmFrameBotoes_II1BtnExtra1Click
        ExplicitLeft = 397
        ExplicitTop = -2
        ExplicitHeight = 72
      end
      inherited SpbExtra2: TSpeedButton
        Left = 456
        Height = 72
        Hint = 'Gerar Fatura a Pagar'
        Caption = 'Faturas...'
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000060606201919197B2828
          28C6323232F8282828C61919197B060606200000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001919197E00000000212121A5333333FF3333
          33FF333333FF333333FF333333FF212121A50606062000000000000000000000
          0000000000000000000000000000333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF08080828333333FF1919197E333333FF282828C71313
          135F0303030F1313135F282828C7333333FF1919197B00000000000000000000
          0000000000000000000000000000333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF01010105333333FF333333FF333333FF1313135F0000
          000000000000000000001313135F333333FF282828C600000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF333333FF1B1B1B860000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF333333FF333333FF1919
          197E000000001919197E333333FF333333FF333333FF333333FF000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001B1B1B86333333FF333333FF333333FF000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D400000000000000000282828C6333333FF1313135F0000
          000000000000000000001313135F333333FF333333FF333333FF000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001919197B333333FF282828C71313
          135F0303030F1313135F282828C7333333FF1919197E333333FF000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D40000000000000000000000000212121A5333333FF3333
          33FF333333FF333333FF333333FF212121A5000000001919197E000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000060606201919197B2828
          28C6323232F8282828C61919197B060606200000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D4000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Visible = True
        OnClick = FrmFrameBotoes_II1BtnExtra2Click
        ExplicitLeft = 487
        ExplicitTop = 6
        ExplicitHeight = 72
      end
    end
    inherited PopupMenu1: TPopupMenu
      Left = 760
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 956
    Height = 50
    Align = alTop
    Constraints.MinHeight = 50
    Color = 16024898
    ParentBackground = False
    ParentColor = False
    TabOrder = 3
    ExplicitWidth = 956
    inherited Image3: TImage
      Width = 956
      ExplicitWidth = 956
    end
    inherited pnTitulo: TPanel
      Width = 950
      Constraints.MinHeight = 27
      ExplicitWidth = 950
      ExplicitHeight = 27
      inherited LblBarraTitulo: TLabel
        Width = 799
        Caption = 'Compras | Entrada de Produtos'
        ExplicitWidth = 317
        ExplicitHeight = 33
      end
      inherited Image1: TImage
        ExplicitLeft = 900
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 888
        ExplicitLeft = 900
        ExplicitHeight = 31
      end
    end
  end
  object BoxCalculo: TGroupBox
    Left = 0
    Top = 362
    Width = 956
    Height = 99
    Align = alBottom
    Caption = 'C'#193'LCULO DO IMPOSTO'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    object Label21: TLabel
      Left = 593
      Top = 56
      Width = 97
      Height = 11
      Caption = 'Valor Total da Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label17: TLabel
      Left = 593
      Top = 18
      Width = 124
      Height = 11
      Caption = 'Valor Total dos Produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 5
      Top = 18
      Width = 123
      Height = 11
      Caption = 'Base de C'#225'lculo do ICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label20: TLabel
      Left = 300
      Top = 56
      Width = 121
      Height = 11
      Caption = 'Outras Desp. Acess'#243'rias'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label19: TLabel
      Left = 157
      Top = 56
      Width = 80
      Height = 11
      Caption = 'Valor do Seguro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 157
      Top = 18
      Width = 72
      Height = 11
      Caption = 'Valor do ICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label39: TLabel
      Left = 300
      Top = 17
      Width = 91
      Height = 11
      Caption = 'Valor Total do IPI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label18: TLabel
      Left = 5
      Top = 58
      Width = 72
      Height = 11
      Caption = 'Valor do Frete'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object ebase: TDBEdit
      Left = 3
      Top = 30
      Width = 130
      Height = 22
      DataField = 'ICMS_BASECALCULO'
      DataSource = ds_Compras
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object eseguro: TDBEdit
      Left = 164
      Top = 69
      Width = 130
      Height = 22
      DataField = 'VLR_SEGURO'
      DataSource = ds_Compras
      TabOrder = 5
    end
    object eoutras: TDBEdit
      Left = 300
      Top = 69
      Width = 130
      Height = 22
      DataField = 'VLR_DESPESAS_ASSESSORIAS'
      DataSource = ds_Compras
      TabOrder = 6
    end
    object eprod: TDBEdit
      Left = 593
      Top = 30
      Width = 130
      Height = 22
      DataField = 'VALOR_PRODUTOS'
      DataSource = ds_Compras
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object enota: TDBEdit
      Left = 593
      Top = 69
      Width = 130
      Height = 22
      DataField = 'TOTAL_NF'
      DataSource = ds_Compras
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit1: TDBEdit
      Left = 164
      Top = 28
      Width = 130
      Height = 22
      DataField = 'ICMS_VALOR'
      DataSource = ds_Compras
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 300
      Top = 30
      Width = 130
      Height = 22
      DataField = 'IPI_VALOR'
      DataSource = ds_Compras
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 5
      Top = 69
      Width = 130
      Height = 22
      DataField = 'FRETE_VALOR'
      DataSource = ds_Compras
      TabOrder = 4
    end
  end
  object dbProcurarPedido: TIDBEditDialog
    Left = 625
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
    TabOrder = 5
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
  object dbProcurarCompra: TIDBEditDialog
    Left = 326
    Top = 6
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
    TabOrder = 6
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
  object DS_CtaPagar: TDataSource
    DataSet = db_CtaPagar
    Left = 212
    Top = 314
  end
  object db_CtaPagar: TFDQuery
    BeforeOpen = db_CtaPagarBeforeOpen
    AfterOpen = db_CtaPagarAfterOpen
    BeforePost = db_CtaPagarBeforePost
    AfterPost = db_CtaPagarAfterPost
    AfterDelete = db_CtaPagarAfterDelete
    OnNewRecord = db_CtaPagarNewRecord
    MasterSource = ds_Compras
    MasterFields = 'EMPRESA;NOTAFISCAL;FORNECEDOR'
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM FIN_CTAPAGAR'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'NOTAFISCAL=:NOTAFISCAL'
      'AND'
      'FORNECEDOR=:FORNECEDOR'
      'AND'
      'ESPECIE='#39'COMPRA'#39)
    Left = 212
    Top = 266
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NOTAFISCAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FORNECEDOR'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object db_Compras: TFDQuery
    BeforeOpen = db_ComprasBeforeOpen
    AfterOpen = db_ComprasAfterOpen
    BeforePost = db_ComprasBeforePost
    AfterPost = db_ComprasAfterPost
    AfterScroll = db_ComprasAfterScroll
    OnNewRecord = db_ComprasNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT *  FROM COMPRAS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 25
    Top = 264
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_Compras: TDataSource
    DataSet = db_Compras
    OnStateChange = ds_ComprasStateChange
    Left = 27
    Top = 312
  end
  object ds_ComprasItens: TDataSource
    DataSet = db_ComprasItens
    OnStateChange = ds_ComprasItensStateChange
    Left = 123
    Top = 312
  end
  object db_ComprasItens: TFDQuery
    BeforeOpen = db_ComprasItensBeforeOpen
    AfterOpen = db_ComprasItensAfterOpen
    AfterEdit = db_ComprasItensAfterEdit
    BeforePost = db_ComprasItensBeforePost
    AfterPost = db_ComprasItensAfterPost
    AfterDelete = db_ComprasItensAfterDelete
    OnCalcFields = db_ComprasItensCalcFields
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM COMPRAS_ITENS'
      'WHERE'
      'CODIGO=:CODIGO'
      '')
    Left = 121
    Top = 264
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object db_ComprasPedidos: TFDQuery
    AfterOpen = db_ComprasPedidosAfterOpen
    BeforeClose = db_ComprasPedidosBeforeClose
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM Compra_Pedidos'
      'Where'
      'CODIGO=:CODIGO')
    Left = 313
    Top = 264
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object db_ComprasPedidosItens: TFDQuery
    MasterSource = ds_ComprasPedidos
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM Compra_Pedidos_Itens'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 313
    Top = 320
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object db_Estoque: TFDQuery
    BeforePost = db_EstoqueBeforePost
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_PRODUTOS'
      'where'
      'REFERENCIA=:REFERENCIA')
    Left = 484
    Top = 279
    ParamData = <
      item
        Name = 'REFERENCIA'
      end>
  end
  object ds_ComprasPedidos: TDataSource
    DataSet = db_ComprasPedidos
    Left = 316
    Top = 378
  end
  object SP_CalculaItens: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPCALCULA_ITEM_COMPRA'
    Left = 816
    Top = 296
    ParamData = <
      item
        Position = 1
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object SPATUALIZA_COMPRA_PRODUTOS: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPATUALIZA_COMPRA_PRODUTOS'
    Left = 824
    Top = 64
    ParamData = <
      item
        Position = 1
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = 'NCOMPRA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 4
        Name = 'SPRODUTO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 5
        Name = 'NQUANTIDADE'
        DataType = ftBCD
        Precision = 15
        NumericScale = 4
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'NNVALOR'
        DataType = ftBCD
        Precision = 15
        NumericScale = 4
        ParamType = ptInputOutput
      end>
  end
  object SPDELETA_COMPRA_PRODUTOS: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPDELETA_COMPRA_PRODUTOS'
    Left = 824
    Top = 360
    ParamData = <
      item
        Position = 1
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = 'NEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'NCOMPRA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'FORNECEDOR'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'NOTAFISCAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object db_CtaPagarFrete: TFDQuery
    BeforeOpen = db_CtaPagarFreteBeforeOpen
    AfterOpen = db_CtaPagarFreteAfterOpen
    BeforePost = db_CtaPagarFreteBeforePost
    AfterPost = db_CtaPagarFreteAfterPost
    AfterDelete = db_CtaPagarFreteAfterDelete
    OnNewRecord = db_CtaPagarFreteNewRecord
    MasterSource = ds_Compras
    MasterFields = 'EMPRESA;NOTAFISCAL;TRANSPORTADORA'
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM FIN_CTAPAGAR'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'NOTAFISCAL=:NOTAFISCAL'
      'AND'
      'FORNECEDOR=:TRANSPORTADORA'
      'AND'
      'ESPECIE='#39'FRETE'#39)
    Left = 156
    Top = 178
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NOTAFISCAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'TRANSPORTADORA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_CtaPagarFrete: TDataSource
    DataSet = db_CtaPagarFrete
    Left = 276
    Top = 178
  end
  object QryUpDateID: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'UPDATE COMPRAS_ITENS SET'
      'NOTAFISCAL=:NOTAFISCAL,'
      'MODELO=:MODELO,'
      'SERIE=:SERIE,'
      'FORNECEDOR=:FORNECEDOR'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 600
    Top = 233
    ParamData = <
      item
        Name = 'NOTAFISCAL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'MODELO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Name = 'SERIE'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Name = 'FORNECEDOR'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QrySomaProduto: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT SUM(VL_TOTAL) AS VLRTOTPROD FROM COMPRAS_ITENS '
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 736
    Top = 233
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
