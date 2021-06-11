inherited FrmFormaPagto: TFrmFormaPagto
  Caption = 'Formas de Pagamento'
  ClientHeight = 579
  ClientWidth = 1014
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  ExplicitWidth = 1030
  ExplicitHeight = 618
  PixelsPerInch = 96
  TextHeight = 15
  inherited FrmFrameBarra1: TFrmFrameBarra
    Width = 1014
    ExplicitWidth = 1014
    inherited Image3: TImage
      Width = 1014
      ExplicitWidth = 1014
      ExplicitHeight = 60
    end
    inherited pnTitulo: TPanel
      Width = 1008
      ExplicitWidth = 1008
      ExplicitHeight = 44
      inherited LblBarraTitulo: TLabel
        Width = 857
        Caption = 'Formas de Pagamento'
        ExplicitWidth = 889
        ExplicitHeight = 47
      end
      inherited Image1: TImage
        ExplicitHeight = 44
      end
      inherited Image2: TImage
        Left = 946
        ExplicitLeft = 958
        ExplicitHeight = 44
      end
    end
  end
  inherited FrmFrameBotoes1: TFrmFrameBotoes
    Top = 519
    Width = 1014
    ExplicitTop = 519
    ExplicitWidth = 1014
    inherited PanelBotoesBottom: TPanel
      Width = 1004
      ExplicitWidth = 1004
      inherited SpbAdicionar: TSpeedButton
        ExplicitLeft = 110
      end
      inherited SpbEditar: TSpeedButton
        ExplicitLeft = 310
      end
      inherited SpbCancelar: TSpeedButton
        ExplicitLeft = 410
      end
      inherited SpbSalvar: TSpeedButton
        ExplicitLeft = 210
      end
      inherited SpbExcluir: TSpeedButton
        ExplicitLeft = 510
      end
      inherited SpbImprimir: TSpeedButton
        ExplicitLeft = 710
      end
      inherited SpbSair: TSpeedButton
        Left = 900
        ExplicitLeft = 900
      end
      inherited SpbExtra: TSpeedButton
        Left = 810
        ExplicitLeft = 810
      end
      inherited SpbProcurar: TSpeedButton
        ExplicitLeft = 610
      end
    end
  end
  inherited dbEditPesquisar: TIDBEditDialog
    SearchQuery.Strings = (
      'SELECT * FROM CAD_FORMAPAGTO'
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
  end
  inherited pgControl: TPageControl
    Width = 1014
    Height = 469
    ExplicitTop = 50
    ExplicitWidth = 1014
    ExplicitHeight = 469
    inherited tabPrincipal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 1006
      ExplicitHeight = 439
      inherited GroupBox1: TGroupBox
        Width = 1006
        Height = 439
        ExplicitWidth = 1006
        ExplicitHeight = 439
        inherited cxGrid: TcxGrid
          Width = 1002
          Height = 420
          ExplicitWidth = 1002
          ExplicitHeight = 420
        end
      end
    end
    inherited tabDetalhe: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 1006
      ExplicitHeight = 439
      object Label7: TLabel [2]
        Left = 174
        Top = 51
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
      object Label5: TLabel [3]
        Left = 93
        Top = 51
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
      object Label1: TLabel [4]
        Left = 254
        Top = 51
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
      object Label4: TLabel [5]
        Left = 325
        Top = 51
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
      inherited rgStatus: TDBRadioGroup
        Top = 354
        Width = 502
        TabOrder = 8
        ExplicitTop = 354
        ExplicitWidth = 502
      end
      object GroupBox2: TGroupBox
        Left = 599
        Top = 8
        Width = 102
        Height = 384
        Caption = 'Prazos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 98
          Height = 367
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
      object DBEdit_Multiplicador: TDBEdit
        Left = 174
        Top = 65
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESCONTO'
        DataSource = dsTabela
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit_indice: TDBEdit
        Left = 93
        Top = 65
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ACRESCIMO'
        DataSource = dsTabela
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 254
        Top = 65
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        DataField = 'VENCIMENTO_DIA'
        DataSource = dsTabela
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 91
        Top = 161
        Width = 502
        Height = 192
        Caption = 'Tipo de pagamento'
        Columns = 2
        DataField = 'TIPO_PAGAMENTO'
        DataSource = dsTabela
        Items.Strings = (
          'Dinheiro'
          'Cheque'
          'Cart'#227'o Credito'
          'Cart'#227'o Debito'
          'Cr'#233'dito Loja'
          'Vale Alimenta'#231#227'o'
          'Vale Refei'#231#227'o'
          'Vale Presente'
          'Vale Combustivel'
          'Duplicata Mercantil'
          'Boleto Banc'#225'rio'
          'Sem Pagamento'
          'Outro')
        TabOrder = 7
        Values.Strings = (
          'FPDINHEIRO'
          'FPCHEQUE'
          'FPCARTAOCREDITO'
          'FPCARTAODEBITO'
          'FPCREDITOLOJA'
          'FPVALEALIMENTACAO'
          'FPVALEREFEICAO'
          'FPVALEPRESENTE'
          'FPVALECOMBUSTIVEL'
          'FPDUPLICATAMERCANTIL'
          'FPBOLETOBANCARIO'
          'FPSEMPAGAMENTO'
          'FPOUTRO')
      end
      object DBEdit3: TDBEdit
        Left = 325
        Top = 65
        Width = 84
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PARCELAMINIMA'
        DataSource = dsTabela
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBRG_arredond: TDBRadioGroup
        Left = 91
        Top = 92
        Width = 502
        Height = 63
        Caption = 'Centavos'
        Columns = 2
        DataField = 'ARREDONDAR'
        DataSource = dsTabela
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Primeira Parcela'
          #218'ltima Parcela')
        ParentFont = False
        TabOrder = 6
        Values.Strings = (
          'P'
          'U')
      end
    end
  end
  inherited dbTabela: TFDQuery
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'select *  from  CAD_FORMAPAGTO'
      'ORDER BY  NOME')
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
  object DS_Prazos: TDataSource
    DataSet = db_FormaPagtoDias
    Left = 423
    Top = 262
  end
  object db_FormaPagtoDias: TFDQuery
    BeforePost = db_FormaPagtoDiasBeforePost
    MasterSource = dsTabela
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
    Left = 424
    Top = 232
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
