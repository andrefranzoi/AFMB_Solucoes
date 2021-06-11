inherited FrmAtividades: TFrmAtividades
  Caption = ''
  ClientHeight = 429
  OnDestroy = FormDestroy
  ExplicitHeight = 468
  PixelsPerInch = 96
  TextHeight = 15
  inherited FrmFrameBarra1: TFrmFrameBarra
    Height = 50
    ExplicitHeight = 50
    inherited Image3: TImage
      Height = 50
      ExplicitHeight = 53
    end
    inherited pnTitulo: TPanel
      Height = 44
      ExplicitHeight = 47
      inherited LblBarraTitulo: TLabel
        Height = 34
        Caption = 'Ramo de Atividade'
        ExplicitWidth = 193
        ExplicitHeight = 37
      end
      inherited Image1: TImage
        Height = 34
        ExplicitHeight = 37
      end
      inherited Image2: TImage
        Height = 34
        ExplicitLeft = 862
        ExplicitHeight = 37
      end
    end
  end
  inherited FrmFrameBotoes1: TFrmFrameBotoes
    Top = 369
    ExplicitTop = 369
    inherited PanelBotoesBottom: TPanel
      inherited SpbAdicionar: TSpeedButton
        ExplicitLeft = 0
      end
      inherited SpbEditar: TSpeedButton
        ExplicitLeft = 200
      end
      inherited SpbCancelar: TSpeedButton
        ExplicitLeft = 300
      end
      inherited SpbSalvar: TSpeedButton
        ExplicitLeft = 100
      end
      inherited SpbExcluir: TSpeedButton
        ExplicitLeft = 400
      end
      inherited SpbImprimir: TSpeedButton
        ExplicitLeft = 600
      end
      inherited SpbProcurar: TSpeedButton
        ExplicitLeft = 500
      end
    end
  end
  inherited dbEditPesquisar: TIDBEditDialog
    SearchQuery.Strings = (
      'SELECT * FROM CAD_ATIVIDADES'
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
    Top = 50
    Height = 319
    ExplicitTop = 53
    ExplicitHeight = 316
    inherited tabPrincipal: TTabSheet
      ExplicitHeight = 286
      inherited GroupBox1: TGroupBox
        Height = 289
        ExplicitHeight = 286
        inherited cxGrid: TcxGrid
          Height = 270
          ExplicitHeight = 267
        end
      end
    end
    inherited tabDetalhe: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 922
      ExplicitHeight = 286
    end
  end
  inherited dbTabela: TFDQuery
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM CAD_ATIVIDADES')
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
end
