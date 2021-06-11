inherited FrmDepartamentos: TFrmDepartamentos
  Caption = ''
  ClientHeight = 429
  OnDestroy = FormDestroy
  ExplicitHeight = 468
  PixelsPerInch = 96
  TextHeight = 15
  inherited FrmFrameBarra1: TFrmFrameBarra
    inherited Image3: TImage
      ExplicitHeight = 50
    end
    inherited pnTitulo: TPanel
      ExplicitHeight = 44
      inherited LblBarraTitulo: TLabel
        Caption = 'Cadastro de Centro de Custos'
        ExplicitWidth = 304
        ExplicitHeight = 34
      end
      inherited Image1: TImage
        ExplicitHeight = 34
      end
      inherited Image2: TImage
        ExplicitHeight = 34
      end
    end
  end
  inherited FrmFrameBotoes1: TFrmFrameBotoes
    Top = 369
    ExplicitTop = 369
  end
  inherited dbEditPesquisar: TIDBEditDialog
    SearchQuery.Strings = (
      'SELECT * FROM CAD_DEPARTAMENTOS'
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
    Height = 319
    ExplicitTop = 50
    ExplicitHeight = 336
    inherited tabPrincipal: TTabSheet
      ExplicitHeight = 306
      inherited GroupBox1: TGroupBox
        Height = 289
        ExplicitHeight = 306
        inherited cxGrid: TcxGrid
          Height = 270
          ExplicitHeight = 287
        end
      end
    end
    inherited tabDetalhe: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 922
      ExplicitHeight = 306
    end
  end
  inherited dbTabela: TFDQuery
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM CAD_DEPARTAMENTOS')
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
end
