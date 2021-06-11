object FrmCidadeIBGE: TFrmCidadeIBGE
  Left = 241
  Top = 113
  Caption = 'Cidade IBGE'
  ClientHeight = 427
  ClientWidth = 860
  Color = clBtnFace
  Constraints.MinHeight = 465
  Constraints.MinWidth = 640
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 860
    Height = 50
    Align = alTop
    Constraints.MinHeight = 33
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitWidth = 860
    ExplicitHeight = 50
    inherited Image3: TImage
      Width = 860
      Height = 50
      ExplicitWidth = 847
    end
    inherited pnTitulo: TPanel
      Width = 854
      Height = 44
      Constraints.MinHeight = 27
      ExplicitWidth = 854
      ExplicitHeight = 27
      inherited LblBarraTitulo: TLabel
        Width = 703
        Height = 34
        Caption = 'Cidade IBGE'
        ExplicitWidth = 58
        ExplicitHeight = 25
      end
      inherited Image1: TImage
        Height = 34
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 792
        Height = 34
        ExplicitLeft = 791
        ExplicitHeight = 31
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 367
    Width = 860
    Height = 60
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 367
    ExplicitWidth = 860
    inherited PanelBotoesBottom: TPanel
      Width = 850
      ExplicitWidth = 850
      inherited SpbAdicionar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbAdicionarClick
        ExplicitLeft = -44
      end
      inherited SpbEditar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbEditarClick
        ExplicitLeft = 156
      end
      inherited SpbCancelar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbCancelarClick
        ExplicitLeft = 256
      end
      inherited SpbSalvar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSalvarClick
        ExplicitLeft = 56
      end
      inherited SpbExcluir: TSpeedButton
        OnClick = FrmFrameBotoes1SpbExcluirClick
        ExplicitLeft = 356
      end
      inherited SpbImprimir: TSpeedButton
        ExplicitLeft = 556
      end
      inherited SpbSair: TSpeedButton
        Left = 746
        OnClick = FrmFrameBotoes1SpbSairClick
        ExplicitLeft = 746
      end
      inherited SpbExtra: TSpeedButton
        Left = 656
        ExplicitLeft = 656
      end
      inherited SpbProcurar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 456
      end
    end
  end
  object pgControl: TPageControl
    Left = 0
    Top = 50
    Width = 860
    Height = 317
    ActivePage = tabDetalhe
    Align = alClient
    TabOrder = 2
    OnChanging = pgControlChanging
    ExplicitTop = 33
    ExplicitHeight = 334
    object tabPrincipal: TTabSheet
      Caption = 'Principal'
      OnShow = tabPrincipalShow
      ExplicitHeight = 304
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 852
        Height = 287
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 304
        object cxGrid1: TcxGrid
          Left = 2
          Top = 17
          Width = 848
          Height = 268
          Align = alClient
          TabOrder = 0
          ExplicitHeight = 285
          object cxGrid1DBTableView1: TcxGridDBTableView
            OnDblClick = cxGrid1DBTableView1DblClick
            Navigator.Buttons.CustomButtons = <>
            FindPanel.InfoText = 'Pesquisar por...'
            DataController.DataSource = dsCidadeIBGE
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            object cxGrid1DBTableView1Column3: TcxGridDBColumn
              DataBinding.FieldName = 'CEP'
              MinWidth = 90
              Options.AutoWidthSizable = False
              Width = 90
            end
            object cxGrid1DBTableView1Column1: TcxGridDBColumn
              DataBinding.FieldName = 'UF'
              MinWidth = 45
              Options.AutoWidthSizable = False
              Width = 45
            end
            object cxGrid1DBTableView1Column2: TcxGridDBColumn
              Caption = 'Cidade'
              DataBinding.FieldName = 'CIDADE'
              MinWidth = 270
              Width = 270
            end
            object cxGrid1DBTableView1Column4: TcxGridDBColumn
              Caption = 'Endere'#231'o'
              DataBinding.FieldName = 'ENDERECO'
              Width = 345
            end
            object cxGrid1DBTableView1Column5: TcxGridDBColumn
              Caption = 'Ativado'
              DataBinding.FieldName = 'STATUS'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueGrayed = 'N'
              Properties.ValueUnchecked = 'N'
              MinWidth = 65
              Options.AutoWidthSizable = False
              Width = 65
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
    end
    object tabDetalhe: TTabSheet
      Caption = 'Detalhes'
      ImageIndex = 1
      OnShow = tabDetalheShow
      ExplicitHeight = 304
      object lblCodigo: TLabel
        Left = 13
        Top = 8
        Width = 20
        Height = 15
        Caption = 'CEP'
        FocusControl = EditCodigo
      end
      object lblNome: TLabel
        Left = 208
        Top = 8
        Width = 50
        Height = 15
        Caption = 'Endere'#231'o'
        FocusControl = EditNome
      end
      object Label1: TLabel
        Left = 10
        Top = 55
        Width = 35
        Height = 15
        Caption = 'Bairro'
        FocusControl = EditBairro
      end
      object Label2: TLabel
        Left = 122
        Top = 8
        Width = 24
        Height = 15
        Caption = 'Tipo'
      end
      object Label3: TLabel
        Left = 223
        Top = 55
        Width = 126
        Height = 15
        Caption = 'C'#243'digo IBGE Municipio'
      end
      object Label4: TLabel
        Left = 372
        Top = 53
        Width = 108
        Height = 15
        Caption = 'Nome do Municipio'
      end
      object Label5: TLabel
        Left = 673
        Top = 53
        Width = 83
        Height = 15
        Caption = 'C'#243'digo IBGE UF'
      end
      object Label6: TLabel
        Left = 768
        Top = 53
        Width = 44
        Height = 15
        Caption = 'Sigla UF'
      end
      object Label7: TLabel
        Left = 10
        Top = 100
        Width = 63
        Height = 15
        Caption = #193'rea (Km '#178'):'
      end
      object Label8: TLabel
        Left = 150
        Top = 101
        Width = 59
        Height = 15
        Caption = 'Popula'#231#227'o'
      end
      object EditCodigo: TDBEdit
        Left = 10
        Top = 24
        Width = 109
        Height = 23
        DataField = 'CEP'
        DataSource = dsCidadeIBGE
        TabOrder = 0
      end
      object EditNome: TDBEdit
        Left = 208
        Top = 24
        Width = 617
        Height = 23
        DataField = 'ENDERECO'
        DataSource = dsCidadeIBGE
        TabOrder = 1
      end
      object rgStatus: TDBRadioGroup
        Left = 568
        Top = 102
        Width = 257
        Height = 38
        Caption = 'Status'
        Columns = 2
        DataField = 'STATUS'
        DataSource = dsCidadeIBGE
        Items.Strings = (
          'Ativado'
          'Desativado')
        TabOrder = 2
        Values.Strings = (
          'S'
          'N')
      end
      object EditBairro: TDBEdit
        Left = 10
        Top = 72
        Width = 207
        Height = 23
        DataField = 'BAIRRO'
        DataSource = dsCidadeIBGE
        TabOrder = 3
      end
      object EditCodigoIBGE: TDBEdit
        Left = 223
        Top = 72
        Width = 143
        Height = 23
        CharCase = ecUpperCase
        DataField = 'CIDADE_CODIGO'
        DataSource = dsCidadeIBGE
        TabOrder = 4
      end
      object EditMunicipio: TDBEdit
        Left = 372
        Top = 72
        Width = 291
        Height = 23
        CharCase = ecUpperCase
        DataField = 'CIDADE'
        DataSource = dsCidadeIBGE
        MaxLength = 200
        TabOrder = 5
      end
      object EditCodigoIBGEUF: TDBEdit
        Left = 672
        Top = 72
        Width = 90
        Height = 23
        CharCase = ecUpperCase
        DataField = 'UF_CODIGO'
        DataSource = dsCidadeIBGE
        TabOrder = 6
      end
      object EditUF: TDBEdit
        Left = 770
        Top = 72
        Width = 55
        Height = 23
        CharCase = ecUpperCase
        DataField = 'UF'
        DataSource = dsCidadeIBGE
        MaxLength = 200
        TabOrder = 7
      end
      object CEPProcurar: TIDBEditDialog
        Left = 484
        Top = 166
        Width = 79
        Height = 23
        HelpKeyWord = ''
        Color = clWindow
        Enabled = True
        TabOrder = 8
        Text = '0'
        Visible = False
        EditType = etNumeric
        LabelCaption = 'CEP'
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
        DataField = 'CEP'
        SQLdbRetornoVazio = ' *** '
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_IBGEMUNICIPIO'
          'WHERE'
          '%WHERE%')
        CountQuery.Strings = (
          'SELECT COUNT(*) FROM CAD_IBGEMUNICIPIO'
          'WHERE'
          '%WHERE%')
        SearchDialogFieldList = <
          item
            FieldName = 'CEP'
            WhereSyntax = 'CEP'
            DisplayLabel = 'CEP:'
            DisplayWidth = 10
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'CIDADE'
            WhereSyntax = 'CIDADE'
            DisplayLabel = 'CIDADE:'
            DisplayWidth = 30
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'UF'
            WhereSyntax = 'UF'
            DisplayLabel = 'UF:'
            DisplayWidth = 5
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
            DisplayLabel = 'TIPO:'
            DisplayWidth = 15
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'ENDERECO'
            WhereSyntax = 'ENDERECO'
            DisplayLabel = 'ENDERE'#199'O:'
            DisplayWidth = 25
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'BAIRRO'
            WhereSyntax = 'BAIRRO'
            DisplayLabel = 'BAIRRO:'
            DisplayWidth = 15
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
      object DBAdvEdit1: TDBEdit
        Left = 10
        Top = 118
        Width = 117
        Height = 23
        CharCase = ecUpperCase
        DataField = 'AREAKM2'
        DataSource = dsCidadeIBGE
        TabOrder = 9
      end
      object DBAdvEdit2: TDBEdit
        Left = 150
        Top = 118
        Width = 117
        Height = 23
        CharCase = ecUpperCase
        DataField = 'POPULACAO'
        DataSource = dsCidadeIBGE
        TabOrder = 10
      end
      object EditTipo: TDBEdit
        Left = 123
        Top = 24
        Width = 81
        Height = 23
        CharCase = ecUpperCase
        DataField = 'TIPO'
        DataSource = dsCidadeIBGE
        MaxLength = 200
        TabOrder = 11
      end
    end
  end
  object dbCidadeIBGE: TFDQuery
    OnNewRecord = dbCidadeIBGENewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_IBGEMUNICIPIO'
      'ORDER BY UF, CIDADE, CEP')
    Left = 352
    Top = 240
  end
  object dsCidadeIBGE: TDataSource
    DataSet = dbCidadeIBGE
    Left = 352
    Top = 264
  end
end
