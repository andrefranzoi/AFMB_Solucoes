object FrmFornecedores: TFrmFornecedores
  Left = 0
  Top = 1
  HelpContext = 10
  Caption = 'Fornecedores'
  ClientHeight = 553
  ClientWidth = 871
  Color = clBtnFace
  Constraints.MinHeight = 450
  Constraints.MinWidth = 700
  Font.Charset = ANSI_CHARSET
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
  object Label17: TLabel
    Left = 383
    Top = 149
    Width = 127
    Height = 13
    Alignment = taRightJustify
    Caption = 'Atraso M'#233'dio nas Entregas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 871
    Height = 50
    Align = alTop
    Constraints.MinHeight = 50
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitWidth = 871
    inherited Image3: TImage
      Width = 871
      ExplicitTop = 33
      ExplicitWidth = 765
      ExplicitHeight = 60
    end
    inherited pnTitulo: TPanel
      Width = 865
      Constraints.MinHeight = 27
      ExplicitWidth = 865
      ExplicitHeight = 44
      inherited LblBarraTitulo: TLabel
        Width = 714
        Caption = 'Fornecedores'
        ExplicitWidth = 136
        ExplicitHeight = 25
      end
      inherited Image1: TImage
        ExplicitLeft = 815
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 803
        ExplicitLeft = 709
        ExplicitHeight = 31
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 493
    Width = 871
    Height = 60
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 493
    ExplicitWidth = 871
    inherited PanelBotoesBottom: TPanel
      Width = 861
      ExplicitWidth = 861
      inherited SpbAdicionar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbAdicionarClick
        ExplicitLeft = -33
      end
      inherited SpbEditar: TSpeedButton
        ExplicitLeft = 167
      end
      inherited SpbCancelar: TSpeedButton
        ExplicitLeft = 267
      end
      inherited SpbSalvar: TSpeedButton
        ExplicitLeft = 67
      end
      inherited SpbExcluir: TSpeedButton
        ExplicitLeft = 367
      end
      inherited SpbImprimir: TSpeedButton
        ExplicitLeft = 567
      end
      inherited SpbSair: TSpeedButton
        Left = 757
        ExplicitLeft = 757
      end
      inherited SpbExtra: TSpeedButton
        Left = 667
        ExplicitLeft = 667
      end
      inherited SpbProcurar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 467
      end
    end
  end
  object LocalizaFornecedor: TIDBEditDialog
    Left = 545
    Top = 8
    Width = 65
    Height = 21
    HelpKeyWord = ''
    Color = clWindow
    Enabled = True
    TabOrder = 2
    Text = ''
    Visible = False
    LabelCaption = 'Fornecedores'
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
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      '%WHERE%'
      'AND'
      'TIPO IN ('#39'FORNECEDOR'#39','#39'OFICINA'#39','#39'TERCEIRIZADO'#39')'
      'ORDER BY NOME')
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
        DisplayWidth = 50
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
      end
      item
        FieldName = 'NOME_FANTASIA'
        WhereSyntax = 'NOME_FANTASIA'
        DisplayLabel = 'NOME FANTASIA:'
        DisplayWidth = 30
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
  object pgFornecedores: TPageControl
    Left = 0
    Top = 50
    Width = 871
    Height = 443
    ActivePage = TabDados
    Align = alClient
    TabOrder = 3
    object TabDados: TTabSheet
      Caption = 'Dados Gerais'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 863
        Height = 344
        Align = alClient
        TabOrder = 0
        object Label5: TLabel
          Left = 14
          Top = 41
          Width = 3
          Height = 14
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 96
          Top = 96
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label7: TLabel
          Left = 5
          Top = 96
          Width = 19
          Height = 13
          Caption = 'CEP'
        end
        object Label26: TLabel
          Left = 5
          Top = 137
          Width = 28
          Height = 13
          Caption = 'Bairro'
        end
        object Label27: TLabel
          Left = 239
          Top = 136
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label28: TLabel
          Left = 650
          Top = 137
          Width = 13
          Height = 13
          Caption = 'UF'
        end
        object Label68: TLabel
          Left = 116
          Top = 177
          Width = 28
          Height = 13
          Caption = 'E-mail'
        end
        object Label69: TLabel
          Left = 445
          Top = 177
          Width = 82
          Height = 13
          Caption = 'Site (home page)'
        end
        object Label2: TLabel
          Left = 5
          Top = 54
          Width = 63
          Height = 13
          Caption = 'Raz'#227'o Social'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 269
          Top = 55
          Width = 71
          Height = 13
          Caption = 'Nome Fantasia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label70: TLabel
          Left = 583
          Top = 10
          Width = 30
          Height = 15
          Caption = 'IE/RG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 470
          Top = 54
          Width = 39
          Height = 13
          Caption = 'Contato'
        end
        object Label49: TLabel
          Left = 598
          Top = 255
          Width = 71
          Height = 13
          Caption = 'Valor Servi'#231'os:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 5
          Top = 10
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 6
          Top = 177
          Width = 24
          Height = 13
          Caption = 'Fone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 616
          Top = 96
          Width = 37
          Height = 13
          Caption = 'Numero'
        end
        object Label10: TLabel
          Left = 156
          Top = 139
          Width = 69
          Height = 13
          Caption = 'C'#243'digo Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 400
          Top = 8
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
        object DBEdit42: TDBEdit
          Left = 96
          Top = 112
          Width = 514
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ENDERECO'
          DataSource = DS_Fornecedor
          TabOrder = 8
        end
        object DBEdit43: TDBEdit
          Left = 5
          Top = 112
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CEP'
          DataSource = DS_Fornecedor
          TabOrder = 7
        end
        object DBEdit44: TDBEdit
          Left = 5
          Top = 153
          Width = 145
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = DS_Fornecedor
          TabOrder = 10
        end
        object EditUF: TDBEdit
          Left = 651
          Top = 153
          Width = 45
          Height = 21
          CharCase = ecUpperCase
          DataField = 'UF'
          DataSource = DS_Fornecedor
          TabOrder = 13
          OnExit = EditUFExit
        end
        object DBEdit50: TDBEdit
          Left = 116
          Top = 193
          Width = 322
          Height = 21
          CharCase = ecLowerCase
          DataField = 'EMAIL'
          DataSource = DS_Fornecedor
          TabOrder = 16
        end
        object DBEdit51: TDBEdit
          Left = 444
          Top = 193
          Width = 252
          Height = 21
          CharCase = ecLowerCase
          DataField = 'SITE'
          DataSource = DS_Fornecedor
          TabOrder = 17
        end
        object EdRazaoSocial: TDBEdit
          Left = 5
          Top = 70
          Width = 256
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = DS_Fornecedor
          TabOrder = 4
        end
        object EdFantasia: TDBEdit
          Left = 267
          Top = 70
          Width = 197
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME_FANTASIA'
          DataSource = DS_Fornecedor
          TabOrder = 5
        end
        object EdRGInscrEst: TDBEdit
          Left = 583
          Top = 27
          Width = 113
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RG_IE'
          DataSource = DS_Fornecedor
          TabOrder = 3
        end
        object EditNomeCidade2: TDBEdit
          Left = 239
          Top = 153
          Width = 406
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOMECIDADE'
          DataSource = DS_Fornecedor
          TabOrder = 12
        end
        object DBEdit59: TDBEdit
          Left = 470
          Top = 69
          Width = 226
          Height = 21
          DataField = 'CONTATO'
          DataSource = DS_Fornecedor
          TabOrder = 6
        end
        object DBEdit1: TDBEdit
          Left = 598
          Top = 269
          Width = 98
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALOR_SERVICOS'
          DataSource = DS_Fornecedor
          MaxLength = 10
          TabOrder = 28
        end
        object DBEdit2: TDBEdit
          Left = 5
          Top = 27
          Width = 56
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          DataField = 'CODIGO'
          DataSource = DS_Fornecedor
          Enabled = False
          TabOrder = 0
        end
        object EditcodRegiao1: TIDBEditDialog
          Left = 6
          Top = 231
          Width = 52
          Height = 21
          HelpKeyWord = ''
          Color = clWindow
          Enabled = True
          TabOrder = 18
          Text = ''
          Visible = True
          LabelCaption = 'Regi'#227'o'
          LabelTransparent = True
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
          DataField = 'REGIAO'
          DataSource = DS_Fornecedor
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditRegiao1
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
        object EditRegiao1: TEdit
          Left = 59
          Top = 231
          Width = 160
          Height = 21
          Color = clBtnFace
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 19
        end
        object DBEdit13: TDBEdit
          Left = 42
          Top = 193
          Width = 68
          Height = 21
          DataField = 'FONE'
          DataSource = DS_Fornecedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object DBEdit14: TDBEdit
          Left = 6
          Top = 193
          Width = 35
          Height = 21
          DataField = 'DDD_FONE'
          DataSource = DS_Fornecedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 2
          ParentFont = False
          TabOrder = 14
        end
        object DCodPlano: TIDBEditDialog
          Left = 7
          Top = 269
          Width = 118
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
          TabOrder = 24
          Text = ''
          Visible = True
          EditType = etUppercase
          EmptyText = 'F8 - Pesquisar'
          FocusColor = clBtnFace
          LabelCaption = 'Plano de Contas'
          LabelTransparent = True
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
          DataSource = DS_Fornecedor
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditNomePlanoContas
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO_PLANO'
          SQLdbSQL.Strings = (
            'SELECT * FROM VIEW_PLANOCONTAS'
            'WHERE'
            'CODIGO_PLANO=:CODIGO_PLANO')
          SQLdbMaxLenght = 200
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
              DisplayWidth = 30
              DisplayColumnWidth = 0
              FieldType = ftString
              Search = True
              EmptyOperation = eoNull
              DefaultComparison = scContains
              SearchCase = scUpper
            end
            item
              FieldName = 'NOME'
              WhereSyntax = 'NOME'
              DisplayLabel = 'NOME DO PLANO DE CONTA:'
              DisplayWidth = 62
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
        object EditNomePlanoContas: TEdit
          Left = 131
          Top = 269
          Width = 190
          Height = 21
          AutoSize = False
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 25
          Text = '***'
        end
        object DBEdit3: TDBEdit
          Left = 616
          Top = 113
          Width = 80
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMERO'
          DataSource = DS_Fornecedor
          TabOrder = 9
        end
        object DbEditCFOP: TIDBEditDialog
          Left = 325
          Top = 269
          Width = 75
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
          TabOrder = 26
          Text = ''
          Visible = True
          EditType = etUppercase
          EmptyText = 'F8 - Pesquisar'
          FocusColor = clWindow
          LabelCaption = 'CFOP'
          LabelTransparent = True
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
          DataSource = DS_Fornecedor
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
        object Edit1: TEdit
          Left = 402
          Top = 269
          Width = 192
          Height = 21
          AutoSize = False
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 27
        end
        object EstSearchDialogZeos1: TIDBEditDialog
          Left = 490
          Top = 231
          Width = 74
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
          TabOrder = 22
          Text = ''
          Visible = True
          EditType = etUppercase
          EmptyText = 'F8 - Pesquisar'
          FocusColor = clWindow
          LabelCaption = 'Centro de Custo:'
          LabelTransparent = True
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
          DataSource = DS_Fornecedor
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
        object Edit2: TEdit
          Left = 567
          Top = 231
          Width = 129
          Height = 21
          AutoSize = False
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 23
        end
        object EditTransportadora: TIDBEditDialog
          Left = 225
          Top = 231
          Width = 65
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
          TabOrder = 20
          Text = ''
          Visible = True
          EditType = etAlphaNumeric
          EmptyText = 'Tecle F8'
          FocusColor = clBtnFace
          LabelCaption = 'Transportadora:'
          LabelTransparent = True
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
          DataSource = DS_Fornecedor
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
          Left = 294
          Top = 231
          Width = 187
          Height = 21
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 21
          Text = '***'
        end
        object EditCodCidade1: TDBEdit
          Left = 156
          Top = 153
          Width = 77
          Height = 21
          Hint = 'Codigo da Cidade de acordo com o IBGE'
          CharCase = ecUpperCase
          DataField = 'IDCIDADE'
          DataSource = DS_Fornecedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object rgTipo: TDBRadioGroup
          Left = 67
          Top = 7
          Width = 330
          Height = 41
          Caption = 'Tipo de Cadastro'
          Columns = 2
          DataField = 'CLASSIFICACAO'
          DataSource = DS_Fornecedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
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
          Left = 402
          Top = 27
          DataBinding.DataField = 'CPF_CNPJ'
          DataBinding.DataSource = DS_Fornecedor
          TabOrder = 2
          Width = 152
        end
      end
      object GroupBox10: TGroupBox
        Left = 0
        Top = 344
        Width = 863
        Height = 71
        Align = alBottom
        Caption = 'Detalhes'
        TabOrder = 1
        object DBMemo2: TDBMemo
          Left = 2
          Top = 15
          Width = 859
          Height = 54
          Align = alClient
          DataField = 'OBSERVACAO'
          DataSource = DS_Fornecedor
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
  end
  object DS_Fornecedor: TDataSource
    DataSet = db_Fornecedor
    OnStateChange = DS_FornecedorStateChange
    Left = 286
    Top = 7
  end
  object db_Fornecedor: TFDQuery
    AfterOpen = db_FornecedorAfterOpen
    OnNewRecord = db_FornecedorNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'TIPO IN ('#39'FORNECEDOR'#39','#39'TERCEIRIZADO'#39','#39'FABRICANTE'#39')'
      'AND'
      'CODIGO=:CODIGO')
    Left = 205
    Top = 8
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsTipoContrato: TDataSource
    Left = 606
    Top = 175
  end
end
