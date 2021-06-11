object FrmProdutos: TFrmProdutos
  Left = 1
  Top = 1
  Width = 1172
  Height = 662
  HorzScrollBar.Range = 1260
  HorzScrollBar.Smooth = True
  HorzScrollBar.Tracking = True
  VertScrollBar.Range = 620
  VertScrollBar.Smooth = True
  VertScrollBar.Tracking = True
  Caption = 'Cadastro de Produtos'
  Color = clWhite
  Constraints.MinHeight = 300
  Constraints.MinWidth = 300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 50
    Width = 1260
    Height = 23
    Align = alTop
    TabOrder = 0
    object CB_Copiar: TCheckBox
      Left = 8
      Top = 2
      Width = 241
      Height = 17
      Cursor = crHandPoint
      Hint = 
        'Aumenta sua produtividade na digita'#231#227'o. Preenche automaticamente' +
        ' a maioria dos campos.'
      Caption = 'Copiar os campos para os novos registros'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 504
    Width = 1260
    Height = 60
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 504
    ExplicitWidth = 1260
    inherited PanelBotoesBottom: TPanel
      Width = 1250
      ExplicitWidth = 1250
      inherited SpbAdicionar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbAdicionarClick
        ExplicitLeft = 360
      end
      inherited SpbEditar: TSpeedButton
        Visible = False
        OnClick = FrmFrameBotoes1SpbEditarClick
        ExplicitLeft = 560
      end
      inherited SpbCancelar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbCancelarClick
        ExplicitLeft = 660
      end
      inherited SpbSalvar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSalvarClick
        ExplicitLeft = 454
        ExplicitTop = 1
        ExplicitHeight = 50
      end
      inherited SpbExcluir: TSpeedButton
        OnClick = FrmFrameBotoes1SpbExcluirClick
        ExplicitLeft = 760
      end
      inherited SpbImprimir: TSpeedButton
        ExplicitLeft = 960
      end
      inherited SpbSair: TSpeedButton
        Left = 1146
        ExplicitLeft = 1150
      end
      inherited SpbExtra: TSpeedButton
        Left = 1056
        ExplicitLeft = 1060
      end
      inherited SpbProcurar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 854
        ExplicitTop = 1
        ExplicitHeight = 50
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 1260
    Height = 50
    Align = alTop
    Constraints.MinHeight = 50
    Color = 16024898
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 1260
    inherited Image3: TImage
      Width = 1260
      ExplicitTop = 33
      ExplicitWidth = 1264
      ExplicitHeight = 60
    end
    inherited pnTitulo: TPanel
      Width = 1254
      ExplicitWidth = 1254
      ExplicitHeight = 44
      inherited LblBarraTitulo: TLabel
        Width = 1103
        Caption = 'Cadastro de Produtos'
        ExplicitWidth = 220
        ExplicitHeight = 33
      end
      inherited Image1: TImage
        ExplicitLeft = 1208
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 1192
        ExplicitLeft = 1208
        ExplicitHeight = 31
      end
    end
  end
  object dbProcurarFichaTecnica: TIDBEditDialog
    Left = 808
    Top = 8
    Width = 65
    Height = 22
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = ''
    Visible = False
    EditType = etAlphaNumeric
    EmptyText = 'Tecle F8'
    FocusColor = clBtnFace
    LabelCaption = '.'
    LabelAlwaysEnabled = True
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.Separator = ';'
    Version = '5.0.0.0'
    ButtonStyle = bsButton
    ButtonWidth = 16
    ButtonHint = 'Procurar...'
    Etched = False
    ButtonCaption = '...'
    ButtonKeyClickBtn = 119
    SQLdbRetornoVazio = '***'
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT *  FROM VIEW_REFERENCIAS'
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'REFERENCIA'
        WhereSyntax = 'REFERENCIA'
        DisplayLabel = 'PRODUTO:'
        DisplayWidth = 16
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end
      item
        FieldName = 'DESCRICAO'
        WhereSyntax = 'DESCRICAO'
        DisplayLabel = 'DESCRI'#199#195'O:'
        DisplayWidth = 52
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end
      item
        FieldName = 'GRUPO_NOME'
        WhereSyntax = 'GRUPO_NOME'
        DisplayLabel = 'GRUPO:'
        DisplayWidth = 18
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end
      item
        FieldName = 'SUBGRUPO_NOME'
        WhereSyntax = 'SUBGRUPO_NOME'
        DisplayLabel = 'SUBGRUPO:'
        DisplayWidth = 18
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end
      item
        FieldName = 'PRC_CUSTO'
        WhereSyntax = 'PRC_CUSTO'
        DisplayLabel = 'PRE'#199'O CUSTO:'
        DisplayFormat = '###,##0.0000'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VALOR_VENDA'
        WhereSyntax = 'VALOR_VENDA'
        DisplayLabel = 'PRE'#199'O VENDA:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'ESTOQUESALDO'
        WhereSyntax = 'ESTOQUESALDO'
        DisplayLabel = 'ESTOQUE ATUAL:'
        DisplayFormat = '###,##0'
        DisplayWidth = 16
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end>
    SearchPresetList = <>
    DialogCaption = 'Pesquisa'
    DialogWidth = 1000
    DialogHeight = 0
    Store = dsFields
    CompareFormatDate = 'DDMMYYYY'
    CompareFormatTime = 'HHMMSS'
    CompareFormatDateTime = 'DDMMYYYY'
    TrueExpression = '1=1'
    DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
    ConnectionDialog = FrmPrincipal.DBConexao
    Connection = FrmPrincipal.DBConexao
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 73
    Width = 1260
    Height = 431
    ActivePage = Tab0
    Align = alClient
    TabOrder = 4
    object Tab0: TTabSheet
      Caption = 'Principal'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1252
        Height = 51
        Align = alTop
        BorderWidth = 1
        TabOrder = 0
        object Label2: TLabel
          Left = 764
          Top = 3
          Width = 70
          Height = 13
          Caption = 'C'#243'digo Pr'#243'prio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Label9: TLabel
          Left = 75
          Top = 3
          Width = 23
          Height = 13
          Hint = 'data do ultimo lan'#231'amento'
          Caption = 'Data'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Label3: TLabel
          Left = 147
          Top = 3
          Width = 55
          Height = 13
          Caption = 'Descri'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Label11: TLabel
          Left = 576
          Top = 3
          Width = 43
          Height = 13
          Hint = 'Unidade de medida'
          Caption = 'Unidade:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Label6: TLabel
          Left = 629
          Top = 3
          Width = 117
          Height = 13
          Caption = 'GTIN (C'#243'digo de Barras)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Label4: TLabel
          Left = 4
          Top = 3
          Width = 11
          Height = 13
          Hint = 'data do ultimo lan'#231'amento'
          Caption = 'ID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object EditCodigoProp: TDBEdit
          Left = 764
          Top = 20
          Width = 150
          Height = 21
          Hint = 
            'C'#243'digo do produto (em parametros do  sistema '#233' possivel modifica' +
            'r o tipo de codifica'#231#227'o)'
          CharCase = ecUpperCase
          DataField = 'REFERENCIA'
          DataSource = dsProduto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnExit = EditCodigoPropExit
        end
        object EditData: TDBEdit
          Left = 75
          Top = 20
          Width = 68
          Height = 21
          Hint = 'Data de cadastro'
          CharCase = ecUpperCase
          DataField = 'DATA'
          DataSource = dsProduto
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object EditDescricao: TDBEdit
          Left = 147
          Top = 20
          Width = 423
          Height = 21
          Hint = 'Nome do produto'
          CharCase = ecUpperCase
          DataField = 'DESCRICAO'
          DataSource = dsProduto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object EditUnidade: TDBEdit
          Left = 576
          Top = 20
          Width = 47
          Height = 21
          Hint = 
            'Unidade de medida (pc=pe'#231'a,  cj=conjunto, m2=metro quadrado, etc' +
            '..)'
          CharCase = ecUpperCase
          DataField = 'UNIDADE'
          DataSource = dsProduto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object DBEdit_CodigoBarra: TDBEdit
          Left = 629
          Top = 20
          Width = 129
          Height = 21
          Hint = 
            'Se nao tiver c'#243'digo de barras, deixe em branco ou escreva: SEM G' +
            'TIN'
          CharCase = ecUpperCase
          DataField = 'CODIGO_BARRA'
          DataSource = dsProduto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 4
          Top = 20
          Width = 68
          Height = 21
          Hint = 'Data de cadastro'
          CharCase = ecUpperCase
          DataField = 'CODIGO'
          DataSource = dsProduto
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 54
        Width = 241
        Height = 346
        Align = alLeft
        Caption = 'Foto do Produto'
        TabOrder = 2
        object Panel4: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 231
          Height = 28
          Align = alTop
          BevelWidth = 2
          TabOrder = 0
          object SpeedButton6: TSpeedButton
            Left = 2
            Top = 2
            Width = 23
            Height = 24
            Cursor = crHandPoint
            Hint = 'colocar foto'
            Align = alLeft
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000C7C7C7C7C7C6
              C7C8C8C8C7C5999192AD9B95D0C6C1D1D3D3C9CCCEC5C6C7C5C6C6C7C7C7C8C8
              C8C8C8C8C7C7C7C8C8C8C8C8C8C5C6C7CECAC79BAFBC28A4D93F95B86F86959E
              999AC0B8B4CDCAC8CBCDCDC7C9C9C6C6C7C7C7C7C7C7C7C7C7C7C7C6C7C6C8C9
              CCC4C045A8D60EBEFE1CCEFF1EBBEF30A4CF518CA67F8993ABA3A2C5BFBDCDCD
              CCCACCCCC7C8C8C7C7C7C5C6C7CDC9C8A6B3BD12B6F222C0F63DD4FB38D8FF36
              DDFF33D5FF35BEE543A1C362899C8C8F95B5ACABCAC5C3CACAC9C2C6C8D1C8C5
              74B2CE0AC3FE29C1F450DFFD50E2FF51DFFB51E0FC50E6FF4CE7FF47D9F946BD
              DC519BB66D8592AFAFB0C6C9CACAC2C04CB9E216CDFF30C5F662E0F459E2F55C
              EEFF62F1FF65ECFF65E9FC67EDFF66F3FF64F3FF4CCBE98097A2CFCDCAB3B9BF
              3BC1EA2AD3FD31CCFAA6D2CBC9B8A198C1B97BD0D171EBF37AF7FF76F2FD75F1
              FC78F3FD74EEFB799EABD4CBC69BB3C03DCFF63CDCFF40D1F7B6E1DCFFD8BCFE
              C3A4F0BB9B93C4C179F0FB89F5FC8BF9FF8CF8FE8DEBEF7AA1ACD3C7C28CB7C7
              49DCFE41D2E756D3FAC4DED7EAC7B6F7D2C1FFD7C0B1C9C27CE0F47DD9F182E1
              F588E1F29EE5E980A4AFD8C4C288BFE53BC5A73BCB6343C581AAE3D1E6D7C8F9
              EAE1FFE4D7B8D1CD88E1F588D9EF83D7F089D2E8A7DEE786A4B07C997539A464
              2DBE564AEC6E41D96061CCCF91E6FFA3DFEBC0DEE3C5EEF1C6FAFEBEF2FAB1ED
              F9A2D5E6AED8E48FA5B129AD3F19C02C27C94238D95D3FDA6440C7814ACBB554
              D2ED59DBFC6CDAF680D9F39AE0F6B4EAF9D0E9EFBAD7E493A7B343BF6025CC45
              1AC43329CB4638D95A46E5693CCD5A749A8D96B9CF64E0F069F6FF66EDFD52D0
              F083A5BBA2BBCBB3BBC1A7BCAA85B08B26A93418C1302CCB4843EB7032CB598E
              9F89CFC3C780C0D276DDED70E9F86AB9CFB6B3B5CBC9C8C8C8C7CACACAD9C6D5
              4CAE590AC22211B5264A9C5882AD8ABEC0BFC9CACAC3C0C0B7BDC5ABBECBBABE
              C3CBC9C8C7C7C8C7C7C7C3C6C3CBC8CA76B07F3FC75C38AA4AA4A7A1D2CAD1C8
              C8C8C6C7C7C8C9C9CBCAC8CEC9C7CBCAC9C7C7C8C8C8C8C8C8C8}
            OnClick = SpeedButton6Click
            ExplicitLeft = 6
            ExplicitTop = 3
            ExplicitHeight = 22
          end
          object SpeedButton7: TSpeedButton
            Left = 206
            Top = 2
            Width = 23
            Height = 24
            Cursor = crHandPoint
            Hint = 'limpar foto'
            Align = alRight
            Glyph.Data = {
              26040000424D2604000000000000360000002800000012000000120000000100
              180000000000F003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFDFDFEFBFBFFFFFFFFFFFFFFF2F2E2D3D3CDCFCFC9E6E6D8FFFFFBFFFF
              FFFFFFFFFBFBFCFEFEFEFFFFFFFEFEFE6E00FEFEFEFFFFFEFDFDFEFFFFFFFFFF
              FEC6C6D56C6CB03E3EAA3838AB3838A83939A25A5A9FAAAABDF9F9F2FFFFFFFC
              FCFDFEFEFEFFFFFF6500FFFFFFFDFDFDFFFFFFF5F5F26F6FB71B1BB32A2AD741
              41ED4B4BF84B4BF84343EE2F2FD61717A84A4A94D6D6D7FFFFFFFCFCFDFEFEFE
              3C00FCFCFDFDFDFFF1F1F44949B21111CF4242FF4747FF4848FF4343FF4343FF
              4747FF4848FF4545FF1A1ACC27278BCFCFD3FFFFFFFDFDFD6900FAFAFDFEFEFC
              6262BB0808D83030FF2929FE2E2EFD2323FD2E2EFE2D2DFE2525FE2A2AFC2D2D
              FD2E2EFF1313D732328DE9E9E6FEFEFF7400FFFFFFB6B6D50202C81B1BFF1414
              FDA1A1FDCACAFF1A1AFD1010FF1515FF0D0DFFB7B7FDBBBBFD1C1CFC1B1BFF00
              00BB7F7FA5FFFFFD2200FEFEF14D4DC00000EF0000FE4A4AFCFFFFFEFFFFFEC4
              C4FE1212FE0000FEACACFEFFFFFDFFFFFF6A6AFD0000FE0101F3252596E8E8E6
              7400CDCDD81F1FCA0000FD0101FC0101FC7676FEFFFFFEFFFFFEBABAFDA8A8FC
              FFFFFEFFFFFF9292FC0606F90101F80000FF0101ACBABAC96C00A8A8DB0E0ED3
              0707FF0D0DFE0C0CFE0000FE7777FFF3F3FEFFFFFEFFFFFEF8F8FE8F8FF90000
              F30000F30000F10101FC0000BFA0A0BC3C00A1A1DA0B0BD52424FE2E2EFD2E2E
              FD2626FF1E1EFFD4D4FDFCFCFDFBFBFEE3E3FD1313F10000F00303F20000EF01
              01F90000C39B9BBB6100AFAFDE1111D43838FD5252FE4646FE4747FFC1C1FFFF
              FFFEFFFFFEFFFFFEFFFFFEC3C3FB1717F20000F00000EF0000F90000BEA7A7C3
              6900DFDFE02121CE3333F97575FE6B6BFECCCCFEFFFFFEFFFFFDB9B9FFA9A9FF
              FFFFFEFFFFFECBCBFC4343F61010F20303F70808AECFCFD95000FFFFF96262CE
              0C0CE78B8BFFA8A8FDFFFFFEFFFFFFCBCBFE8080FE7B7BFFBEBEFFFEFEFDFFFF
              FEB8B8FD8F8FFE2929E93838A7FAFAF56900FEFEFFD7D7E80303CD5353F9B7B7
              FFC6C6FDD7D7FE9F9FFDA8A8FEAAAAFE9D9DFED0D0FDCCCCFDB2B2FE8787FF00
              00B8B3B3CDFFFFFF6900FAFAFDFFFFFE9797DC0000D67171FBD8D8FFCDCDFDC6
              C6FDC3C3FEC2C2FEC5C5FEC7C7FDDADAFFA3A3FF0303CA6767B7FFFFFDFCFCFE
              6400FDFDFDFCFCFEFFFFFE8888DB0000D14545F1BCBCFFEAEAFFF5F5FFF5F5FF
              F0F0FFD0D0FF6E6EF40303C56161BDFAFAF6FCFCFEFDFDFD3C00FFFFFEFEFEFE
              FCFCFEFFFFFFB4B4E22F2FCC0000D52828E34848E84B4BE73636E10A0ACF2222
              BC9E9ED0FFFFFCFFFFFFFDFDFEFFFFFF3C00FEFEFFFFFFFFFEFEFEFCFCFEFFFF
              FFFAFAF7B9B9E08080D86767D96565D67878D4ACACDAF1F1F0FFFFFFFDFDFFFE
              FEFEFFFFFFFEFEFE6900}
            OnClick = SpeedButton7Click
            ExplicitLeft = 218
            ExplicitTop = 3
            ExplicitHeight = 22
          end
        end
        object Panel3: TPanel
          Left = 2
          Top = 49
          Width = 237
          Height = 295
          Align = alClient
          BevelKind = bkTile
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object FotoReferencia: TImage
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 227
            Height = 285
            Hint = 'clique para expandir'
            Align = alClient
            Center = True
            Proportional = True
            Transparent = True
            ExplicitLeft = -4
            ExplicitTop = -3
            ExplicitWidth = 237
          end
        end
      end
      object Panel5: TPanel
        Left = 247
        Top = 51
        Width = 1005
        Height = 352
        Align = alClient
        TabOrder = 1
        object pgDetalhes: TPageControl
          AlignWithMargins = True
          Left = 4
          Top = 63
          Width = 997
          Height = 285
          ActivePage = TabTributacao
          Align = alClient
          TabOrder = 1
          object TabEstoque: TTabSheet
            Caption = 'Estoque/Pre'#231'o'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object GroupBox1: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 240
              Height = 251
              Align = alLeft
              Caption = 'Pre'#231'o'
              TabOrder = 0
              object Label26: TLabel
                Left = 20
                Top = 21
                Width = 73
                Height = 13
                Caption = '&Pre'#231'o de Custo'
                FocusControl = DBEdit_PrcCusto
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label8: TLabel
                Left = 20
                Top = 66
                Width = 44
                Height = 13
                Caption = 'Lucro %:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label20: TLabel
                Left = 20
                Top = 111
                Width = 90
                Height = 13
                Caption = 'Pre'#231'o de Venda:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit_PrcCusto: TDBEdit
                Left = 20
                Top = 39
                Width = 155
                Height = 21
                Hint = 'Pre'#231'o de custo (valor pago pelo produto)'
                CharCase = ecUpperCase
                DataField = 'PRC_CUSTO'
                DataSource = dsProduto
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxLength = 13
                ParentFont = False
                TabOrder = 0
                OnExit = DBEdit_PrcCustoExit
              end
              object DBEdit_MLucro: TDBEdit
                Left = 20
                Top = 82
                Width = 155
                Height = 21
                CharCase = ecUpperCase
                DataField = 'MG_LUCRO'
                DataSource = dsProduto
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxLength = 5
                ParentFont = False
                TabOrder = 1
                OnExit = DBEdit_MLucroExit
              end
              object EditVlrVenda: TDBEdit
                Left = 20
                Top = 128
                Width = 155
                Height = 21
                Hint = 'Pre'#231'o de venda'
                CharCase = ecUpperCase
                DataField = 'PRC_VENDA'
                DataSource = dsProduto
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
            end
            object GroupBox7: TGroupBox
              AlignWithMargins = True
              Left = 249
              Top = 3
              Width = 226
              Height = 251
              Align = alLeft
              Caption = 'Estoque'
              TabOrder = 1
              object Label10: TLabel
                Left = 23
                Top = 24
                Width = 91
                Height = 13
                Hint = 'Estoque minimo de seguran'#231'a comercial'
                Caption = 'Quantidade M'#237'nima'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object Label13: TLabel
                Left = 23
                Top = 64
                Width = 95
                Height = 13
                Hint = 'Estoque minimo de seguran'#231'a para produ'#231'ao'
                Caption = 'Quantidade M'#225'xima'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object Label22: TLabel
                Left = 23
                Top = 104
                Width = 67
                Height = 13
                Hint = 'Saldo atual do produto em estoque'
                Caption = '&Estoque Atual'
                FocusControl = EditQtde
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object DBEdit1: TDBEdit
                Left = 23
                Top = 39
                Width = 105
                Height = 21
                Hint = 'Estoque minimo de seguran'#231'a comercial'
                CharCase = ecUpperCase
                DataField = 'ESTOQUEMINIMO'
                DataSource = dsProduto
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxLength = 13
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
              end
              object DBEdit8: TDBEdit
                Left = 23
                Top = 79
                Width = 105
                Height = 21
                Hint = 'Estoque maximo permitido'
                CharCase = ecUpperCase
                DataField = 'ESTOQUEMAXIMO'
                DataSource = dsProduto
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxLength = 13
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
              end
              object EditQtde: TDBEdit
                Left = 23
                Top = 119
                Width = 105
                Height = 21
                Hint = 'Saldo atual em estoque'
                CharCase = ecUpperCase
                DataField = 'ESTOQUESALDO'
                DataSource = dsProduto
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
              end
            end
          end
          object TabTributacao: TTabSheet
            Caption = 'Tributa'#231#227'o'
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object gpbImpostos: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 983
              Height = 251
              Align = alClient
              Caption = '[ Informa'#231#245'es Fiscais ]'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              object Label7: TLabel
                Left = 10
                Top = 101
                Width = 114
                Height = 13
                Caption = 'CST ICMS (Tabela B)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label1: TLabel
                Left = 508
                Top = 188
                Width = 48
                Height = 13
                Caption = 'ICMS %:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object Label24: TLabel
                Left = 599
                Top = 188
                Width = 36
                Height = 13
                Caption = 'IPI %:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label15: TLabel
                Left = 871
                Top = 188
                Width = 42
                Height = 15
                Caption = 'Frete %:'
                ParentShowHint = False
                ShowHint = True
              end
              object Label5: TLabel
                Left = 755
                Top = 16
                Width = 27
                Height = 13
                Caption = 'CEST'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label37: TLabel
                Left = 695
                Top = 188
                Width = 35
                Height = 13
                Caption = 'PIS %'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object Label16: TLabel
                Left = 10
                Top = 59
                Width = 187
                Height = 13
                Caption = 'Origem da Mercadoria (Tabela A)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label29: TLabel
                Left = 10
                Top = 145
                Width = 100
                Height = 13
                Caption = 'CSOSN  (Tabela B)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label30: TLabel
                Left = 505
                Top = 59
                Width = 41
                Height = 13
                Caption = 'CST IPI'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label31: TLabel
                Left = 505
                Top = 103
                Width = 43
                Height = 13
                Caption = 'CST PIS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label34: TLabel
                Left = 507
                Top = 145
                Width = 64
                Height = 13
                Caption = 'CST COFINS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label35: TLabel
                Left = 781
                Top = 188
                Width = 56
                Height = 13
                Caption = 'COFINS %'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object DBEdit3: TDBEdit
                Left = 508
                Top = 205
                Width = 80
                Height = 23
                Hint = 'Aliquota do ICMS'
                CharCase = ecUpperCase
                DataField = 'ICMS'
                DataSource = dsProduto
                ParentShowHint = False
                ShowHint = True
                TabOrder = 10
              end
              object DBEdit22: TDBEdit
                Left = 599
                Top = 205
                Width = 80
                Height = 23
                Hint = 'Aliquota do IPI'
                CharCase = ecUpperCase
                DataField = 'IPI'
                DataSource = dsProduto
                MaxLength = 5
                TabOrder = 11
              end
              object DBEdit15: TDBEdit
                Left = 871
                Top = 205
                Width = 80
                Height = 23
                Hint = 'Percentual do frete'
                CharCase = ecUpperCase
                DataField = 'PERC_FRETE'
                DataSource = dsProduto
                ParentShowHint = False
                ShowHint = True
                TabOrder = 14
              end
              object dbEditPesquisar: TIDBEditDialog
                Left = 10
                Top = 33
                Width = 132
                Height = 23
                Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
                HelpKeyWord = ''
                CharCase = ecUpperCase
                Color = clWindow
                Enabled = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                ShowHint = True
                TabOrder = 0
                Text = ''
                Visible = True
                OnExit = dbEditPesquisarExit
                EmptyText = 'F8'
                LabelCaption = 'Tabela NCM:'
                LabelAlwaysEnabled = True
                LabelFont.Charset = ANSI_CHARSET
                LabelFont.Color = clWindowText
                LabelFont.Height = -11
                LabelFont.Name = 'Tahoma'
                LabelFont.Style = [fsBold]
                Lookup.Separator = ';'
                Version = '5.0.0.0'
                ButtonStyle = bsButton
                ButtonWidth = 16
                ButtonHint = 'Procurar...'
                Etched = False
                ButtonCaption = '...'
                DataField = 'IDNCM'
                DataSource = dsProduto
                ButtonKeyClickBtn = 119
                SQLdbFazBusca = True
                SQLdbFocusControl = EditNomeNCM
                SQLdbCampoRetorno = 'DESCRICAO'
                SQLdbRetornoVazio = '***'
                SQLdbCampoParametro = 'CODIGO'
                SQLdbSQL.Strings = (
                  'SELECT DESCRICAO FROM CAD_NCM'
                  'WHERE'
                  'CODIGO=:CODIGO'
                  '')
                SQLdbMaxLenght = 10
                SearchQuery.Strings = (
                  'SELECT * FROM VIEW_CAD_NCM'
                  'WHERE'
                  '%WHERE%')
                SearchDialogFieldList = <
                  item
                    FieldName = 'CODIGO'
                    WhereSyntax = 'CODIGO'
                    DisplayLabel = 'NCM:'
                    DisplayWidth = 15
                    DisplayColumnWidth = 0
                    FieldType = ftString
                    Search = True
                    EmptyOperation = eoNull
                    DefaultComparison = scBeginsWith
                    SearchCase = scMixed
                  end
                  item
                    FieldName = 'CEST'
                    WhereSyntax = 'CEST'
                    DisplayLabel = 'CEST:'
                    DisplayWidth = 15
                    DisplayColumnWidth = 0
                    FieldType = ftString
                    Search = True
                    EmptyOperation = eoNull
                    DefaultComparison = scBeginsWith
                    SearchCase = scMixed
                  end
                  item
                    FieldName = 'DESCRICAO'
                    WhereSyntax = 'DESCRICAO'
                    DisplayLabel = 'DESCRICAO'
                    DisplayWidth = 65
                    DisplayColumnWidth = 0
                    FieldType = ftString
                    Search = True
                    EmptyOperation = eoNull
                    DefaultComparison = scContains
                    SearchCase = scUpper
                  end
                  item
                    FieldName = 'SEGMENTO'
                    WhereSyntax = 'SEGMENTO'
                    DisplayLabel = 'SEGMENTO'
                    DisplayWidth = 25
                    DisplayColumnWidth = 0
                    FieldType = ftString
                    Search = True
                    EmptyOperation = eoNull
                    DefaultComparison = scContains
                    SearchCase = scUpper
                  end>
                SearchPresetList = <>
                DialogCaption = 'Pesquisa'
                DialogWidth = 800
                DialogHeight = 0
                Store = dsFields
                CompareFormatDate = 'DDMMYYYY'
                CompareFormatTime = 'HHMMSS'
                CompareFormatDateTime = 'DDMMYYYY'
                TrueExpression = '1=1'
                DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
                ConnectionDialog = FrmPrincipal.DBConexao
                Connection = FrmPrincipal.DBConexao
              end
              object EditNomeNCM: TEdit
                Left = 145
                Top = 33
                Width = 604
                Height = 24
                AutoSize = False
                CharCase = ecUpperCase
                Color = clBtnFace
                Enabled = False
                TabOrder = 1
                Text = '***'
              end
              object DBEdit17: TDBEdit
                Left = 755
                Top = 33
                Width = 231
                Height = 23
                DataField = 'IDCEST'
                DataSource = dsProduto
                TabOrder = 2
              end
              object DBEdit18: TDBEdit
                Left = 695
                Top = 205
                Width = 80
                Height = 23
                Hint = 'Percentual do frete'
                CharCase = ecUpperCase
                DataField = 'PIS'
                DataSource = dsProduto
                ParentShowHint = False
                ShowHint = True
                TabOrder = 12
              end
              object cxDBLookupComboBox1: TcxDBLookupComboBox
                Left = 10
                Top = 118
                DataBinding.DataField = 'IDCSTICMS'
                DataBinding.DataSource = dsProduto
                Properties.ClearKey = 46
                Properties.DropDownWidth = 750
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    Caption = 'C'#243'digo'
                    MinWidth = 65
                    FieldName = 'ID'
                  end
                  item
                    Caption = 'Descri'#231#227'o'
                    MinWidth = 400
                    Width = 400
                    FieldName = 'NOME'
                  end>
                Properties.ListFieldIndex = 1
                Properties.ListSource = dsCSTICMS
                TabOrder = 4
                Width = 480
              end
              object cxDBLookupComboBox2: TcxDBLookupComboBox
                Left = 10
                Top = 76
                DataBinding.DataField = 'IDCSTORIGEM'
                DataBinding.DataSource = dsProduto
                Properties.ClearKey = 46
                Properties.DropDownWidth = 750
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    Caption = 'C'#243'digo'
                    MinWidth = 65
                    FieldName = 'ID'
                  end
                  item
                    Caption = 'Descri'#231#227'o'
                    MinWidth = 400
                    Width = 400
                    FieldName = 'NOME'
                  end>
                Properties.ListFieldIndex = 1
                Properties.ListSource = dsOrigemProduto
                TabOrder = 3
                Width = 480
              end
              object cxDBLookupComboBox3: TcxDBLookupComboBox
                Left = 10
                Top = 162
                DataBinding.DataField = 'IDCSOSNICMS'
                DataBinding.DataSource = dsProduto
                Properties.ClearKey = 46
                Properties.DropDownWidth = 750
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    Caption = 'C'#243'digo'
                    MinWidth = 65
                    FieldName = 'ID'
                  end
                  item
                    Caption = 'Descri'#231#227'o'
                    MinWidth = 400
                    Width = 400
                    FieldName = 'NOME'
                  end>
                Properties.ListFieldIndex = 1
                Properties.ListSource = dsCSOSN
                TabOrder = 5
                Width = 480
              end
              object cxDBLookupComboBox4: TcxDBLookupComboBox
                Left = 506
                Top = 76
                DataBinding.DataField = 'IDCSTIPI'
                DataBinding.DataSource = dsProduto
                Properties.ClearKey = 46
                Properties.DropDownWidth = 750
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    Caption = 'C'#243'digo'
                    MinWidth = 65
                    FieldName = 'ID'
                  end
                  item
                    Caption = 'Descri'#231#227'o'
                    MinWidth = 400
                    Width = 400
                    FieldName = 'NOME'
                  end>
                Properties.ListFieldIndex = 1
                Properties.ListSource = dsCSTIPI
                TabOrder = 6
                Width = 480
              end
              object cxDBLookupComboBox5: TcxDBLookupComboBox
                Left = 506
                Top = 120
                DataBinding.DataField = 'IDCSTPIS'
                DataBinding.DataSource = dsProduto
                Properties.ClearKey = 46
                Properties.DropDownWidth = 750
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    Caption = 'C'#243'digo'
                    MinWidth = 65
                    FieldName = 'ID'
                  end
                  item
                    Caption = 'Descri'#231#227'o'
                    MinWidth = 400
                    Width = 400
                    FieldName = 'NOME'
                  end>
                Properties.ListFieldIndex = 1
                Properties.ListSource = dsCSTPIS
                TabOrder = 7
                Width = 480
              end
              object cxDBLookupComboBox6: TcxDBLookupComboBox
                Left = 508
                Top = 162
                DataBinding.DataField = 'IDCSTCOFINS'
                DataBinding.DataSource = dsProduto
                Properties.ClearKey = 46
                Properties.DropDownWidth = 750
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    Caption = 'C'#243'digo'
                    MinWidth = 65
                    FieldName = 'ID'
                  end
                  item
                    Caption = 'Descri'#231#227'o'
                    MinWidth = 400
                    Width = 400
                    FieldName = 'NOME'
                  end>
                Properties.ListFieldIndex = 1
                Properties.ListSource = dsCSTCOFINS
                TabOrder = 8
                Width = 480
              end
              object DBEdit2: TDBEdit
                Left = 781
                Top = 205
                Width = 80
                Height = 23
                Hint = 'Percentual do frete'
                CharCase = ecUpperCase
                DataField = 'COFINS'
                DataSource = dsProduto
                ParentShowHint = False
                ShowHint = True
                TabOrder = 13
              end
              object DBRadioGroup2: TDBRadioGroup
                Left = 10
                Top = 191
                Width = 480
                Height = 39
                Caption = 'Produzido em Escala Relevante'
                Columns = 2
                DataField = 'INDESCALA'
                DataSource = dsProduto
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 9
                Values.Strings = (
                  'S'
                  'N')
              end
            end
          end
          object TabOutrosDados: TTabSheet
            Caption = 'Outros Dados'
            ImageIndex = 4
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object GroupBox9: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 983
              Height = 251
              Align = alClient
              Color = clBtnFace
              ParentBackground = False
              ParentColor = False
              TabOrder = 0
              object Label14: TLabel
                Left = 133
                Top = 180
                Width = 59
                Height = 13
                Caption = 'Peso Liquido'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object Label18: TLabel
                Left = 8
                Top = 102
                Width = 69
                Height = 13
                Caption = #218'ltima Compra'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object Label19: TLabel
                Left = 8
                Top = 142
                Width = 62
                Height = 13
                Caption = 'Ultima Venda'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object Label23: TLabel
                Left = 8
                Top = 180
                Width = 25
                Height = 13
                Caption = 'Lote:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object Label25: TLabel
                Left = 133
                Top = 102
                Width = 44
                Height = 13
                Caption = 'Validade:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object Label17: TLabel
                Left = 133
                Top = 142
                Width = 52
                Height = 13
                Caption = 'Peso Bruto'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object DBEdit12: TDBEdit
                Left = 8
                Top = 117
                Width = 120
                Height = 21
                Hint = 'data da ultimo compra'
                CharCase = ecUpperCase
                DataField = 'DT_ULTIMA_COMPRA'
                DataSource = dsProduto
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
              end
              object DBEdit14: TDBEdit
                Left = 8
                Top = 157
                Width = 120
                Height = 21
                Hint = 'data do ultima venda '
                CharCase = ecUpperCase
                DataField = 'DT_ULTIMA_VENDA'
                DataSource = dsProduto
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 3
              end
              object DBEdit10: TDBEdit
                Left = 8
                Top = 195
                Width = 120
                Height = 21
                Hint = 'data do ultimo lan'#231'amento'
                CharCase = ecUpperCase
                DataField = 'LOTE'
                DataSource = dsProduto
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 4
              end
              object DBEdit16: TDBEdit
                Left = 133
                Top = 117
                Width = 120
                Height = 21
                Hint = 'data do ultimo lan'#231'amento'
                CharCase = ecUpperCase
                DataField = 'DT_VALIDADE'
                DataSource = dsProduto
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 5
              end
              object DBEdit4: TDBEdit
                Left = 133
                Top = 195
                Width = 120
                Height = 21
                Hint = 'tamanho do produto (p, m, g, gg, etc...)'
                CharCase = ecUpperCase
                DataField = 'PESO_LIQUIDO'
                DataSource = dsProduto
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 7
              end
              object DBEdit9: TDBEdit
                Left = 133
                Top = 157
                Width = 120
                Height = 21
                Hint = 'tamanho do produto (p, m, g, gg, etc...)'
                CharCase = ecUpperCase
                DataField = 'PESO'
                DataSource = dsProduto
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 6
              end
              object EditCFOP: TIDBEditDialog
                Left = 8
                Top = 28
                Width = 64
                Height = 21
                HelpKeyWord = ''
                CharCase = ecUpperCase
                Color = clWindow
                Enabled = True
                TabOrder = 0
                Text = ''
                Visible = True
                EditType = etUppercase
                EmptyText = 'F8'
                FocusColor = clWindow
                LabelCaption = 'CFOP (dentro do estado)'
                LabelAlwaysEnabled = True
                LabelFont.Charset = DEFAULT_CHARSET
                LabelFont.Color = clWindowText
                LabelFont.Height = -11
                LabelFont.Name = 'Tahoma'
                LabelFont.Style = []
                Lookup.Separator = ';'
                Version = '5.0.0.0'
                ButtonStyle = bsButton
                ButtonWidth = 16
                ButtonHint = 'Plano de Contas'
                Etched = False
                ButtonCaption = '...'
                DataField = 'CFOPDENTROESTADO'
                DataSource = dsProduto
                ButtonKeyClickBtn = 119
                SQLdbFazBusca = True
                SQLdbFocusControl = NomeCFOP
                SQLdbCampoRetorno = 'DESCRICAO'
                SQLdbRetornoVazio = '***'
                SQLdbCampoParametro = 'CODIGO'
                SQLdbSQL.Strings = (
                  'SELECT * FROM CAD_CFOP'
                  'WHERE'
                  'CODIGO=:CODIGO')
                SQLdbMaxLenght = 10
                SearchQuery.Strings = (
                  'SELECT * FROM CAD_CFOP'
                  'WHERE'
                  '%WHERE%'
                  'ORDER BY CODIGO')
                CountQuery.Strings = (
                  'SELECT COUNT(CODIGO) FROM CAD_CFOP'
                  'WHERE'
                  '%WHERE%'
                  'ORDER BY CODIGO')
                SearchDialogFieldList = <
                  item
                    FieldName = 'CODIGO'
                    WhereSyntax = 'CODIGO'
                    DisplayLabel = 'CFOP'
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
                    DisplayLabel = 'Nome:'
                    DisplayWidth = 70
                    DisplayColumnWidth = 0
                    FieldType = ftString
                    Search = True
                    EmptyOperation = eoNull
                    DefaultComparison = scContains
                    SearchCase = scUpper
                  end
                  item
                    FieldName = 'OPERACAO'
                    WhereSyntax = 'OPERACAO'
                    DisplayLabel = 'Sa'#237'da/Entrada'
                    DisplayWidth = 12
                    DisplayColumnWidth = 0
                    FieldType = ftString
                    Search = False
                    EmptyOperation = eoNull
                    DefaultComparison = scBeginsWith
                    SearchCase = scUpper
                  end>
                SearchPresetList = <>
                DialogCaption = 'Pesquisa'
                DialogWidth = 0
                DialogHeight = 0
                Store = dsFields
                CompareFormatDate = 'DDMMYYYY'
                CompareFormatTime = 'HHMMSS'
                CompareFormatDateTime = 'DDMMYYYY'
                TrueExpression = '1=1'
                DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
                ConnectionDialog = FrmPrincipal.DBConexao
                Connection = FrmPrincipal.DBConexao
              end
              object NomeCFOP: TEdit
                Left = 78
                Top = 29
                Width = 571
                Height = 21
                AutoSize = False
                CharCase = ecUpperCase
                Color = clBtnFace
                Enabled = False
                TabOrder = 8
                Text = '***'
              end
              object IDBEditDialog1: TIDBEditDialog
                Left = 8
                Top = 70
                Width = 64
                Height = 21
                HelpKeyWord = ''
                CharCase = ecUpperCase
                Color = clWindow
                Enabled = True
                TabOrder = 1
                Text = ''
                Visible = True
                EditType = etUppercase
                EmptyText = 'F8'
                FocusColor = clWindow
                LabelCaption = 'CFOP (fora do estado)'
                LabelAlwaysEnabled = True
                LabelFont.Charset = DEFAULT_CHARSET
                LabelFont.Color = clWindowText
                LabelFont.Height = -11
                LabelFont.Name = 'Tahoma'
                LabelFont.Style = []
                Lookup.Separator = ';'
                Version = '5.0.0.0'
                ButtonStyle = bsButton
                ButtonWidth = 16
                ButtonHint = 'Plano de Contas'
                Etched = False
                ButtonCaption = '...'
                DataField = 'CFOPFORAESTADO'
                DataSource = dsProduto
                ButtonKeyClickBtn = 119
                SQLdbFazBusca = True
                SQLdbFocusControl = Edit3
                SQLdbCampoRetorno = 'DESCRICAO'
                SQLdbRetornoVazio = '***'
                SQLdbCampoParametro = 'CODIGO'
                SQLdbSQL.Strings = (
                  'SELECT * FROM CAD_CFOP'
                  'WHERE'
                  'CODIGO=:CODIGO')
                SQLdbMaxLenght = 10
                SearchQuery.Strings = (
                  'SELECT * FROM CAD_CFOP'
                  'WHERE'
                  '%WHERE%'
                  'ORDER BY CODIGO')
                CountQuery.Strings = (
                  'SELECT COUNT(CODIGO) FROM CAD_CFOP'
                  'WHERE'
                  '%WHERE%'
                  'ORDER BY CODIGO')
                SearchDialogFieldList = <
                  item
                    FieldName = 'CODIGO'
                    WhereSyntax = 'CODIGO'
                    DisplayLabel = 'CFOP'
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
                    DisplayLabel = 'Nome:'
                    DisplayWidth = 70
                    DisplayColumnWidth = 0
                    FieldType = ftString
                    Search = True
                    EmptyOperation = eoNull
                    DefaultComparison = scContains
                    SearchCase = scUpper
                  end
                  item
                    FieldName = 'OPERACAO'
                    WhereSyntax = 'OPERACAO'
                    DisplayLabel = 'Sa'#237'da/Entrada'
                    DisplayWidth = 12
                    DisplayColumnWidth = 0
                    FieldType = ftString
                    Search = False
                    EmptyOperation = eoNull
                    DefaultComparison = scBeginsWith
                    SearchCase = scUpper
                  end>
                SearchPresetList = <>
                DialogCaption = 'Pesquisa'
                DialogWidth = 0
                DialogHeight = 0
                Store = dsFields
                CompareFormatDate = 'DDMMYYYY'
                CompareFormatTime = 'HHMMSS'
                CompareFormatDateTime = 'DDMMYYYY'
                TrueExpression = '1=1'
                DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
                ConnectionDialog = FrmPrincipal.DBConexao
                Connection = FrmPrincipal.DBConexao
              end
              object Edit3: TEdit
                Left = 78
                Top = 70
                Width = 571
                Height = 21
                AutoSize = False
                CharCase = ecUpperCase
                Color = clBtnFace
                Enabled = False
                TabOrder = 9
                Text = '***'
              end
              object IDBEditDialog2: TIDBEditDialog
                Left = 259
                Top = 117
                Width = 65
                Height = 21
                HelpKeyWord = ''
                CharCase = ecUpperCase
                Color = clWindow
                Enabled = True
                TabOrder = 10
                Text = ''
                Visible = True
                LabelCaption = 'ID Fornecedor'
                LabelTransparent = True
                LabelAlwaysEnabled = True
                LabelFont.Charset = DEFAULT_CHARSET
                LabelFont.Color = clRed
                LabelFont.Height = -12
                LabelFont.Name = 'Tahoma'
                LabelFont.Style = []
                Lookup.Separator = ';'
                Version = '5.0.0.0'
                ButtonStyle = bsButton
                ButtonWidth = 16
                ButtonHint = 'Procurar...'
                Etched = False
                ButtonCaption = '...'
                DataField = 'FORNECEDOR'
                DataSource = dsProduto
                ButtonKeyClickBtn = 119
                SQLdbFazBusca = True
                SQLdbFocusControl = EditNomeFornecedor
                SQLdbCampoRetorno = 'NOME'
                SQLdbRetornoVazio = '<INFORME O FORNECEDOR, SE HOUVER>'
                SQLdbCampoParametro = 'CODIGO'
                SQLdbSQL.Strings = (
                  'SELECT * FROM CAD_CLIENTES'
                  'WHERE'
                  'TIPO in ('#39'FORNECEDOR'#39','#39'FABRICANTE'#39')'
                  'AND'
                  'COALESCE(ATIVO,'#39'S'#39')<>'#39'N'#39
                  'AND'
                  'CODIGO=:CODIGO')
                SQLdbMaxLenght = 10
                SearchQuery.Strings = (
                  'SELECT * FROM CAD_CLIENTES'
                  'WHERE'
                  'TIPO in ('#39'FORNECEDOR'#39','#39'FABRICANTE'#39')'
                  'AND'
                  'COALESCE(ATIVO,'#39'S'#39')<>'#39'N'#39
                  'AND'
                  '%WHERE%')
                SearchDialogFieldList = <
                  item
                    FieldName = 'CODIGO'
                    WhereSyntax = 'CODIGO'
                    DisplayLabel = 'C'#243'digo:'
                    DisplayWidth = 10
                    DisplayColumnWidth = 0
                    FieldType = ftInteger
                    Search = False
                    EmptyOperation = eoNull
                    DefaultComparison = scEqual
                    SearchCase = scMixed
                  end
                  item
                    FieldName = 'NOME'
                    WhereSyntax = 'NOME'
                    DisplayLabel = 'Nome:'
                    DisplayWidth = 90
                    DisplayColumnWidth = 0
                    FieldType = ftString
                    Search = True
                    EmptyOperation = eoNull
                    DefaultComparison = scContains
                    SearchCase = scUpper
                  end>
                SearchPresetList = <>
                DialogCaption = 'Pesquisa'
                DialogWidth = 0
                DialogHeight = 0
                Store = dsFields
                CompareFormatDate = 'DDMMYYYY'
                CompareFormatTime = 'HHMMSS'
                CompareFormatDateTime = 'DDMMYYYY'
                TrueExpression = '1=1'
                DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
                ConnectionDialog = FrmPrincipal.DBConexao
                Connection = FrmPrincipal.DBConexao
              end
              object EditNomeFornecedor: TEdit
                Left = 330
                Top = 117
                Width = 319
                Height = 22
                CharCase = ecUpperCase
                Color = clBtnFace
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 11
              end
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'Observa'#231#245'es'
            ImageIndex = 3
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object GroupBox2: TGroupBox
              Left = 0
              Top = 0
              Width = 989
              Height = 257
              Align = alClient
              Caption = 'Detalhes'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object DBMemo1: TDBMemo
                Left = 2
                Top = 18
                Width = 985
                Height = 237
                Align = alClient
                DataField = 'DETALHES'
                DataSource = dsProduto
                ScrollBars = ssBoth
                TabOrder = 0
              end
            end
          end
        end
        object grpCabecalho1: TGroupBox
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 997
          Height = 53
          Align = alTop
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label27: TLabel
            Left = 559
            Top = 4
            Width = 92
            Height = 13
            Caption = 'C'#243'd. Prod. Fornec.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object EditGrupo: TIDBEditDialog
            Left = 10
            Top = 20
            Width = 65
            Height = 22
            Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
            HelpKeyWord = ''
            Color = clWindow
            Enabled = True
            ShowHint = True
            TabOrder = 0
            Text = ''
            Visible = True
            LabelCaption = 'Grupo:'
            LabelTransparent = True
            LabelAlwaysEnabled = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Version = '5.0.0.0'
            ButtonStyle = bsButton
            ButtonWidth = 16
            ButtonHint = 'Procurar...'
            Etched = False
            ButtonCaption = '...'
            DataField = 'GRUPO'
            DataSource = dsProduto
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = Edit1
            SQLdbCampoRetorno = 'DESCRICAO '
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT DESCRICAO FROM CAD_GRUPO'
              'WHERE'
              'CODIGO=:CODIGO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_GRUPO'
              'WHERE'
              '%WHERE%')
            CountQuery.Strings = (
              'SELECT COUNT(*) FROM CAD_GRUPO'
              'WHERE'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'C'#243'digo:'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'DESCRICAO'
                WhereSyntax = 'DESCRICAO'
                DisplayLabel = 'Nome:'
                DisplayWidth = 80
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end>
            SearchPresetList = <>
            DialogCaption = 'Pesquisa'
            DialogWidth = 0
            DialogHeight = 0
            Store = dsFields
            CompareFormatDate = 'DDMMYYYY'
            CompareFormatTime = 'HHMMSS'
            CompareFormatDateTime = 'DDMMYYYY'
            TrueExpression = '1=1'
            DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
            ConnectionDialog = FrmPrincipal.DBConexao
            Connection = FrmPrincipal.DBConexao
          end
          object Edit1: TEdit
            Left = 78
            Top = 20
            Width = 200
            Height = 22
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            TabOrder = 1
          end
          object EditSubGrupo: TIDBEditDialog
            Left = 283
            Top = 20
            Width = 65
            Height = 22
            Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
            HelpKeyWord = ''
            Color = clWindow
            Enabled = True
            ShowHint = True
            TabOrder = 2
            Text = ''
            Visible = True
            LabelCaption = 'Subgrupo:'
            LabelTransparent = True
            LabelAlwaysEnabled = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Version = '5.0.0.0'
            ButtonStyle = bsButton
            ButtonWidth = 16
            ButtonHint = 'Procurar...'
            Etched = False
            ButtonCaption = '...'
            DataField = 'SUBGRUPO'
            DataSource = dsProduto
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = Edit2
            SQLdbCampoRetorno = 'DESCRICAO '
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT DESCRICAO FROM CAD_SUBGRUPO'
              'WHERE'
              'CODIGO=:CODIGO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM  CAD_SUBGRUPO'
              'WHERE'
              '%WHERE%')
            CountQuery.Strings = (
              'SELECT COUNT(*) FROM CAD_SUBGRUPO'
              'WHERE'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'C'#243'digo:'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'DESCRICAO'
                WhereSyntax = 'DESCRICAO'
                DisplayLabel = 'Nome:'
                DisplayWidth = 80
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end>
            SearchPresetList = <>
            DialogCaption = 'Pesquisa'
            DialogWidth = 0
            DialogHeight = 0
            Store = dsFields
            CompareFormatDate = 'DDMMYYYY'
            CompareFormatTime = 'HHMMSS'
            CompareFormatDateTime = 'DDMMYYYY'
            TrueExpression = '1=1'
            DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
            ConnectionDialog = FrmPrincipal.DBConexao
            Connection = FrmPrincipal.DBConexao
          end
          object Edit2: TEdit
            Left = 352
            Top = 20
            Width = 200
            Height = 22
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            TabOrder = 3
          end
          object EditCodigoFabricante: TDBEdit
            Left = 556
            Top = 20
            Width = 103
            Height = 21
            Hint = 'C'#243'digo do produto no fornecedor (no sistema dele)'
            CharCase = ecUpperCase
            DataField = 'CODIGO_FABRICANTE'
            DataSource = dsProduto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 665
            Top = 6
            Width = 121
            Height = 40
            Caption = 'Balan'#231'a (peso)'
            Columns = 2
            DataField = 'BALANCA'
            DataSource = dsProduto
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 5
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup4: TDBRadioGroup
            Left = 800
            Top = 3
            Width = 126
            Height = 40
            Caption = '&Status'
            Columns = 2
            DataField = 'ATIVO'
            DataSource = dsProduto
            Items.Strings = (
              'Ativo'
              'Inativo')
            TabOrder = 6
            Values.Strings = (
              'S'
              'N')
          end
        end
      end
    end
  end
  object pnBotoesImportar: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 567
    Width = 1254
    Height = 50
    Align = alBottom
    BevelKind = bkTile
    BevelOuter = bvNone
    Color = clWindowFrame
    ParentBackground = False
    TabOrder = 5
    object lblMensagem: TLabel
      AlignWithMargins = True
      Left = 250
      Top = 3
      Width = 990
      Height = 40
      Margins.Left = 10
      Margins.Right = 10
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = '(Importando XML de NF-e)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitLeft = 875
      ExplicitTop = 0
      ExplicitWidth = 83
      ExplicitHeight = 16
    end
    object btnImpCancelar: TBitBtn
      Left = 120
      Top = 0
      Width = 120
      Height = 46
      Cursor = crHandPoint
      Hint = 'Sair'
      Align = alLeft
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAF9DDD4CDC6B4
        A6A38E7C8A73618168548168548972609A8777B4A599D4CDC8FAF9F9FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F4F3CEBEB1A689729E7F668B70
        5A7F66527F66527F66527F66527F66527F66527F66527F665289725FBDB0A6F4
        F3F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBD1C8A68A739F80679E7F668B705A7F66
        527F66527F66527F66527F66527F66527F66527F66527F66527F66527F665289
        7260D1C8C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFCFCFBC5B3A49F80679F80679E7F668B705A7F66527F66
        527F66527F66527F66527F66527F66527F66527F66527F66527F66527F66527F
        66527F6652B2A397FCFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFCFCFBBDA8979F80679F80679E7F668B705A7F66527F66527F66
        527F66527F66527F66527F66527F66527F66527F66527F66527F66527F66527F
        66527F66527F6652A79688FCFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC5B3A49F80679F80679E7F668B705A7F66527F66527F66527F66
        527F66527F66527F66527F66527F66527F66527F66527F66527F66527F66527F
        66527F66527F66527F6652B2A397FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFDBD1C89F80679F80679F8067CFC1B6E7E2DE9580707F66527F66527F66
        527F66527F66527F66527F66527F66527F66527F66527F66527F6652958070E7
        E2DEC2B6AD7F66527F66527F6652D1C8C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F6F4F3A68A739F80679F80679F8067EDE7E2FFFFFFF4F2F09580707F66527F66
        527F66527F66527F66527F66527F66527F66527F66527F6652958070F4F2F0FF
        FFFFE7E2DF7F66527F66527F6652897260F5F3F2FFFFFFFFFFFFFFFFFFFFFFFF
        CDBDB09F80679F80679F80679F8067AF9581F6F4F2FFFFFFF4F2F09580707F66
        527F66527F66527F66527F66527F66527F66527F6652958070F4F2F0FFFFFFF4
        F2F09580707F66527F66527F66527F6652BDB0A6FFFFFFFFFFFFFFFFFFFAFAF9
        A689729F80679F80679F80679F80679F8067AF9581F6F4F2FFFFFFF4F2F09580
        707F66527F66527F66527F66527F66527F6652958070F4F2F0FFFFFFF4F2F095
        80707F66527F66527F66527F66527F665288715EFAF9F9FFFFFFFFFFFFDDD4CD
        9F80679F80679F80679F80679F80679F80679F8067AF9581F6F4F2FFFFFFF4F2
        F09580707F66527F66527F66527F6652958070F4F2F0FFFFFFF4F2F09580707F
        66527F66527F66527F66527F66527F66527F6652D6CEC8FFFFFFFFFFFFC7B5A6
        9F80679F80679F80679F80679F80679F80679F80679F8067AF9581F6F4F2FFFF
        FFF4F2F09580707F66527F6652958070F4F2F0FFFFFFF4F2F09580707F66527F
        66527F66527F66527F66527F66527F66527F6652B4A599FFFFFFFFFFFFB39B87
        9F80679F80679F80679F80679F80679F80679F80679F80679F8067AF9581F6F4
        F2FFFFFFF4F2F0958070958070F4F2F0FFFFFFF4F2F09580707F66527F66527F
        66527F66527F66527F66527F66527F66527F66529A8777FFFFFFFFFFFFA68A73
        9F80679F80679F80679F80679F80679F80679F80679F80679F80679F8067AF95
        81F6F4F2FFFFFFF4F2F0F4F2F0FFFFFFF4F2F09580707F66527F66527F66527F
        66527F66527F66527F66527F66527F66527F6652897260FFFFFFFFFFFFA08169
        9F80679F80679F80679F80679F80679F80679F80679F80679F80679F80679F80
        67AF9681F6F4F2FFFFFFFFFFFFF4F2F09580707F66527F66527F66527F66527F
        66527F66527F66527F66527F66527F66527F6652816854FFFFFFFFFFFFA08169
        9F80679F80679F80679F80679F80679F80679F80679F80679F80679F80679F80
        67AF9681F6F4F2FFFFFFFFFFFFF4F2F09580707F66527F66527F66527F66527F
        66527F66527F66527F66527F66527F66527F6652816854FFFFFFFFFFFFA68A73
        9F80679F80679F80679F80679F80679F80679F80679F80679F80679F8067AF96
        81F6F4F2FFFFFFF6F4F2F6F4F2FFFFFFF4F2F09580707F66527F66527F66527F
        66527F66527F66527F66527F66527F66527F66528A7360FFFFFFFFFFFFB39B87
        9F80679F80679F80679F80679F80679F80679F80679F80679F8067AF9681F6F4
        F2FFFFFFF6F4F2AF9581AF9581F6F4F2FFFFFFF4F2F09580707F66527F66527F
        66527F66527F66527F66527F66527F66527F6652A28D7CFFFFFFFFFFFFC7B5A6
        9F80679F80679F80679F80679F80679F80679F80679F8067AF9681F6F4F2FFFF
        FFF6F4F2AF95819F80679F8067AF9581F6F4F2FFFFFFF4F2F09580707F66527F
        66527F66527F66527F66527F66527F66528B6F5AC6B4A6FFFFFFFFFFFFDDD5CD
        9F80679F80679F80679F80679F80679F80679F8067AF9681F6F4F2FFFFFFF6F4
        F2AF95819F80679F80679F80679F8067AF9581F6F4F2FFFFFFF4F2F09580707F
        66527F66527F66527F66527F66528B705A9E7F66DFD6CEFFFFFFFFFFFFFAFAF9
        A689729F80679F80679F80679F80679F8067AF9681F6F4F2FFFFFFF6F4F2AF95
        819F80679F80679F80679F80679F80679F8067AF9581F6F4F2FFFFFFF4F2F095
        80707F66527F66527F66528B705A9E7F66A68972FAFAF9FFFFFFFFFFFFFFFFFF
        CDBDB09F80679F80679F80679F8067AF9681F6F4F2FFFFFFF6F4F2AF95819F80
        679F80679F80679F80679F80679F80679F80679F8067AF9581F6F4F2FFFFFFF4
        F2F09580707F66528B705A9E7F669F8067CDBDB0FFFFFFFFFFFFFFFFFFFFFFFF
        F6F4F3A68A739F80679F80679F8067EDE7E2FFFFFFF6F4F2AF95819F80679F80
        679F80679F80679F80679F80679F80679F80679F80679F8067AF9581F6F4F2FF
        FFFFE7E2DF8B705A9E7F669F8067A68A73F6F5F4FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFDCD1C89F80679F80679F8067D1C2B6ECE7E2AF95819F80679F80679F80
        679F80679F80679F80679F80679F80679F80679F80679F80679F8067AF9681ED
        E7E2D0C1B69E7F669F80679F8067DCD2C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC5B3A49F80679F80679F80679F80679F80679F80679F80679F80
        679F80679F80679F80679F80679F80679F80679F80679F80679F80679F80679F
        80679F80679F80679F8067C5B3A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFCFCFCBDA8979F80679F80679F80679F80679F80679F80679F80
        679F80679F80679F80679F80679F80679F80679F80679F80679F80679F80679F
        80679F80679F8067BDA897FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFCFCFCC5B3A49F80679F80679F80679F80679F80679F80
        679F80679F80679F80679F80679F80679F80679F80679F80679F80679F80679F
        80679F8067C5B3A4FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCD1C9A68A739F80679F80679F80679F80
        679F80679F80679F80679F80679F80679F80679F80679F80679F80679F8067A6
        8A73DCD2C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F5F3CDBDB0A689729F80679F80
        679F80679F80679F80679F80679F80679F80679F80679F8067A68972CDBDB0F6
        F5F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAF9DED6CEC7B5
        A6B39B87A68A73A08169A08169A68A73B39B87C7B5A6DFD6CEFAFAF9FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnClick = btnImpCancelarClick
    end
    object btnImpConfirmar: TBitBtn
      Left = 0
      Top = 0
      Width = 120
      Height = 46
      Cursor = crHandPoint
      Hint = '[tecla F5] Salvar registro'
      Align = alLeft
      Caption = 'Confirmar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFAFAFAF0F0F0EAEAEAE9E9E9E9E9E9E9E9E9E9E9E9E9
        E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9EAEAEAF0F0F0FAFAFAFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF0F0F0D1D1D1BEBEBEBCBCBCBCBCBCBCBCBCBCBCBCBC
        BCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBEBEBED0D0D0F0F0F0FAFAFAEFEFEF
        E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9
        E9E9E9E9E9E9E9E9E9E9D9D9D9B88D34B78218B68013B67E0EB87F0EBC8211BB
        8210B87F0DB67D0BB67D0BB67E0EB68013B78218BA8D34EAEAEAEFEFEFCECECE
        BDBDBDBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBC
        BCBCBCBCBCBCBCBCBCBCB7B7B7B78217F6CC8BF2C477F6F9FEFBFCFC91939593
        9698FBFBFBF6F6F6F5F6F6F5F8FDF2C477F6CD8BB78218E9E9E9E9E9E9B88724
        B67E0EB47B09B47A07B47A07B47A07B47A07B47A07B47A08B47B08B47A08B47A
        07B47A07B47A07B47B09B57D0DB47E10F3CA86ECB962EFECE9F6EFE78D87818E
        8882F6EEE4EFE8DEEEE7DFEEEBE8ECB962F3CA87B68116E9E9E9E9E9E9B67E0E
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFB27906F1C987E9B358ECE6E2F1E6DD827B7484
        7D76F0E5D9EBE0D4EAE0D7EBE5E2E9B358F1CA89B68116E9E9E9E9E9E9B47B09
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7C0A6FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDCCAB9B17904F2CA8DE7B053E8CEA9FDFFFFFFFFFFFF
        FFFFFDFDFFFBFCFFFBFDFFE7CDA9E7B053F3CC90B68115E9E9E9E9E9E9B47B08
        FFFFFFD5BCA0D6BCA0D6BDA0D6BDA0D6BDA0D6BDA1D7BFA3D9C1A7D7BFA3D6BD
        A1D6BDA0D6BDA1D8C1A7DDCAB9B27905F3CF93E5AC4CE4AB49E4A945E4A943E4
        A943E4A842E3A842E4A945E4AB49E5AC4CF3D096B68115E9E9E9E9E9E9B47A08
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7BEA3FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDDC8B7B27904F3D29AE4A841E4A73FE3A53AE3A539E3
        A539E3A539E3A539E3A53AE4A73FE4A841F3D39DB68115E9E9E9E9E9E9B47A07
        FFFFFFFFFEFBFFFDF8FFFDF8FFFDF8FFFDF8FFFEF9FFFFFFD6BC9EFFFFFFFFFE
        F9FFFDF8FFFEF9FFFFFFDCC7B3B27904F4D4A2E1A032E7CBA3EAE1E1EAE0DDEA
        E0DDEAE0DDEAE0DDEAE1E1E7CBA3E1A032F4D6A4B68114E9E9E9E9E9E9B47A07
        FFFFFFFFFDF7FFFCF5FFFCF5FFFCF5FFFCF5FFFDF6FFFFFBD6BB9CFFFFFBFFFD
        F6FFFCF5FFFDF6FFFFFFDCC6B0B27904F5D9ACE09924ECE7E6EDE4DBEEE4D9EE
        E4D9EEE4D9EEE4D9EDE4DBECE7E6E09924F6DAAEB68014E9E9E9E9E9E9B47A08
        FFFFFFFFFFF9FFFFF8FFFFF8FFFFF8FFFFF8FFFFF9FFFFFDD6BD9FFFFFFDFFFF
        F9FFFFF8FFFFF9FFFFFFDCC6B1B27904F6DEB7DD9316F0EBE9B2ABA4B4ACA3B4
        ACA4B4ACA4B4ACA3B2ABA4F0EBE9DD9316F7E0B9B68013E9E9E9E9E9E9B47B08
        FFFFFFD4B998D4BA98D5BA99D5BA99D5BA99D5BA9AD7BD9DD8BFA0D7BD9DD5BA
        9AD5BA99D5BA9AD7BE9FDCC7B0B27903F9E5C3DA8D0AF0EEECF3ECE2F5EDE1F5
        EDE2F5EDE2F5EDE1F3ECE2F0EEECDA8D0AFAE6C5B67F12E9E9E9E9E9E9B47A08
        FFFFFFFFFEF3FFFEF3FFFEF3FFFEF3FFFEF3FFFEF4FFFFF8D6BC9BFFFFF8FFFE
        F4FFFEF3FFFEF4FFFFFBDCC5ACB27803FBEBD0D88400F1F2F0B2B0AAB4B1A9B5
        B2AAB5B2AAB4B1A9B2B0AAF1F2F0D88400FBECD3B67F12EAEAEAE9E9E9B47A08
        FFFFFFFFFAEDFEF9ECFEF9ECFEF9ECFEF9ECFFFAEDFFFDF2D5B897FFFDF2FFFA
        EDFEF9ECFFFAEDFFFFF5DAC2A8B27701FDE8C7FBE5C0FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE6C2FFECCDB78114F1F1F1E9E9E9B47A08
        FFFFFFFFF9EAFEF8E9FEF8E9FEF8E9FEF8E9FFF9EAFFFCEFD5B995FFFCEFFFF9
        EAFEF8E9FFF9EAFFFDF1D9C0A2CDA451B07600B07600B07400B17400B27500B1
        7400B07400B07400B07400B17600B47C0AB68013C69F4EFBFBFBE9E9E9B47A08
        FFFFFFFFFBEBFFFAEBFFFBECFFFBECFFFBECFFFBEDFFFEF1D6BA96FFFEF1FFFB
        EDFFFBECFFFBEDFFFEF1D8BD9BFFFDF0FFFDF0FFFDF0FFFDF0FFFDF0DABE9FFF
        FDF0FFFDF0FFFDF0FFFDF0FFFFFFB67E0FE9E9E9FFFFFFFFFFFFE9E9E9B47B08
        FFFFFFD4B48FD4B691D5B692D5B692D5B692D5B692D7B995D8BB98D7B995D5B6
        92D5B692D5B692D7B995D9BB99D8BB99D7BA99D7BA99D8BB9AD9BC9CDABE9FD9
        BC9CD8BB9AD7BA99D7B997FFFFFFB57C0AE9E9E9FFFFFFFFFFFFE9E9E9B47A08
        FFFFFFFFF9E6FFFAE6FFFAE7FFFAE7FFFAE7FFFAE8FFFDECD6B993FFFDECFFFA
        E8FFFAE7FFFAE8FFFDECD7B993FFFDECFFFBE9FFFAE8FFFBE9FFFEECD7B994FF
        FEECFFFBE9FFFAE7FFFAE7FFFFFFB47B08E9E9E9FFFFFFFFFFFFE9E9E9B47A08
        FFFFFFFFF6E0FEF5E0FFF5E0FFF5E0FFF5E0FFF6E1FFF9E6D5B590FFF9E6FFF6
        E1FFF5E0FFF6E1FFF9E6D5B590FFF9E6FFF6E1FFF5E0FFF6E1FFF9E6D5B590FF
        F9E6FFF6E1FEF5E0FFF6E0FFFFFFB47A08E9E9E9FFFFFFFFFFFFE9E9E9B47A08
        FFFFFFFFF5DEFFF3DEFFF4DEFFF4DEFFF4DEFFF5DFFFF8E3D5B68EFFF8E3FFF5
        DFFFF4DEFFF5DFFFF8E3D5B68EFFF8E3FFF5DFFFF4DEFFF5DFFFF8E3D5B68EFF
        F8E3FFF5DFFFF3DEFFF5DEFFFFFFB47A08E9E9E9FFFFFFFFFFFFE9E9E9B47B08
        FFFFFFFFF6DEFFF6DFFFF7E0FFF7E0FFF7E0FFF7E0FFFAE4D5B78EFFFAE4FFF7
        E0FFF7E0FFF7E0FFFAE4D5B78EFFFAE4FFF7E0FFF7E0FFF7E0FFFAE4D5B78EFF
        FAE4FFF7E0FFF6DFFFF6DEFFFFFFB47B08E9E9E9FFFFFFFFFFFFE9E9E9B47B09
        FFFFFFD3B187D3B38AD4B38AD4B38AD4B38AD4B48BD6B68ED7B890D6B68ED4B4
        8BD4B38AD4B48BD6B68ED7B890D6B68ED4B48BD4B38AD4B48BD6B68ED7B890D6
        B68ED4B48BD3B38AD3B187FFFFFFB47B09E9E9E9FFFFFFFFFFFFE9E9E9B47B08
        FFFFFFFFF3D9FFF4DBFFF5DCFFF5DCFFF5DCFFF5DDFFF8E0D5B58CFFF8E0FFF5
        DDFFF5DCFFF5DDFFF8E0D5B58CFFF8E0FFF5DDFFF5DCFFF5DDFFF8E0D5B58CFF
        F8E0FFF5DDFFF4DBFFF3D9FFFFFFB47B08E9E9E9FFFFFFFFFFFFE9E9E9B47A08
        FFFFFFFEF1D3FDF0D3FDF1D4FDF1D4FDF1D4FEF2D5FFF5D9D4B387FFF5D9FEF2
        D5FDF1D4FEF2D5FFF5D9D4B387FFF5D9FEF2D5FDF1D4FEF2D5FFF5D9D4B387FF
        F5D9FEF2D5FDF0D3FEF1D3FFFFFFB47A08E9E9E9FFFFFFFFFFFFE9E9E9B47A08
        FFFFFFFEF0D1FDEFD1FDF0D2FDF0D2FDF0D2FEF1D3FFF4D7D4B286FFF4D7FEF1
        D3FDF0D2FEF1D3FFF4D7D4B286FFF4D7FEF1D3FDF0D2FEF1D3FFF4D7D4B286FF
        F4D7FEF1D3FDEFD1FEF0D1FFFFFFB47A08E9E9E9FFFFFFFFFFFFE9E9E9B47B09
        FFFFFFFFF2D1FFF2D2FFF3D4FFF3D4FFF3D4FFF3D4FFF6D8D7B486FFF6D8FFF3
        D4FFF3D4FFF3D4FFF6D8D7B486FFF6D8FFF3D4FFF3D4FFF3D4FFF6D8D7B486FF
        F6D8FFF3D4FFF2D2FFF2D1FFFFFFB47B09E9E9E9FFFFFFFFFFFFE9E9E9B57B09
        FFFFFFDEB27CE3B47EE4B57FE4B57FE4B57FE3B680E1B783E0B887E1B783E3B6
        80E4B57FE3B680E1B783E0B887E1B783E3B680E4B57FE3B680E1B783E0B887E1
        B783E3B680E3B47EDEB27CFFFFFFB57B09E9E9E9FFFFFFFFFFFFE9E9E9B67B08
        FFFFFF4DC5FF56C8FF58C9FF58C9FF58C9FF56C9FF51CAFFEBB97F51CAFF56C9
        FF58C9FF56C9FF51CAFFEBB97F51CAFF56C9FF58C9FF56C9FF51CAFFEBB97F51
        CAFF56C9FF56C8FF4DC5FFFFFFFFB67B08E9E9E9FFFFFFFFFFFFEAEAEAB67C09
        FFFFFF4CC3FF54C5FF56C6FF56C6FF56C6FF55C6FF4FC6FFE9B5794FC6FF55C6
        FF56C6FF55C6FF4FC6FFE9B5794FC6FF55C6FF56C6FF55C6FF4FC6FFE9B5794F
        C6FF55C6FF54C5FF4CC3FFFFFFFFB67C09EAEAEAFFFFFFFFFFFFF2F2F2B67E0E
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB67E0EF2F2F2FFFFFFFFFFFFFBFBFBCAA65B
        B67E0EB67C09B67B07B67B07B67B07B67B07B67B07B67B08B57B08B67B08B67B
        07B67B07B67B07B67B08B57B08B67B08B67B07B67B07B67B07B67B08B57B08B6
        7B08B67B07B67B07B67C09B67E0ECAA65BFBFBFBFFFFFFFFFFFF}
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      OnClick = btnImpConfirmarClick
    end
  end
  object db_ChecarExistencia: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT COUNT(REFERENCIA)  REGISTROS  FROM CAD_PRODUTOS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'REFERENCIA=:REFERENCIA')
    Left = 605
    Top = 11
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QryProduto: TFDQuery
    BeforeOpen = QryProdutoBeforeOpen
    AfterOpen = QryProdutoAfterOpen
    BeforePost = QryProdutoBeforePost
    AfterPost = QryProdutoAfterPost
    OnNewRecord = QryProdutoNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereAll
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM CAD_PRODUTOS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:IDCODIGO')
    Left = 352
    Top = 8
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDCODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QryCSTICMS: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CADCSTICMS'
      'ORDER BY ID')
    Left = 443
    Top = 208
  end
  object dsCSTICMS: TDataSource
    DataSet = QryCSTICMS
    Left = 500
    Top = 208
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'All (*.gif;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf)|*.gif;*.jpg;*.j' +
      'peg;*.bmp;*.ico;*.emf;*.wmf|GIF Image (*.gif)|*.gif|JPEG Image F' +
      'ile (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bitmaps (*.bmp' +
      ')|*.bmp|Icons (*.ico)|*.ico|Enhanced Metafiles (*.emf)|*.emf|Met' +
      'afiles (*.wmf)|*.wmf'
    Left = 1048
    Top = 200
  end
  object dsANP: TDataSource
    DataSet = QryANP
    Left = 1036
    Top = 384
  end
  object QryANP: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_ANP'
      'ORDER BY DESCRICAO')
    Left = 980
    Top = 384
  end
  object QryOrigemProduto: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CADCSTORIGEM'
      'ORDER BY ID')
    Left = 436
    Top = 280
  end
  object dsOrigemProduto: TDataSource
    DataSet = QryOrigemProduto
    Left = 492
    Top = 280
  end
  object QryCSOSN: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CADCSOSNICMS'
      'ORDER BY ID')
    Left = 436
    Top = 344
  end
  object dsCSOSN: TDataSource
    DataSet = QryCSOSN
    Left = 492
    Top = 344
  end
  object QryCSTPIS: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CADCSTPIS'
      'ORDER BY ID')
    Left = 588
    Top = 208
  end
  object dsCSTPIS: TDataSource
    DataSet = QryCSTPIS
    Left = 644
    Top = 208
  end
  object QryCSTCOFINS: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CADCOFINS'
      'ORDER BY ID')
    Left = 588
    Top = 272
  end
  object dsCSTCOFINS: TDataSource
    DataSet = QryCSTCOFINS
    Left = 644
    Top = 272
  end
  object dsCSTIPI: TDataSource
    DataSet = QryCSTIPI
    Left = 492
    Top = 408
  end
  object QryCSTIPI: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CADCSTIPI'
      'ORDER BY ID')
    Left = 436
    Top = 408
  end
  object ACBrValidador1: TACBrValidador
    TipoDocto = docGTIN
    IgnorarChar = './-'
    Left = 744
    Top = 256
  end
  object dsProduto: TDataSource
    DataSet = QryProduto
    OnStateChange = dsProdutoStateChange
    Left = 432
    Top = 8
  end
  object QryUpdateCodProprio: TFDQuery
    BeforeOpen = QryProdutoBeforeOpen
    AfterOpen = QryProdutoAfterOpen
    BeforePost = QryProdutoBeforePost
    AfterPost = QryProdutoAfterPost
    OnNewRecord = QryProdutoNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereAll
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'UPDATE CAD_PRODUTOS SET '
      'REFERENCIA = CODIGO'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND CODIGO=:IDCODIGO'
      'AND COALESCE(REFERENCIA,'#39#39') = '#39#39' ')
    Left = 1000
    Top = 8
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDCODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QryProdutoFoto: TFDQuery
    BeforePost = QryProdutoFotoBeforePost
    MasterSource = dsProduto
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_PRODUTOS_FOTOS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 347
    Top = 59
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
