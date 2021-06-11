object FrmFormaPagto2: TFrmFormaPagto2
  Left = 0
  Top = 1
  BorderStyle = bsDialog
  Caption = 'Formas de Pagamento'
  ClientHeight = 492
  ClientWidth = 872
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object PgFPagto: TPageControl
    Left = 0
    Top = 50
    Width = 872
    Height = 381
    ActivePage = TabRegistros
    Align = alClient
    TabOrder = 0
    object TabRegistros: TTabSheet
      Caption = 'Registros'
      object cxGrid: TcxGrid
        Left = 0
        Top = 0
        Width = 864
        Height = 351
        Align = alClient
        TabOrder = 0
        object cxGridDados: TcxGridDBTableView
          OnDblClick = cxGridDadosDblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DS_FormaPagto
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OnCustomDrawGroupCell = cxGridDadosCustomDrawGroupCell
          object cxGridDadosCodigo: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'NOME'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object cxGridDadosNome: TcxGridDBColumn
            Caption = 'Acr'#233'scimo'
            DataBinding.FieldName = 'ACRESCIMO'
            Options.AutoWidthSizable = False
            Options.Grouping = False
            Width = 100
          end
          object cxGridDadosStatus: TcxGridDBColumn
            Caption = 'Desconto'
            DataBinding.FieldName = 'DESCONTO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taRightJustify
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            Options.AutoWidthSizable = False
            Width = 100
          end
        end
        object cxGridNivel: TcxGridLevel
          GridView = cxGridDados
        end
      end
    end
    object TabEditar: TTabSheet
      Caption = 'Editar'
      ImageIndex = 1
      object DBRG_arredond: TDBRadioGroup
        Left = 0
        Top = 288
        Width = 864
        Height = 63
        Align = alBottom
        Caption = 'Centavos'
        Columns = 2
        DataField = 'ARREDONDAR'
        DataSource = DS_FormaPagto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Primeira Parcela'
          #218'ltima Parcela')
        ParentFont = False
        TabOrder = 1
        Values.Strings = (
          'P'
          'U')
        Visible = False
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 864
        Height = 288
        Align = alClient
        TabOrder = 0
        object Label7: TLabel
          Left = 86
          Top = 67
          Width = 60
          Height = 13
          Caption = 'Desconto %:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 6
          Top = 16
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 86
          Top = 16
          Width = 28
          Height = 13
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 6
          Top = 67
          Width = 63
          Height = 13
          Caption = 'Acr'#233'scimo %:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 166
          Top = 67
          Width = 35
          Height = 13
          Caption = 'Dia fixo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 237
          Top = 67
          Width = 72
          Height = 13
          Caption = 'Parcela Minima'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit_Multiplicador: TDBEdit
          Left = 86
          Top = 81
          Width = 65
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DESCONTO'
          DataSource = DS_FormaPagto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit_nome: TDBEdit
          Left = 86
          Top = 31
          Width = 307
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = DS_FormaPagto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Left = 6
          Top = 31
          Width = 51
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CODIGO'
          DataSource = DS_FormaPagto
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit_indice: TDBEdit
          Left = 3
          Top = 81
          Width = 65
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ACRESCIMO'
          DataSource = DS_FormaPagto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object GroupBox1: TGroupBox
          Left = 748
          Top = 17
          Width = 102
          Height = 254
          Caption = 'Prazos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          object DBGrid1: TDBGrid
            Left = 2
            Top = 15
            Width = 98
            Height = 237
            Align = alClient
            DataSource = DS_Prazos
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnEnter = DBGrid1Enter
            Columns = <
              item
                Expanded = False
                FieldName = 'DIAS'
                Title.Caption = 'Dias'
                Visible = True
              end>
          end
        end
        object DBCheckBox1: TDBCheckBox
          Left = 8
          Top = 108
          Width = 119
          Height = 17
          Cursor = crHandPoint
          Caption = 'Arredondar Valor'
          DataField = 'ARRED_SN'
          DataSource = DS_FormaPagto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit2: TDBEdit
          Left = 166
          Top = 81
          Width = 65
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VENCIMENTO_DIA'
          DataSource = DS_FormaPagto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 5
          Top = 131
          Width = 390
          Height = 148
          Caption = 'Tipo de pagamento'
          Columns = 2
          DataField = 'TIPO_PAGAMENTO'
          DataSource = DS_FormaPagto
          Items.Strings = (
            'Dinheiro'
            #192' Vista (diversos)'
            'A Prazo'
            'Cartao Credito'
            'Duplicata'
            'Boleto'
            'DDA'
            'Cheque'
            'Carteira'
            'Ticket')
          TabOrder = 7
          Values.Strings = (
            'DINHEIRO'
            'A VISTA'
            'A PRAZO'
            'CARTAO'
            'DUPLICATA'
            'BOLETO'
            'DDA'
            'CHEQUE'
            'CARTEIRA'
            'TICKET')
        end
        object DBEdit3: TDBEdit
          Left = 237
          Top = 81
          Width = 84
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PARCELAMINIMA'
          DataSource = DS_FormaPagto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 431
    Width = 872
    Height = 61
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 431
    ExplicitWidth = 872
    ExplicitHeight = 61
    inherited PanelBotoesBottom: TPanel
      Width = 862
      Height = 55
      ExplicitWidth = 862
      ExplicitHeight = 55
      inherited SpbAdicionar: TSpeedButton
        Height = 51
        ExplicitHeight = 51
      end
      inherited SpbEditar: TSpeedButton
        Height = 51
        ExplicitHeight = 51
      end
      inherited SpbCancelar: TSpeedButton
        Height = 51
        ExplicitHeight = 51
      end
      inherited SpbSalvar: TSpeedButton
        Height = 51
        ExplicitHeight = 51
      end
      inherited SpbExcluir: TSpeedButton
        Height = 51
        ExplicitHeight = 51
      end
      inherited SpbImprimir: TSpeedButton
        Height = 51
        ExplicitHeight = 51
      end
      inherited SpbSair: TSpeedButton
        Left = 758
        Height = 51
        ExplicitLeft = 758
        ExplicitHeight = 51
      end
      inherited SpbExtra: TSpeedButton
        Left = 668
        Height = 51
        ExplicitLeft = 668
        ExplicitHeight = 51
      end
      inherited SpbProcurar: TSpeedButton
        Height = 51
        ExplicitHeight = 51
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 872
    Height = 50
    Align = alTop
    Constraints.MinHeight = 50
    Color = clTeal
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 872
    inherited Image3: TImage
      Width = 872
      ExplicitWidth = 608
    end
    inherited pnTitulo: TPanel
      Width = 866
      Constraints.MinHeight = 27
      ExplicitWidth = 866
      ExplicitHeight = 44
      inherited LblBarraTitulo: TLabel
        Width = 715
        Caption = 'Formas de pagamento'
        ExplicitWidth = 227
        ExplicitHeight = 33
      end
      inherited Image1: TImage
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 804
        ExplicitLeft = 552
        ExplicitHeight = 31
      end
    end
  end
  object DS_FormaPagto: TDataSource
    DataSet = db_FormaPagto
    Left = 295
    Top = 39
  end
  object DS_Prazos: TDataSource
    DataSet = db_FormaPagtoDias
    Left = 391
    Top = 38
  end
  object db_FormaPagto: TFDQuery
    OnNewRecord = db_FormaPagtoNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'select *  from  CAD_FORMAPAGTO'
      'ORDER BY  NOME')
    Left = 292
    Top = 9
    object db_FormaPagtoCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object db_FormaPagtoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 200
    end
    object db_FormaPagtoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      DisplayFormat = '###,##0.00'
    end
    object db_FormaPagtoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object db_FormaPagtoVENCIMENTO_DIA: TIntegerField
      FieldName = 'VENCIMENTO_DIA'
      Origin = 'VENCIMENTO_DIA'
    end
    object db_FormaPagtoTIPO_PAGAMENTO: TStringField
      FieldName = 'TIPO_PAGAMENTO'
      Origin = 'TIPO_PAGAMENTO'
      Size = 200
    end
    object db_FormaPagtoARRED_SN: TStringField
      FieldName = 'ARRED_SN'
      Origin = 'ARRED_SN'
      Size = 10
    end
    object db_FormaPagtoPARCELAMINIMA: TFloatField
      FieldName = 'PARCELAMINIMA'
      Origin = 'PARCELAMINIMA'
    end
    object db_FormaPagtoARREDONDAR: TStringField
      FieldName = 'ARREDONDAR'
      Origin = 'ARREDONDAR'
      Size = 30
    end
  end
  object db_FormaPagtoDias: TFDQuery
    BeforePost = db_FormaPagtoDiasBeforePost
    AfterDelete = db_FormaPagtoDiasAfterDelete
    MasterSource = DS_FormaPagto
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * FROM CAD_FORMAPAGTODIAS'
      'where'
      'CODIGO= :CODIGO'
      'ORDER BY DIAS')
    Left = 392
    Top = 8
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 34
      end>
  end
end
