inherited FrmRegioesCaracteristicas: TFrmRegioesCaracteristicas
  Caption = 'Caracter'#237'sticas Regionais'
  ClientHeight = 429
  ExplicitHeight = 468
  PixelsPerInch = 96
  TextHeight = 15
  inherited FrmFrameBarra1: TFrmFrameBarra
    inherited pnTitulo: TPanel
      inherited LblBarraTitulo: TLabel
        Caption = 'Caracter'#237'sticas Regionais'
        ExplicitWidth = 254
      end
    end
  end
  inherited FrmFrameBotoes1: TFrmFrameBotoes
    Top = 369
    ExplicitTop = 369
  end
  inherited dbEditPesquisar: TIDBEditDialog
    SearchQuery.Strings = (
      'SELECT * FROM CAD_REGIOES_TIPOS'
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
      ExplicitHeight = 306
    end
  end
  inherited dbTabela: TFDQuery
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM CAD_REGIOES_TIPOS')
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
end
