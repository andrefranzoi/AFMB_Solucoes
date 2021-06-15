inherited FrmSerieDoc: TFrmSerieDoc
  Caption = 'S'#233'ries de Documentos'
  ClientHeight = 529
  OnDestroy = FormDestroy
  ExplicitHeight = 568
  PixelsPerInch = 96
  TextHeight = 15
  inherited FrmFrameBarra1: TFrmFrameBarra
    inherited pnTitulo: TPanel
      inherited LblBarraTitulo: TLabel
        Caption = 'S'#233'ries de Documentos'
      end
    end
  end
  inherited FrmFrameBotoes1: TFrmFrameBotoes
    Top = 469
    ExplicitTop = 469
  end
  inherited dbEditPesquisar: TIDBEditDialog
    SearchQuery.Strings = (
      'SELECT * FROM FIS_SERIEDOC'
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
        FieldName = 'DESCRICAO'
        WhereSyntax = 'DESCRICAO'
        DisplayLabel = 'Descri'#231#227'o'
        DisplayWidth = 200
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'TIPO'
        WhereSyntax = 'TIPO'
        DisplayLabel = 'Tipo'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'SERIE'
        WhereSyntax = 'SERIE'
        DisplayLabel = 'S'#233'rie'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end>
  end
  inherited pgControl: TPageControl
    Height = 419
    ExplicitHeight = 419
    inherited tabPrincipal: TTabSheet
      ExplicitHeight = 389
      inherited GroupBox1: TGroupBox
        Height = 389
        ExplicitHeight = 389
        inherited cxGrid: TcxGrid
          Height = 370
          ExplicitHeight = 370
          inherited cxGridDados: TcxGridDBTableView
            inherited cxGridDadosNome: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'DESCRICAO'
              Width = 481
            end
            object cxGridDadosTIPO: TcxGridDBColumn
              Caption = 'Tipo'
              DataBinding.FieldName = 'TIPO'
              Width = 90
            end
            object cxGridDadosSERIE: TcxGridDBColumn
              Caption = 'S'#233'rie'
              DataBinding.FieldName = 'SERIE'
              Width = 95
            end
            object cxGridDadosPROXIMO_NUMERO: TcxGridDBColumn
              Caption = 'Pr'#243'x. N'#250'mero'
              DataBinding.FieldName = 'PROXIMO_NUMERO'
              Width = 101
            end
          end
        end
      end
    end
    inherited tabDetalhe: TTabSheet
      ExplicitLeft = 5
      ExplicitTop = 29
      ExplicitHeight = 389
      object Label1: TLabel [2]
        Left = 13
        Top = 112
        Width = 24
        Height = 15
        Caption = 'Tipo'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel [3]
        Left = 90
        Top = 112
        Width = 27
        Height = 15
        Caption = 'S'#233'rie'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel [4]
        Left = 217
        Top = 112
        Width = 74
        Height = 15
        Caption = 'Pr'#243'x. N'#250'mero'
        FocusControl = cxDBSpinEdit1
      end
      inherited EditNome: TDBEdit
        DataField = 'DESCRICAO'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 13
        Top = 128
        DataBinding.DataField = 'TIPO'
        DataBinding.DataSource = dsTabela
        TabOrder = 3
        Width = 71
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 90
        Top = 128
        DataBinding.DataField = 'SERIE'
        DataBinding.DataSource = dsTabela
        TabOrder = 4
        Width = 121
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 217
        Top = 128
        DataBinding.DataField = 'PROXIMO_NUMERO'
        DataBinding.DataSource = dsTabela
        TabOrder = 5
        Width = 121
      end
    end
  end
  inherited dbTabela: TFDQuery
    BeforeOpen = dbTabelaBeforeOpen
    SQL.Strings = (
      'SELECT * FROM FIS_SERIEDOC'
      'WHERE'
      'EMPRESA=:EMPRESA')
    Left = 464
    Top = 248
    ParamData = <
      item
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    object dbTabelaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object dbTabelaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dbTabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
    end
    object dbTabelaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object dbTabelaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 10
    end
    object dbTabelaSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object dbTabelaPROXIMO_NUMERO: TIntegerField
      FieldName = 'PROXIMO_NUMERO'
      Origin = 'PROXIMO_NUMERO'
    end
  end
  inherited dsTabela: TDataSource
    Left = 512
    Top = 248
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
end
