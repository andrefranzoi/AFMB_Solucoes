object FrmTransportadoras: TFrmTransportadoras
  Left = 0
  Top = 1
  Width = 876
  Height = 570
  VertScrollBar.Range = 400
  VertScrollBar.Size = 400
  VertScrollBar.Tracking = True
  BorderStyle = bsDialog
  Caption = 'Cadastro de Transportadoras'
  Color = clBtnFace
  Constraints.MinHeight = 570
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 860
    Height = 50
    Align = alTop
    Constraints.MinHeight = 50
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitWidth = 860
    inherited Image3: TImage
      Width = 860
      ExplicitWidth = 845
    end
    inherited pnTitulo: TPanel
      Width = 854
      Constraints.MinHeight = 27
      ExplicitWidth = 854
      ExplicitHeight = 44
      inherited LblBarraTitulo: TLabel
        Width = 703
        Caption = 'Transportadoras'
        ExplicitWidth = 165
        ExplicitHeight = 25
      end
      inherited Image1: TImage
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 792
        ExplicitLeft = 789
        ExplicitHeight = 31
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 468
    Width = 860
    Height = 63
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 468
    ExplicitWidth = 860
    ExplicitHeight = 63
    inherited PanelBotoesBottom: TPanel
      Width = 850
      Height = 57
      ExplicitWidth = 850
      ExplicitHeight = 57
      inherited SpbAdicionar: TSpeedButton
        Height = 53
        ExplicitLeft = -44
        ExplicitHeight = 53
      end
      inherited SpbEditar: TSpeedButton
        Height = 53
        ExplicitLeft = 156
        ExplicitHeight = 53
      end
      inherited SpbCancelar: TSpeedButton
        Height = 53
        ExplicitLeft = 256
        ExplicitHeight = 53
      end
      inherited SpbSalvar: TSpeedButton
        Height = 53
        ExplicitLeft = 56
        ExplicitHeight = 53
      end
      inherited SpbExcluir: TSpeedButton
        Height = 53
        ExplicitLeft = 356
        ExplicitHeight = 53
      end
      inherited SpbImprimir: TSpeedButton
        Height = 53
        ExplicitLeft = 556
        ExplicitHeight = 53
      end
      inherited SpbSair: TSpeedButton
        Left = 746
        Height = 53
        ExplicitLeft = 746
        ExplicitHeight = 53
      end
      inherited SpbExtra: TSpeedButton
        Left = 656
        Height = 53
        ExplicitLeft = 656
        ExplicitHeight = 53
      end
      inherited SpbProcurar: TSpeedButton
        Height = 53
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 456
        ExplicitHeight = 53
      end
    end
  end
  object TransportadoraProcurar: TIDBEditDialog
    Left = 463
    Top = 6
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
      'TIPO='#39'TRANSPORTADORA'#39
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
        DisplayLabel = 'RAZ'#195'O SOCIAL:'
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
  object pgPrincipal: TPageControl
    Left = 0
    Top = 50
    Width = 860
    Height = 418
    ActivePage = TabPrincipal
    Align = alClient
    TabOrder = 3
    object TabPrincipal: TTabSheet
      Caption = 'Dados Cadastrais'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 852
        Height = 390
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label5: TLabel
          Left = 10
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
        object Label7: TLabel
          Left = 10
          Top = 92
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
        object Label68: TLabel
          Left = 10
          Top = 284
          Width = 88
          Height = 15
          Caption = 'E-mail (contato)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label69: TLabel
          Left = 389
          Top = 284
          Width = 90
          Height = 15
          Caption = 'Site (home page)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 10
          Top = 243
          Width = 110
          Height = 15
          Caption = 'Fone (DDD+N'#250'mero)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object lblCNPJ: TLabel
          Left = 269
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
        object lblIE: TLabel
          Left = 428
          Top = 6
          Width = 140
          Height = 15
          Caption = 'Incri'#231#227'o Estadual (ou RG)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 10
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
        object Label40: TLabel
          Left = 128
          Top = 243
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
        object EdRazaoSocial: TDBEdit
          Left = 10
          Top = 64
          Width = 736
          Height = 23
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object EdFantasia: TDBEdit
          Left = 10
          Top = 109
          Width = 736
          Height = 23
          CharCase = ecUpperCase
          DataField = 'NOME_FANTASIA'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit47: TDBEdit
          Left = 49
          Top = 258
          Width = 73
          Height = 23
          DataField = 'FONE'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object DBEdit50: TDBEdit
          Left = 10
          Top = 299
          Width = 354
          Height = 23
          CharCase = ecLowerCase
          DataField = 'EMAIL'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object DBEdit51: TDBEdit
          Left = 389
          Top = 299
          Width = 359
          Height = 23
          CharCase = ecLowerCase
          DataField = 'SITE'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object DBEdit24: TDBEdit
          Left = 10
          Top = 258
          Width = 38
          Height = 23
          DataField = 'DDD_FONE'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object EdRGInscrEst: TDBEdit
          Left = 428
          Top = 24
          Width = 147
          Height = 23
          CharCase = ecUpperCase
          DataField = 'RG_IE'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit9: TDBEdit
          Left = 10
          Top = 24
          Width = 83
          Height = 23
          CharCase = ecUpperCase
          Color = clBtnFace
          DataField = 'CODIGO'
          DataSource = DS_Transportadora
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit59: TDBEdit
          Left = 128
          Top = 258
          Width = 619
          Height = 23
          DataField = 'CONTATO'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object rgpAtivo: TDBRadioGroup
          Left = 611
          Top = 6
          Width = 137
          Height = 41
          Caption = 'Cadastro Ativo'
          Columns = 2
          DataField = 'ATIVO'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 4
          Values.Strings = (
            'S'
            'N')
        end
        object rgTipo: TDBRadioGroup
          Left = 99
          Top = 6
          Width = 164
          Height = 41
          Caption = 'Tipo de Cadastro'
          Columns = 2
          DataField = 'CLASSIFICACAO'
          DataSource = DS_Transportadora
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
          Left = 269
          Top = 24
          DataBinding.DataField = 'CPF_CNPJ'
          DataBinding.DataSource = DS_Transportadora
          TabOrder = 2
          Width = 132
        end
        object grpEnderecoPJ: TGroupBox
          Left = 10
          Top = 138
          Width = 746
          Height = 101
          Caption = '[Endere'#231'o]'
          Color = clBtnFace
          Ctl3D = True
          ParentBackground = False
          ParentColor = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          object Label1: TLabel
            Left = 11
            Top = 14
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
          object Label8: TLabel
            Left = 95
            Top = 14
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
            Top = 14
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
            Top = 14
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
            Top = 55
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
            Top = 55
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
            Top = 55
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
            Top = 55
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
            Top = 55
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
            Top = 30
            Width = 77
            Height = 23
            DataField = 'CEP'
            DataSource = DS_Transportadora
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
            Top = 30
            Width = 50
            Height = 23
            Hint = 'N'#250'mero do Endere'#231'o'
            CharCase = ecUpperCase
            DataField = 'NUMERO'
            DataSource = DS_Transportadora
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
            Top = 30
            Width = 262
            Height = 23
            CharCase = ecUpperCase
            DataField = 'COMPLEMENTO'
            DataSource = DS_Transportadora
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
            Top = 70
            Width = 232
            Height = 23
            CharCase = ecUpperCase
            DataField = 'BAIRRO'
            DataSource = DS_Transportadora
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
            Top = 70
            Width = 83
            Height = 23
            Hint = 'Codigo IBGE da CIDADE'
            CharCase = ecUpperCase
            DataField = 'IDCIDADE'
            DataSource = DS_Transportadora
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
            Top = 70
            Width = 294
            Height = 23
            Hint = 'Tecle F8 para pesquisar'
            CharCase = ecUpperCase
            DataField = 'NOMECIDADE'
            DataSource = DS_Transportadora
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
            Top = 70
            Width = 36
            Height = 23
            CharCase = ecUpperCase
            DataField = 'UF'
            DataSource = DS_Transportadora
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
            Top = 30
            Width = 323
            Height = 23
            Hint = 'N'#250'mero do Endere'#231'o'
            CharCase = ecUpperCase
            DataField = 'ENDERECO'
            DataSource = DS_Transportadora
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
            Top = 70
            Width = 62
            Height = 23
            Hint = 'Codigo IBGE do ESTADO/UF'
            CharCase = ecUpperCase
            DataField = 'CODIGOUF'
            DataSource = DS_Transportadora
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
        end
      end
    end
    object TabObservacoes: TTabSheet
      Caption = 'Observa'#231#245'es'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox20: TGroupBox
        Left = 0
        Top = 0
        Width = 852
        Height = 390
        Align = alClient
        Caption = 'Observa'#231#245'es'
        TabOrder = 0
        object DBRichEdit1: TDBRichEdit
          Left = 2
          Top = 15
          Width = 848
          Height = 373
          Align = alClient
          DataField = 'OBSERVACAO'
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
  object DS_Transportadora: TDataSource
    DataSet = db_Transportadora
    OnStateChange = DS_TransportadoraStateChange
    Left = 293
    Top = 144
  end
  object db_Transportadora: TFDQuery
    AfterOpen = db_TransportadoraAfterOpen
    AfterPost = db_TransportadoraAfterPost
    OnNewRecord = db_TransportadoraNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'CODIGO=:CODIGO'
      'AND'
      'TIPO='#39'TRANSPORTADORA'#39)
    Left = 237
    Top = 144
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object dbClienteAlertas: TFDQuery
    MasterSource = DS_Transportadora
    MasterFields = 'CODIGO'
    DetailFields = 'IDCLIENTE'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'select * from CAD_CLIENTES_ALERTAS'
      'WHERE'
      'IDCLIENTE=:CODIGO')
    Left = 288
    Top = 224
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object dsClienteAlertas: TDataSource
    DataSet = dbClienteAlertas
    Left = 288
    Top = 264
  end
  object dbClienteAnexos: TFDQuery
    MasterSource = DS_Transportadora
    MasterFields = 'CODIGO'
    DetailFields = 'IDCLIENTE'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'select * from CAD_CLIENTES_ANEXOS'
      'WHERE'
      'IDCLIENTE=:CODIGO')
    Left = 376
    Top = 224
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object dsClienteAnexos: TDataSource
    DataSet = dbClienteAnexos
    Left = 376
    Top = 264
  end
  object OpenDialogArquivos: TOpenDialog
    Left = 304
    Top = 163
  end
end
