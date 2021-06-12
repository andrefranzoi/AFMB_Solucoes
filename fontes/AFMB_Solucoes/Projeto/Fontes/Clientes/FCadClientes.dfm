object FrmClientes: TFrmClientes
  Left = 0
  Top = 1
  Width = 1000
  Height = 650
  HelpContext = 8
  HorzScrollBar.Range = 950
  HorzScrollBar.Smooth = True
  HorzScrollBar.Tracking = True
  VertScrollBar.Range = 610
  VertScrollBar.Smooth = True
  VertScrollBar.Tracking = True
  Caption = 'Clientes'
  Color = clBtnFace
  Constraints.MinHeight = 300
  Constraints.MinWidth = 300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Calibri'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 984
    Height = 60
    Align = alTop
    Constraints.MinHeight = 60
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitWidth = 984
    ExplicitHeight = 60
    inherited Image3: TImage
      Width = 984
      Height = 60
      ExplicitTop = 36
      ExplicitWidth = 1267
      ExplicitHeight = 36
    end
    inherited pnTitulo: TPanel
      Width = 978
      Height = 54
      Font.Height = -13
      ExplicitWidth = 978
      ExplicitHeight = 54
      inherited LblBarraTitulo: TLabel
        Width = 827
        Height = 44
        Caption = 'Cadastro de Clientes'
        ExplicitWidth = 162
        ExplicitHeight = 28
      end
      inherited Image1: TImage
        Height = 44
        ExplicitLeft = 1213
        ExplicitHeight = 34
      end
      inherited Image2: TImage
        Left = 916
        Height = 44
        ExplicitLeft = 1211
        ExplicitHeight = 34
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 546
    Width = 984
    Height = 65
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 65
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 546
    ExplicitWidth = 984
    ExplicitHeight = 65
    inherited PanelBotoesBottom: TPanel
      Width = 974
      Height = 59
      ExplicitWidth = 974
      ExplicitHeight = 59
      inherited SpbAdicionar: TSpeedButton
        Height = 55
        OnClick = FrmFrameBotoes1SpbAdicionarClick
        ExplicitHeight = 55
      end
      inherited SpbEditar: TSpeedButton
        Height = 55
        Visible = False
        OnClick = FrmFrameBotoes1SpbEditarClick
        ExplicitLeft = 200
        ExplicitHeight = 55
      end
      inherited SpbCancelar: TSpeedButton
        Height = 55
        OnClick = FrmFrameBotoes1SpbCancelarClick
        ExplicitLeft = 300
        ExplicitHeight = 55
      end
      inherited SpbSalvar: TSpeedButton
        Height = 55
        OnClick = FrmFrameBotoes1SpbSalvarClick
        ExplicitLeft = 100
        ExplicitHeight = 55
      end
      inherited SpbExcluir: TSpeedButton
        Height = 55
        OnClick = FrmFrameBotoes1SpbExcluirClick
        ExplicitLeft = 400
        ExplicitHeight = 55
      end
      inherited SpbImprimir: TSpeedButton
        Height = 55
        Visible = True
        OnClick = FrmFrameBotoes1SpbImprimirClick
        ExplicitLeft = 600
        ExplicitHeight = 55
      end
      inherited SpbSair: TSpeedButton
        Left = 870
        Height = 55
        OnClick = FrmFrameBotoes1SpbSairClick
        ExplicitLeft = 1155
        ExplicitHeight = 55
      end
      inherited SpbExtra: TSpeedButton
        Left = 700
        Height = 55
        Align = alLeft
        ExplicitLeft = 1065
        ExplicitHeight = 55
      end
      inherited SpbProcurar: TSpeedButton
        Height = 55
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 500
        ExplicitHeight = 55
      end
    end
  end
  object EditClienteLocalizar: TIDBEditDialog
    Left = 713
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
    TabOrder = 2
    Text = ''
    Visible = False
    EditType = etAlphaNumeric
    EmptyText = 'Tecle F8'
    FocusColor = clBtnFace
    LabelCaption = 'Cliente:'
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
    ButtonKeyClickBtn = 119
    SQLdbFazBusca = True
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT * E FROM CAD_CLIENTES'
      'WHERE'
      'CODIGO=:CODIGO'
      '')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM VIEW_CLIENTES'
      'WHERE'
      'TIPO='#39'CLIENTE'#39
      'AND'
      'CLASSIFICACAO='#39'J'#39
      'AND'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'C'#211'DIGO'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'CPF_CNPJ'
        WhereSyntax = 'CPF_CNPJ'
        DisplayLabel = 'CPF/CNPJ:'
        DisplayWidth = 18
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
        DisplayLabel = 'NOME:'
        DisplayWidth = 40
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
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'VENDEDOR_NOME'
        WhereSyntax = 'VENDEDOR_NOME'
        DisplayLabel = 'VENDEDOR:'
        DisplayWidth = 25
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'CIDADENOME'
        WhereSyntax = 'CIDADENOME'
        DisplayLabel = 'CIDADE NOME:'
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
    DialogWidth = 1000
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
  object PgClientes: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 63
    Width = 978
    Height = 480
    ActivePage = Tab_PFisica
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    HotTrack = True
    MultiLine = True
    ParentFont = False
    ScrollOpposite = True
    TabOrder = 3
    object Tab_PFisica: TTabSheet
      Caption = 'Pessoa F'#237'sica'
      ImageIndex = 1
      object Pg_CadastroF: TPageControl
        Left = 0
        Top = 0
        Width = 970
        Height = 450
        Cursor = crHandPoint
        ActivePage = Tab_FBasicos
        Align = alClient
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        MultiLine = True
        ParentFont = False
        TabOrder = 0
        object Tab_FBasicos: TTabSheet
          Caption = 'Dados Cadastrais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          object Label10: TLabel
            Left = 242
            Top = 50
            Width = 94
            Height = 15
            Caption = 'Data Nascimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 89
            Top = 10
            Width = 20
            Height = 15
            Caption = 'CPF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 3
            Top = 50
            Width = 21
            Height = 15
            Caption = 'R.G.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 123
            Top = 50
            Width = 81
            Height = 15
            Caption = 'Org'#227'o Emissor'
          end
          object Label25: TLabel
            Left = 3
            Top = 271
            Width = 35
            Height = 15
            Caption = 'E-mail'
          end
          object Label30: TLabel
            Left = 264
            Top = 10
            Width = 31
            Height = 15
            Caption = 'Nome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Spb_email1: TSpeedButton
            Left = 625
            Top = 287
            Width = 25
            Height = 23
            Cursor = crHandPoint
            Hint = 'enviar e-mail...'
            Caption = '...'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = Spb_email1Click
          end
          object Label61: TLabel
            Left = 3
            Top = 184
            Width = 112
            Height = 15
            Caption = 'Ponto de Refer'#234'ncia:'
          end
          object Label22: TLabel
            Left = 3
            Top = 228
            Width = 26
            Height = 15
            Caption = 'Fone'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 122
            Top = 228
            Width = 40
            Height = 15
            Caption = 'Celular'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label60: TLabel
            Left = 3
            Top = 7
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
          object RgSexo: TDBRadioGroup
            Left = 346
            Top = 52
            Width = 181
            Height = 36
            Caption = 'Se&xo'
            Columns = 2
            DataField = 'SEXO'
            DataSource = DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Items.Strings = (
              '&Masculino'
              '&Feminino')
            ParentFont = False
            TabOrder = 6
            Values.Strings = (
              'M'
              'F')
          end
          object DBEdit2: TDBEdit
            Left = 242
            Top = 65
            Width = 100
            Height = 23
            CharCase = ecUpperCase
            DataField = 'DATA_NASCIMENTO'
            DataSource = DS_Clientes
            TabOrder = 5
          end
          object EditCPF: TDBEdit
            Left = 89
            Top = 25
            Width = 169
            Height = 23
            DataField = 'CPF_CNPJ'
            DataSource = DS_Clientes
            TabOrder = 1
            OnExit = EditCPFExit
          end
          object DBEdit3: TDBEdit
            Left = 3
            Top = 65
            Width = 112
            Height = 23
            CharCase = ecUpperCase
            DataField = 'RG_IE'
            DataSource = DS_Clientes
            TabOrder = 3
          end
          object DBEdit5: TDBEdit
            Left = 123
            Top = 65
            Width = 113
            Height = 23
            CharCase = ecUpperCase
            DataField = 'ORG_EMISSOR'
            DataSource = DS_Clientes
            TabOrder = 4
          end
          object DBEdit16: TDBEdit
            Left = 3
            Top = 287
            Width = 618
            Height = 23
            CharCase = ecLowerCase
            DataField = 'EMAIL'
            DataSource = DS_Clientes
            TabOrder = 14
          end
          object DBEdit18: TDBEdit
            Left = 264
            Top = 25
            Width = 386
            Height = 23
            CharCase = ecUpperCase
            DataField = 'NOME'
            DataSource = DS_Clientes
            TabOrder = 2
          end
          object EditcodRegiao1: TIDBEditDialog
            Left = 403
            Top = 330
            Width = 56
            Height = 23
            HelpKeyWord = ''
            Color = clWindow
            Enabled = True
            TabOrder = 17
            Text = ''
            Visible = True
            LabelCaption = 'Regi'#227'o'
            LabelTransparent = True
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
            DataSource = DS_Clientes
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditRegiao1
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_REGIOES'
              'WHERE'
              'CODIGO=:CODIGO'
              '')
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
                Search = True
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
          object EditVendedor1: TEdit
            Left = 65
            Top = 330
            Width = 331
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
          end
          object DBEdit66: TDBEdit
            Left = 3
            Top = 199
            Width = 645
            Height = 23
            CharCase = ecUpperCase
            DataField = 'REFERENCIA'
            DataSource = DS_Clientes
            TabOrder = 9
          end
          object DBEdit13: TDBEdit
            Left = 42
            Top = 245
            Width = 73
            Height = 23
            DataField = 'FONE'
            DataSource = DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
          object DBEdit14: TDBEdit
            Left = 3
            Top = 245
            Width = 38
            Height = 23
            DataField = 'DDD_FONE'
            DataSource = DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            MaxLength = 2
            ParentFont = False
            TabOrder = 10
          end
          object DBEdit61: TDBEdit
            Left = 161
            Top = 245
            Width = 89
            Height = 23
            DataField = 'CELULAR'
            DataSource = DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
          end
          object DBEdit62: TDBEdit
            Left = 122
            Top = 245
            Width = 38
            Height = 23
            DataField = 'DDD_CELULAR'
            DataSource = DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            MaxLength = 2
            ParentFont = False
            TabOrder = 12
          end
          object EditRegiao1: TEdit
            Left = 461
            Top = 330
            Width = 398
            Height = 23
            Color = clBtnFace
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object EditCodevendedor: TIDBEditDialog
            Left = 3
            Top = 330
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
            OnChange = EditCodevendedorChange
            LabelCaption = 'Vendedor'
            LabelTransparent = True
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
            DataField = 'VENDEDOR'
            DataSource = DS_Clientes
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditVendedor1
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = ' *** '
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_CLIENTES'
              'WHERE'
              '  TIPO='#39'VENDEDOR'#39
              'AND'
              'CODIGO=:CODIGO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_CLIENTES'
              'WHERE'
              '  TIPO='#39'VENDEDOR'#39
              'AND'
              '%WHERE%')
            CountQuery.Strings = (
              'SELECT count(*) FROM CAD_CLIENTES'
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
                SearchCase = scUpper
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
          object GroupBox9: TGroupBox
            Left = 654
            Top = 14
            Width = 205
            Height = 254
            Caption = '  Foto    [Tamanho 180x140 dpi]   '
            TabOrder = 19
            object Panel3: TPanel
              Left = 2
              Top = 217
              Width = 201
              Height = 35
              Align = alBottom
              TabOrder = 0
              object BitBtn1: TBitBtn
                Left = 8
                Top = 4
                Width = 80
                Height = 27
                Cursor = crHandPoint
                Caption = 'Adicionar'
                TabOrder = 0
                OnClick = BitBtn1Click
              end
              object BitBtn2: TBitBtn
                Left = 115
                Top = 4
                Width = 81
                Height = 27
                Cursor = crHandPoint
                Caption = 'Limpar'
                TabOrder = 1
                OnClick = BitBtn2Click
              end
            end
            object DBImage1: TDBImage
              Left = 2
              Top = 17
              Width = 201
              Height = 200
              Align = alClient
              DataField = 'FOTO'
              DataSource = DS_Clientes
              TabOrder = 1
            end
          end
          object GroupBox2: TPanel
            Left = 0
            Top = 94
            Width = 650
            Height = 91
            Hint = 'Editar - use o bot'#227'o direito do mouse'
            BevelKind = bkSoft
            ParentShowHint = False
            ShowHint = True
            TabOrder = 8
            object Label52: TLabel
              Left = 3
              Top = 3
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
            object Label18: TLabel
              Left = 87
              Top = 3
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
            object Label51: TLabel
              Left = 416
              Top = 3
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
            object Label56: TLabel
              Left = 468
              Top = 3
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
            object Label21: TLabel
              Left = 3
              Top = 46
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
            object Label20: TLabel
              Left = 329
              Top = 46
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
            object Label19: TLabel
              Left = 606
              Top = 46
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
            object EditCEP0: TDBEdit
              Left = 3
              Top = 19
              Width = 77
              Height = 23
              DataField = 'CEP'
              DataSource = DS_Clientes
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = EditCEP0Exit
            end
            object DBEdit30: TDBEdit
              Left = 416
              Top = 19
              Width = 50
              Height = 23
              Hint = 'N'#250'mero do Endere'#231'o'
              CharCase = ecUpperCase
              DataField = 'NUMERO'
              DataSource = DS_Clientes
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
            object edtComplemento: TDBEdit
              Left = 468
              Top = 19
              Width = 174
              Height = 23
              CharCase = ecUpperCase
              DataField = 'COMPLEMENTO'
              DataSource = DS_Clientes
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
            object EditBairro1: TDBEdit
              Left = 3
              Top = 61
              Width = 232
              Height = 23
              CharCase = ecUpperCase
              DataField = 'BAIRRO'
              DataSource = DS_Clientes
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object EditCidade1: TDBEdit
              Left = 329
              Top = 61
              Width = 273
              Height = 23
              Hint = 'Tecle F8 para pesquisar'
              CharCase = ecUpperCase
              DataField = 'NOMECIDADE'
              DataSource = DS_Clientes
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object EditUF1: TDBEdit
              Left = 606
              Top = 61
              Width = 36
              Height = 23
              CharCase = ecUpperCase
              DataField = 'UF'
              DataSource = DS_Clientes
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              MaxLength = 2
              ParentFont = False
              TabOrder = 6
            end
            object edtEndereco: TDBEdit
              Left = 87
              Top = 19
              Width = 323
              Height = 23
              Hint = 'N'#250'mero do Endere'#231'o'
              CharCase = ecUpperCase
              DataField = 'ENDERECO'
              DataSource = DS_Clientes
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
            object EditCodCidade1: TIDBEditDialog
              Left = 239
              Top = 61
              Width = 83
              Height = 23
              Hint = 'Codigo da Cidade de acordo com o IBGE'
              HelpKeyWord = ''
              Color = clWindow
              Enabled = True
              ShowHint = True
              TabOrder = 7
              Text = ''
              Visible = True
              LabelCaption = 'C'#243'digo Cidade'
              LabelTransparent = True
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
              DataField = 'IDCIDADE'
              DataSource = DS_Clientes
              ButtonKeyClickBtn = 119
              SQLdbFazBusca = True
              SQLdbFocusControl = EditRegiao1
              SQLdbCampoRetorno = 'NOME'
              SQLdbRetornoVazio = '***'
              SQLdbCampoParametro = 'CODIGO'
              SQLdbSQL.Strings = (
                'SELECT * FROM CAD_REGIOES'
                'WHERE'
                'CODIGO=:CODIGO'
                '')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM CIDADE'
                'WHERE'
                '%WHERE%')
              CountQuery.Strings = (
                'SELECT COUNT(*) FROM CIDADE'
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
                  Search = True
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
          end
          object DBEdit9: TDBEdit
            Left = 3
            Top = 25
            Width = 83
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            DataField = 'CODIGO'
            DataSource = DS_Clientes
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DBRadioGroup4: TDBRadioGroup
            Left = 3
            Top = 361
            Width = 856
            Height = 45
            Caption = 'Contribuinte ICMS'
            Columns = 3
            DataField = 'CONTRIBUINTEICMS'
            DataSource = DS_Clientes
            Items.Strings = (
              'Contribuinte ICMS'
              'Contribuinte isento de Inscri'#231#227'o'
              'N'#227'o Contribuinte (Com ou Sem Inscri'#231#227'o)')
            TabOrder = 18
            Values.Strings = (
              '1'
              '2'
              '9')
          end
        end
        object Tab_FImportantes: TTabSheet
          Caption = 'Dados de Cobran'#231'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ImageIndex = 1
          ParentFont = False
          object Label57: TLabel
            Left = 2
            Top = 120
            Width = 87
            Height = 15
            Caption = 'Data da Inclus'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 114
            Top = 120
            Width = 96
            Height = 15
            Caption = 'Limite de Cr'#233'dito'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label53: TLabel
            Left = 250
            Top = 120
            Width = 91
            Height = 15
            Caption = 'Cr'#233'dito Utilizado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label55: TLabel
            Left = 386
            Top = 121
            Width = 100
            Height = 15
            Caption = 'Cr'#233'dito Dispon'#237'vel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RDGCredito: TDBRadioGroup
            Left = 0
            Top = 0
            Width = 962
            Height = 54
            Align = alTop
            Caption = 'Bloquear cr'#233'dito'
            Columns = 2
            DataField = 'BLOQUEADO'
            DataSource = DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Calibri'
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
          object DBEdit39: TDBEdit
            Left = 1
            Top = 136
            Width = 108
            Height = 23
            DataField = 'PROTESTO_DATA'
            DataSource = DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit27: TDBEdit
            Left = 114
            Top = 136
            Width = 129
            Height = 23
            DataField = 'CREDITO_LIMITE'
            DataSource = DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object DBEdit28: TDBEdit
            Left = 250
            Top = 136
            Width = 129
            Height = 23
            DataField = 'CREDITO_UTILIZADO'
            DataSource = DS_Clientes
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
          object DBEdit29: TDBEdit
            Left = 386
            Top = 136
            Width = 129
            Height = 23
            DataField = 'CREDITO_DISPONIVEL'
            DataSource = DS_Clientes
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
          object DBRadioGroup3: TDBRadioGroup
            Left = 0
            Top = 59
            Width = 775
            Height = 54
            Caption = 'Inclus'#227'o no Servi'#231'o de Prote'#231#227'o ao Cr'#233'dito'
            Columns = 5
            DataField = 'PROTESTO'
            DataSource = DS_Clientes
            Items.Strings = (
              'N'#195'O'
              'SERASA'
              'SPC'
              'CART'#211'RIO'
              'OUTROS')
            TabOrder = 1
            Values.Strings = (
              'NAO'
              'SERASA'
              'SPC'
              'CARTORIO'
              'OUTROS')
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = -9
            Top = 165
            Width = 776
            Height = 54
            Caption = 'Status do cliente:'
            Columns = 2
            DataField = 'ATIVO'
            DataSource = DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 6
            Values.Strings = (
              'S'
              'N')
          end
        end
      end
    end
    object Tab_PJuridica: TTabSheet
      Caption = 'Pessoa Jur'#237'dica'
      ImageIndex = -1
      object Pg_CadastroJ: TPageControl
        Left = 0
        Top = 0
        Width = 970
        Height = 450
        Cursor = crHandPoint
        ActivePage = Tab_JBasico
        Align = alClient
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        MultiLine = True
        ParentFont = False
        TabOrder = 0
        object Tab_JBasico: TTabSheet
          Caption = 'Dados Cadastrais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          object Label68: TLabel
            Left = 5
            Top = 243
            Width = 35
            Height = 15
            Caption = 'E-mail'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label69: TLabel
            Left = 384
            Top = 243
            Width = 20
            Height = 15
            Caption = 'Site'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 5
            Top = 48
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
            Left = 486
            Top = 47
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
          object Label5: TLabel
            Left = 72
            Top = 6
            Width = 25
            Height = 15
            Caption = 'CNPJ'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label70: TLabel
            Left = 217
            Top = 6
            Width = 97
            Height = 15
            Caption = 'Incri'#231#227'o Estadual'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label40: TLabel
            Left = 236
            Top = 202
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
            Top = 202
            Width = 26
            Height = 15
            Caption = 'Fone'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label43: TLabel
            Left = 119
            Top = 202
            Width = 40
            Height = 15
            Caption = 'Celular'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 3
            Top = 6
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
          object SpeedButton1: TSpeedButton
            Left = 349
            Top = 24
            Width = 25
            Height = 23
            Caption = '?'
            OnClick = SpeedButton1Click
          end
          object DBEdit47: TDBEdit
            Left = 44
            Top = 217
            Width = 73
            Height = 23
            DataField = 'FONE'
            DataSource = DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
          end
          object DBEdit50: TDBEdit
            Left = 5
            Top = 258
            Width = 354
            Height = 23
            CharCase = ecLowerCase
            DataField = 'EMAIL'
            DataSource = DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
          end
          object DBEdit51: TDBEdit
            Left = 384
            Top = 258
            Width = 365
            Height = 23
            CharCase = ecLowerCase
            DataField = 'SITE'
            DataSource = DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 17
          end
          object EditNome: TDBEdit
            Left = 5
            Top = 64
            Width = 475
            Height = 23
            CharCase = ecUpperCase
            DataField = 'NOME'
            DataSource = DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object EdFantasia: TDBEdit
            Left = 486
            Top = 64
            Width = 263
            Height = 23
            CharCase = ecUpperCase
            DataField = 'NOME_FANTASIA'
            DataSource = DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object EdRGInscrEst: TDBEdit
            Left = 217
            Top = 24
            Width = 130
            Height = 23
            CharCase = ecUpperCase
            DataField = 'RG_IE'
            DataSource = DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object EditCNPJ: TDBEdit
            Left = 72
            Top = 24
            Width = 144
            Height = 23
            CharCase = ecUpperCase
            DataField = 'CPF_CNPJ'
            DataSource = DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnExit = EditCNPJExit
          end
          object DBEdit59: TDBEdit
            Left = 236
            Top = 217
            Width = 269
            Height = 23
            DataField = 'CONTATO'
            DataSource = DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
          end
          object EditcodRegiao2: TIDBEditDialog
            Left = 272
            Top = 301
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
            TabOrder = 20
            Text = ''
            Visible = True
            LabelCaption = 'Regi'#227'o'
            LabelTransparent = True
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
            DataSource = DS_Clientes
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
            Left = 330
            Top = 301
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
            TabOrder = 21
            Text = '***'
          end
          object DBEdit24: TDBEdit
            Left = 5
            Top = 217
            Width = 38
            Height = 23
            DataField = 'DDD_FONE'
            DataSource = DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object DBEdit57: TDBEdit
            Left = 158
            Top = 217
            Width = 73
            Height = 23
            DataField = 'CELULAR'
            DataSource = DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
          end
          object DBEdit60: TDBEdit
            Left = 119
            Top = 217
            Width = 38
            Height = 23
            DataField = 'DDD_CELULAR'
            DataSource = DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
          object grpEnderecoPJ: TGroupBox
            Left = 3
            Top = 93
            Width = 746
            Height = 107
            Caption = '[Endere'#231'o]'
            Color = clBtnFace
            Ctl3D = True
            ParentBackground = False
            ParentColor = False
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 8
            object Label6: TLabel
              Left = 11
              Top = 16
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
            object Label7: TLabel
              Left = 95
              Top = 16
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
              Top = 16
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
              Top = 16
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
              Top = 59
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
              Top = 59
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
              Top = 59
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
              Top = 59
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
              Top = 59
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
              Top = 32
              Width = 77
              Height = 23
              DataField = 'CEP'
              DataSource = DS_Clientes
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
              Top = 32
              Width = 50
              Height = 23
              Hint = 'N'#250'mero do Endere'#231'o'
              CharCase = ecUpperCase
              DataField = 'NUMERO'
              DataSource = DS_Clientes
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
              Top = 32
              Width = 262
              Height = 23
              CharCase = ecUpperCase
              DataField = 'COMPLEMENTO'
              DataSource = DS_Clientes
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
              Top = 74
              Width = 232
              Height = 23
              CharCase = ecUpperCase
              DataField = 'BAIRRO'
              DataSource = DS_Clientes
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
              Top = 74
              Width = 83
              Height = 23
              Hint = 'Codigo IBGE da CIDADE'
              CharCase = ecUpperCase
              DataField = 'IDCIDADE'
              DataSource = DS_Clientes
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
              Top = 74
              Width = 294
              Height = 23
              Hint = 'Tecle F8 para pesquisar'
              CharCase = ecUpperCase
              DataField = 'NOMECIDADE'
              DataSource = DS_Clientes
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
              Top = 74
              Width = 36
              Height = 23
              CharCase = ecUpperCase
              DataField = 'UF'
              DataSource = DS_Clientes
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
              Top = 32
              Width = 323
              Height = 23
              Hint = 'N'#250'mero do Endere'#231'o'
              CharCase = ecUpperCase
              DataField = 'ENDERECO'
              DataSource = DS_Clientes
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
              Top = 74
              Width = 62
              Height = 23
              Hint = 'Codigo IBGE do ESTADO/UF'
              CharCase = ecUpperCase
              DataField = 'CODIGOUF'
              DataSource = DS_Clientes
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
            end
          end
          object EditTransportadora: TIDBEditDialog
            Left = 5
            Top = 301
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
            TabOrder = 18
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
            DataSource = DS_Clientes
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
            Left = 76
            Top = 301
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
            TabOrder = 19
            Text = '***'
          end
          object EditAtividade: TIDBEditDialog
            Left = 382
            Top = 24
            Width = 56
            Height = 23
            HelpKeyWord = ''
            Color = clWindow
            Enabled = True
            TabOrder = 3
            Text = ''
            Visible = True
            LabelCaption = 'Ramo de Atividade:'
            LabelTransparent = True
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
            DataField = 'ATIVIDADE'
            DataSource = DS_Clientes
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditNomeAtividade
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_ATIVIDADES'
              'WHERE'
              'CODIGO=:CODIGO')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_ATIVIDADES'
              'WHERE'
              '%WHERE%')
            CountQuery.Strings = (
              'SELECT COUNT(*) FROM CAD_ATIVIDADES'
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
          object EditNomeAtividade: TEdit
            Left = 440
            Top = 24
            Width = 184
            Height = 23
            Color = clBtnFace
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object EditCodigo: TDBEdit
            Left = 3
            Top = 24
            Width = 65
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            DataField = 'CODIGO'
            DataSource = DS_Clientes
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object rgpAtivo: TDBRadioGroup
            Left = 639
            Top = 8
            Width = 110
            Height = 40
            Caption = 'Cadastro Ativo'
            Columns = 2
            DataField = 'ATIVO'
            DataSource = DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 5
            Values.Strings = (
              'S'
              'N')
          end
          object EditPlanoPagamentoPadrao: TEdit
            Left = 570
            Top = 217
            Width = 179
            Height = 23
            Color = clBtnFace
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
            Text = '***'
          end
          object EditPagamento: TIDBEditDialog
            Left = 509
            Top = 218
            Width = 60
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
            TabOrder = 14
            Text = ''
            Visible = True
            EditType = etAlphaNumeric
            EmptyText = 'Tecle F8'
            FocusColor = clBtnFace
            LabelCaption = 'Forma  de Pagamento Padr'#227'o'
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
            ButtonHint = 'Forma de Pagamento'
            Etched = False
            ButtonCaption = '...'
            DataField = 'IDFORMAPAGTO'
            DataSource = DS_Clientes
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditPlanoPagamentoPadrao
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
          object IDBEditDialog3: TIDBEditDialog
            Left = 508
            Top = 301
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
            TabOrder = 22
            Text = ''
            Visible = True
            OnChange = EditCodevendedorChange
            LabelCaption = 'Vendedor'
            LabelTransparent = True
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
            DataField = 'VENDEDOR'
            DataSource = DS_Clientes
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = Edit3
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = ' *** '
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_CLIENTES'
              'WHERE'
              '  TIPO='#39'VENDEDOR'#39
              'AND'
              'CODIGO=:CODIGO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_CLIENTES'
              'WHERE'
              '  TIPO='#39'VENDEDOR'#39
              'AND'
              '%WHERE%')
            CountQuery.Strings = (
              'SELECT count(*) FROM CAD_CLIENTES'
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
                SearchCase = scUpper
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
          object Edit3: TEdit
            Left = 567
            Top = 301
            Width = 182
            Height = 23
            Color = clBtnFace
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 23
          end
          object GroupBox10: TGroupBox
            Left = 766
            Top = 8
            Width = 185
            Height = 316
            Caption = 'Cr'#233'ditos'
            TabOrder = 25
            object Label12: TLabel
              Left = 12
              Top = 186
              Width = 92
              Height = 15
              Caption = 'Cr'#233'dito Utilizado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
            end
            object Label42: TLabel
              Left = 12
              Top = 139
              Width = 89
              Height = 15
              Caption = 'Cr'#233'd. Dispon'#237'vel'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
            end
            object Label41: TLabel
              Left = 12
              Top = 98
              Width = 92
              Height = 15
              Caption = 'Limite de Cr'#233'dito'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
            end
            object Label44: TLabel
              Left = 12
              Top = 57
              Width = 75
              Height = 15
              Caption = 'Data Protesto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit26: TDBEdit
              Left = 12
              Top = 202
              Width = 150
              Height = 23
              DataField = 'CREDITO_UTILIZADO'
              DataSource = DS_Clientes
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object DBEdit19: TDBEdit
              Left = 12
              Top = 154
              Width = 150
              Height = 23
              DataField = 'CREDITO_DISPONIVEL'
              DataSource = DS_Clientes
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object DBEdit11: TDBEdit
              Left = 12
              Top = 114
              Width = 150
              Height = 23
              DataField = 'CREDITO_LIMITE'
              DataSource = DS_Clientes
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit41: TDBEdit
              Left = 12
              Top = 74
              Width = 150
              Height = 23
              CharCase = ecUpperCase
              DataField = 'PROTESTO_DATA'
              DataSource = DS_Clientes
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object rgBloqueio: TDBRadioGroup
              Left = 12
              Top = 17
              Width = 150
              Height = 39
              Caption = 'Bloquear cr'#233'dito'
              Columns = 2
              DataField = 'BLOQUEADO'
              DataSource = DS_Clientes
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -13
              Font.Name = 'Calibri'
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
          object DBRadioGroup2: TDBRadioGroup
            Left = 3
            Top = 337
            Width = 948
            Height = 45
            Caption = 'Contribuinte ICMS'
            Columns = 3
            DataField = 'CONTRIBUINTEICMS'
            DataSource = DS_Clientes
            Items.Strings = (
              'Contribuinte ICMS'
              'Contribuinte isento de Inscri'#231#227'o'
              'N'#227'o Contribuinte (Com ou Sem Inscri'#231#227'o)')
            TabOrder = 24
            Values.Strings = (
              '1'
              '2'
              '9')
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Observa'#231#245'es'
          ImageIndex = 6
          object GroupBox20: TGroupBox
            Left = 0
            Top = 0
            Width = 962
            Height = 420
            Align = alClient
            Caption = 'Observa'#231#245'es'
            TabOrder = 0
            object DBRichEdit1: TDBRichEdit
              Left = 2
              Top = 17
              Width = 958
              Height = 401
              Align = alClient
              DataField = 'OBSERVACAO'
              DataSource = DS_Clientes
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              TabOrder = 0
              Zoom = 100
            end
          end
        end
      end
    end
    object Tab_Historico: TTabSheet
      Caption = 'Hist'#243'ricos'
      ImageIndex = 3
      OnExit = Tab_HistoricoExit
      OnShow = Tab_HistoricoShow
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 970
        Height = 406
        Align = alClient
        BevelWidth = 3
        TabOrder = 0
        object Splitter1: TSplitter
          Left = 3
          Top = 201
          Width = 964
          Height = 5
          Cursor = crVSplit
          Align = alBottom
          ExplicitTop = 212
          ExplicitWidth = 1072
        end
        object GroupBox4: TGroupBox
          Left = 3
          Top = 3
          Width = 964
          Height = 198
          Align = alClient
          Caption = 'Hist'#243'rico de Vendas'
          TabOrder = 0
          object GridPedidos: TDBGrid
            Left = 2
            Top = 17
            Width = 960
            Height = 179
            Align = alClient
            DataSource = ds_Pedido
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Calibri'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'CODIGO'
                Title.Caption = 'PEDIDO:'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA'
                Title.Caption = 'DATA DO PEDIDO:'
                Width = 103
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_ENTREGA'
                Title.Caption = 'DATA ENTREGA:'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDE_TOTAL'
                Title.Caption = 'QTDE TOTAL:'
                Width = 104
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_TOTAL'
                Title.Caption = 'VALOR VENDA:'
                Width = 124
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FORMA_PAGTO_NOME'
                Title.Caption = 'FORMA PAGAMENTO:'
                Width = 191
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATUS'
                Title.Caption = 'FATURADO:'
                Width = 84
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VENDEDOR_NOME'
                Title.Caption = 'REPRESENTANTE:'
                Width = 176
                Visible = True
              end>
          end
        end
        object GroupBox6: TGroupBox
          Left = 3
          Top = 206
          Width = 964
          Height = 197
          Align = alBottom
          Caption = 'Hist'#243'rico Financeiro'
          TabOrder = 1
          object GridFinanceiro: TDBGrid
            Left = 2
            Top = 17
            Width = 960
            Height = 178
            Align = alClient
            DataSource = ds_ctareceber
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Calibri'
            TitleFont.Style = []
            OnDrawColumnCell = GridFinanceiroDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'DATA'
                Title.Caption = 'DATA DO DOCUMENTO:'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOCUMENTO'
                Title.Caption = 'DOCUMENTO:'
                Width = 92
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOTAFISCAL'
                Title.Caption = 'NOTA FISCAL:'
                Width = 82
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VENCIMENTO'
                Title.Caption = 'VENCIMENTO:'
                Width = 83
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_PAGTO'
                Title.Caption = 'DATA PAGAMENTO:'
                Width = 111
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FORMAPAGAMENTO'
                Title.Caption = 'FORMA DE PAGAMENTO:'
                Width = 158
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Caption = 'VALOR DO TITULO:'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR_PAGO'
                Title.Caption = 'VALOR PAGO:'
                Width = 86
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'QUITADO'
                Title.Alignment = taCenter
                Title.Caption = 'QUITADO:'
                Width = 75
                Visible = True
              end>
          end
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 406
        Width = 970
        Height = 44
        Align = alBottom
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object LblVendas: TLabel
          Left = 241
          Top = 12
          Width = 43
          Height = 18
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LblReceber: TLabel
          Left = 465
          Top = 12
          Width = 43
          Height = 18
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LblPago: TLabel
          Left = 688
          Top = 13
          Width = 43
          Height = 18
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LblSaldoReceber: TLabel
          Left = 912
          Top = 12
          Width = 43
          Height = 18
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LblQuantidade: TLabel
          Left = 18
          Top = 12
          Width = 18
          Height = 18
          Caption = '0.0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 613
    Top = 241
  end
  object db_Pedido: TFDQuery
    BeforeOpen = db_PedidoBeforeOpen
    AfterOpen = db_PedidoAfterOpen
    MasterSource = DS_Clientes
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDOSVENDAS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CLIENTE=:CODIGO')
    Left = 760
    Top = 56
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
  object ds_Pedido: TDataSource
    AutoEdit = False
    DataSet = db_Pedido
    Left = 760
    Top = 120
  end
  object db_ctareceber: TFDQuery
    BeforeOpen = db_ctareceberBeforeOpen
    AfterOpen = db_ctareceberAfterOpen
    MasterSource = DS_Clientes
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_FIN_CTARECEBER'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CLIENTE=:CODIGO')
    Left = 840
    Top = 200
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
  object ds_ctareceber: TDataSource
    AutoEdit = False
    DataSet = db_ctareceber
    Left = 840
    Top = 256
  end
  object db_PedidoSum: TFDQuery
    BeforeOpen = db_PedidoSumBeforeOpen
    MasterSource = DS_Clientes
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT '
      'SUM(QTDE_TOTAL) AS QTDE_TOTAL,'
      'SUM(VLR_TOTAL) AS VLR_TOTAL'
      'FROM VIEW_PEDIDOSVENDAS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CLIENTE=:CODIGO')
    Left = 832
    Top = 128
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
  object db_ctareceberSum: TFDQuery
    BeforeOpen = db_ctareceberSumBeforeOpen
    MasterSource = DS_Clientes
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT '
      'SUM(VALOR)      AS TOTALRECEBER,'
      'SUM(VALOR_PAGO) AS TOTALPAGO,'
      'SUM(VALOR)- SUM(VALOR_PAGO) AS SALSOFINAL'
      ' FROM VIEW_FIN_CTARECEBER'
      ''
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CLIENTE=:CODIGO')
    Left = 928
    Top = 256
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
  object frdb_Pedido: TfrxDBDataset
    UserName = 'frdb_Pedido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'DATA=DATA'
      'DATA_FATURAMENTO=DATA_FATURAMENTO'
      'DATA_ENTREGA=DATA_ENTREGA'
      'VENDEDOR_NOME=VENDEDOR_NOME'
      'FORMA_PAGTO_NOME=FORMA_PAGTO_NOME'
      'TIPOPAGAMENTO=TIPOPAGAMENTO'
      'QTDE_TOTAL=QTDE_TOTAL'
      'VLR_TOTAL=VLR_TOTAL'
      'STATUS=STATUS')
    DataSet = db_Pedido
    BCDToCurrency = False
    Left = 832
    Top = 56
  end
  object frdb_ctareceber: TfrxDBDataset
    UserName = 'frdb_ctareceber'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'DOCUMENTO=DOCUMENTO'
      'NOTAFISCAL=NOTAFISCAL'
      'DATA=DATA'
      'VENCIMENTO=VENCIMENTO'
      'DATA_PAGTO=DATA_PAGTO'
      'FORMAPAGAMENTO=FORMAPAGAMENTO'
      'NOSSONUMERO=NOSSONUMERO'
      'VALOR=VALOR'
      'VALOR_PAGO=VALOR_PAGO'
      'VALOR_SALDO=VALOR_SALDO'
      'CLIENTE=CLIENTE'
      'NOME_CLIENTE=NOME_CLIENTE'
      'VENDEDOR=VENDEDOR'
      'NOME_VENDEDOR=NOME_VENDEDOR'
      'CIDADE_UF=CIDADE_UF'
      'PLN_CONTA=PLN_CONTA'
      'PLN_CONTA_NOME=PLN_CONTA_NOME'
      'QUITADO=QUITADO'
      'ATRASO_DIAS=ATRASO_DIAS'
      'BLOQUEADO=BLOQUEADO'
      'HISTORICO=HISTORICO'
      'COMPLEMENTAR=COMPLEMENTAR'
      'GERARCOMPLEMENTO=GERARCOMPLEMENTO'
      'CONTACAIXA=CONTACAIXA'
      'CONTACAIXANOME=CONTACAIXANOME'
      'CONTACAIXASALDOINICIAL=CONTACAIXASALDOINICIAL'
      'CONTACORRENTE=CONTACORRENTE'
      'DESCONTO=DESCONTO'
      'DESCONTOVALOR=DESCONTOVALOR'
      'DESPESAS_JUROS=DESPESAS_JUROS'
      'DESPESAS_JUROSVALOR=DESPESAS_JUROSVALOR'
      'DESPESAS_MULTA=DESPESAS_MULTA'
      'DESPESAS_CARTORIO=DESPESAS_CARTORIO'
      'DESPESAS_OUTRAS=DESPESAS_OUTRAS'
      'DESPESAS_TOTAL=DESPESAS_TOTAL'
      'ESPECIE=ESPECIE'
      'DATA_PAGTODIAS=DATA_PAGTODIAS'
      'PRAZO_DIAS=PRAZO_DIAS'
      'VALOR_DIFERENCA=VALOR_DIFERENCA'
      'DESCONTADO=DESCONTADO'
      'PAGAMENTOTITULO=PAGAMENTOTITULO')
    DataSet = db_ctareceber
    BCDToCurrency = False
    Left = 928
    Top = 200
  end
  object frdb_Clientes: TfrxDBDataset
    UserName = 'frdb_Clientes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DATA=DATA'
      'TIPO=TIPO'
      'CLASSIFICACAO=CLASSIFICACAO'
      'NOME=NOME'
      'NOME_FANTASIA=NOME_FANTASIA'
      'VENDEDOR=VENDEDOR'
      'VENDEDOR_NOME=VENDEDOR_NOME'
      'REGIAO=REGIAO'
      'REGIAO_NOME=REGIAO_NOME'
      'CPF_CNPJ=CPF_CNPJ'
      'RG_IE=RG_IE'
      'ENDERECO=ENDERECO'
      'NUMERO=NUMERO'
      'BAIRRO=BAIRRO'
      'CEP=CEP'
      'DDD_FONE=DDD_FONE'
      'FONE=FONE'
      'DDD_FAX=DDD_FAX'
      'FAX=FAX'
      'REFERENCIA=REFERENCIA'
      'CIDADECODIGO=CIDADECODIGO'
      'CIDADENOME=CIDADENOME'
      'UF=UF'
      'CONTATO=CONTATO'
      'EMAIL=EMAIL'
      'SITE=SITE'
      'ENDCOB_ENDERECO=ENDCOB_ENDERECO'
      'ENDCOB_BAIRRO=ENDCOB_BAIRRO'
      'ENDCOB_DDD=ENDCOB_DDD'
      'ENDCOB_FONE=ENDCOB_FONE'
      'ENDCOB_CXP=ENDCOB_CXP'
      'ENDCOB_NOMECIDADE=ENDCOB_NOMECIDADE'
      'ENDCOB_UF=ENDCOB_UF'
      'ENDCOB_CEP=ENDCOB_CEP'
      'BLOQUEADO=BLOQUEADO'
      'PROTESTO=PROTESTO'
      'CREDITO_LIMITE=CREDITO_LIMITE'
      'CREDITO_DISPONIVEL=CREDITO_DISPONIVEL'
      'CREDITO_UTILIZADO=CREDITO_UTILIZADO')
    DataSet = db_ViewCliente
    BCDToCurrency = False
    Left = 944
    Top = 48
  end
  object frxReportCliente: TfrxReport
    Version = '6.2.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.ZoomMode = zmPageWidth
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40905.983237453700000000
    ReportOptions.LastChange = 43659.931197511570000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 584
    Top = 56
    Datasets = <
      item
        DataSet = frdb_Clientes
        DataSetName = 'frdb_Clientes'
      end
      item
        DataSet = frdb_ctareceber
        DataSetName = 'frdb_ctareceber'
      end
      item
        DataSet = frdb_Pedido
        DataSetName = 'frdb_Pedido'
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 17.007874020000000000
        ParentFont = False
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        DataSet = frdb_Pedido
        DataSetName = 'frdb_Pedido'
        RowCount = 0
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031496060000000000
          Top = 1.889763780000000000
          Width = 74.078740160000000000
          Height = 11.338582680000000000
          DataField = 'DATA'
          DataSet = frdb_Pedido
          DataSetName = 'frdb_Pedido'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdb_Pedido."DATA"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 238.110236220000000000
          Top = 1.889763780000000000
          Width = 67.275590550000000000
          Height = 11.338582680000000000
          DataField = 'QTDE_TOTAL'
          DataSet = frdb_Pedido
          DataSetName = 'frdb_Pedido'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdb_Pedido."QTDE_TOTAL"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307086610000000000
          Top = 1.889763780000000000
          Width = 108.472440940000000000
          Height = 11.338582680000000000
          DataField = 'FORMA_PAGTO_NOME'
          DataSet = frdb_Pedido
          DataSetName = 'frdb_Pedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdb_Pedido."FORMA_PAGTO_NOME"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763779527560000
          Top = 1.889763779527560000
          Width = 48.881880000000000000
          Height = 11.338582680000000000
          DataField = 'CODIGO'
          DataSet = frdb_Pedido
          DataSetName = 'frdb_Pedido'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdb_Pedido."CODIGO"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181102360000000000
          Top = 1.889763780000000000
          Width = 81.259842520000000000
          Height = 11.338582680000000000
          DataField = 'DATA_ENTREGA'
          DataSet = frdb_Pedido
          DataSetName = 'frdb_Pedido'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdb_Pedido."DATA_ENTREGA"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 544.251968500000000000
          Top = 1.889763780000000000
          Width = 90.708661420000000000
          Height = 11.338582680000000000
          DataField = 'VENDEDOR_NOME'
          DataSet = frdb_Pedido
          DataSetName = 'frdb_Pedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdb_Pedido."VENDEDOR_NOME"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480314960000000000
          Top = 1.889763780000000000
          Width = 82.015748030000000000
          Height = 11.338582680000000000
          DataField = 'VLR_TOTAL'
          DataSet = frdb_Pedido
          DataSetName = 'frdb_Pedido'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdb_Pedido."VLR_TOTAL"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 651.968503940000000000
          Top = 1.889763780000000000
          Width = 59.338582680000000000
          Height = 11.338582680000000000
          DataField = 'STATUS'
          DataSet = frdb_Pedido
          DataSetName = 'frdb_Pedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdb_Pedido."STATUS"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 105.826840000000000000
        Top = 680.315400000000000000
        Width = 718.110700000000000000
        object Line5: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 718.110700000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 277.244280000000000000
          Top = 7.559055120000000000
          Width = 68.031466770000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frdb_Pedido."QTDE_TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 277.244280000000000000
          Top = 25.456710000000000000
          Width = 68.031466770000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'R$ [SUM(<frdb_Pedido."VLR_TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 277.244280000000000000
          Top = 43.354360000000000000
          Width = 68.031466770000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'R$ [SUM(<frdb_ctareceber."VALOR">,DetailData2)]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 277.244280000000000000
          Top = 61.252010000000000000
          Width = 68.031466770000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'R$ [SUM(<frdb_ctareceber."VALOR_PAGO">,DetailData2)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 277.244280000000000000
          Top = 78.929190000000000000
          Width = 68.031466770000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              'R$ [SUM(<frdb_ctareceber."VALOR">-<frdb_ctareceber."VALOR_PAGO">' +
              ',DetailData2)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 7.559055120000000000
          Width = 113.385826770000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE VENDIDA:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 25.456714880000000000
          Width = 113.385826770000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL DE VENDAS:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 43.354364880000000000
          Width = 113.385826770000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'A RECEBER:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 61.252014880000000000
          Width = 113.385826770000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'RECEBIDOS:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 78.929194880000000000
          Width = 113.385826770000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'SALDO A RECEBER:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 7.559055120000000000
          Width = 126.614173228346000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'QUANTIDADE DE PEDIDOS: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 17.677180000000000000
          Width = 279.685146770000000000
          Height = 71.811060240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              'Esse cliente possui [COUNT(MasterData1)] Pedido(s) de Venda(s). ' +
              'Em cada Pedido foi vendido [AVG(<frdb_Pedido."QTDE_TOTAL">,Maste' +
              'rData1)] itens (em m'#233'dia). Significam R$ [AVG(<frdb_Pedido."VLR_' +
              'TOTAL">,MasterData1)] por cada Pedido (em m'#233'dia). Cada parcela d' +
              'e titulo(s) a receber desse cliente ficam em torno de R$ [AVG(<f' +
              'rdb_ctareceber."VALOR">,DetailData2)]. Prazo m'#233'dio de pagamento ' +
              #233' [AVG(<frdb_ctareceber."PRAZO_DIAS">,DetailData2)] dia(s).  Pra' +
              'zo m'#233'dio de atraso '#233' de [AVG(<frdb_ctareceber."ATRASO_DIAS">,Det' +
              'ailData2)] dia(s). ')
          ParentFont = False
          Formats = <
            item
              FormatStr = '###,##0'
              Kind = fkNumeric
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 3.779530000000000000
          Width = 113.385826770000000000
          Height = 13.228346460000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'AN'#193'LISE DE M'#201'DIAS:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 126.614173228346000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'QUANTIDADE DE TITULOS:[COUNT(DetailData2)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 808.819420000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 3.779530000000000000
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
          Left = 536.693260000000000000
          Top = 3.779530000000000000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DataField = 'EMP_SITE'
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_SITE"]')
          ParentFont = False
        end
        object Line15: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 1.889763779527560000
          Width = 718.110700000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Top = 540.472790000000000000
        Width = 718.110700000000000000
        DataSet = frdb_Clientes
        DataSetName = 'frdb_Clientes'
        RowCount = 0
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 13.228344020000000000
        Top = 563.149970000000000000
        Width = 718.110700000000000000
        DataSet = frdb_ctareceber
        DataSetName = 'frdb_ctareceber'
        RowCount = 0
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031496060000000000
          Width = 62.740150160000000000
          Height = 11.338582680000000000
          DataField = 'DOCUMENTO'
          DataSet = frdb_ctareceber
          DataSetName = 'frdb_ctareceber'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdb_ctareceber."DOCUMENTO"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874015750000000000
          Width = 67.275590550000000000
          Height = 11.338582680000000000
          DataField = 'VENCIMENTO'
          DataSet = frdb_ctareceber
          DataSetName = 'frdb_ctareceber'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdb_ctareceber."VENCIMENTO"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 655.748031500000000000
          Width = 55.559052680000000000
          Height = 11.338582680000000000
          DataField = 'QUITADO'
          DataSet = frdb_ctareceber
          DataSetName = 'frdb_ctareceber'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdb_ctareceber."QUITADO"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Width = 56.440940000000000000
          Height = 11.338582680000000000
          DataField = 'DATA'
          DataSet = frdb_ctareceber
          DataSetName = 'frdb_ctareceber'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdb_ctareceber."DATA"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842519690000000000
          Width = 58.582662520000000000
          Height = 11.338582680000000000
          DataField = 'NOTAFISCAL'
          DataSet = frdb_ctareceber
          DataSetName = 'frdb_ctareceber'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdb_ctareceber."NOTAFISCAL"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 499.456692910000000000
          Width = 68.031496060000000000
          Height = 11.338582680000000000
          DataField = 'VALOR'
          DataSet = frdb_ctareceber
          DataSetName = 'frdb_ctareceber'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdb_ctareceber."VALOR"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685039370000000000
          Width = 82.015748030000000000
          Height = 11.338582680000000000
          DataField = 'DATA_PAGTO'
          DataSet = frdb_ctareceber
          DataSetName = 'frdb_ctareceber'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdb_ctareceber."DATA_PAGTO"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 366.614173230000000000
          Width = 119.811030940000000000
          Height = 11.338582680000000000
          DataField = 'FORMAPAGAMENTO'
          DataSet = frdb_ctareceber
          DataSetName = 'frdb_ctareceber'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdb_ctareceber."FORMAPAGAMENTO"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 578.826771650000000000
          Width = 68.031496060000000000
          Height = 11.338582680000000000
          DataField = 'VALOR_PAGO'
          DataSet = frdb_ctareceber
          DataSetName = 'frdb_ctareceber'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdb_ctareceber."VALOR_PAGO"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 177.637741570000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 550.464750000000000000
          Height = 52.913388270000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Georgia'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          Memo.UTF8W = (
            'HIST'#211'RICO DE CLIENTE')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 554.590910000000000000
          Top = 7.559060000000000000
          Width = 162.511750000000000000
          Height = 52.913388270000000000
          Fill.BackColor = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 566.149603860000000000
          Top = 9.448823780000000000
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
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 567.149603860000000000
          Top = 24.188981260000000000
          Width = 36.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 567.149603860000000000
          Top = 39.307091500000000000
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
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 632.299215040000000000
          Top = 9.448823780000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 632.299215040000000000
          Top = 24.188981260000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 632.299215040000000000
          Top = 39.307091500000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
          WordWrap = False
        end
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Top = 63.252010000000000000
          Width = 718.000000000000000000
          Height = 113.385826770000000000
          Frame.Typ = []
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 65.377991810000000000
          Width = 132.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'NOME/RAZ'#195'O SOCIAL:')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 459.000000000000000000
          Top = 65.377991810000000000
          Width = 58.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 587.000000000000000000
          Top = 65.377991810000000000
          Width = 123.000000000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'I.E/RG:')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 77.252010000000000000
          Width = 228.315090000000000000
          Height = 11.338582680000000000
          DataField = 'NOME'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdb_Clientes."NOME"]')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 459.000000000000000000
          Top = 77.252010000000000000
          Width = 50.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CPF_CNPJ'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdb_Clientes."CPF_CNPJ"]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 587.000000000000000000
          Top = 77.252010000000000000
          Width = 29.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'RG_IE'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdb_Clientes."RG_IE"]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = 93.834684720000000000
          Width = 59.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 437.842610000000000000
          Top = 93.834684720000000000
          Width = 43.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'BAIRRO:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 648.740260000000000000
          Top = 93.834684720000000000
          Width = 26.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 106.252010000000000000
          Width = 54.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'ENDERECO'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdb_Clientes."ENDERECO"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 437.842610000000000000
          Top = 106.252010000000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'BAIRRO'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdb_Clientes."BAIRRO"]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 648.740260000000000000
          Top = 106.252010000000000000
          Width = 20.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CEP'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdb_Clientes."CEP"]')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 121.047283150000000000
          Width = 65.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'MUNICIPIO:')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 133.252010000000000000
          Width = 69.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CIDADENOME'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdb_Clientes."CIDADENOME"]')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 177.527520000000000000
          Top = 133.252010000000000000
          Width = 14.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'UF'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdb_Clientes."UF"]')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Left = 177.527520000000000000
          Top = 121.047283150000000000
          Width = 20.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Left = 216.307050000000000000
          Top = 121.047283150000000000
          Width = 33.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FONE:')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          AllowVectorExport = True
          Left = 303.409400000000000000
          Top = 121.047283150000000000
          Width = 32.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FAX:')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          AllowVectorExport = True
          Left = 303.409400000000000000
          Top = 133.393739840000000000
          Width = 18.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'FAX'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdb_Clientes."FAX"]')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          AllowVectorExport = True
          Left = 391.732220000000000000
          Top = 133.141771340000000000
          Width = 45.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CONTATO'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdb_Clientes."CONTATO"]')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          AllowVectorExport = True
          Left = 391.732220000000000000
          Top = 121.047283150000000000
          Width = 54.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CONTATO:')
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 161.252010000000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'VENDEDOR_NOME'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdb_Clientes."VENDEDOR_NOME"]')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 147.881928820000000000
          Width = 98.118120000000000000
          Height = 12.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'REPRESENTANTE:')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          AllowVectorExport = True
          Left = 532.606370000000000000
          Top = 121.047283150000000000
          Width = 102.440940000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'EMAIL DO CLIENTE:')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          Left = 532.606370000000000000
          Top = 133.141771340000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'EMAIL'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdb_Clientes."EMAIL"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Top = 92.858380000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Top = 119.535560000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Top = 147.771800000000000000
          Width = 718.110236220000000000
          Height = -0.000007320000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 63.118110240000000000
          Height = 30.236220470000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line21: TfrxLineView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 63.118110240000000000
          Height = 30.236220470000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line22: TfrxLineView
          AllowVectorExport = True
          Left = 433.189240000000000000
          Top = 93.354330710000000000
          Height = 25.322834650000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line23: TfrxLineView
          AllowVectorExport = True
          Left = 645.520100000000000000
          Top = 93.354330710000000000
          Height = 25.322834650000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line25: TfrxLineView
          AllowVectorExport = True
          Left = 388.291590000000000000
          Top = 119.401574800000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line26: TfrxLineView
          AllowVectorExport = True
          Left = 298.582870000000000000
          Top = 119.401574800000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line27: TfrxLineView
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 119.401574800000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line28: TfrxLineView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 147.771800000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line29: TfrxLineView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 119.401574800000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line30: TfrxLineView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 119.535560000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo113: TfrxMemoView
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 133.393739840000000000
          Width = 19.440940000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DDD_FONE'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdb_Clientes."DDD_FONE"]')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          AllowVectorExport = True
          Left = 240.575140000000000000
          Top = 133.393739840000000000
          Width = 49.677180000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'FONE'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdb_Clientes."FONE"]')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          AllowVectorExport = True
          Left = 371.267780000000000000
          Top = 93.196970000000000000
          Width = 47.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Left = 371.267780000000000000
          Top = 105.669410950000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'NUMERO'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdb_Clientes."NUMERO"]')
          ParentFont = False
        end
        object Line31: TfrxLineView
          AllowVectorExport = True
          Left = 366.614410000000000000
          Top = 93.354330710000000000
          Height = 25.322834650000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        Condition = 'frdb_Clientes."CODIGO"'
        ReprintOnNewPage = True
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031496060000000000
          Top = 41.574632280000000000
          Width = 74.078740160000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA PEDIDO:')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 238.110236220472000000
          Top = 41.574632280000000000
          Width = 67.275590551181090000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'QTDE TOTAL:')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 651.968503940000000000
          Top = 41.574632280000000000
          Width = 59.338582680000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FATURADO:')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 41.574632280000000000
          Width = 56.440940000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PEDIDO:')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181102360000000000
          Top = 41.574632280000000000
          Width = 81.259842520000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA ENTREGA:')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 544.251968500000000000
          Top = 41.574632280000000000
          Width = 90.708661420000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'REPRESENTANTE:')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480314960630000000
          Top = 41.574632280000000000
          Width = 82.015748031496100000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR VENDA:')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 718.110236220000000000
          Height = 26.456678270000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Georgia'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'HIST'#211'RICO DE VENDAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307086610000000000
          Top = 41.574632280000000000
          Width = 108.472440940000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FORMA PAGAMENTO:')
          ParentFont = False
        end
        object Line32: TfrxLineView
          AllowVectorExport = True
          Top = 56.440940000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 381.732530000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 317.480314960000000000
          Top = 1.889763780000000000
          Width = 82.015748030000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frdb_Pedido."VLR_TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 238.110236220000000000
          Top = 1.889763779527560000
          Width = 67.275590550000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frdb_Pedido."QTDE_TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 1.889763780000000000
          Width = 67.275590550000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 457.323130000000000000
        Width = 718.110700000000000000
        Condition = 'frdb_Clientes."CODIGO"'
        ReprintOnNewPage = True
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 718.110236220000000000
          Height = 26.456678270000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Georgia'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'HIST'#211'RICO FINANCEIRO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031496060000000000
          Top = 41.795300000000000000
          Width = 62.740150160000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DOCUMENTO:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874015750000000000
          Top = 41.795300000000000000
          Width = 67.275590550000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VENCIMENTO:')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 655.748031500000000000
          Top = 41.795300000000000000
          Width = 55.559052680000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QUITADO:')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 41.795300000000000000
          Width = 56.440940000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842519690000000000
          Top = 41.795300000000000000
          Width = 58.582662520000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'NOTA FISCAL:')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 499.456692910000000000
          Top = 41.795300000000000000
          Width = 68.031496060000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TITULO:')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685039370000000000
          Top = 41.795300000000000000
          Width = 82.015748030000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA PAGAMENTO:')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 366.614173230000000000
          Top = 41.795300000000000000
          Width = 108.472440940000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FORMA PAGAMENTO:')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 578.826771650000000000
          Top = 41.574830000000000000
          Width = 68.031496060000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR PAGO:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 600.945270000000000000
        Width = 718.110700000000000000
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 578.826771650000000000
          Top = 1.889763780000000000
          Width = 68.031496060000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frdb_ctareceber."VALOR_PAGO">,DetailData2)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 499.456692910000000000
          Top = 1.889763779527560000
          Width = 68.031496060000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frdb_ctareceber."VALOR">,DetailData2)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 1.889763780000000000
          Width = 67.275590550000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(DetailData2)]')
          ParentFont = False
        end
      end
    end
  end
  object db_ViewCliente: TFDQuery
    AfterOpen = db_ViewClienteAfterOpen
    MasterSource = DS_Clientes
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT *  FROM VIEW_CLIENTES'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 944
    Top = 104
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object OpenDialogArquivos: TOpenDialog
    Left = 304
    Top = 163
  end
  object DS_Clientes: TDataSource
    DataSet = db_Clientes
    OnStateChange = DS_ClientesStateChange
    Left = 368
    Top = 8
  end
  object db_Clientes: TFDQuery
    AfterOpen = db_ClientesAfterOpen
    BeforePost = db_ClientesBeforePost
    AfterPost = db_ClientesAfterPost
    OnNewRecord = db_ClientesNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AssignedValues = [uvCountUpdatedRecords, uvGeneratorName]
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT *  FROM CAD_CLIENTES'
      'WHERE'
      'CODIGO=:CODIGO'
      'AND'
      'TIPO IN ('#39'CLIENTE'#39')')
    Left = 296
    Top = 8
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object dbClienteCobrancas: TFDQuery
    AfterOpen = dbClienteCobrancasAfterOpen
    BeforePost = dbClienteCobrancasBeforePost
    MasterSource = DS_Clientes
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'select * from CAD_CLIENTES_COBRANCAS'
      'WHERE'
      'IDCLIENTE=:CODIGO')
    Left = 544
    Top = 312
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object dsClienteCobrancas: TDataSource
    DataSet = dbClienteCobrancas
    Left = 544
    Top = 352
  end
  object QryAnexos: TFDQuery
    MasterSource = DS_Clientes
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'select * from CAD_CLIENTES_ANEXOS'
      'WHERE'
      'IDCLIENTE=:CODIGO')
    Left = 560
    Top = 160
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object dsAnexos: TDataSource
    DataSet = QryAnexos
    Left = 560
    Top = 200
  end
  object ACBrCEP: TACBrCEP
    ProxyPort = '8080'
    WebService = wsRepublicaVirtual
    PesquisarIBGE = True
    OnBuscaEfetuada = ACBrCEPBuscaEfetuada
    Left = 400
    Top = 88
  end
end
