object FrmPedidoCompra: TFrmPedidoCompra
  Left = 0
  Top = 0
  Caption = 'Pedido de Compra'
  ClientHeight = 500
  ClientWidth = 936
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Calibri'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 18
  object GroupBox1: TGroupBox
    Left = 0
    Top = 50
    Width = 936
    Height = 390
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitTop = 58
    ExplicitHeight = 399
    object Panel3: TPanel
      Left = 2
      Top = 17
      Width = 932
      Height = 371
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 370
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 930
        Height = 160
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 78
          Top = 2
          Width = 26
          Height = 15
          Caption = 'Data'
        end
        object Label2: TLabel
          Left = 157
          Top = 2
          Width = 70
          Height = 15
          Caption = 'Data Entrega'
        end
        object Label3: TLabel
          Left = 521
          Top = 41
          Width = 103
          Height = 15
          Caption = 'Pedido Fornecedor'
        end
        object Label4: TLabel
          Left = 646
          Top = 41
          Width = 76
          Height = 15
          Caption = 'Valor do Frete'
        end
        object Label7: TLabel
          Left = 7
          Top = 2
          Width = 53
          Height = 15
          Caption = 'ID Pedido'
        end
        object EditFornecedor: TIDBEditDialog
          Left = 239
          Top = 18
          Width = 65
          Height = 23
          HelpKeyWord = ''
          Color = clWindow
          Enabled = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = ''
          Visible = True
          EditType = etAlphaNumeric
          EmptyText = 'Tecle F8'
          FocusColor = clBtnFace
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
          ButtonHint = 'C'#243'digo do Fornecedor'
          Etched = False
          ButtonCaption = '...'
          DataField = 'FORNECEDOR'
          DataSource = ds_PedidoCompra
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditClienteNome
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
              DisplayLabel = 'Nome/Raz'#227'o Social'
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
        object EditData: TDBEdit
          Left = 78
          Top = 18
          Width = 75
          Height = 23
          DataField = 'DATA'
          DataSource = ds_PedidoCompra
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object EditPedido: TDBEdit
          Left = 7
          Top = 18
          Width = 65
          Height = 23
          DataField = 'CODIGO'
          DataSource = ds_PedidoCompra
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object EditDataEntrega: TDBEdit
          Left = 157
          Top = 18
          Width = 75
          Height = 23
          DataField = 'DATA_ENTREGA'
          DataSource = ds_PedidoCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object EditPagamento: TIDBEditDialog
          Left = 7
          Top = 59
          Width = 65
          Height = 23
          HelpKeyWord = ''
          Color = clWindow
          Enabled = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
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
          DataSource = ds_PedidoCompra
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
          Left = 72
          Top = 59
          Width = 169
          Height = 23
          AutoSize = False
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          Text = '***'
        end
        object EditNomeTrasportadora: TEdit
          Left = 311
          Top = 59
          Width = 204
          Height = 23
          AutoSize = False
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          Text = '***'
        end
        object EditTransportadora: TIDBEditDialog
          Left = 245
          Top = 59
          Width = 65
          Height = 23
          HelpKeyWord = ''
          Color = clWindow
          Enabled = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
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
          DataSource = ds_PedidoCompra
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditNomeTrasportadora
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT * FROM CAD_CLIENTES'
            'WHERE'
            'CODIGO=:CODIGO'
            'AND'
            'TIPO='#39'TRANSPORTADORA'#39)
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
        object EditClienteNome: TEdit
          Left = 306
          Top = 18
          Width = 246
          Height = 23
          AutoSize = False
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          Text = '***'
        end
        object EditCentroCusto: TIDBEditDialog
          Left = 557
          Top = 19
          Width = 65
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
          DataField = 'DEPARTAMENTO'
          DataSource = ds_PedidoCompra
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditNomeCentroCusto
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
        object EditNomeCentroCusto: TEdit
          Left = 622
          Top = 18
          Width = 137
          Height = 23
          AutoSize = False
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          Text = '***'
        end
        object DBEdit1: TDBEdit
          Left = 518
          Top = 59
          Width = 113
          Height = 23
          Hint = '[campo opcional] informe o Pedido do Fornecedor no sistema dele'
          DataField = 'FORNECEDORPEDIDO'
          DataSource = ds_PedidoCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
        end
        object editValorFrete: TDBEdit
          Left = 646
          Top = 57
          Width = 113
          Height = 23
          Hint = 'Informe o Pedido do Fornecedor no sistema dele'
          DataField = 'FRETE_VALOR'
          DataSource = ds_PedidoCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 765
          Top = 6
          Width = 155
          Height = 76
          Caption = 'Frete por conta'
          DataField = 'FRETE_TIPO'
          DataSource = ds_PedidoCompra
          Items.Strings = (
            'Emitente (fornecedor)'
            'Destinat'#225'rio'
            'Sem Frete')
          TabOrder = 13
          Values.Strings = (
            'CIF'
            'FOB')
        end
        object GroupBox2: TGroupBox
          Left = 1
          Top = 86
          Width = 928
          Height = 73
          Align = alBottom
          Caption = 'Observa'#231#227'o'
          TabOrder = 14
          object DBMemo1: TDBMemo
            Left = 2
            Top = 17
            Width = 924
            Height = 54
            Align = alClient
            DataField = 'OBSERVACAO'
            DataSource = ds_PedidoCompra
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
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 161
        Width = 930
        Height = 153
        Align = alClient
        DataSource = ds_PedidoCompraItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -13
        TitleFont.Name = 'Calibri'
        TitleFont.Style = [fsBold]
        OnEditButtonClick = DBGrid1EditButtonClick
        OnEnter = DBGrid1Enter
        OnKeyDown = DBGrid1KeyDown
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'PRODUTO'
            Title.Caption = 'PRODUTO:'
            Width = 172
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'DESCRICAO'
            ReadOnly = True
            Title.Caption = 'DESCRICAO:'
            Width = 284
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UND'
            Title.Caption = 'UND:'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE_PEDIDA'
            Title.Caption = 'QUANTIDADE:'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_UNIT'
            Title.Caption = 'VALOR UNIT:'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO'
            Title.Caption = 'DESCONTO %'
            Width = 90
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'VALOR_TOTAL'
            ReadOnly = True
            Title.Caption = 'VALOR TOTAL:'
            Width = 99
            Visible = True
          end>
      end
      object Panel6: TPanel
        Left = 1
        Top = 314
        Width = 930
        Height = 56
        Align = alBottom
        Enabled = False
        TabOrder = 2
        ExplicitTop = 313
        object Label5: TLabel
          Left = 10
          Top = 20
          Width = 155
          Height = 15
          Caption = 'Quantidade Total do Pedida:'
        end
        object Label6: TLabel
          Left = 294
          Top = 20
          Width = 62
          Height = 15
          Caption = 'Valor Total:'
        end
        object EditQTDETotal: TDBEdit
          Left = 168
          Top = 17
          Width = 110
          Height = 23
          Hint = 'Informe o Pedido do Fornecedor no sistema dele'
          Color = clBtnFace
          DataField = 'QTDE_PEDIDA'
          DataSource = ds_PedidoCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object EditValorTotal: TDBEdit
          Left = 362
          Top = 17
          Width = 102
          Height = 23
          Hint = 'Informe o Pedido do Fornecedor no sistema dele'
          Color = clBtnFace
          DataField = 'VLR_TOTAL'
          DataSource = ds_PedidoCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object dbProcurarPedido: TIDBEditDialog
          Left = 637
          Top = 19
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
            'SELECT * FROM VIEW_PEDIDOSCOMPRAS'
            'WHERE'
            '%WHERE%')
          SearchDialogFieldList = <
            item
              FieldName = 'CODIGO'
              WhereSyntax = 'CODIGO'
              DisplayLabel = 'CODIGO:'
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
              DisplayLabel = 'NOME DO FORNECEDOR:'
              DisplayWidth = 40
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
      end
      object dbProcurarProdutos: TIDBEditDialog
        Left = 124
        Top = 230
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
          'SELECT *  FROM VIEW_REFERENCIAS'
          'WHERE'
          ''
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
            SearchCase = scUpper
          end
          item
            FieldName = 'DESCRICAO'
            WhereSyntax = 'DESCRICAO'
            DisplayLabel = 'DESCRI'#199#195'O:'
            DisplayWidth = 50
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
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
            SearchCase = scUpper
          end
          item
            FieldName = 'PRC_CUSTO'
            WhereSyntax = 'PRC_CUSTO'
            DisplayLabel = 'PRE'#199'O CUSTO:'
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
            FieldName = 'CODIGO_FABRICANTE'
            WhereSyntax = 'CODIGO_FABRICANTE'
            DisplayLabel = 'CODIGO FABRICANTE:'
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
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 440
    Width = 936
    Height = 60
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 430
    inherited PanelBotoesBottom: TPanel
      inherited SpbAdicionar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbAdicionarClick
        ExplicitLeft = 32
      end
      inherited SpbEditar: TSpeedButton
        ExplicitLeft = 232
      end
      inherited SpbCancelar: TSpeedButton
        ExplicitLeft = 332
      end
      inherited SpbSalvar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSalvarClick
        ExplicitLeft = 132
      end
      inherited SpbExcluir: TSpeedButton
        ExplicitLeft = 432
      end
      inherited SpbImprimir: TSpeedButton
        Visible = True
        OnClick = FrmFrameBotoes1SpbImprimirClick
        ExplicitLeft = 626
        ExplicitTop = -1
        ExplicitHeight = 50
      end
      inherited SpbSair: TSpeedButton
        ExplicitLeft = 822
      end
      inherited SpbExtra: TSpeedButton
        ExplicitLeft = 732
      end
      inherited SpbProcurar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 532
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 936
    Height = 50
    Align = alTop
    Constraints.MinHeight = 50
    Color = 16024898
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    ExplicitWidth = 936
    inherited Image3: TImage
      Width = 936
      ExplicitWidth = 930
      ExplicitHeight = 60
    end
    inherited pnTitulo: TPanel
      Width = 930
      Constraints.MinHeight = 27
      ExplicitWidth = 926
      ExplicitHeight = 27
      inherited LblBarraTitulo: TLabel
        Width = 779
        Caption = 'Pedido de Compra'
        ExplicitWidth = 223
        ExplicitHeight = 25
      end
      inherited Image1: TImage
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 868
        ExplicitLeft = 874
        ExplicitHeight = 31
      end
    end
  end
  object dbfp_PedidCompra: TfrxDBDataset
    UserName = 'dbPedidCompra'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'DATA=DATA'
      'DATA_ENTREGA=DATA_ENTREGA'
      'REQUISICAO=REQUISICAO'
      'FORNECEDOR=FORNECEDOR'
      'FORNECEDOR_NOME=FORNECEDOR_NOME'
      'FORNECEDORPEDIDO=FORNECEDORPEDIDO'
      'TRANSPORTADORA=TRANSPORTADORA'
      'TRANSPORTADORA_NOME=TRANSPORTADORA_NOME'
      'FORMAPAGTO=FORMAPAGTO'
      'FORMAPAGTO_NOME=FORMAPAGTO_NOME'
      'DEPARTAMENTO=DEPARTAMENTO'
      'DEPARTAMENTO_NOME=DEPARTAMENTO_NOME'
      'USUARIO=USUARIO'
      'QTDE_PEDIDA=QTDE_PEDIDA'
      'QTDE_ENTREGUE=QTDE_ENTREGUE'
      'QTDE_PENDENTE=QTDE_PENDENTE'
      'VLR_TOTAL=VLR_TOTAL'
      'FRETE_VALOR=FRETE_VALOR'
      'FRETE_TIPO=FRETE_TIPO'
      'FRETE_TIPO_STATUS=FRETE_TIPO_STATUS'
      'EFETIVADO=EFETIVADO'
      'APROVADO=APROVADO')
    DataSet = ViewPedidoCompra
    BCDToCurrency = False
    Left = 448
    Top = 304
  end
  object frx_PedidoCompra: TfrxReport
    Version = '6.2.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40905.983237453700000000
    ReportOptions.LastChange = 40924.460993206020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 688
    Top = 296
    Datasets = <
      item
        DataSet = dbfp_PedidCompra
        DataSetName = 'dbPedidCompra'
      end
      item
        DataSet = dbfp_PedidCompraItens
        DataSetName = 'dbPedidCompraItens'
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
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 13.228346460000000000
        ParentFont = False
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        DataSet = dbfp_PedidCompraItens
        DataSetName = 'dbPedidCompraItens'
        RowCount = 0
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 84.283464570000000000
          Width = 47.661410000000000000
          Height = 12.094488188976380000
          DataField = 'DESCRICAO'
          DataSet = dbfp_PedidCompraItens
          DataSetName = 'dbPedidCompraItens'
          DisplayFormat.FormatStr = '####,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbPedidCompraItens."DESCRICAO"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Width = 56.440940000000000000
          Height = 12.094488188976380000
          DataField = 'PRODUTO'
          DataSet = dbfp_PedidCompraItens
          DataSetName = 'dbPedidCompraItens'
          DisplayFormat.FormatStr = '####,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbPedidCompraItens."PRODUTO"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 391.181102360000000000
          Width = 62.362204720000000000
          Height = 12.094488190000000000
          DataField = 'QTDE_PEDIDA'
          DataSet = dbfp_PedidCompraItens
          DataSetName = 'dbPedidCompraItens'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbPedidCompraItens."QTDE_PEDIDA"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 333.354330710000000000
          Width = 35.905487400000000000
          Height = 12.094488188976380000
          DataField = 'UNIDADE'
          DataSet = dbfp_PedidCompraItens
          DataSetName = 'dbPedidCompraItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbPedidCompraItens."UNIDADE"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 472.440944880000000000
          Width = 63.496067870000000000
          Height = 12.094488190000000000
          DataField = 'VALOR_UNIT'
          DataSet = dbfp_PedidCompraItens
          DataSetName = 'dbPedidCompraItens'
          DisplayFormat.FormatStr = '###,##0.0000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbPedidCompraItens."VALOR_UNIT"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 557.480314960000000000
          Width = 63.496067870000000000
          Height = 12.094488190000000000
          DataField = 'DESCONTO'
          DataSet = dbfp_PedidCompraItens
          DataSetName = 'dbPedidCompraItens'
          DisplayFormat.FormatStr = '###,##0.00%'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbPedidCompraItens."DESCONTO"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 640.629921260000000000
          Width = 69.921259840000000000
          Height = 12.094488190000000000
          DataField = 'VALOR_TOTAL'
          DataSet = dbfp_PedidCompraItens
          DataSetName = 'dbPedidCompraItens'
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
            '[dbPedidCompraItens."VALOR_TOTAL"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 200.315090000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Top = 69.252010000000000000
          Width = 718.110236220000000000
          Height = 128.504020000000000000
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 99.779527559055120000
          Width = 132.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FORNECEDOR:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 113.007874020000000000
          Width = 228.315090000000000000
          Height = 12.472440940000000000
          DataField = 'FORNECEDOR_NOME'
          DataSet = dbfp_PedidCompra
          DataSetName = 'dbPedidCompra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbPedidCompra."FORNECEDOR_NOME"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 123.968770000000000000
          Top = 70.677165354330710000
          Width = 93.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA DE EMISS'#195'O:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 123.968770000000000000
          Top = 83.149606300000000000
          Width = 94.811070000000000000
          Height = 12.472440944881890000
          AutoWidth = True
          DataField = 'DATA'
          DataSet = dbfp_PedidCompra
          DataSetName = 'dbPedidCompra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbPedidCompra."DATA"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 70.669291340000000000
          Width = 58.897650000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ID PEDIDO:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 83.149606300000000000
          Width = 103.252010000000000000
          Height = 12.472440944881890000
          DataField = 'CODIGO'
          DataSet = dbfp_PedidCompra
          DataSetName = 'dbPedidCompra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbPedidCompra."CODIGO"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 84.267716540000000000
          Top = 182.929133860000000000
          Width = 59.000000000000000000
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
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 391.181102360000000000
          Top = 182.929133860000000000
          Width = 71.055118110000000000
          Height = 11.338582680000000000
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
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 182.929133860000000000
          Width = 71.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PRODUTO:')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 333.354330708661400000
          Top = 182.929133860000000000
          Width = 35.905487400000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UND:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 98.370130000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 127.385900000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 228.165740000000000000
          Top = 69.921259842519690000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 384.543600000000000000
          Top = 99.023622050000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 117.283552440000000000
          Top = 69.921259842519690000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object MemoTitulo: TfrxMemoView
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
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'PEDIDO DE COMPRA')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 7.559060000000000000
          Width = 162.511750000000000000
          Height = 52.913388270000000000
          Fill.BackColor = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 566.149603860000000000
          Top = 9.448823780000000000
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
          Top = 24.188981260000000000
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
          Top = 39.307091500000000000
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
          Top = 9.448823780000000000
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
          Top = 24.188981260000000000
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
          Top = 39.307091500000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 238.110390000000000000
          Top = 70.677165350000000000
          Width = 100.897650000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA DE ENTREGA:')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 238.110390000000000000
          Top = 83.149606300000000000
          Width = 94.811070000000000000
          Height = 12.472440944881890000
          AutoWidth = True
          DataField = 'DATA_ENTREGA'
          DataSet = dbfp_PedidCompra
          DataSetName = 'dbPedidCompra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbPedidCompra."DATA_ENTREGA"]')
          ParentFont = False
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 342.307360000000000000
          Top = 69.921259842519690000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 201.496287560000000000
          Top = 128.503937007874000000
          Width = 132.236240000000000000
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
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 201.496287560000000000
          Top = 140.220472440000000000
          Width = 160.283550000000000000
          Height = 12.472440940000000000
          DataField = 'TRANSPORTADORA_NOME'
          DataSet = dbfp_PedidCompra
          DataSetName = 'dbPedidCompra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbPedidCompra."TRANSPORTADORA_NOME"]')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 155.984408190000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 99.779527559055120000
          Width = 132.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CENTRO DE CUSTO (DEPARTAMENTO):')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 113.007874020000000000
          Width = 228.315090000000000000
          Height = 12.472440940000000000
          DataField = 'DEPARTAMENTO_NOME'
          DataSet = dbfp_PedidCompra
          DataSetName = 'dbPedidCompra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbPedidCompra."DEPARTAMENTO_NOME"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 70.787445510000000000
          Width = 112.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PEDIDO FORNECEDOR:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 83.149606300000000000
          Width = 94.811070000000000000
          Height = 12.472440940000000000
          AutoWidth = True
          DataField = 'FORNECEDORPEDIDO'
          DataSet = dbfp_PedidCompra
          DataSetName = 'dbPedidCompra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbPedidCompra."FORNECEDORPEDIDO"]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 467.913730000000000000
          Top = 69.921259842519690000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 375.858690000000000000
          Top = 127.504020000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 128.503937007874000000
          Width = 132.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FORMA PAGAMENTO:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 140.220472440000000000
          Width = 179.181200000000000000
          Height = 12.472440940000000000
          DataField = 'FORMAPAGTO_NOME'
          DataSet = dbfp_PedidCompra
          DataSetName = 'dbPedidCompra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbPedidCompra."FORMAPAGTO_NOME"]')
          ParentFont = False
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 195.614412440000000000
          Top = 127.504020000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 128.503937007874000000
          Width = 83.102350000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR FRETE:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 140.220472440000000000
          Width = 99.811070000000000000
          Height = 12.472440944881890000
          DataField = 'FRETE_VALOR'
          DataSet = dbfp_PedidCompra
          DataSetName = 'dbPedidCompra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbPedidCompra."FRETE_VALOR"]')
          ParentFont = False
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 490.094932440000000000
          Top = 127.504020000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 494.677490000000000000
          Top = 128.503937007874000000
          Width = 98.220470000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FRETE POR CONTA:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 494.677490000000000000
          Top = 140.220472440000000000
          Width = 99.811070000000000000
          Height = 12.472440944881890000
          DataField = 'FRETE_TIPO_STATUS'
          DataSet = dbfp_PedidCompra
          DataSetName = 'dbPedidCompra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbPedidCompra."FRETE_TIPO_STATUS"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 472.440944881889800000
          Top = 182.929133860000000000
          Width = 71.055127870000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR UNIT:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 557.480314960629900000
          Top = 182.929133860000000000
          Width = 71.055127870000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DESCONTO%:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 640.519685040000000000
          Top = 182.929133860000000000
          Width = 71.055127870000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'SUBTOTAL:')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 355.275820000000000000
        Width = 718.110700000000000000
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 640.629921260000000000
          Top = 3.779527560000000000
          Width = 69.921259840000000000
          Height = 12.094488188976380000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbPedidCompraItens."VALOR_TOTAL">)]')
          ParentFont = False
        end
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
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 391.181102360000000000
          Top = 3.779527560000000000
          Width = 62.362204720000000000
          Height = 12.094488188976380000
          DisplayFormat.FormatStr = '###,##0.0000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbPedidCompraItens."QTDE_PEDIDA">)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 411.968770000000000000
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
          Top = 1.889763780000000000
          Width = 718.110700000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  object ds_PedidoCompra: TDataSource
    DataSet = db_PedidoCompra
    OnStateChange = ds_PedidoCompraStateChange
    Left = 448
    Top = 240
  end
  object db_PedidoCompra: TFDQuery
    BeforeOpen = db_PedidoCompraBeforeOpen
    AfterOpen = db_PedidoCompraAfterOpen
    BeforePost = db_PedidoCompraBeforePost
    AfterPost = db_PedidoCompraAfterPost
    OnNewRecord = db_PedidoCompraNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM COMPRA_PEDIDOS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 448
    Top = 184
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object db_PedidoCompraItens: TFDQuery
    AfterOpen = db_PedidoCompraItensAfterOpen
    AfterEdit = db_PedidoCompraItensAfterEdit
    BeforePost = db_PedidoCompraItensBeforePost
    AfterPost = db_PedidoCompraItensAfterPost
    OnCalcFields = db_PedidoCompraItensCalcFields
    MasterSource = ds_PedidoCompra
    MasterFields = 'EMPRESA;CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM COMPRA_PEDIDOS_ITENS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 568
    Top = 184
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
  object dbfp_PedidCompraItens: TfrxDBDataset
    UserName = 'dbPedidCompraItens'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'PRODUTO=PRODUTO'
      'DESCRICAO=DESCRICAO'
      'UNIDADE=UNIDADE'
      'QTDE_PEDIDA=QTDE_PEDIDA'
      'QTDE_ENTREGUE=QTDE_ENTREGUE'
      'QTDE_RESTANTE=QTDE_RESTANTE'
      'VALOR_UNIT=VALOR_UNIT'
      'DESCONTO=DESCONTO'
      'VLR_DESCONTO=VLR_DESCONTO'
      'VALOR_TOTAL=VALOR_TOTAL')
    DataSet = ViewPedidoCompraItens
    BCDToCurrency = False
    Left = 560
    Top = 304
  end
  object SPPEDIDOCOMPRA_CALCULAR: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPPEDIDOCOMPRA_CALCULAR'
    Left = 256
    Top = 168
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
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_PedidoCompraItens: TDataSource
    DataSet = db_PedidoCompraItens
    Left = 576
    Top = 248
  end
  object ViewPedidoCompra: TFDQuery
    BeforeOpen = db_PedidoCompraBeforeOpen
    BeforePost = db_PedidoCompraBeforePost
    AfterPost = db_PedidoCompraAfterPost
    OnNewRecord = db_PedidoCompraNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDOSCOMPRAS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 712
    Top = 144
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object ViewPedidoCompraItens: TFDQuery
    BeforePost = db_PedidoCompraItensBeforePost
    AfterPost = db_PedidoCompraItensAfterPost
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDOSCOMPRASITENS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 832
    Top = 144
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
