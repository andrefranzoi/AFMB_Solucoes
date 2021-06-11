object FrmProdutosQuantidade: TFrmProdutosQuantidade
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Atualizar estoque'
  ClientHeight = 480
  ClientWidth = 925
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 416
    Width = 925
    Height = 64
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 416
    ExplicitWidth = 925
    ExplicitHeight = 64
    inherited PanelBotoesBottom: TPanel
      Width = 915
      Height = 58
      ExplicitWidth = 915
      ExplicitHeight = 58
      inherited SpbAdicionar: TSpeedButton
        Height = 54
        Visible = False
        ExplicitLeft = 6
        ExplicitHeight = 54
      end
      inherited SpbEditar: TSpeedButton
        Height = 54
        Visible = False
        ExplicitLeft = 206
        ExplicitHeight = 54
      end
      inherited SpbCancelar: TSpeedButton
        Height = 54
        Visible = False
        ExplicitLeft = 306
        ExplicitHeight = 54
      end
      inherited SpbSalvar: TSpeedButton
        Height = 54
        Visible = False
        ExplicitLeft = 106
        ExplicitHeight = 54
      end
      inherited SpbExcluir: TSpeedButton
        Height = 54
        Visible = False
        ExplicitLeft = 406
        ExplicitHeight = 54
      end
      inherited SpbImprimir: TSpeedButton
        Height = 54
        ExplicitLeft = 606
        ExplicitHeight = 54
      end
      inherited SpbSair: TSpeedButton
        Left = 811
        Height = 54
        ExplicitLeft = 796
        ExplicitHeight = 54
      end
      inherited SpbExtra: TSpeedButton
        Left = 721
        Height = 54
        ExplicitLeft = 706
        ExplicitHeight = 54
      end
      inherited SpbProcurar: TSpeedButton
        Height = 54
        Visible = False
        ExplicitLeft = 506
        ExplicitHeight = 54
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 66
    Width = 925
    Height = 72
    Align = alTop
    TabOrder = 0
    ExplicitTop = 49
    object EditPesquisa: TLabeledEdit
      Left = 19
      Top = 27
      Width = 361
      Height = 21
      AutoSize = False
      CharCase = ecUpperCase
      EditLabel.Width = 153
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo ou Descri'#231#227'o do Produto'
      LabelSpacing = 1
      MaxLength = 35
      TabOrder = 0
      OnChange = EditPesquisaChange
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 925
    Height = 50
    Align = alTop
    Constraints.MinHeight = 50
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 925
    inherited Image3: TImage
      Width = 925
      ExplicitTop = 33
      ExplicitWidth = 745
    end
    inherited pnTitulo: TPanel
      Width = 919
      Constraints.MinHeight = 27
      ExplicitWidth = 919
      ExplicitHeight = 27
      inherited LblBarraTitulo: TLabel
        Width = 768
        Caption = 'Digita'#231#227'o da quantidade de estoque'
        ExplicitWidth = 371
        ExplicitHeight = 25
      end
      inherited Image1: TImage
        ExplicitLeft = 854
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 857
        ExplicitLeft = 689
        ExplicitHeight = 31
      end
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 50
    Width = 925
    Height = 16
    Align = alTop
    TabOrder = 3
    ExplicitTop = 33
  end
  object dbGrid_Produtos: TDBGrid
    Left = 0
    Top = 138
    Width = 925
    Height = 278
    Align = alClient
    DataSource = DS_Referencia
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Color = clSilver
        Expanded = False
        FieldName = 'REFERENCIA'
        ReadOnly = True
        Title.Caption = 'Refer'#234'ncia:'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o:'
        Width = 479
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUESALDO'
        Title.Caption = 'Estoque Atual:'
        Width = 107
        Visible = True
      end>
  end
  object db_referencias: TFDQuery
    BeforeInsert = db_referenciasBeforeInsert
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM CAD_PRODUTOS'
      'where'
      'UPPER(REFERENCIA) LIKE UPPER(:Procurar)'
      'or'
      'UPPER(DESCRICAO) LIKE UPPER(:Procurar)'
      ''
      'ORDER BY REFERENCIA')
    Left = 328
    Top = 120
    ParamData = <
      item
        Name = 'PROCURAR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object DS_Referencia: TDataSource
    DataSet = db_referencias
    Left = 180
    Top = 120
  end
end
