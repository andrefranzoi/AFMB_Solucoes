object FrmControleBancario: TFrmControleBancario
  Left = 189
  Top = 108
  VertScrollBar.Style = ssFlat
  Caption = 'Controle Banc'#225'rio'
  ClientHeight = 515
  ClientWidth = 951
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
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
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 74
    Width = 951
    Height = 378
    Cursor = crHandPoint
    ActivePage = Tab_Principal
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitTop = 84
    ExplicitHeight = 368
    object Tab_Principal: TTabSheet
      Caption = 'Registros'
      ExplicitHeight = 340
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 943
        Height = 350
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitHeight = 340
        object cxGridBancario: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxGridBancarioCellDblClick
          DataController.DataSource = DS_CtrlBancario
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.Indicator = True
          object cxGridBancarioColumn1: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'DATA'
            MinWidth = 77
            Options.AutoWidthSizable = False
            Width = 77
          end
          object cxGridBancarioColumn2: TcxGridDBColumn
            Caption = 'Documento'
            DataBinding.FieldName = 'DOCUMENTO'
            MinWidth = 88
            Options.AutoWidthSizable = False
            Options.Grouping = False
            Options.Moving = False
            Width = 88
          end
          object cxGridBancarioColumn3: TcxGridDBColumn
            Caption = 'Cr'#233'dito/D'#233'bito'
            DataBinding.FieldName = 'DC'
            MinWidth = 90
            Options.AutoWidthSizable = False
            Width = 94
          end
          object cxGridBancarioColumn4: TcxGridDBColumn
            Caption = 'Hist'#243'rico'
            DataBinding.FieldName = 'HISTORICO'
            MinWidth = 350
            Options.Grouping = False
            Options.Moving = False
            Width = 442
          end
          object cxGridBancarioColumn5: TcxGridDBColumn
            Caption = 'Cr'#233'dito'
            DataBinding.FieldName = 'VLR_CREDITO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 120
            Options.AutoWidthSizable = False
            Options.Grouping = False
            Options.Moving = False
            Width = 120
          end
          object cxGridBancarioColumn6: TcxGridDBColumn
            Caption = 'D'#233'bito'
            DataBinding.FieldName = 'VLR_DEBITO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 120
            Options.AutoWidthSizable = False
            Options.Grouping = False
            Options.Moving = False
            Width = 120
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGridBancario
        end
      end
    end
    object Tab_Edicao: TTabSheet
      Caption = 'Edi'#231#227'o'
      ImageIndex = 1
      ExplicitHeight = 340
      object Label3: TLabel
        Left = 31
        Top = 45
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Caption = 'Documento'
      end
      object Label4: TLabel
        Left = 5
        Top = 19
        Width = 81
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data Documento'
      end
      object Label7: TLabel
        Left = 44
        Top = 177
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Hist'#243'rico'
      end
      object LblCredito: TLabel
        Left = 25
        Top = 204
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor Cr'#233'dito'
        Enabled = False
      end
      object LblDebito: TLabel
        Left = 27
        Top = 227
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor D'#233'bito'
        Enabled = False
      end
      object Panel2: TPanel
        Left = 8
        Top = 507
        Width = 105
        Height = 28
        Alignment = taLeftJustify
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Caption = ' N.F.:'
        Color = 9101294
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        object DBTextNF: TDBText
          Left = 48
          Top = 6
          Width = 51
          Height = 17
          Alignment = taRightJustify
          Color = 9101294
          DataField = 'NUMERO_NF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
      end
      object Panel3: TPanel
        Left = 592
        Top = 507
        Width = 161
        Height = 28
        Alignment = taLeftJustify
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Caption = ' Total da Nota:'
        Color = 12906487
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        object DBText1: TDBText
          Left = 80
          Top = 6
          Width = 77
          Height = 17
          Alignment = taRightJustify
          Color = 12906487
          DataField = 'TOTAL_NF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
      end
      object Panel4: TPanel
        Left = 377
        Top = 507
        Width = 108
        Height = 28
        Alignment = taLeftJustify
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Caption = ' ICMS:'
        Color = 12906487
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        object DBText2: TDBText
          Left = 46
          Top = 6
          Width = 57
          Height = 17
          Alignment = taRightJustify
          Color = 12906487
          DataField = 'VLR_ICMS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
      end
      object Panel5: TPanel
        Left = 195
        Top = 507
        Width = 179
        Height = 28
        Alignment = taLeftJustify
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Caption = ' Total dos Produtos'
        Color = 12906487
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        object DBText3: TDBText
          Left = 101
          Top = 6
          Width = 74
          Height = 17
          Alignment = taRightJustify
          Color = 12906487
          DataField = 'TOTAL_PROD'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
      end
      object Panel6: TPanel
        Left = 492
        Top = 507
        Width = 95
        Height = 28
        Alignment = taLeftJustify
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Caption = ' IPI:'
        Color = 12906487
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        object DBText4: TDBText
          Left = 34
          Top = 6
          Width = 57
          Height = 17
          Alignment = taRightJustify
          Color = 12906487
          DataField = 'VLR_IPI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
      end
      object EditDocumento: TDBEdit
        Left = 90
        Top = 42
        Width = 92
        Height = 21
        DataField = 'DOCUMENTO'
        DataSource = DS_CtrlBancario
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 90
        Top = 15
        Width = 92
        Height = 21
        DataField = 'DATA'
        DataSource = DS_CtrlBancario
        TabOrder = 0
      end
      object DBEdit9: TDBEdit
        Left = 90
        Top = 174
        Width = 488
        Height = 21
        CharCase = ecUpperCase
        DataField = 'HISTORICO'
        DataSource = DS_CtrlBancario
        TabOrder = 10
      end
      object EditCredito: TDBEdit
        Left = 90
        Top = 199
        Width = 92
        Height = 21
        DataField = 'VLR_CREDITO'
        DataSource = DS_CtrlBancario
        Enabled = False
        TabOrder = 11
      end
      object EditDebito: TDBEdit
        Left = 90
        Top = 224
        Width = 92
        Height = 21
        DataField = 'VLR_DEBITO'
        DataSource = DS_CtrlBancario
        Enabled = False
        TabOrder = 12
      end
      object EditNomePlanoContas: TEdit
        Left = 187
        Top = 93
        Width = 391
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        TabOrder = 5
        Text = '***'
      end
      object Edit2: TEdit
        Left = 187
        Top = 147
        Width = 391
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        TabOrder = 9
        Text = '***'
      end
      object EstSearchDialogZeos1: TIDBEditDialog
        Left = 90
        Top = 147
        Width = 92
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
        TabOrder = 8
        Text = ''
        Visible = True
        EditType = etUppercase
        EmptyText = 'F8 - Pesquisar'
        FocusColor = clWindow
        LabelCaption = 'Centro de Custo:'
        LabelPosition = lpLeftCenter
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
        DataSource = DS_CtrlBancario
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = Edit2
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_DEPARTAMENTOS'
          'WHERE'
          'CODIGO=:CODIGO')
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
      object EditContaCorrente: TEdit
        Left = 187
        Top = 67
        Width = 391
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
        Text = '***'
      end
      object EditConta_Credito: TIDBEditDialog
        Left = 90
        Top = 67
        Width = 92
        Height = 21
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = True
        TabOrder = 2
        Text = '0'
        Visible = True
        EditType = etNumeric
        EmptyText = 'F8 - Pesquisar'
        LabelCaption = 'Conta Banc'#225'ria'
        LabelPosition = lpLeftCenter
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
        DataField = 'CTA_CORRENTE'
        DataSource = DS_CtrlBancario
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
      object DCodPlano: TIDBEditDialog
        Left = 90
        Top = 93
        Width = 92
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
        LabelPosition = lpLeftCenter
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
        DataField = 'PLN_CONTA'
        DataSource = DS_CtrlBancario
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
          '%WHERE%')
        CountQuery.Strings = (
          'SELECT COUNT(*) FROM VIEW_PLANOCONTAS'
          'WHERE'
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
      object ContaProcurar: TIDBEditDialog
        Left = 90
        Top = 120
        Width = 92
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
        TabOrder = 6
        Text = ''
        Visible = True
        EditType = etAlphaNumeric
        EmptyText = 'Tecle F8'
        FocusColor = clBtnFace
        LabelCaption = 'Conta Caixa:'
        LabelPosition = lpLeftCenter
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
        DataSource = DS_CtrlBancario
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
      object EditNomeContaCaixa: TEdit
        Left = 187
        Top = 121
        Width = 391
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
        TabOrder = 7
        Text = '***'
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 452
    Width = 951
    Height = 63
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 452
    ExplicitWidth = 951
    ExplicitHeight = 63
    inherited PanelBotoesBottom: TPanel
      Width = 941
      Height = 57
      ExplicitWidth = 941
      ExplicitHeight = 57
      inherited SpbAdicionar: TSpeedButton
        Height = 53
        OnClick = FrmFrameBotoes1SpbAdicionarClick
        ExplicitLeft = 47
        ExplicitHeight = 53
      end
      inherited SpbEditar: TSpeedButton
        Height = 53
        OnClick = FrmFrameBotoes1SpbEditarClick
        ExplicitLeft = 247
        ExplicitHeight = 53
      end
      inherited SpbCancelar: TSpeedButton
        Height = 53
        OnClick = FrmFrameBotoes1SpbCancelarClick
        ExplicitLeft = 347
        ExplicitHeight = 53
      end
      inherited SpbSalvar: TSpeedButton
        Height = 53
        OnClick = FrmFrameBotoes1SpbSalvarClick
        ExplicitLeft = 147
        ExplicitHeight = 53
      end
      inherited SpbExcluir: TSpeedButton
        Height = 53
        OnClick = FrmFrameBotoes1SpbExcluirClick
        ExplicitLeft = 447
        ExplicitHeight = 53
      end
      inherited SpbImprimir: TSpeedButton
        Height = 53
        ExplicitLeft = 647
        ExplicitHeight = 53
      end
      inherited SpbSair: TSpeedButton
        Left = 837
        Height = 53
        OnClick = FrmFrameBotoes1SpbSairClick
        ExplicitLeft = 837
        ExplicitHeight = 53
      end
      inherited SpbExtra: TSpeedButton
        Left = 747
        Height = 53
        ExplicitLeft = 747
        ExplicitHeight = 53
      end
      inherited SpbProcurar: TSpeedButton
        Height = 53
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 547
        ExplicitHeight = 53
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 951
    Height = 50
    Align = alTop
    Constraints.MinHeight = 50
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 951
    inherited Image3: TImage
      Width = 951
      ExplicitWidth = 644
      ExplicitHeight = 60
    end
    inherited pnTitulo: TPanel
      Width = 945
      Constraints.MinHeight = 27
      ExplicitWidth = 945
      ExplicitHeight = 54
      inherited LblBarraTitulo: TLabel
        Width = 794
        Caption = 'Controle Banc'#225'rio'
        Font.Height = -17
        ExplicitWidth = 154
        ExplicitHeight = 23
      end
      inherited Image1: TImage
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 883
        ExplicitLeft = 588
        ExplicitHeight = 31
      end
    end
  end
  object Navegador: TDBNavigator
    Left = 0
    Top = 50
    Width = 951
    Height = 24
    DataSource = DS_CtrlBancario
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alTop
    Flat = True
    Hints.Strings = (
      'In'#237'cio do Arquivo'
      'Registro Anterior'
      'Pr'#243'ximo Registro'
      'Final do Arquivo')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    ExplicitTop = 60
  end
  object dbEditPesquisar: TIDBEditDialog
    Left = 428
    Top = 6
    Width = 65
    Height = 21
    HelpKeyWord = ''
    Color = clWindow
    Enabled = True
    TabOrder = 4
    Text = ''
    Visible = False
    LabelCaption = 'C'#243'digo da M'#225'quina'
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
      'SELECT * FROM VIEW_FIN_CONTROLEBANCO'
      'WHERE'
      '%WHERE%'
      ''
      '')
    SearchDialogFieldList = <
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
        FieldName = 'CONTACAIXANOME'
        WhereSyntax = 'CONTACAIXANOME'
        DisplayLabel = 'CONTA CAIXA:'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'VLR_CREDITO'
        WhereSyntax = 'VLR_CREDITO'
        DisplayLabel = 'CR'#201'DITO:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VLR_DEBITO'
        WhereSyntax = 'VLR_DEBITO'
        DisplayLabel = 'D'#201'BITO:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'DEPARTAMENTONOME'
        WhereSyntax = 'DEPARTAMENTONOME'
        DisplayLabel = 'CENTRO DE CUSTO:'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'PLANOCONTANOME'
        WhereSyntax = 'PLANOCONTANOME'
        DisplayLabel = 'PLANO CONTA:'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'HITORICO'
        WhereSyntax = 'HITORICO'
        DisplayLabel = 'HIT'#211'RICO:'
        DisplayWidth = 35
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'DADOS_CONTA'
        WhereSyntax = 'DADOS_CONTA'
        DisplayLabel = 'DADOS CONTA:'
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
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
  object DS_CtrlBancario: TDataSource
    AutoEdit = False
    DataSet = db_CtrlBancario
    Left = 404
    Top = 58
  end
  object db_CtrlBancario: TFDQuery
    AfterOpen = db_CtrlBancarioAfterOpen
    AfterScroll = db_CtrlBancarioAfterScroll
    OnNewRecord = db_CtrlBancarioNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM CTRL_BANCARIO'
      ''
      'ORDER BY DATA DESC, DOCUMENTO ASC')
    Left = 500
    Top = 58
  end
end
