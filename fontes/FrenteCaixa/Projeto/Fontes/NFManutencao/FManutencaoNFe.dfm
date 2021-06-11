object FrmManutencaoNFe: TFrmManutencaoNFe
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Vendas Emitidas'
  ClientHeight = 551
  ClientWidth = 1103
  Color = clBtnFace
  Constraints.MinHeight = 300
  Constraints.MinWidth = 400
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 512
    Width = 1103
    Height = 39
    Align = alBottom
    TabOrder = 1
    object BtnSair: TBitBtn
      AlignWithMargins = True
      Left = 979
      Top = 4
      Width = 120
      Height = 31
      Align = alRight
      Caption = 'Sair (Esc)'
      TabOrder = 6
      OnClick = BtnSairClick
    end
    object BtnDANFE: TBitBtn
      AlignWithMargins = True
      Left = 130
      Top = 4
      Width = 120
      Height = 31
      Align = alLeft
      Caption = 'DANFE NF...'
      TabOrder = 1
      OnClick = BtnDANFEClick
    end
    object btnReimprimir: TBitBtn
      AlignWithMargins = True
      Left = 382
      Top = 4
      Width = 120
      Height = 31
      Align = alLeft
      Caption = 'Reimprimir Venda...'
      TabOrder = 3
      OnClick = btnReimprimirClick
    end
    object BtnSituacaoSEFAZ: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 120
      Height = 31
      Align = alLeft
      Caption = 'Situa'#231#227'o NFC-e'
      TabOrder = 0
      OnClick = BtnSituacaoSEFAZClick
    end
    object BtnCancelarNFe: TBitBtn
      AlignWithMargins = True
      Left = 508
      Top = 4
      Width = 120
      Height = 31
      Align = alLeft
      Caption = 'Cancelar Venda'
      TabOrder = 4
      OnClick = BtnCancelarNFeClick
    end
    object btnReenviar: TBitBtn
      AlignWithMargins = True
      Left = 256
      Top = 4
      Width = 120
      Height = 31
      Align = alLeft
      Caption = 'Reenviar NF'
      TabOrder = 2
      OnClick = btnReenviarClick
    end
    object btnSATStatus: TBitBtn
      AlignWithMargins = True
      Left = 634
      Top = 4
      Width = 120
      Height = 31
      Align = alLeft
      Caption = 'SAT Status'
      TabOrder = 5
      OnClick = btnSATStatusClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 63
    Width = 1103
    Height = 449
    Align = alClient
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 1101
      Height = 447
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsNFe
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        object cxColunaData: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'EMISSAO'
          MinWidth = 80
          Options.AutoWidthSizable = False
          Width = 80
        end
        object cxColunaDocumento: TcxGridDBColumn
          Caption = 'Nota Fiscal'
          DataBinding.FieldName = 'NOTAFISCAL'
          MinWidth = 80
          Options.AutoWidthSizable = False
          Width = 80
        end
        object cxColunaModelo: TcxGridDBColumn
          Caption = 'Modelo'
          DataBinding.FieldName = 'MODELO'
          MinWidth = 45
          Options.AutoWidthSizable = False
          Width = 45
        end
        object cxColunaTipo: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPONF'
          MinWidth = 70
          Options.AutoWidthSizable = False
          Width = 70
        end
        object cxColunaQTDE: TcxGridDBColumn
          Caption = 'Qtde Total'
          DataBinding.FieldName = 'QTDE_PRODUTOS'
          MinWidth = 80
          Options.AutoWidthSizable = False
          Width = 80
        end
        object cxColunaValor: TcxGridDBColumn
          Caption = 'Valor Total'
          DataBinding.FieldName = 'TOTAL_NF'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          MinWidth = 105
          Options.AutoWidthSizable = False
          Width = 105
        end
        object cxColunaEnviado: TcxGridDBColumn
          Caption = 'Enviado'
          DataBinding.FieldName = 'NFE_TRANSMITIDO'
          MinWidth = 50
          Options.AutoWidthSizable = False
          Width = 62
        end
        object cxColunaChaveNF: TcxGridDBColumn
          Caption = 'Chave de Acesso'
          DataBinding.FieldName = 'NFE_CHAVEACESSO'
          MinWidth = 290
          Options.AutoWidthSizable = False
          Width = 290
        end
        object cxColunaSituacao: TcxGridDBColumn
          Caption = 'Situa'#231#227'o'
          DataBinding.FieldName = 'NFE_SITUACAOSEFAZ'
          MinWidth = 150
          Width = 168
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object pnTitulo: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1097
    Height = 57
    Align = alTop
    Color = 4276288
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
      Width = 1089
      Height = 49
      Align = alClient
      Brush.Color = 4276288
      Pen.Color = 6403220
      Pen.Style = psDot
      Shape = stRoundRect
      ExplicitLeft = 5
      ExplicitTop = 8
      ExplicitWidth = 901
    end
    object lblTitulo: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 4
      Width = 1065
      Height = 49
      Margins.Left = 15
      Margins.Right = 15
      Align = alClient
      Alignment = taCenter
      Caption = 'Vendas Emitidas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -29
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 240
      ExplicitHeight = 34
    end
  end
  object QryNFe: TFDQuery
    AfterPost = QryNFeAfterPost
    Connection = FrmPrincipal.ConnectFirebird
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    SQL.Strings = (
      'SELECT * FROM VENDAS'
      'WHERE'
      'TIPONF IN (:TIPODOCUMENTO) -- NFCE/SAT/PDV'
      'AND TERMINAL=:IDTERMINAL'
      'AND OPERADOR=:IDOPERADOR'
      'ORDER BY CODIGO DESC, EMISSAO DESC, NOTAFISCAL DESC')
    Left = 240
    Top = 176
    ParamData = <
      item
        Name = 'TIPODOCUMENTO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = Null
      end
      item
        Name = 'IDTERMINAL'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDOPERADOR'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object dsNFe: TDataSource
    DataSet = QryNFe
    Left = 320
    Top = 176
  end
  object QryVendaItem: TFDQuery
    Connection = FrmPrincipal.ConnectFirebird
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereAll
    SQL.Strings = (
      'SELECT * FROM VENDAS_ITENS'
      'WHERE'
      'CODIGO=:ID'
      'ORDER BY ITEM, STATUS')
    Left = 241
    Top = 254
    ParamData = <
      item
        Name = 'ID'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end>
  end
end
