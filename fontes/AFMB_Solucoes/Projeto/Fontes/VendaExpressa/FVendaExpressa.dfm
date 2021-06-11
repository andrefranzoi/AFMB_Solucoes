object FrmVendaExpressa: TFrmVendaExpressa
  Left = 1
  Top = 1
  HelpContext = 29
  Caption = 'Venda Expressa'
  ClientHeight = 632
  ClientWidth = 1049
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1049
    Height = 572
    Align = alClient
    BorderWidth = 3
    TabOrder = 0
    object PainelDicas: TPanel
      Left = 4
      Top = 52
      Width = 1041
      Height = 29
      Align = alTop
      BevelInner = bvLowered
      BorderWidth = 3
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object ProgressBar1: TProgressBar
        Left = 6
        Top = 6
        Width = 150
        Height = 16
        TabOrder = 0
        Visible = False
      end
    end
    object GRPTop: TGroupBox
      Left = 4
      Top = 81
      Width = 1041
      Height = 68
      Align = alTop
      Caption = '[ &Venda Expressa ]'
      TabOrder = 1
      object Label7: TLabel
        Left = 86
        Top = 18
        Width = 69
        Height = 13
        Caption = 'Data/Entrega:'
        FocusControl = EditData
      end
      object Label5: TLabel
        Left = 10
        Top = 18
        Width = 37
        Height = 13
        Caption = 'C'#243'digo:'
        FocusControl = EditCodigo
      end
      object EditData: TDBEdit
        Left = 86
        Top = 32
        Width = 70
        Height = 21
        BevelKind = bkFlat
        DataField = 'EMISSAO'
        DataSource = dsVenda
        TabOrder = 1
        OnEnter = EditDataEnter
      end
      object EditCodigo: TDBEdit
        Left = 10
        Top = 32
        Width = 70
        Height = 21
        BevelKind = bkFlat
        Color = clBtnFace
        DataField = 'CODIGO'
        DataSource = dsVenda
        Enabled = False
        TabOrder = 0
        OnChange = EditCodigoChange
      end
      object EditCliente: TIDBEditDialog
        Left = 161
        Top = 32
        Width = 63
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
        TabOrder = 2
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
        DataSource = dsVenda
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
          'SELECT CODIGO, NOME FROM CAD_CLIENTES'
          'WHERE'
          '%WHERE%')
        CountQuery.Strings = (
          '')
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
            DisplayLabel = 'Nome/Raz'#227'o Social'
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
      object EditNomeCliente: TEdit
        Left = 227
        Top = 32
        Width = 232
        Height = 22
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Text = '***'
      end
      object EditNomeVendedor: TEdit
        Left = 534
        Top = 32
        Width = 339
        Height = 22
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        Text = '***'
      end
      object EditVendedor: TIDBEditDialog
        Left = 465
        Top = 32
        Width = 63
        Height = 22
        HelpKeyWord = ''
        Color = clWindow
        Enabled = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Text = ''
        Visible = True
        EditType = etAlphaNumeric
        EmptyText = 'Tecle F8'
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
        DataSource = dsVenda
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditNomeVendedor
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_CLIENTES'
          'WHERE'
          'CODIGO=:CODIGO'
          'AND'
          
            'TIPO IN ('#39'VENDEDOR'#39','#39'REPRESENTANTE'#39','#39'BALCONISTA'#39','#39'FUNCIONARIO'#39','#39 +
            'PREPOSTO'#39','#39'TELEVENDAS'#39','#39'WEBVENDAS'#39')')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_CLIENTES'
          'WHERE'
          
            'TIPO IN ('#39'VENDEDOR'#39','#39'REPRESENTANTE'#39','#39'BALCONISTA'#39','#39'FUNCIONARIO'#39','#39 +
            'PREPOSTO'#39','#39'TELEVENDAS'#39','#39'WEBVENDAS'#39')'
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
            Search = True
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
    end
    object GRPItens: TGroupBox
      Left = 4
      Top = 149
      Width = 1041
      Height = 318
      Align = alClient
      Caption = 
        '[ITENS] Procurar Produto: F8 | Tecle "Seta pra baixo" ou "Insert' +
        '" = Inserir | Gravar/Recalcular ap'#243's digitar: Seta "pra cima" ou' +
        ' "pra baixo" | Ctrl + Delete = Excluir item'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object DBGrid_Produtos: TDBGrid
        Left = 2
        Top = 15
        Width = 1037
        Height = 301
        Align = alClient
        DataSource = dsVendaItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        PopupMenu = PopupExcluir
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnEnter = DBGrid_ProdutosEnter
        OnExit = DBGrid_ProdutosExit
        OnKeyDown = DBGrid_ProdutosKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'PRODUTO'
            Title.Caption = 'Produto:'
            Width = 154
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'DESCRICAO'
            ReadOnly = True
            Width = 463
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Title.Caption = 'Qtde:'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_UNIT'
            Title.Caption = 'Vlr Unit'#225'rio:'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO'
            Title.Caption = 'Desconto %'
            Width = 106
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'VLR_TOTAL'
            ReadOnly = True
            Title.Caption = 'Total:'
            Width = 108
            Visible = True
          end>
      end
    end
    object PainelBottom: TPanel
      Left = 4
      Top = 467
      Width = 1041
      Height = 101
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Enabled = False
      TabOrder = 3
      object Shape3: TShape
        Left = 438
        Top = 36
        Width = 217
        Height = 58
        Brush.Color = clBlack
        Pen.Color = clSilver
        Pen.Width = 3
        Shape = stRoundRect
      end
      object Label3: TLabel
        Left = 571
        Top = 10
        Width = 77
        Height = 23
        Alignment = taCenter
        Caption = 'TOTAL:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape1: TShape
        Left = 8
        Top = 36
        Width = 163
        Height = 58
        Brush.Color = clBlack
        Pen.Color = clSilver
        Pen.Width = 3
        Shape = stRoundRect
      end
      object Label2: TLabel
        Left = 17
        Top = 10
        Width = 142
        Height = 23
        Alignment = taCenter
        Caption = 'QTDE TOTAL:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 448
        Top = 44
        Width = 200
        Height = 41
        BevelKind = bkFlat
        Color = clBtnFace
        DataField = 'TOTAL_NF'
        DataSource = dsVenda
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 19
        Top = 44
        Width = 140
        Height = 41
        BevelKind = bkFlat
        Color = clBtnFace
        DataField = 'QTDE_PRODUTOS'
        DataSource = dsVenda
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    inline FrmFrameBarra1: TFrmFrameBarra
      Left = 4
      Top = 4
      Width = 1041
      Height = 48
      Align = alTop
      Constraints.MinHeight = 34
      Color = 14120960
      ParentBackground = False
      ParentColor = False
      TabOrder = 4
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitWidth = 1041
      ExplicitHeight = 48
      inherited Image3: TImage
        Width = 1041
        Height = 48
        ExplicitTop = 34
        ExplicitWidth = 768
        ExplicitHeight = 34
      end
      inherited pnTitulo: TPanel
        Left = 2
        Top = 2
        Width = 1037
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Constraints.MinHeight = 30
        Font.Height = -9
        ExplicitLeft = 2
        ExplicitTop = 2
        ExplicitWidth = 1037
        ExplicitHeight = 44
        inherited LblBarraTitulo: TLabel
          Width = 886
          Caption = 'Venda Expressa'
          ExplicitWidth = 122
          ExplicitHeight = 26
        end
        inherited Image1: TImage
          ExplicitLeft = 985
          ExplicitHeight = 32
        end
        inherited Image2: TImage
          Left = 975
          ExplicitLeft = 712
          ExplicitHeight = 32
        end
      end
    end
  end
  object dbProcurarNFe: TIDBEditDialog
    Left = 688
    Top = 30
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
    TabOrder = 1
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
      'TIPONF='#39'VENDAEXPRESSA'#39
      'AND'
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
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 572
    Width = 1049
    Height = 60
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 572
    ExplicitWidth = 1049
    inherited PanelBotoesBottom: TPanel
      Width = 1039
      ExplicitWidth = 1039
      inherited SpbAdicionar: TSpeedButton
        OnClick = FrmFrameBotoes2SpbAdicionarClick
        ExplicitLeft = 100
      end
      inherited SpbEditar: TSpeedButton
        OnClick = FrmFrameBotoes2SpbEditarClick
        ExplicitLeft = 300
      end
      inherited SpbCancelar: TSpeedButton
        OnClick = FrmFrameBotoes2SpbCancelarClick
        ExplicitLeft = 400
      end
      inherited SpbSalvar: TSpeedButton
        OnClick = FrmFrameBotoes2SpbSalvarClick
        ExplicitLeft = 200
      end
      inherited SpbExcluir: TSpeedButton
        OnClick = FrmFrameBotoes2SpbExcluirClick
        ExplicitLeft = 500
      end
      inherited SpbImprimir: TSpeedButton
        Visible = True
        OnClick = FrmFrameBotoes2SpbImprimirClick
        ExplicitLeft = 700
      end
      inherited SpbSair: TSpeedButton
        Left = 935
        OnClick = FrmFrameBotoes2SpbSairClick
        ExplicitLeft = 890
      end
      inherited SpbExtra: TSpeedButton
        Left = 835
        Width = 100
        Caption = 'Extornar'
        Flat = False
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000013131361131313610000
          0000000000000000000000000000131313611313136100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000013131361333333FF333333FF1A1A
          1A8100000000000000001A1A1A81333333FF333333FF13131361000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001313135E333333FF333333FF3333
          33FF1A1A1A811A1A1A81333333FF333333FF333333FF1313135E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001919197E333333FF3333
          33FF333333FF333333FF333333FF333333FF1919197E00000000000000000000
          00001A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A8000000000000000001A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A800D0D0D41000000001919197E3333
          33FF333333FF333333FF333333FF1919197E0000000000000000000000000000
          00001A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A8000000000000000001A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A800D0D0D3F000000001A1A1A813333
          33FF333333FF333333FF333333FF1A1A1A810000000000000000000000000000
          00001A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A8000000000000000001A1A
          1A801A1A1A801A1A1A801A1A1A801010104F000000001A1A1A81333333FF3333
          33FF333333FF333333FF333333FF333333FF1A1A1A8100000000000000000000
          00001A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A8000000000000000001A1A
          1A801A1A1A801A1A1A801A1A1A801010104F13131361333333FF333333FF3333
          33FF1919197E1919197E333333FF333333FF333333FF13131361000000000000
          00001A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A8000000000000000001A1A
          1A801A1A1A801A1A1A801A1A1A801010104F1313135E333333FF333333FF1919
          197E00000000000000001919197E333333FF333333FF1313135E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001313135E1313135E0000
          00000000000000000000000000001313135E1313135E00000000000000000000
          00001A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A8000000000000000001A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801010105110101051101010511010
          10511A1A1A801A1A1A8010101051101010510000000000000000000000000000
          00001A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A8000000000000000001A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A800000000000000000000000000000
          00001A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A8000000000000000001A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A800000000000000000000000000000
          00001A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A8000000000000000001A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A800000000000000000000000000000
          00001A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A8000000000000000001A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A800000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A8000000000000000001A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A800000000000000000000000000000
          00001A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A8000000000000000001A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A800000000000000000000000000000
          00001A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A8000000000000000001A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A800000000000000000000000000000
          00001A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A8000000000000000001A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A800000000000000000000000000000
          00001A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A8000000000000000001A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A801A1A1A801A1A1A800000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF0000000000000000000000000000
          0000333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF0000000000000000000000000000
          0000333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF0000000000000000000000000000
          0000333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF0000000000000000000000000000
          0000333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF0000000000000000000000000000
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
        Visible = True
        OnClick = FrmFrameBotoes2SpbExtraClick
        ExplicitLeft = 829
        ExplicitTop = 1
        ExplicitWidth = 100
        ExplicitHeight = 50
      end
      inherited SpbProcurar: TSpeedButton
        OnClick = FrmFrameBotoes2SpbProcurarClick
        ExplicitLeft = 600
      end
    end
    inherited DataSource: TDataSource
      Left = 755
    end
  end
  object dbProcurarProduto: TIDBEditDialog
    Left = 777
    Top = 30
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
  object db_view_estoque: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_ESTOQUEVENDA'
      'WHERE'
      'REFERENCIA=:REFERENCIA')
    Left = 312
    Top = 48
    ParamData = <
      item
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
  end
  object db_somar: TFDQuery
    MasterSource = dsVenda
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT'
      'sum(QUANTIDADE) as QTDE_Produtos'
      ',sum(QUANTIDADE * vlr_unit)  as VALOR_PRODUTOS'
      ',sum(VLR_DESCONTO) as VLR_DESCONTO'
      ',sum((QUANTIDADE * vlr_unit)-VLR_DESCONTO) as Valor_Total'
      ''
      'FROM VENDAS_ITENS'
      'WHERE'
      ' CODIGO=:CODIGO'
      '')
    Left = 568
    Top = 69
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object PopupExcluir: TPopupMenu
    Left = 928
    Top = 336
    object PopUp_ExcluirItem: TMenuItem
      Caption = 'Excluir Item'
      ShortCut = 8238
      Visible = False
      OnClick = PopUp_ExcluirItemClick
    end
  end
  object dsVenda: TDataSource
    DataSet = qryVenda
    Left = 80
    Top = 248
  end
  object dsVendaItem: TDataSource
    DataSet = qryVendaItem
    Left = 168
    Top = 248
  end
  object qryVenda: TFDQuery
    AfterOpen = qryVendaAfterOpen
    AfterPost = qryVendaAfterPost
    OnNewRecord = qryVendaNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM VENDAS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 80
    Top = 216
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object qryVendaItem: TFDQuery
    AfterOpen = qryVendaItemAfterOpen
    BeforePost = qryVendaItemBeforePost
    AfterPost = qryVendaItemAfterPost
    AfterDelete = qryVendaItemAfterDelete
    AfterScroll = qryVendaItemAfterScroll
    MasterSource = dsVenda
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM VENDAS_ITENS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 168
    Top = 216
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = Null
      end>
  end
  object db_ViewNotaFiscal: TFDQuery
    MasterSource = dsVenda
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT  * FROM VIEW_NOTAFISCAL'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 512
    Top = 192
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = Null
      end>
  end
  object frxDB_NotaFiscal: TfrxDBDataset
    UserName = 'db_ViewNotaFiscal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'NOTAFISCAL=NOTAFISCAL'
      'NOTAFISCALORIGEM=NOTAFISCALORIGEM'
      'SERIE=SERIE'
      'EMISSAO=EMISSAO'
      'DATA_ES=DATA_ES'
      'HORA=HORA'
      'OPERACAO=OPERACAO'
      'CLIENTE=CLIENTE'
      'CLIENTE_NOME=CLIENTE_NOME'
      'CLIENTE_CNPJ=CLIENTE_CNPJ'
      'CLIENTE_RG_IE=CLIENTE_RG_IE'
      'CLIENTE_ENDERECO=CLIENTE_ENDERECO'
      'CLIENTE_NUMERO=CLIENTE_NUMERO'
      'CLIENTE_BAIRRO=CLIENTE_BAIRRO'
      'CLIENTE_CEP=CLIENTE_CEP'
      'CLIENTE_DDD=CLIENTE_DDD'
      'CLIENTE_FONE=CLIENTE_FONE'
      'CLIENTE_FAX=CLIENTE_FAX'
      'CLIENTE_REFERENCIA=CLIENTE_REFERENCIA'
      'CLIENTE_CIDADE=CLIENTE_CIDADE'
      'CLIENTE_CIDADE_NOME=CLIENTE_CIDADE_NOME'
      'CLIENTE_UF=CLIENTE_UF'
      'CLIENTE_CONTATO=CLIENTE_CONTATO'
      'CLIENTE_EMAIL=CLIENTE_EMAIL'
      'CFOP=CFOP'
      'CFOP_NOME=CFOP_NOME'
      'IE_SUBSTITUICAO=IE_SUBSTITUICAO'
      'STATUS=STATUS'
      'FORMA_PAGTO=FORMA_PAGTO'
      'FORMA_PAGTO_NOME=FORMA_PAGTO_NOME'
      'VENDEDOR=VENDEDOR'
      'VENDEDOR_NOME=VENDEDOR_NOME'
      'NF_VALOR_TOTAL=NF_VALOR_TOTAL'
      'NF_VALOR_PRODUTOS=NF_VALOR_PRODUTOS'
      'NF_QTDE_PRODUTOS=NF_QTDE_PRODUTOS'
      'NF_VALOR_ICMS=NF_VALOR_ICMS'
      'NF_VALOR_IPI=NF_VALOR_IPI'
      'NF_ISS=NF_ISS'
      'NF_ISS_VALOR=NF_ISS_VALOR'
      'NF_BASE_CALC_ICMS=NF_BASE_CALC_ICMS'
      'NF_BASE_CALC_ICMS_II=NF_BASE_CALC_ICMS_II'
      'NF_VALOR_BASE_ICMS_II=NF_VALOR_BASE_ICMS_II'
      'SIMPLESNACIONAL_VALOR=SIMPLESNACIONAL_VALOR'
      'VLR_FRETE=VLR_FRETE'
      'VLR_SEGURO=VLR_SEGURO'
      'VLR_DESP_ACES=VLR_DESP_ACES'
      'PERC_DESCONTO=PERC_DESCONTO'
      'VLR_DESCONTO=VLR_DESCONTO'
      'VLR_RECEBIDO=VLR_RECEBIDO'
      'TROCO=TROCO'
      'VLR_CAIXA=VLR_CAIXA'
      'TRANSPORTADORA=TRANSPORTADORA'
      'TRANSP_NOME=TRANSP_NOME'
      'TRANSP_FRETE=TRANSP_FRETE'
      'TRANSP_PLACA=TRANSP_PLACA'
      'TRANSP_PLACA_CIDADE=TRANSP_PLACA_CIDADE'
      'TRANSP_PLACA_UF=TRANSP_PLACA_UF'
      'TRANSP_CNPJ=TRANSP_CNPJ'
      'TRANSP_ENDERECO=TRANSP_ENDERECO'
      'TRANSP_CIDADE=TRANSP_CIDADE'
      'TRANSP_CIDADE_NOME=TRANSP_CIDADE_NOME'
      'TRANSP_UF=TRANSP_UF'
      'TRANSP_INSCRICAO=TRANSP_INSCRICAO'
      'TRANSP_QTDE=TRANSP_QTDE'
      'TRANSP_ESPECIE=TRANSP_ESPECIE'
      'TRANSP_MARCA=TRANSP_MARCA'
      'TRANSP_NUMERO=TRANSP_NUMERO'
      'TRANSP_PBRUTO=TRANSP_PBRUTO'
      'TRANSP_PLIQUIDO=TRANSP_PLIQUIDO'
      'DADOS_ADICIONAIS=DADOS_ADICIONAIS'
      'RESERVADO_FISCO=RESERVADO_FISCO'
      'ALIQ_ICMS_REDUCAO=ALIQ_ICMS_REDUCAO'
      'VLR_ICMS_REDUCAO=VLR_ICMS_REDUCAO'
      'TIPO_DESCONTO=TIPO_DESCONTO'
      'DESCONTO_ACRESCIMO=DESCONTO_ACRESCIMO'
      'PEDIDO=PEDIDO'
      'CUPOM=CUPOM'
      'TABELA=TABELA'
      'IMPRESSO=IMPRESSO'
      'DEVOLUCAOCREDITADA=DEVOLUCAOCREDITADA'
      'TIPONF=TIPONF')
    DataSet = db_ViewNotaFiscal
    BCDToCurrency = False
    Left = 512
    Top = 304
  end
  object frxImprimirVendaPDV: TfrxReport
    Version = '6.2.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.200000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42660.937435312500000000
    ReportOptions.LastChange = 43167.952312592600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'Begin'
      '        '
      'end.')
    Left = 704
    Top = 256
    Datasets = <
      item
        DataSet = frxDB_NotaFiscal
        DataSetName = 'db_ViewNotaFiscal'
      end
      item
        DataSet = frxDB_NotaFiscalItens
        DataSetName = 'db_ViewNotaFiscalItens'
      end
      item
        DataSet = FrmPrincipal.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
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
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 234.330860000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = -1.000000000000000000
          Width = 718.102660000000000000
          Height = 56.692906060000000000
          Fill.BackColor = 15724527
          Frame.Color = clWhite
          Frame.Typ = []
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Top = 68.779530000000000000
          Width = 718.000000000000000000
          Height = 142.000000000000000000
          Frame.Typ = []
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
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
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 111.779530000000000000
          Width = 228.315090000000000000
          Height = 11.338582680000000000
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[db_ViewNotaFiscal."CLIENTE"] - [db_ViewNotaFiscal."CLIENTE_NOME' +
              '"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 4.000000000000000000
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
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 437.842610000000000000
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
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 648.740260000000000000
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
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 138.779530000000000000
          Width = 54.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CLIENTE_ENDERECO'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."CLIENTE_ENDERECO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 437.842610000000000000
          Top = 138.779530000000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CLIENTE_BAIRRO'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."CLIENTE_BAIRRO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 648.740260000000000000
          Top = 138.779530000000000000
          Width = 20.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CLIENTE_CEP'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."CLIENTE_CEP"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527559055120000
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
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 165.779530000000000000
          Width = 69.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CLIENTE_CIDADE_NOME'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."CLIENTE_CIDADE_NOME"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 177.527520000000000000
          Top = 165.779530000000000000
          Width = 14.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CLIENTE_UF'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."CLIENTE_UF"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 177.527520000000000000
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
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 216.307050000000000000
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
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 193.779530000000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'VENDEDOR_NOME'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."VENDEDOR_NOME"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
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
            'VENDEDOR:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 345.606370000000000000
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
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 345.606370000000000000
          Top = 165.669291340000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CLIENTE_EMAIL'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."CLIENTE_EMAIL"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 492.968770000000000000
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
            'DATA DE EMISSAO:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 492.968770000000000000
          Top = 84.031496060000000000
          Width = 23.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'EMISSAO'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."EMISSAO"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
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
            'C'#211'DIGO:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 84.031496060000000000
          Width = 39.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CODIGO'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."CODIGO"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708661420000000000
          Top = 220.094620000000000000
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
          Left = 391.181102360000000000
          Top = 220.094620000000000000
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
          Left = 476.220472440000000000
          Top = 220.094620000000000000
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
          Left = 3.779527560000000000
          Top = 220.094620000000000000
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
          Left = 650.078740160000000000
          Top = 220.094620000000000000
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
          Left = 578.267716540000000000
          Top = 220.094620000000000000
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
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 98.370130000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 126.614173228346000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 151.559055118110000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 180.299320000000000000
          Width = 714.331170000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 68.787401574803100000
          Height = 28.724409448818900000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 433.189240000000000000
          Top = 126.236220472441000000
          Height = 24.944881889763800000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 645.520100000000000000
          Top = 126.236220472441000000
          Height = 24.944881889763800000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 342.134200000000000000
          Top = 151.937007870000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 152.063080000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 68.787401574803100000
          Height = 28.724409448818900000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line20: TfrxLineView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 233.433210000000000000
          Width = 714.330708660000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Shape6: TfrxShapeView
          AllowVectorExport = True
          Left = 0.645671730000000000
          Width = 718.000000000000000000
          Height = 55.181085280000000000
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 490.559370000000000000
          Top = 1.779530000000000000
          Width = 223.503710000000000000
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
            'ROMANEIO DE VENDA')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 509.992128430000000000
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
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 509.992128430000000000
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
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 575.251936770000000000
          Top = 41.086616610000000000
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
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 2.645517950000000000
          Top = 1.559060000000000000
          Width = 192.755905510000000000
          Height = 26.456702680000000000
          AutoWidth = True
          DataField = 'EMP_NOME_FANTASIA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_NOME_FANTASIA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 574.354701730000000000
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
        object Line23: TfrxLineView
          AllowVectorExport = True
          Left = 469.307391730000000000
          Height = 55.937000550000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 165.921259840000000000
          Width = 19.440940000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '([db_ViewNotaFiscal."CLIENTE_DDD"]) [db_ViewNotaFiscal."CLIENTE_' +
              'FONE"]')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 371.267780000000000000
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
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 371.267780000000000000
          Top = 138.196930950000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CLIENTE_NUMERO'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."CLIENTE_NUMERO"]')
          ParentFont = False
        end
        object Line24: TfrxLineView
          AllowVectorExport = True
          Left = 366.614410000000000000
          Top = 126.236220472441000000
          Height = 24.944881889763800000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 139.842610000000000000
        Top = 393.071120000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 505.472480000000000000
          Top = 40.495980000000000000
          Width = 200.307050000000000000
          Height = 94.677180000000000000
          Frame.Typ = []
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 537.795300000000000000
          Top = 95.952738820000000000
          Width = 68.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE:')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 509.133890000000000000
          Top = 114.850376610000000000
          Width = 96.661410000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DA VENDA:')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 4.535428190000000000
          Top = 65.055040000000000000
          Width = 411.692950000000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              'CLIENTE: _______________________________________________________' +
              '_______')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 4.535428190000000000
          Top = 92.716450000000000000
          Width = 410.000000000000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              'ATENDENTE: _____________________________________________________' +
              '_')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 129.259918190000000000
          Top = 42.070810000000000000
          Width = 162.000000000000000000
          Height = 12.094488190000000000
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."FORMA_PAGTO_NOME"]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 4.535428190000000000
          Top = 42.070810000000000000
          Width = 122.149660000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FORMA DE PAGAMENTO:')
          ParentFont = False
        end
        object Line21: TfrxLineView
          AllowVectorExport = True
          Left = 1.889763779527560000
          Width = 714.330708661417000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 612.283860000000000000
          Top = 114.850376610000000000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'NF_VALOR_TOTAL'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          DisplayFormat.FormatStr = 'R$ ###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."NF_VALOR_TOTAL"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 612.283860000000000000
          Top = 95.952738820000000000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'NF_QTDE_PRODUTOS'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."NF_QTDE_PRODUTOS"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 76.574830000000000000
          Width = 68.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DESCONTO:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 611.181820000000000000
          Top = 76.574830000000000000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'VLR_DESCONTO'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          DisplayFormat.FormatStr = 'R$ ###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."VLR_DESCONTO"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 609.606990000000000000
          Top = 57.677180000000000000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          DisplayFormat.FormatStr = 'R$ ###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."NF_VALOR_PRODUTOS"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 57.677180000000000000
          Width = 96.661410000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR BRUTO:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        DataSet = frxDB_NotaFiscalItens
        DataSetName = 'db_ViewNotaFiscalItens'
        RowCount = 0
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Width = 64.000000000000000000
          Height = 15.118112680000000000
          DataField = 'PRODUTO'
          DataSet = frxDB_NotaFiscalItens
          DataSetName = 'db_ViewNotaFiscalItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[db_ViewNotaFiscalItens."PRODUTO"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708661420000000000
          Width = 289.551330000000000000
          Height = 15.118112680000000000
          DataField = 'DESCRICAO'
          DataSet = frxDB_NotaFiscalItens
          DataSetName = 'db_ViewNotaFiscalItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[db_ViewNotaFiscalItens."DESCRICAO"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 391.181102360000000000
          Width = 55.937007870000000000
          Height = 15.118112680000000000
          DataField = 'QTDE'
          DataSet = frxDB_NotaFiscalItens
          DataSetName = 'db_ViewNotaFiscalItens'
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
            '[db_ViewNotaFiscalItens."QTDE"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220472440000000000
          Width = 74.456692910000000000
          Height = 15.118112680000000000
          DataField = 'VLR_UNITARIO'
          DataSet = frxDB_NotaFiscalItens
          DataSetName = 'db_ViewNotaFiscalItens'
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
            '[db_ViewNotaFiscalItens."VLR_UNITARIO"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 578.267716540000000000
          Width = 49.133858270000000000
          Height = 15.118112680000000000
          DataField = 'DESCONTO'
          DataSet = frxDB_NotaFiscalItens
          DataSetName = 'db_ViewNotaFiscalItens'
          DisplayFormat.FormatStr = '###,##0.00%'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db_ViewNotaFiscalItens."DESCONTO"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 650.078740160000000000
          Width = 62.362204720000000000
          Height = 15.118112680000000000
          DataField = 'VLR_TOTAL'
          DataSet = frxDB_NotaFiscalItens
          DataSetName = 'db_ViewNotaFiscalItens'
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
            '[db_ViewNotaFiscalItens."VLR_TOTAL"]')
          ParentFont = False
        end
      end
    end
  end
  object db_ViewNotaFiscalItens: TFDQuery
    MasterSource = ds_ViewNotaFiscal
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT  * FROM VIEW_NOTAFISCAL_ITENS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 624
    Top = 192
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object frxDB_NotaFiscalItens: TfrxDBDataset
    UserName = 'db_ViewNotaFiscalItens'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'NUMERO_NF=NUMERO_NF'
      'SERIE=SERIE'
      'OPERACAO=OPERACAO'
      'EMISSAO=EMISSAO'
      'CLIENTE=CLIENTE'
      'VENDEDOR=VENDEDOR'
      'CFOP=CFOP'
      'PRODUTO=PRODUTO'
      'DESCRICAO=DESCRICAO'
      'CLASS_FISCAL=CLASS_FISCAL'
      'SITUACAO_TRIBUTARIA=SITUACAO_TRIBUTARIA'
      'UNIDADE=UNIDADE'
      'QTDE=QTDE'
      'VLR_UNITARIO=VLR_UNITARIO'
      'VLR_TOTAL=VLR_TOTAL'
      'IPI_ALIQUOTA=IPI_ALIQUOTA'
      'VLR_IPI=VLR_IPI'
      'ICMS_ALIQUOTA=ICMS_ALIQUOTA'
      'VLR_ICMS=VLR_ICMS'
      'DESCONTO=DESCONTO'
      'DESCONTO_VALOR=DESCONTO_VALOR')
    DataSet = db_ViewNotaFiscalItens
    BCDToCurrency = False
    Left = 616
    Top = 304
  end
  object ds_ViewNotaFiscal: TDataSource
    DataSet = db_ViewNotaFiscal
    Left = 512
    Top = 240
  end
  object SPNFE_PROCESSAR: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPNFE_PROCESSAR'
    Left = 304
    Top = 240
    ParamData = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Name = 'NEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NVENDA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
  end
  object datasetCtaReceber: TfrxDBDataset
    UserName = 'QryCtaReceber'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'EMPRESA=EMPRESA'
      'CLIENTE=CLIENTE'
      'NOTAFISCAL=NOTAFISCAL'
      'SERIENF=SERIENF'
      'DATA=DATA'
      'VENCIMENTO=VENCIMENTO'
      'DATA_PAGTO=DATA_PAGTO'
      'DOCUMENTO=DOCUMENTO'
      'PARCELA=PARCELA'
      'CFOP=CFOP'
      'VENDEDOR=VENDEDOR'
      'ESPECIE=ESPECIE'
      'TIPO=TIPO'
      'VALOR=VALOR'
      'VALOR_PAGO=VALOR_PAGO'
      'VALOR_SALDO=VALOR_SALDO'
      'CONTA_CREDITO=CONTA_CREDITO'
      'CHQ_BANCO=CHQ_BANCO'
      'CHQ_AGENCIA=CHQ_AGENCIA'
      'CHQ_CONTA_CORRENTE=CHQ_CONTA_CORRENTE'
      'FORMA_PAGTO=FORMA_PAGTO'
      'PRAZOPAGTO=PRAZOPAGTO'
      'CHQ_NUMEROCHEQUE=CHQ_NUMEROCHEQUE'
      'CHQ_CODCIDADE=CHQ_CODCIDADE'
      'CHQ_EMITENTE=CHQ_EMITENTE'
      'CHQ_NOMECIDADE_UF=CHQ_NOMECIDADE_UF'
      'CHQ_DESTINO=CHQ_DESTINO'
      'DEPARTAMENTO=DEPARTAMENTO'
      'DESCONTO=DESCONTO'
      'DESCONTOVALOR=DESCONTOVALOR'
      'DESCONTO_DATA=DESCONTO_DATA'
      'DESCONTO_USER=DESCONTO_USER'
      'ENTRADA=ENTRADA'
      'PLANO_CONTAS=PLANO_CONTAS'
      'CONTACAIXA=CONTACAIXA'
      'CARTEIRA=CARTEIRA'
      'HISTORICO=HISTORICO'
      'OBSERVACAO=OBSERVACAO'
      'GERARRECIBO=GERARRECIBO'
      'GERARDUPLICATA=GERARDUPLICATA'
      'GERARBOLETO=GERARBOLETO'
      'GERARCOMPLEMENTO=GERARCOMPLEMENTO'
      'GERARREMESSA=GERARREMESSA'
      'NOSSONUMERO=NOSSONUMERO'
      'DESPESAS_BOLETO=DESPESAS_BOLETO'
      'DESPESAS_JUROS=DESPESAS_JUROS'
      'DESPESAS_JUROSVALOR=DESPESAS_JUROSVALOR'
      'DESPESAS_MULTA=DESPESAS_MULTA'
      'DESPESAS_CARTORIO=DESPESAS_CARTORIO'
      'DESPESAS_TOTAL=DESPESAS_TOTAL'
      'ATRASADA=ATRASADA'
      'QUITADO=QUITADO'
      'MOTIVO_BAIXA=MOTIVO_BAIXA'
      'USER_NOME=USER_NOME'
      'USER_DATA=USER_DATA'
      'USER_HORA=USER_HORA'
      'COMPLEMENTAR=COMPLEMENTAR'
      'PROTESTOSTATUS=PROTESTOSTATUS'
      'SELECIONADO=SELECIONADO'
      'DESCONTADO=DESCONTADO'
      'PAGAMENTOTITULO=PAGAMENTOTITULO'
      'IDTERMINAL=IDTERMINAL'
      'IDOPERADOR=IDOPERADOR')
    BCDToCurrency = False
    Left = 300
    Top = 351
  end
end
