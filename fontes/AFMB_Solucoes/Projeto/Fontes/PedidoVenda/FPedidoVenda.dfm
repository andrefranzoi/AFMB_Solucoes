object FrmPedidoVenda: TFrmPedidoVenda
  Left = 0
  Top = 1
  VertScrollBar.Tracking = True
  Caption = 'Pedido de Venda'
  ClientHeight = 587
  ClientWidth = 1004
  Color = clWhite
  Constraints.MinWidth = 1020
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
  PixelsPerInch = 96
  TextHeight = 13
  object grpPedidos: TGroupBox
    Left = 0
    Top = 50
    Width = 1004
    Height = 477
    Align = alClient
    Caption = 'Dados Principais do Pedido'
    Enabled = False
    TabOrder = 0
    object grbTotais: TGroupBox
      Left = 2
      Top = 415
      Width = 1000
      Height = 60
      Align = alBottom
      Caption = 'TOTAIS'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label6: TLabel
        Left = 258
        Top = 26
        Width = 84
        Height = 15
        Caption = 'Desconto Total:'
      end
      object Label7: TLabel
        Left = 549
        Top = 26
        Width = 76
        Height = 15
        Caption = 'Total de Pe'#231'as'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 808
        Top = 26
        Width = 75
        Height = 15
        Caption = 'Valor Liquido:'
      end
      object Label9: TLabel
        Left = 42
        Top = 26
        Width = 66
        Height = 15
        Caption = 'Valor Bruto:'
      end
      object DBEdit5: TDBEdit
        Left = 886
        Top = 22
        Width = 86
        Height = 23
        Color = clBtnFace
        DataField = 'VLR_TOTAL'
        DataSource = ds_Pedido
        TabOrder = 2
      end
      object DBEdit1: TDBEdit
        Left = 631
        Top = 22
        Width = 130
        Height = 23
        Color = clBtnFace
        DataField = 'QTDE_TOTAL'
        DataSource = ds_Pedido
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Left = 345
        Top = 22
        Width = 130
        Height = 23
        Color = clBtnFace
        DataField = 'VLR_DESCONTO'
        DataSource = ds_Pedido
        TabOrder = 1
      end
      object DBEdit7: TDBEdit
        Left = 114
        Top = 22
        Width = 130
        Height = 23
        Color = clBtnFace
        DataField = 'VLR_PRODUTOS'
        DataSource = ds_Pedido
        TabOrder = 0
      end
    end
    object AdvGroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 5
      Top = 173
      Width = 994
      Height = 239
      Align = alClient
      Caption = 
        '[ITENS] Procurar Produto: F8 | Tecle "Seta pra baixo" ou "Insert' +
        '" = Inserir | Gravar/Recalcular ap'#243's digitar: Seta "pra cima" ou' +
        ' "pra baixo" | Ctrl + Delete = Excluir item'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object ProgressBar1: TProgressBar
        Left = 2
        Top = 16
        Width = 990
        Height = 16
        Align = alTop
        TabOrder = 1
      end
      object cxGrid1: TcxGrid
        Left = 2
        Top = 32
        Width = 990
        Height = 205
        Align = alClient
        TabOrder = 0
        OnEnter = cxGrid1Enter
        OnExit = cxGrid1Exit
        object cxGridItem: TcxGridDBTableView
          OnKeyDown = cxGridItemKeyDown
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_PedidoItens
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridItemPRODUTO: TcxGridDBColumn
            Caption = 'C'#243'digo Produto'
            DataBinding.FieldName = 'REFERENCIA'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGridItemPRODUTOPropertiesButtonClick
            MinWidth = 100
            Options.AutoWidthSizable = False
            Width = 100
          end
          object cxGridItemDESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'DESCRICAO'
            MinWidth = 100
            Options.Editing = False
            Width = 100
          end
          object cxGridItemQTDE: TcxGridDBColumn
            Caption = 'Qtde'
            DataBinding.FieldName = 'QTDE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '##0.##0'
            MinWidth = 80
            Options.AutoWidthSizable = False
            Width = 80
          end
          object cxGridItemVLR_UNIT: TcxGridDBColumn
            Caption = 'Vlr Unit'
            DataBinding.FieldName = 'VLR_UNIT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '###,##0.00'
            MinWidth = 80
            Options.AutoWidthSizable = False
            Width = 80
          end
          object cxGridItemDESCONTO: TcxGridDBColumn
            Caption = 'Desconto %'
            DataBinding.FieldName = 'DESCONTO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '###,##0.00;-###,##0.00'
            MinWidth = 80
            Options.AutoWidthSizable = False
            Width = 80
          end
          object cxGridItemVLR_TOTAL: TcxGridDBColumn
            Caption = 'Vlr Total'
            DataBinding.FieldName = 'VLR_TOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '###,##0.00'
            MinWidth = 100
            Options.AutoWidthSizable = False
            Width = 100
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGridItem
        end
      end
    end
    object AdvGroupBox4: TGroupBox
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 994
      Height = 149
      Align = alTop
      Caption = '[ CLIENTE ]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = AdvGroupBox4Exit
      object Label1: TLabel
        Left = 484
        Top = 17
        Width = 66
        Height = 14
        Caption = 'Data Pedido'
      end
      object Label2: TLabel
        Left = 567
        Top = 17
        Width = 72
        Height = 14
        Caption = 'Data Entrega'
      end
      object Label3: TLabel
        Left = 659
        Top = 17
        Width = 105
        Height = 14
        Caption = 'Codigo de Controle'
      end
      object Label10: TLabel
        Left = 384
        Top = 18
        Width = 63
        Height = 14
        Caption = 'ID (C'#243'digo)'
      end
      object EditCliente: TIDBEditDialog
        Left = 6
        Top = 32
        Width = 65
        Height = 22
        HelpKeyWord = ''
        Color = clWindow
        Enabled = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        TabOrder = 0
        Text = ''
        Visible = True
        OnExit = EditClienteExit
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
        DataField = 'CLIENTE'
        DataSource = ds_Pedido
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditNomeCliente
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT CODIGO, NOME FROM CAD_CLIENTES'
          'WHERE'
          'CODIGO=:CODIGO'
          '')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM VIEW_CLIENTES'
          'WHERE'
          'COALESCE(ATIVO,'#39'S'#39')<>'#39'N'#39
          'AND'
          '%WHERE%')
        SearchDialogFieldList = <
          item
            FieldName = 'CODIGO'
            WhereSyntax = 'CODIGO'
            DisplayLabel = 'C'#243'digo'
            DisplayWidth = 12
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
            DisplayLabel = 'Nome/Raz'#227'o Social'
            DisplayWidth = 60
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
      object EditNomeCliente: TEdit
        Left = 73
        Top = 32
        Width = 305
        Height = 22
        AutoSize = False
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = '***'
      end
      object EditData: TDBEdit
        Left = 484
        Top = 31
        Width = 68
        Height = 22
        DataField = 'DATA'
        DataSource = ds_Pedido
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = EditDataExit
      end
      object EditNomeVendedor: TEdit
        Left = 73
        Top = 70
        Width = 305
        Height = 22
        AutoSize = False
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        Text = '***'
      end
      object EditDataEntrega: TDBEdit
        Left = 567
        Top = 31
        Width = 83
        Height = 22
        DataField = 'DATA_ENTREGA'
        DataSource = ds_Pedido
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object EditPagamento: TIDBEditDialog
        Left = 384
        Top = 70
        Width = 65
        Height = 22
        HelpKeyWord = ''
        Color = clWindow
        Enabled = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        TabOrder = 8
        Text = ''
        Visible = True
        EditType = etAlphaNumeric
        EmptyText = 'Tecle F8'
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
        DataField = 'FORMAPAGTO'
        DataSource = ds_Pedido
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
        Left = 453
        Top = 70
        Width = 314
        Height = 22
        AutoSize = False
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
        Text = '***'
      end
      object EditNomeTrasportadora: TEdit
        Left = 73
        Top = 110
        Width = 305
        Height = 22
        AutoSize = False
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
        Text = '***'
      end
      object EditTransportadora: TIDBEditDialog
        Left = 6
        Top = 110
        Width = 65
        Height = 22
        HelpKeyWord = ''
        Color = clWindow
        Enabled = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        TabOrder = 10
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
        DataSource = ds_Pedido
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditNomeTrasportadora
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_CLIENTES'
          'WHERE'
          'CODIGO=:CODIGO')
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
      object GroupBox1: TGroupBox
        Left = 801
        Top = 32
        Width = 176
        Height = 94
        Caption = 'Status do Pedido'
        TabOrder = 14
        object Panel1: TPanel
          Left = 2
          Top = 16
          Width = 172
          Height = 76
          Align = alClient
          BevelOuter = bvNone
          Enabled = False
          ParentBackground = False
          TabOrder = 0
          object DBRadioGroup2: TDBRadioGroup
            Left = 84
            Top = 0
            Width = 88
            Height = 76
            Align = alRight
            Caption = 'Aprovado'
            Color = clBtnFace
            DataField = 'APROVADO'
            DataSource = ds_Pedido
            Items.Strings = (
              'Sim'
              'N'#227'o'
              'Cancelado')
            ParentBackground = False
            ParentColor = False
            TabOrder = 1
            Values.Strings = (
              'S'
              'N'
              'C')
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 0
            Top = 0
            Width = 73
            Height = 76
            Align = alLeft
            Caption = 'Faturado'
            Color = clBtnFace
            DataField = 'STATUS'
            DataSource = ds_Pedido
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentBackground = False
            ParentColor = False
            TabOrder = 0
            Values.Strings = (
              'S'
              'N')
          end
        end
      end
      object DBEdit2: TDBEdit
        Left = 659
        Top = 31
        Width = 108
        Height = 22
        Hint = 'Opcional - N'#227'o '#233' obrigat'#243'rio'
        DataField = 'DOCUMENTO'
        DataSource = ds_Pedido
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object EditTabela: TIDBEditDialog
        Left = 384
        Top = 110
        Width = 65
        Height = 22
        HelpKeyWord = ''
        Color = clWindow
        Enabled = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        TabOrder = 12
        Text = ''
        Visible = True
        EditType = etAlphaNumeric
        EmptyText = 'Tecle F8'
        FocusColor = clBtnFace
        LabelCaption = 'Tabela de pre'#231'os:'
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
        ButtonHint = 'Tabela de pre'#231'os'
        Etched = False
        ButtonCaption = '...'
        DataField = 'TABELA'
        DataSource = ds_Pedido
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditTabelaNome
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM TPRECO'
          'where'
          'codigo=:codigo')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM TPRECO'
          'where'
          '%where%')
        CountQuery.Strings = (
          'SELECT count(*) FROM TPRECO'
          'where'
          '%where%')
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
            DisplayLabel = 'NOME'
            DisplayWidth = 60
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'MOEDA'
            WhereSyntax = 'MOEDA'
            DisplayLabel = 'MOEDA'
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
      object EditTabelaNome: TEdit
        Left = 453
        Top = 110
        Width = 277
        Height = 22
        AutoSize = False
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
        Text = '***'
      end
      object EditVendedor: TIDBEditDialog
        Left = 6
        Top = 70
        Width = 65
        Height = 22
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = True
        ShowHint = True
        TabOrder = 6
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
        DataSource = ds_Pedido
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditNomeVendedor
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = ' *** '
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_CLIENTES'
          'WHERE'
          'CODIGO=:CODIGO'
          'AND'
          '  TIPO in ('#39'VENDEDOR'#39', '#39'REPRESENTANTE'#39')')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_CLIENTES'
          'WHERE'
          
            'TIPO IN ('#39'VENDEDOR'#39','#39'REPRESENTANTE'#39','#39'BALCONISTA'#39','#39'FUNCIONARIO'#39','#39 +
            'PREPOSTO'#39','#39'TELEVENDAS'#39','#39'WEBVENDAS'#39')'
          'AND'
          '%WHERE%')
        CountQuery.Strings = (
          '')
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
      object EditPedido: TDBEdit
        Left = 384
        Top = 32
        Width = 94
        Height = 22
        DataField = 'CODIGO'
        DataSource = ds_Pedido
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object BtnRecalcular: TBitBtn
        Left = 734
        Top = 108
        Width = 33
        Height = 25
        Hint = '(se necess'#225'rio)... recalcular  com base na Tabela de Pre'#231'os'
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
          33333333333F8888883F33330000324334222222443333388F3833333388F333
          000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
          F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
          223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
          3338888300003AAAAAAA33333333333888888833333333330000333333333333
          333333333333333333FFFFFF000033333333333344444433FFFF333333888888
          00003A444333333A22222438888F333338F3333800003A2243333333A2222438
          F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
          22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
          33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
          3333333333338888883333330000333333333333333333333333333333333333
          0000}
        ModalResult = 4
        NumGlyphs = 2
        TabOrder = 15
        OnClick = BtnRecalcularClick
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 1004
    Height = 50
    Align = alTop
    Constraints.MinHeight = 50
    Color = 16024898
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    ExplicitWidth = 1004
    inherited Image3: TImage
      Width = 1004
      ExplicitTop = 0
      ExplicitWidth = 1004
      ExplicitHeight = 50
    end
    inherited pnTitulo: TPanel
      Width = 998
      Constraints.MinHeight = 33
      ExplicitWidth = 998
      ExplicitHeight = 44
      inherited LblBarraTitulo: TLabel
        Width = 847
        Caption = 'Pedido de Venda'
        ExplicitTop = 2
        ExplicitWidth = 861
      end
      inherited Image1: TImage
        ExplicitLeft = 948
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 936
        ExplicitLeft = 948
        ExplicitHeight = 31
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 527
    Width = 1004
    Height = 60
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 527
    ExplicitWidth = 1004
    inherited PanelBotoesBottom: TPanel
      Width = 994
      ExplicitWidth = 994
      inherited SpbAdicionar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbAdicionarClick
        ExplicitLeft = 94
        ExplicitTop = -1
        ExplicitHeight = 50
      end
      inherited SpbEditar: TSpeedButton
        Visible = False
        OnClick = FrmFrameBotoes1SpbEditarClick
        ExplicitLeft = 300
      end
      inherited SpbCancelar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbCancelarClick
        ExplicitLeft = 400
      end
      inherited SpbSalvar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSalvarClick
        ExplicitLeft = 200
      end
      inherited SpbExcluir: TSpeedButton
        OnClick = FrmFrameBotoes1SpbExcluirClick
        ExplicitLeft = 500
      end
      inherited SpbImprimir: TSpeedButton
        Visible = True
        OnClick = FrmFrameBotoes1SpbImprimirClick
        ExplicitLeft = 700
      end
      inherited SpbSair: TSpeedButton
        Left = 890
        OnClick = FrmFrameBotoes1SpbSairClick
        ExplicitLeft = 890
      end
      inherited SpbExtra: TSpeedButton
        Left = 800
        ExplicitLeft = 800
      end
      inherited SpbProcurar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 600
      end
    end
    inherited DataSource: TDataSource
      Left = 755
    end
  end
  object dbeditPedidoProcurar: TIDBEditDialog
    Left = 639
    Top = 6
    Width = 65
    Height = 22
    HelpKeyWord = ''
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
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
      'SELECT * FROM VIEW_PEDIDOSVENDAS'
      'WHERE'
      '%WHERE%'
      'ORDER BY DATA DESC')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
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
        DisplayLabel = 'DATA ENTREGA:'
        DisplayWidth = 16
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
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
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'VENDEDOR_NOME'
        WhereSyntax = 'VENDEDOR_NOME'
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
        FieldName = 'QTDE_TOTAL'
        WhereSyntax = 'QTDE_TOTAL'
        DisplayLabel = 'QTDE TOTAL:'
        DisplayFormat = '###,##0'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VLR_TOTAL'
        WhereSyntax = 'VLR_TOTAL'
        DisplayLabel = 'VALOR TOTAL:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 14
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'APROVADO'
        WhereSyntax = 'APROVADO'
        DisplayLabel = 'APROVADO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'STATUS'
        WhereSyntax = 'STATUS'
        DisplayLabel = 'FATURADO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'PRODUZINDO'
        WhereSyntax = 'PRODUZINDO'
        DisplayLabel = 'PRODUZINDO:'
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
  object dbProcurarProduto: TIDBEditDialog
    Left = 464
    Top = 8
    Width = 65
    Height = 22
    HelpKeyWord = ''
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
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
  object CheckBox1: TCheckBox
    Left = 512
    Top = 248
    Width = 17
    Height = 1
    Caption = 'CheckBox1'
    TabOrder = 5
  end
  object db_Pedido: TFDQuery
    AfterOpen = db_PedidoAfterOpen
    BeforePost = db_PedidoBeforePost
    AfterPost = db_PedidoAfterPost
    OnNewRecord = db_PedidoNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM PEDIDOS'
      'WHERE'
      'CODIGO=:CODIGO'
      ''
      '')
    Left = 104
    Top = 112
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object db_PedidoItens: TFDQuery
    AutoCalcFields = False
    AfterOpen = db_PedidoItensAfterOpen
    BeforeInsert = db_PedidoItensBeforeInsert
    BeforePost = db_PedidoItensBeforePost
    AfterPost = db_PedidoItensAfterPost
    AfterDelete = db_PedidoItensAfterDelete
    MasterSource = ds_Pedido
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AssignedValues = [uvUpdateMode, uvCountUpdatedRecords]
    UpdateOptions.UpdateMode = upWhereAll
    UpdateOptions.CountUpdatedRecords = False
    SQL.Strings = (
      'SELECT * FROM PEDIDOS_ITENS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 176
    Top = 112
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        FDDataType = dtInt64
        ParamType = ptInput
      end>
  end
  object ds_Pedido: TDataSource
    DataSet = db_Pedido
    OnStateChange = ds_PedidoStateChange
    Left = 104
    Top = 64
  end
  object ds_PedidoItens: TDataSource
    DataSet = db_PedidoItens
    OnStateChange = ds_PedidoItensStateChange
    Left = 184
    Top = 64
  end
  object SP_CalculaPedido: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPPEDIDOS_CALCULA'
    Left = 104
    Top = 320
    ParamData = <
      item
        Position = 1
        Name = 'NEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'NCODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object frx_dsPedido: TfrxDBDataset
    Description = 'Pedido'
    UserName = 'frx_dsPedido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'TIPO=TIPO'
      'STATUS=STATUS'
      'CLIENTE=CLIENTE'
      'DATA=DATA'
      'DATA_FATURAMENTO=DATA_FATURAMENTO'
      'DATA_ENTREGA=DATA_ENTREGA'
      'VENDEDOR=VENDEDOR'
      'TABELA=TABELA'
      'FORMAPAGTO=FORMAPAGTO'
      'TRANSPORTADORA=TRANSPORTADORA'
      'APROVADO=APROVADO'
      'DOCUMENTO=DOCUMENTO'
      'TRANSPORTEVOLUMES=TRANSPORTEVOLUMES'
      'COMISSAO=COMISSAO'
      'ORIGEM=ORIGEM'
      'QTDE_DISPONIVEL=QTDE_DISPONIVEL'
      'QTDE_TOTAL=QTDE_TOTAL'
      'QTDE_PRODUTOS=QTDE_PRODUTOS'
      'DESCONTO=DESCONTO'
      'VLR_DESCONTO=VLR_DESCONTO'
      'VLR_PRODUTOS=VLR_PRODUTOS'
      'VLR_IMPOSTOS=VLR_IMPOSTOS'
      'VLR_TOTAL=VLR_TOTAL'
      'FRETE=FRETE'
      'IMPRESSO=IMPRESSO'
      'OBSERVACAO=OBSERVACAO')
    DataSet = db_Pedido
    BCDToCurrency = False
    Left = 48
    Top = 392
  end
  object frx_dsPedidosItens: TfrxDBDataset
    Description = 'PedidoItens'
    UserName = 'frx_dsPedidosItens'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'REFERENCIA=REFERENCIA'
      'DESCRICAO=DESCRICAO'
      'UND=UND'
      'QTDE=QTDE'
      'VLR_UNIT=VLR_UNIT'
      'DESCONTO=DESCONTO'
      'VLR_DESCONTO=VLR_DESCONTO'
      'VLR_IMPOSTOS=VLR_IMPOSTOS'
      'VLR_TOTAL=VLR_TOTAL')
    DataSet = db_PedidoItens
    BCDToCurrency = False
    Left = 256
    Top = 392
  end
  object db_PedidoVenda: TFDQuery
    MasterSource = ds_Pedido
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDOSVENDAS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 248
    Top = 344
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        FDDataType = dtInt64
        ParamType = ptInput
        Size = 4
      end>
  end
  object frx_PedidoVenda: TfrxDBDataset
    Description = 'db_PedidoVenda'
    UserName = 'FrxPedidoVenda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'DOCUMENTO=DOCUMENTO'
      'TITULO=TITULO'
      'DATA=DATA'
      'DATA_FATURAMENTO=DATA_FATURAMENTO'
      'DATA_ENTREGA=DATA_ENTREGA'
      'TIPO=TIPO'
      'CLIENTE=CLIENTE'
      'CLIENTE_NOME=CLIENTE_NOME'
      'CNPJ=CNPJ'
      'IE=IE'
      'ENDERECO=ENDERECO'
      'NUMERO=NUMERO'
      'BAIRRO=BAIRRO'
      'CEP=CEP'
      'NOMECIDADE=NOMECIDADE'
      'UF=UF'
      'DDD=DDD'
      'FONE=FONE'
      'FAX=FAX'
      'CONTATO=CONTATO'
      'EMAIL=EMAIL'
      'VENDEDOR=VENDEDOR'
      'VENDEDOR_NOME=VENDEDOR_NOME'
      'TRANSPORTADORA=TRANSPORTADORA'
      'TRANSPORTADORA_NOME=TRANSPORTADORA_NOME'
      'FORMA_PAGTO=FORMA_PAGTO'
      'FORMA_PAGTO_NOME=FORMA_PAGTO_NOME'
      'TIPOPAGAMENTO=TIPOPAGAMENTO'
      'VLR_DESCONTO=VLR_DESCONTO'
      'QTDE_TOTAL=QTDE_TOTAL'
      'VLR_TOTAL=VLR_TOTAL'
      'VLR_PRODUTOS=VLR_PRODUTOS'
      'APROVADO=APROVADO'
      'STATUS=STATUS'
      'IMPRESSO=IMPRESSO')
    DataSet = db_PedidoVenda
    BCDToCurrency = False
    Left = 128
    Top = 392
  end
  object db_TabelaReferencia: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM TPRECO_REFERENCIAS'
      'WHERE'
      'CODIGO=:CODIGO'
      'ORDER BY REFERENCIA')
    Left = 508
    Top = 238
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
  end
  object FrxPedidoVenda: TfrxReport
    Version = '6.2.11'
    DataSet = frx_PedidoVenda
    DataSetName = 'FrxPedidoVenda'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41000.913359259300000000
    ReportOptions.Name = 'Pedido de Venda'
    ReportOptions.LastChange = 43165.817643692100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'procedure DBCross1OnPrintCell(Memo: TfrxMemoView; RowIndex, Colu' +
        'mnIndex, CellIndex: Integer; RowValues, ColumnValues, Value: Var' +
        'iant);'
      'begin'
      '  if (Value = null) or (Value = 0) then Memo.Text := '#39#39';'
      '  if Value > 0 then'
      '  begin                  '
      '    Memo.Color := clSilver;       '
      '  end;  '
      '  end;'
      ''
      'Begin'
      '        '
      'end.')
    Left = 504
    Top = 312
    Datasets = <
      item
        DataSet = FrmPrincipal.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = frx_dsPedido
        DataSetName = 'frx_dsPedido'
      end
      item
        DataSet = frx_dsPedidosItens
        DataSetName = 'frx_dsPedidosItens'
      end
      item
        DataSet = frx_PedidoVenda
        DataSetName = 'FrxPedidoVenda'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      DataSet = frx_dsPedido
      DataSetName = 'frx_dsPedido'
      Frame.Typ = []
      TitleBeforeHeader = False
      object ReportSummary1: TfrxReportSummary
        Description = 'Totais'
        FillType = ftBrush
        Frame.Typ = []
        Height = 124.724490000000000000
        Top = 408.189240000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 505.472480000000000000
          Top = 61.188930000000000000
          Width = 200.307050000000000000
          Height = 56.881880000000000000
          Frame.Typ = []
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 509.102362200000000000
          Top = 91.645688820000000000
          Width = 96.377952760000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE:')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 509.102362200000000000
          Top = 104.543326610000000000
          Width = 96.377952760000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DO PEDIDO:')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Top = 98.763760000000100000
          Width = 464.606370000000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              'CLIENTE: ___________________________    |    REPRESENTANTE: ____' +
              '_______________________')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Top = 63.866110000000000000
          Width = 415.228510000000000000
          Height = 12.094488190000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FORMA DE PAGAMENTO: [FrxPedidoVenda."FORMA_PAGTO_NOME"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Line21: TfrxLineView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Width = 714.330708660000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 609.637795280000000000
          Top = 104.543326610000000000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'VLR_TOTAL'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'R$ ###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxPedidoVenda."VLR_TOTAL"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 609.637795280000000000
          Top = 91.645688820000000000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'QTDE_TOTAL'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
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
            '[FrxPedidoVenda."QTDE_TOTAL"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 509.102362200000000000
          Top = 78.267780000000000000
          Width = 96.377952760000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DESCONTO:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 609.637795280000000000
          Top = 78.267780000000000000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'VLR_DESCONTO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'R$ ###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxPedidoVenda."VLR_DESCONTO"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 609.637795280000000000
          Top = 65.370130000000000000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'VLR_PRODUTOS'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'R$ ###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxPedidoVenda."VLR_PRODUTOS"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 509.102362200000000000
          Top = 65.370130000000000000
          Width = 96.377952760000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR BRUTO:')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 3.779530000000020000
          Width = 718.110700000000000000
          Height = 51.677180000000000000
          AutoWidth = True
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'OBSERVA'#199#195'O:'
            '[frx_dsPedido."OBSERVACAO"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 122.944960000000000000
          Width = 718.110700000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        Description = 'Pedido de Venda'
        FillType = ftBrush
        Frame.Typ = []
        Height = 249.448828660000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Width = 718.102660000000000000
          Height = 68.031496060000000000
          Fill.BackColor = 15724527
          Frame.Color = clWhite
          Frame.Typ = []
        end
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 68.779530000000000000
          Width = 718.000000000000000000
          Height = 142.000000000000000000
          Frame.Typ = []
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779527560000000000
          Top = 99.905511810000000000
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
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 460.000000000000000000
          Top = 99.905511810000000000
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
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 588.000000000000000000
          Top = 99.905511810000000000
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
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779527560000000000
          Top = 111.779530000000000000
          Width = 228.315090000000000000
          Height = 11.338582680000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CLIENTE"] - [FrxPedidoVenda."CLIENTE_NOME"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 460.000000000000000000
          Top = 111.779530000000000000
          Width = 50.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CNPJ'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CNPJ"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 588.000000000000000000
          Top = 111.779530000000000000
          Width = 29.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'IE'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."IE"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 5.000000000000000000
          Top = 126.362204720000000000
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
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 438.842610000000000000
          Top = 126.362204720000000000
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
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 649.740260000000000000
          Top = 126.362204720000000000
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
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779527560000000000
          Top = 138.779530000000000000
          Width = 54.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'ENDERECO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."ENDERECO"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 438.842610000000000000
          Top = 138.779530000000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'BAIRRO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."BAIRRO"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 649.740260000000000000
          Top = 138.779530000000000000
          Width = 20.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CEP'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CEP"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779527560000000000
          Top = 153.574803150000000000
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
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779527560000000000
          Top = 165.779530000000000000
          Width = 69.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'NOMECIDADE'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."NOMECIDADE"]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 178.527520000000000000
          Top = 165.779530000000000000
          Width = 14.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'UF'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."UF"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 178.527520000000000000
          Top = 153.574803150000000000
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
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 217.307050000000000000
          Top = 153.574803150000000000
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
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 304.409400000000000000
          Top = 153.574803150000000000
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
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 304.409400000000000000
          Top = 165.921259840000000000
          Width = 18.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'FAX'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."FAX"]')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 392.732220000000000000
          Top = 165.669291340000000000
          Width = 45.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CONTATO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CONTATO"]')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 392.732220000000000000
          Top = 153.574803150000000000
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
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779527560000000000
          Top = 193.779530000000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'VENDEDOR_NOME'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."VENDEDOR_NOME"]')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779527560000000000
          Top = 180.409448820000000000
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
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 533.606370000000000000
          Top = 153.574803150000000000
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
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 533.606370000000000000
          Top = 165.669291340000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'EMAIL'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."EMAIL"]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 493.968770000000000000
          Top = 69.779530000000000000
          Width = 93.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA DO PEDIDO:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 493.968770000000000000
          Top = 84.031496060000000000
          Width = 23.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DATA'
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsPedido."DATA"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 603.968770000000000000
          Top = 84.031496060000000000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DATA_ENTREGA'
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsPedido."DATA_ENTREGA"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 603.968770000000000000
          Top = 69.779530000000000000
          Width = 106.897650000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PREV. ENTREGA:')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779527560000000000
          Top = 69.669291340000000000
          Width = 47.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PEDIDO:')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779527560000000000
          Top = 84.031496060000000000
          Width = 39.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CODIGO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CODIGO"]')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 235.000000000000000000
          Top = 193.779530000000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'TRANSPORTADORA_NOME'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."TRANSPORTADORA_NOME"]')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 235.000000000000000000
          Top = 180.409448820000000000
          Width = 101.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'TRANSPORTADORA:')
          ParentFont = False
        end
        object Line22: TfrxLineView
          AllowVectorExport = True
          Left = 2.889763780000000000
          Top = 98.370130000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line25: TfrxLineView
          AllowVectorExport = True
          Left = 4.779527560000000000
          Top = 127.385900000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line26: TfrxLineView
          AllowVectorExport = True
          Left = 2.889763780000000000
          Top = 152.063080000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line27: TfrxLineView
          AllowVectorExport = True
          Left = 2.889763780000000000
          Top = 180.299320000000000000
          Width = 714.331170000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line28: TfrxLineView
          AllowVectorExport = True
          Left = 64.692950000000000000
          Top = 69.921259840000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line29: TfrxLineView
          AllowVectorExport = True
          Left = 598.165740000000000000
          Top = 68.913420000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line30: TfrxLineView
          AllowVectorExport = True
          Left = 454.543600000000000000
          Top = 99.149660000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line31: TfrxLineView
          AllowVectorExport = True
          Left = 583.047620000000000000
          Top = 99.149660000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line32: TfrxLineView
          AllowVectorExport = True
          Left = 434.189240000000000000
          Top = 127.606370000000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line33: TfrxLineView
          AllowVectorExport = True
          Left = 646.520100000000000000
          Top = 127.606370000000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line34: TfrxLineView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line35: TfrxLineView
          AllowVectorExport = True
          Left = 299.582870000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line36: TfrxLineView
          AllowVectorExport = True
          Left = 212.653680000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line37: TfrxLineView
          AllowVectorExport = True
          Left = 231.551330000000000000
          Top = 182.299320000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line38: TfrxLineView
          AllowVectorExport = True
          Left = 530.134200000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line39: TfrxLineView
          AllowVectorExport = True
          Left = 171.078850000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line40: TfrxLineView
          AllowVectorExport = True
          Left = 488.559370000000000000
          Top = 68.913420000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape7: TfrxShapeView
          AllowVectorExport = True
          Left = 0.645671730000000000
          Top = 1.000000000000000000
          Width = 718.000000000000000000
          Height = 66.519675280000000000
          Frame.Typ = []
        end
        object Memo109: TfrxMemoView
          AllowVectorExport = True
          Left = 510.457020000000000000
          Top = 1.779530000000000000
          Width = 204.606060000000000000
          Height = 22.322820000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'PEDIDO DE VENDA')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          AllowVectorExport = True
          Left = 510.992128430000000000
          Top = 26.346459130000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          AllowVectorExport = True
          Left = 510.992128430000000000
          Top = 41.086616610000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          Left = 576.251936770000000000
          Top = 41.086616610000000000
          Width = 124.724441180000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
          WordWrap = False
        end
        object Memo113: TfrxMemoView
          AllowVectorExport = True
          Left = 3.645517950000000000
          Top = 1.559060000000000000
          Width = 192.755905510000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataField = 'EMP_NOME'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_NOME"]')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          AllowVectorExport = True
          Left = 3.645517950000000000
          Top = 17.456710000000000000
          Width = 192.755905510000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataField = 'EMP_FONE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_FONE"]')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          AllowVectorExport = True
          Left = 575.354701730000000000
          Top = 26.346459130000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] | [Time]')
          ParentFont = False
          WordWrap = False
        end
        object Line41: TfrxLineView
          AllowVectorExport = True
          Left = 470.307391730000000000
          Height = 67.275590550000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Left = 3.425201730000000000
          Top = 49.133890000000000000
          Width = 192.755905510000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataField = 'EMP_SITE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_SITE"]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 216.433210000000000000
          Top = 165.921259840000000000
          Width = 19.440940000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DDD'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxPedidoVenda."DDD"]')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 241.575140000000000000
          Top = 165.921259840000000000
          Width = 49.677180000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'FONE'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."FONE"]')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 372.267780000000000000
          Top = 125.724490000000000000
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
        object Memo120: TfrxMemoView
          AllowVectorExport = True
          Left = 372.267780000000000000
          Top = 138.196930950000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'NUMERO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."NUMERO"]')
          ParentFont = False
        end
        object Line42: TfrxLineView
          AllowVectorExport = True
          Left = 367.614410000000000000
          Top = 126.102442760000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object BarCode2: TfrxBarCodeView
          AllowVectorExport = True
          Left = 265.567100000000000000
          Top = 75.590600000000000000
          Width = 129.000000000000000000
          Height = 18.897650000000000000
          BarType = bcCode39
          DataField = 'CODIGO'
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          Expression = '<FrxPedidoVenda."CODIGO">'
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
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Left = 69.370130000000000000
          Top = 68.031540000000000000
          Width = 47.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#218'MERO:')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Left = 69.370130000000000000
          Top = 82.393744720000000000
          Width = 39.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DOCUMENTO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."DOCUMENTO"]')
          ParentFont = False
        end
        object Line43: TfrxLineView
          AllowVectorExport = True
          Left = 140.283552440000000000
          Top = 69.921259840000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708663860000000000
          Top = 232.787570000000000000
          Width = 59.000000000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DESCRI'#199#195'O:')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 391.181104800000000000
          Top = 232.787570000000000000
          Width = 55.937007870000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'QTDE:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220474880000000000
          Top = 232.787570000000000000
          Width = 74.456692910000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR UNIT'#193'RIO:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 232.787570000000000000
          Width = 64.000000000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'REFER'#202'NCIA:')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 650.078742600000000000
          Top = 232.787570000000000000
          Width = 62.362204720000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 578.267718980000000000
          Top = 232.787570000000000000
          Width = 49.133858270000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DESCONTO:')
          ParentFont = False
        end
        object Line20: TfrxLineView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 248.448980000000000000
          Width = 714.330708660000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        DataSet = frx_dsPedidosItens
        DataSetName = 'frx_dsPedidosItens'
        RowCount = 0
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Width = 64.000000000000000000
          Height = 15.118112680000000000
          DataField = 'REFERENCIA'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsPedidosItens."REFERENCIA"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708661420000000000
          Width = 285.771800000000000000
          Height = 15.118112680000000000
          DataField = 'DESCRICAO'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsPedidosItens."DESCRICAO"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 391.181102360000000000
          Width = 55.937007870000000000
          Height = 15.118112680000000000
          DataField = 'QTDE'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosItens'
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
            '[frx_dsPedidosItens."QTDE"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220472440000000000
          Width = 74.456692910000000000
          Height = 15.118112680000000000
          DataField = 'VLR_UNIT'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosItens'
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
            '[frx_dsPedidosItens."VLR_UNIT"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 578.267716540000000000
          Width = 49.133858270000000000
          Height = 15.118112680000000000
          DataField = 'VLR_DESCONTO'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosItens'
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
            '[frx_dsPedidosItens."VLR_DESCONTO"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 650.078740160000000000
          Width = 62.362204720000000000
          Height = 15.118112680000000000
          DataField = 'VLR_TOTAL'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosItens'
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
            '[frx_dsPedidosItens."VLR_TOTAL"]')
          ParentFont = False
        end
      end
    end
  end
end
