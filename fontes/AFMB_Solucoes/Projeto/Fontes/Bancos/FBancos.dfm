inherited FrmBancos: TFrmBancos
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
        Caption = 'Cadastro de Bancos'
        ExplicitWidth = 201
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
      'SELECT * FROM CAD_BANCOS'
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
      inherited lblCodigo: TLabel
        Width = 50
        Caption = 'N'#186' Banco'
        ExplicitWidth = 50
      end
      object SpeedButton1: TSpeedButton [2]
        Left = 69
        Top = 23
        Width = 23
        Height = 24
        Cursor = crHandPoint
        Hint = 'Como liberar campo "C'#243'digo do Produto"'
        Caption = '?'
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      inherited EditCodigo: TDBEdit
        Width = 59
        Enabled = True
        ExplicitWidth = 59
      end
    end
  end
  inherited dbTabela: TFDQuery
    SQL.Strings = (
      'SELECT * FROM CAD_BANCOS'
      'ORDER BY CODIGO')
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
end
