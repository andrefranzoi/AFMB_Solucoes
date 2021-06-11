inherited FrmGrupos: TFrmGrupos
  Caption = ''
  ClientHeight = 429
  OnDestroy = FormDestroy
  ExplicitHeight = 468
  PixelsPerInch = 96
  TextHeight = 15
  inherited FrmFrameBarra1: TFrmFrameBarra
    Color = 16024898
    inherited Image3: TImage
      ExplicitWidth = 655
    end
    inherited pnTitulo: TPanel
      inherited LblBarraTitulo: TLabel
        Caption = 'Grupo de Mercadorias'
        ExplicitTop = 2
        ExplicitWidth = 787
        ExplicitHeight = 25
      end
      inherited Image2: TImage
        ExplicitLeft = 599
      end
    end
  end
  inherited FrmFrameBotoes1: TFrmFrameBotoes
    Top = 369
    ExplicitTop = 369
  end
  inherited dbEditPesquisar: TIDBEditDialog
    SearchQuery.Strings = (
      'SELECT * FROM CAD_GRUPO'
      'WHERE'
      '%WHERE%')
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
          inherited cxGridDados: TcxGridDBTableView
            inherited cxGridDadosNome: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRICAO'
            end
          end
        end
      end
    end
    inherited tabDetalhe: TTabSheet
      ExplicitHeight = 289
      inherited EditNome: TDBEdit
        DataField = 'DESCRICAO'
      end
    end
  end
  inherited dbTabela: TFDQuery
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM CAD_GRUPO')
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
end
