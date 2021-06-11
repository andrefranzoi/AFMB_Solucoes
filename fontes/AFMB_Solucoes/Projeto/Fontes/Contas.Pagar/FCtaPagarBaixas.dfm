object FrmCtaPagarBaixas: TFrmCtaPagarBaixas
  Left = 233
  Top = 116
  Width = 953
  Height = 540
  HorzScrollBar.Range = 900
  HorzScrollBar.Smooth = True
  HorzScrollBar.Tracking = True
  VertScrollBar.Range = 490
  VertScrollBar.Smooth = True
  VertScrollBar.Tracking = True
  Caption = 'Contas a Pagar - Pagamento de Titulos'
  Color = clBtnFace
  Constraints.MinHeight = 540
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 452
    Width = 937
    Height = 49
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 462
    object BtnSair: TBitBtn
      AlignWithMargins = True
      Left = 416
      Top = 4
      Width = 97
      Height = 41
      Cursor = crHandPoint
      Hint = 'Sair do contas a receber'
      Align = alLeft
      Caption = 'Sai&r (Esc)'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      TabStop = False
      OnClick = BtnSairClick
    end
    object BtnSalvar: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 97
      Height = 41
      Cursor = crHandPoint
      Hint = 'Salvar registro'
      Align = alLeft
      Caption = '&Baixar (F4)'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = False
      OnClick = BtnSalvarClick
    end
    object BtnCancelar: TBitBtn
      AlignWithMargins = True
      Left = 107
      Top = 4
      Width = 97
      Height = 41
      Cursor = crHandPoint
      Hint = 'Cancelar Edi'#231#227'o'
      Align = alLeft
      Caption = '&Cancelar (F5)'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = BtnCancelarClick
    end
    object BtnEstornar: TBitBtn
      AlignWithMargins = True
      Left = 210
      Top = 4
      Width = 97
      Height = 41
      Cursor = crHandPoint
      Hint = 'Reabir documento'
      Align = alLeft
      Caption = 'Estornar (F6)'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
      OnClick = BtnEstornarClick
    end
    object BtnLocalizar: TBitBtn
      AlignWithMargins = True
      Left = 313
      Top = 4
      Width = 97
      Height = 41
      Cursor = crHandPoint
      Hint = 'Localizar Registro'
      Align = alLeft
      Caption = '&Localizar (F7)'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TabStop = False
      OnClick = BtnLocalizarClick
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 937
    Height = 50
    Align = alTop
    Constraints.MinHeight = 50
    Color = 16024898
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 937
    inherited Image3: TImage
      Width = 937
      ExplicitWidth = 626
      ExplicitHeight = 60
    end
    inherited pnTitulo: TPanel
      Width = 931
      Constraints.MinHeight = 27
      ExplicitWidth = 931
      ExplicitHeight = 44
      inherited LblBarraTitulo: TLabel
        Width = 780
        Caption = ' Contas a Pagar - Baixar Pagamento de Fornecedor'
        ExplicitWidth = 521
        ExplicitHeight = 25
      end
      inherited Image1: TImage
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 869
        ExplicitLeft = 570
        ExplicitHeight = 31
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 50
    Width = 937
    Height = 402
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 412
    object Label1: TLabel
      Left = 13
      Top = 51
      Width = 26
      Height = 13
      Caption = 'Data:'
    end
    object Label2: TLabel
      Left = 145
      Top = 51
      Width = 59
      Height = 13
      Caption = 'Vencimento:'
    end
    object Label4: TLabel
      Left = 13
      Top = 94
      Width = 58
      Height = 13
      Caption = 'Documento:'
    end
    object Label11: TLabel
      Left = 145
      Top = 94
      Width = 73
      Height = 13
      Caption = 'Nosso N'#250'mero:'
    end
    object Label14: TLabel
      Left = 13
      Top = 218
      Width = 81
      Height = 13
      Caption = 'Outras Despesas'
    end
    object Label13: TLabel
      Left = 145
      Top = 177
      Width = 89
      Height = 13
      Caption = 'Despesas Cart'#243'rio:'
    end
    object Label8: TLabel
      Left = 13
      Top = 177
      Width = 56
      Height = 13
      Caption = 'Valor Multa:'
    end
    object Label10: TLabel
      Left = 13
      Top = 256
      Width = 119
      Height = 19
      Caption = 'Valor Documento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 145
      Top = 218
      Width = 69
      Height = 13
      Caption = 'Despesa Total'
    end
    object Label7: TLabel
      Left = 265
      Top = 256
      Width = 73
      Height = 19
      Caption = 'Valor Pago'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 145
      Top = 135
      Width = 36
      Height = 13
      Caption = 'Juros %'
    end
    object Label5: TLabel
      Left = 13
      Top = 135
      Width = 57
      Height = 13
      Caption = 'Desconto %'
    end
    object Label3: TLabel
      Left = 139
      Top = 256
      Width = 114
      Height = 19
      Caption = 'Data Pagamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 13
      Top = 67
      Width = 120
      Height = 21
      DataField = 'DATA'
      DataSource = DS_CtaPagar
      Enabled = False
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 145
      Top = 67
      Width = 120
      Height = 21
      DataField = 'VENCIMENTO'
      DataSource = DS_CtaPagar
      Enabled = False
      TabOrder = 3
    end
    object EditDocumento: TDBEdit
      Left = 13
      Top = 110
      Width = 120
      Height = 21
      DataField = 'DOCUMENTO'
      DataSource = DS_CtaPagar
      Enabled = False
      TabOrder = 4
    end
    object DBEdit8: TDBEdit
      Left = 145
      Top = 110
      Width = 120
      Height = 21
      DataField = 'NOSSONUMERO'
      DataSource = DS_CtaPagar
      Enabled = False
      TabOrder = 5
    end
    object EditCliente: TIDBEditDialog
      Left = 13
      Top = 28
      Width = 65
      Height = 21
      HelpKeyWord = ''
      CharCase = ecUpperCase
      Color = clWindow
      Enabled = False
      TabOrder = 0
      Text = ''
      Visible = True
      LabelCaption = 'Fornecedor'
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
      DataField = 'Fornecedor'
      DataSource = DS_CtaPagar
      ButtonKeyClickBtn = 119
      SQLdbFazBusca = True
      SQLdbFocusControl = EditNomeFornecedor
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
          DisplayLabel = 'C'#211'DIGO:'
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
    object EditNomeFornecedor: TEdit
      Left = 82
      Top = 28
      Width = 469
      Height = 21
      CharCase = ecUpperCase
      Color = clBtnFace
      Enabled = False
      TabOrder = 1
    end
    object DBEdit10: TDBEdit
      Left = 13
      Top = 277
      Width = 120
      Height = 27
      DataField = 'VALOR'
      DataSource = DS_CtaPagar
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object DBEdit6: TDBEdit
      Left = 145
      Top = 192
      Width = 120
      Height = 21
      DataField = 'DESPESAS_CARTORIO'
      DataSource = DS_CtaPagar
      TabOrder = 9
    end
    object DBEdit4: TDBEdit
      Left = 13
      Top = 192
      Width = 120
      Height = 21
      DataField = 'DESPESAS_MULTA'
      DataSource = DS_CtaPagar
      TabOrder = 8
    end
    object EditDespesas: TDBEdit
      Left = 145
      Top = 233
      Width = 120
      Height = 21
      DataField = 'DESPESAS_TOTAL'
      DataSource = DS_CtaPagar
      Enabled = False
      TabOrder = 11
    end
    object EditValorPago: TDBEdit
      Left = 265
      Top = 277
      Width = 120
      Height = 27
      DataField = 'VALOR_PAGO'
      DataSource = DS_CtaPagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
    end
    object EditAcrescimos: TDBEdit
      Left = 145
      Top = 150
      Width = 120
      Height = 21
      DataField = 'DESPESAS_JUROS'
      DataSource = DS_CtaPagar
      TabOrder = 7
    end
    object EditDescontos: TDBEdit
      Left = 13
      Top = 150
      Width = 120
      Height = 21
      DataField = 'DESCONTO'
      DataSource = DS_CtaPagar
      TabOrder = 6
    end
    object EditDataPagto: TDBEdit
      Left = 139
      Top = 277
      Width = 120
      Height = 27
      DataField = 'DATA_PAGTO'
      DataSource = DS_CtaPagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
    object GroupBox2: TGroupBox
      Left = 271
      Top = 51
      Width = 280
      Height = 203
      Caption = 'Hist'#243'rico'
      TabOrder = 15
      object DBMemo1: TDBMemo
        Left = 2
        Top = 15
        Width = 276
        Height = 186
        Align = alClient
        DataField = 'HISTORICO'
        DataSource = DS_CtaPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object DBEdit7: TDBEdit
      Left = 13
      Top = 233
      Width = 120
      Height = 21
      Hint = 'Outras despesas (valor do boleto, etc..)'
      DataField = 'DESPESAS_BOLETO'
      DataSource = DS_CtaPagar
      TabOrder = 10
    end
    object GBoxCreditar: TGroupBox
      Left = 2
      Top = 305
      Width = 933
      Height = 95
      Align = alBottom
      Caption = 'Destino da Conta:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      ExplicitTop = 315
      object EditConta_Credito: TIDBEditDialog
        Left = 411
        Top = 28
        Width = 105
        Height = 21
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = True
        TabOrder = 2
        Text = ''
        Visible = True
        LabelCaption = 'Debitar em Conta Corrente'
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
        DataSource = DS_CtaPagar
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
            DisplayLabel = 'DADOS_CONTA'
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
        Left = 518
        Top = 28
        Width = 203
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
        TabOrder = 3
      end
      object EditNomeContaCaixa: TEdit
        Left = 118
        Top = 28
        Width = 283
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
        TabOrder = 1
        Text = '***'
      end
      object EditConta_Caixa: TIDBEditDialog
        Left = 11
        Top = 28
        Width = 105
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
        TabOrder = 0
        Text = ''
        Visible = True
        EditType = etAlphaNumeric
        EmptyText = 'Tecle F8'
        FocusColor = clBtnFace
        LabelCaption = 'Conta Caixa:'
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
        DataSource = DS_CtaPagar
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
      object EditPlano: TIDBEditDialog
        Left = 11
        Top = 67
        Width = 105
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
        TabOrder = 4
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
        DataSource = DS_CtaPagar
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
          'AND'
          'TIPO='#39'DEBITO'#39
          '')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM VIEW_PLANOCONTAS'
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
      object EditNomePlanoContas: TEdit
        Left = 118
        Top = 67
        Width = 603
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        TabOrder = 5
      end
    end
  end
  object dbDlgProcurar: TIDBEditDialog
    Left = 658
    Top = 56
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
      'SELECT *  FROM VIEW_FIN_CTAPAGAR '
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'DOCUMENTO'
        WhereSyntax = 'DOCUMENTO'
        DisplayLabel = 'DOCUMENTO:'
        DisplayWidth = 15
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
        DisplayWidth = 15
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
        FieldType = ftDateTime
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
        FieldName = 'NOME_FORNECEDOR'
        WhereSyntax = 'NOME_FORNECEDOR'
        DisplayLabel = 'FORNECEDOR:'
        DisplayWidth = 60
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
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
  object db_CtaPagar: TFDQuery
    AfterOpen = db_CtaPagarAfterOpen
    AfterPost = db_CtaPagarAfterPost
    AfterScroll = db_CtaPagarAfterScroll
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM FIN_CTAPAGAR'
      'WHERE'
      'CODIGO=:CODIGO'
      '')
    Left = 304
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DS_CtaPagar: TDataSource
    DataSet = db_CtaPagar
    Left = 408
    Top = 8
  end
  object SP_BaixaCtaPagar: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPCTAPAGAR_MOVTO'
    Left = 48
    Top = 8
    ParamData = <
      item
        Position = 1
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = 'NCODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'NFORNECEDOR'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
  end
end
