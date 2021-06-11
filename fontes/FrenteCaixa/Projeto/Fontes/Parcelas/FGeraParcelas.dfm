object FrmGeraParcelas: TFrmGeraParcelas
  AlignWithMargins = True
  Left = 291
  Top = 126
  BorderStyle = bsDialog
  Caption = 'Gerar Faturas'
  ClientHeight = 542
  ClientWidth = 608
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnDados: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 60
    Width = 602
    Height = 88
    Align = alTop
    TabOrder = 0
    OnExit = pnDadosExit
    object EditNomeCliente: TEdit
      Left = 78
      Top = 17
      Width = 500
      Height = 21
      CharCase = ecUpperCase
      Color = clBtnFace
      Enabled = False
      TabOrder = 1
      Text = '***'
    end
    object EditCliente: TIDBEditDialog
      Left = 6
      Top = 17
      Width = 70
      Height = 21
      HelpKeyWord = ''
      CharCase = ecUpperCase
      Color = clWindow
      Enabled = True
      TabOrder = 0
      Text = '0'
      Visible = True
      LabelCaption = 'Cliente'
      LabelAlwaysEnabled = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Calibri'
      LabelFont.Style = []
      Lookup.Separator = ';'
      Version = '5.0.0.0'
      ButtonStyle = bsButton
      ButtonWidth = 16
      ButtonHint = 'Procurar...'
      Etched = False
      ButtonCaption = '...'
      DataField = 'CLIENTE'
      DataSource = FrmPrincipal.dsVenda
      ButtonKeyClickBtn = 119
      SQLdbFazBusca = True
      SQLdbFocusControl = EditNomeCliente
      SQLdbCampoRetorno = 'NOME'
      SQLdbRetornoVazio = '<informar cliente>'
      SQLdbCampoParametro = 'CODIGO'
      SQLdbSQL.Strings = (
        'SELECT * FROM CAD_CLIENTES'
        'WHERE'
        'CODIGO=:CODIGO')
      SQLdbMaxLenght = 10
      SearchQuery.Strings = (
        'SELECT * FROM CAD_CLIENTES'
        'WHERE'
        'COALESCE(ATIVO,'#39'S'#39')<>'#39'N'#39
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
      ConnectionDialog = FrmPrincipal.ConnectFirebird
      Connection = FrmPrincipal.ConnectFirebird
    end
    object EditPagamento: TIDBEditDialog
      Left = 6
      Top = 60
      Width = 70
      Height = 22
      HelpKeyWord = ''
      CharCase = ecUpperCase
      Color = clWindow
      Enabled = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
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
      LabelFont.Name = 'Calibri'
      LabelFont.Style = []
      Lookup.Separator = ';'
      Version = '5.0.0.0'
      ButtonStyle = bsButton
      ButtonWidth = 16
      ButtonHint = 'Forma de Pagamento'
      Etched = False
      ButtonCaption = '...'
      DataField = 'FORMAPAGTO'
      DataSource = FrmPrincipal.dsVenda
      ButtonKeyClickBtn = 119
      SQLdbFazBusca = True
      SQLdbFocusControl = EditNomeFormaPagto
      SQLdbCampoRetorno = 'NOME'
      SQLdbRetornoVazio = '<informar pagamento>'
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
      ConnectionDialog = FrmPrincipal.ConnectFirebird
      Connection = FrmPrincipal.ConnectFirebird
    end
    object EditNomeFormaPagto: TEdit
      Left = 78
      Top = 60
      Width = 500
      Height = 22
      CharCase = ecUpperCase
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = '***'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 608
    Height = 57
    Align = alTop
    Color = 4276288
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object Shape2: TShape
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 600
      Height = 49
      Align = alClient
      Brush.Color = 4276288
      Pen.Color = 6403220
      Pen.Style = psDot
      Shape = stRoundRect
      ExplicitLeft = 1
      ExplicitWidth = 321
    end
    object lblTitulo: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 4
      Width = 576
      Height = 49
      Margins.Left = 15
      Margins.Right = 15
      Align = alClient
      Alignment = taCenter
      Caption = 'Gerar Parcelas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 161
      ExplicitHeight = 33
    end
  end
  object pnTitulo: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 501
    Width = 602
    Height = 38
    Align = alBottom
    Color = 4276288
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    object BtnOK: TButton
      Left = 101
      Top = 1
      Width = 100
      Height = 36
      Align = alLeft
      Caption = 'Gravar (F5)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = BtnOKClick
    end
    object BtnSair: TButton
      Left = 501
      Top = 1
      Width = 100
      Height = 36
      Align = alRight
      Caption = 'Sair (Esc)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ImageIndex = 3
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = BtnSairClick
    end
    object BtnGerarParcelas: TButton
      Left = 1
      Top = 1
      Width = 100
      Height = 36
      Align = alLeft
      Caption = 'Parcelar (F3)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ImageIndex = 0
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = BtnGerarParcelasClick
    end
    object BtnExcluir: TButton
      Left = 401
      Top = 1
      Width = 100
      Height = 36
      Align = alRight
      Caption = 'Excluir (F11)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ImageIndex = 2
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = BtnExcluirClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 151
    Width = 608
    Height = 347
    Align = alClient
    Caption = 'Parcelas (seta pra cima oupra baixo, grava sua altera'#231#227'o)'
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 2
      Top = 15
      Width = 604
      Height = 330
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsCtaReceber
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '###,##0.00'
            Kind = skSum
            FieldName = 'VALOR'
            Column = cxGrid1DBTableView1Column4
            DisplayText = 'Valor Total:'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'Data:'
          DataBinding.FieldName = 'DATA'
          PropertiesClassName = 'TcxDateEditProperties'
          MinWidth = 85
          Options.Editing = False
          Options.AutoWidthSizable = False
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = 'Vencimento (*)'
          DataBinding.FieldName = 'VENCIMENTO'
          PropertiesClassName = 'TcxDateEditProperties'
          MinWidth = 85
          Options.AutoWidthSizable = False
          Width = 85
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = 'Documento/Parcela'
          DataBinding.FieldName = 'DOCUMENTO'
          MinWidth = 110
          Options.Editing = False
          Options.AutoWidthSizable = False
          Width = 110
        end
        object cxGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VALOR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          MinWidth = 85
          Options.Editing = False
          Options.AutoWidthSizable = False
          Width = 105
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object dsCtaReceber: TDataSource
    DataSet = QryCtaReceber
    Left = 200
    Top = 232
  end
  object db_FormaPagto: TFDQuery
    Connection = FrmPrincipal.ConnectFirebird
    SQL.Strings = (
      'SELECT'
      'A.*, B.*'
      ' FROM CAD_FORMAPAGTO  A, CAD_FORMAPAGTODIAS B'
      'WHERE'
      'B.CODIGO=A.CODIGO'
      'AND'
      'A.CODIGO=:FORMAPAGTO'
      'ORDER BY A.CODIGO, B.DIAS')
    Left = 320
    Top = 229
    ParamData = <
      item
        Name = 'FORMAPAGTO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QryCtaReceber: TFDQuery
    AfterOpen = QryCtaReceberAfterOpen
    AfterPost = QryCtaReceberAfterPost
    OnNewRecord = QryCtaReceberNewRecord
    Connection = FrmPrincipal.ConnectFirebird
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM FIN_CTARECEBER'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'IDVENDA=:IDVENDA')
    Left = 112
    Top = 232
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDVENDA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
