inherited FrmTabelaNCM: TFrmTabelaNCM
  Caption = ''
  ClientHeight = 429
  ClientWidth = 941
  OnDestroy = FormDestroy
  ExplicitWidth = 957
  ExplicitHeight = 468
  PixelsPerInch = 96
  TextHeight = 15
  object DBEdit1: TDBEdit [0]
    Left = 156
    Top = 164
    Width = 160
    Height = 23
    DataSource = dsTabela
    TabOrder = 4
  end
  inherited FrmFrameBarra1: TFrmFrameBarra
    Width = 941
    ExplicitWidth = 941
    inherited Image3: TImage
      Width = 941
      ExplicitWidth = 941
    end
    inherited pnTitulo: TPanel
      Width = 935
      ExplicitWidth = 935
      inherited LblBarraTitulo: TLabel
        Width = 784
        Caption = 'Tabela NCM'
        ExplicitWidth = 125
      end
      inherited Image2: TImage
        Left = 873
        ExplicitLeft = 874
      end
    end
  end
  inherited FrmFrameBotoes1: TFrmFrameBotoes
    Top = 369
    Width = 941
    ExplicitTop = 369
    ExplicitWidth = 941
    inherited PanelBotoesBottom: TPanel
      Width = 931
      ExplicitWidth = 931
      inherited SpbAdicionar: TSpeedButton
        ExplicitLeft = 37
      end
      inherited SpbEditar: TSpeedButton
        ExplicitLeft = 237
      end
      inherited SpbCancelar: TSpeedButton
        ExplicitLeft = 337
      end
      inherited SpbSalvar: TSpeedButton
        ExplicitLeft = 137
      end
      inherited SpbExcluir: TSpeedButton
        ExplicitLeft = 437
      end
      inherited SpbImprimir: TSpeedButton
        ExplicitLeft = 637
      end
      inherited SpbSair: TSpeedButton
        Left = 827
        ExplicitLeft = 827
      end
      inherited SpbExtra: TSpeedButton
        Left = 737
        ExplicitLeft = 737
      end
      inherited SpbProcurar: TSpeedButton
        ExplicitLeft = 537
      end
    end
  end
  inherited dbEditPesquisar: TIDBEditDialog
    SearchQuery.Strings = (
      'SELECT * FROM CAD_NCM'
      'WHERE'
      '%WHERE%')
  end
  inherited pgControl: TPageControl
    Width = 941
    Height = 319
    ExplicitWidth = 941
    ExplicitHeight = 336
    inherited tabPrincipal: TTabSheet
      ExplicitWidth = 933
      ExplicitHeight = 306
      inherited GroupBox1: TGroupBox
        Width = 933
        Height = 289
        ExplicitWidth = 933
        ExplicitHeight = 306
        inherited cxGrid: TcxGrid
          Width = 929
          Height = 270
          ExplicitWidth = 929
          ExplicitHeight = 287
          inherited cxGridDados: TcxGridDBTableView
            inherited cxGridDadosCodigo: TcxGridDBColumn
              Caption = 'NCM/SH'
              MinWidth = 130
              Width = 130
            end
            object cxGridDadosColumn1: TcxGridDBColumn [1]
              DataBinding.FieldName = 'CEST'
              MinWidth = 130
              Options.AutoWidthSizable = False
              Width = 130
            end
            inherited cxGridDadosNome: TcxGridDBColumn
              Caption = 'DESCRI'#199#195'O'
              DataBinding.FieldName = 'DESCRICAO'
              Width = 645
            end
            inherited cxGridDadosStatus: TcxGridDBColumn
              Caption = 'ATIVADO'
              MinWidth = 64
            end
          end
        end
      end
    end
    inherited tabDetalhe: TTabSheet
      ExplicitWidth = 933
      ExplicitHeight = 289
      inherited lblCodigo: TLabel
        Width = 45
        Caption = 'NCM/SH'
        ExplicitWidth = 45
      end
      inherited lblNome: TLabel
        Left = 152
        ExplicitLeft = 152
      end
      object Label1: TLabel [2]
        Left = 152
        Top = 88
        Width = 25
        Height = 15
        Caption = 'CEST'
        FocusControl = EditNome
      end
      inherited EditCodigo: TDBEdit
        Width = 136
        Enabled = True
        ExplicitWidth = 136
      end
      inherited EditNome: TDBEdit
        Left = 152
        Top = 255
        Width = 745
        DataField = 'DESCRICAO'
        TabOrder = 6
        Visible = False
        ExplicitLeft = 152
        ExplicitTop = 255
        ExplicitWidth = 745
      end
      inherited rgStatus: TDBRadioGroup
        Left = 10
        Width = 136
        Height = 77
        Columns = 1
        TabOrder = 5
        ExplicitLeft = 10
        ExplicitWidth = 136
        ExplicitHeight = 77
      end
      object DBMemo1: TDBMemo
        Left = 152
        Top = 24
        Width = 745
        Height = 57
        DataField = 'DESCRICAO'
        DataSource = dsTabela
        TabOrder = 1
      end
      object IDBEditDialog1: TIDBEditDialog
        Left = 316
        Top = 105
        Width = 96
        Height = 21
        Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        TabOrder = 3
        Text = ''
        Visible = True
        LabelCaption = 'ID Segmento'
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
        DataField = 'IDSEGMENTO'
        DataSource = dsTabela
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditNomeSegmento
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = ' *** '
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT NOME  FROM CAD_SEGMENTO'
          'WHERE'
          'CODIGO=:CODIGO'
          '')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_SEGMENTO'
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
            DisplayLabel = 'DESCRI'#199#195'O:'
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
      object EditNomeSegmento: TEdit
        Left = 413
        Top = 105
        Width = 484
        Height = 23
        AutoSize = False
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit2: TDBEdit
        Left = 152
        Top = 103
        Width = 158
        Height = 23
        DataField = 'CEST'
        DataSource = dsTabela
        TabOrder = 2
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 152
        Top = 134
        Width = 745
        Height = 59
        Caption = 
          'Indicador de Escala Relevante [conforme Cl'#225'usula 23 do Convenio ' +
          'ICMS 52/2017]'
        Columns = 2
        DataField = 'INDESCALA'
        DataSource = dsTabela
        Items.Strings = (
          'Produzido em Escala Relevante '#9
          'Produzido em Escala N'#195'O Relevante')
        TabOrder = 7
        Values.Strings = (
          'S'
          'N')
      end
    end
  end
  inherited dbTabela: TFDQuery
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM CAD_NCM')
    Left = 48
    Top = 160
  end
  inherited dsTabela: TDataSource
    Left = 48
    Top = 184
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
end
