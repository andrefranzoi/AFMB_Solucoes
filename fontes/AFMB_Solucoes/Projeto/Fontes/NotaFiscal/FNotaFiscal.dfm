object FrmNotaFiscal: TFrmNotaFiscal
  Left = 0
  Top = 0
  Width = 1156
  Height = 707
  HorzScrollBar.Range = 1100
  HorzScrollBar.Smooth = True
  HorzScrollBar.Tracking = True
  VertScrollBar.Range = 660
  VertScrollBar.Smooth = True
  VertScrollBar.Tracking = True
  Caption = 'Emitir NF-e (4.0)'
  Color = clBtnFace
  Constraints.MinHeight = 480
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Calibri'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 1140
    Height = 50
    Align = alTop
    Constraints.MinHeight = 50
    Color = 16024898
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    ExplicitWidth = 1140
    inherited Image3: TImage
      Width = 1140
      ExplicitTop = 33
      ExplicitWidth = 1031
      ExplicitHeight = 42
    end
    inherited pnTitulo: TPanel
      Width = 1134
      Constraints.MinHeight = 33
      ExplicitWidth = 1134
      ExplicitHeight = 44
      inherited LblBarraTitulo: TLabel
        Width = 983
        Caption = 'Emiss'#227'o de Nota Fiscal (NF-e)'
        ExplicitWidth = 291
        ExplicitHeight = 25
      end
      inherited Image1: TImage
        ExplicitLeft = 975
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 1072
        ExplicitLeft = 850
        ExplicitHeight = 31
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 612
    Width = 1140
    Height = 56
    Align = alBottom
    AutoSize = True
    Color = clSilver
    ParentBackground = False
    ParentColor = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 612
    ExplicitWidth = 1140
    ExplicitHeight = 56
    inherited PanelBotoesBottom: TPanel
      Width = 1130
      Height = 50
      Align = alTop
      ExplicitWidth = 1130
      ExplicitHeight = 50
      inherited SpbAdicionar: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Height = 40
        Caption = 'Nova Nota'
        Font.Height = -11
        Font.Name = 'Calibri'
        OnClick = FrmFrameBotoes1SpbAdicionarClick
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitHeight = 44
      end
      inherited SpbEditar: TSpeedButton
        AlignWithMargins = True
        Left = 109
        Top = 3
        Width = 95
        Height = 40
        Font.Height = -11
        Font.Name = 'Calibri'
        OnClick = FrmFrameBotoes1SpbEditarClick
        ExplicitLeft = 109
        ExplicitTop = 1
        ExplicitWidth = 95
        ExplicitHeight = 40
      end
      inherited SpbCancelar: TSpeedButton
        AlignWithMargins = True
        Left = 210
        Top = 3
        Width = 105
        Height = 40
        Font.Height = -11
        Font.Name = 'Calibri'
        ExplicitLeft = 200
        ExplicitTop = 8
        ExplicitWidth = 105
        ExplicitHeight = 44
      end
      inherited SpbSalvar: TSpeedButton
        AlignWithMargins = True
        Left = 321
        Top = 3
        Width = 95
        Height = 40
        Font.Height = -11
        Font.Name = 'Calibri'
        OnClick = FrmFrameBotoes1SpbSalvarClick
        ExplicitLeft = 306
        ExplicitTop = 3
        ExplicitWidth = 95
        ExplicitHeight = 44
      end
      inherited SpbExcluir: TSpeedButton
        AlignWithMargins = True
        Left = 422
        Top = 3
        Width = 95
        Height = 40
        Font.Height = -11
        Font.Name = 'Calibri'
        OnClick = FrmFrameBotoes1SpbExcluirClick
        ExplicitLeft = 407
        ExplicitTop = 3
        ExplicitWidth = 95
        ExplicitHeight = 44
      end
      inherited SpbImprimir: TSpeedButton
        AlignWithMargins = True
        Left = 634
        Top = 3
        Width = 143
        Height = 40
        Caption = 'Enviar NF-e'
        Font.Height = -11
        Font.Name = 'Calibri'
        Visible = True
        OnClick = FrmFrameBotoes1SpbImprimirClick
        ExplicitLeft = 634
        ExplicitTop = 1
        ExplicitWidth = 143
        ExplicitHeight = 40
      end
      inherited SpbSair: TSpeedButton
        AlignWithMargins = True
        Left = 884
        Top = 3
        Width = 95
        Height = 40
        Align = alLeft
        Font.Height = -11
        Font.Name = 'Calibri'
        ExplicitLeft = 831
        ExplicitTop = 3
        ExplicitWidth = 95
        ExplicitHeight = 44
      end
      inherited SpbExtra: TSpeedButton
        AlignWithMargins = True
        Left = 523
        Top = 3
        Width = 105
        Height = 40
        Hint = 'Gerar faturas'
        Align = alLeft
        Caption = 'Faturas (F7)'
        Flat = False
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000060606201919197B2828
          28C6323232F8282828C61919197B060606200000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001919197E00000000212121A5333333FF3333
          33FF333333FF333333FF333333FF212121A50606062000000000000000000000
          0000000000000000000000000000333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF08080828333333FF1919197E333333FF282828C71313
          135F0303030F1313135F282828C7333333FF1919197B00000000000000000000
          0000000000000000000000000000333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF01010105333333FF333333FF333333FF1313135F0000
          000000000000000000001313135F333333FF282828C600000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF333333FF1B1B1B860000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF333333FF333333FF1919
          197E000000001919197E333333FF333333FF333333FF333333FF000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001B1B1B86333333FF333333FF333333FF000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D400000000000000000282828C6333333FF1313135F0000
          000000000000000000001313135F333333FF333333FF333333FF000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001919197B333333FF282828C71313
          135F0303030F1313135F282828C7333333FF1919197E333333FF000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D40000000000000000000000000212121A5333333FF3333
          33FF333333FF333333FF333333FF212121A5000000001919197E000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000060606201919197B2828
          28C6323232F8282828C61919197B060606200000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D4000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Visible = True
        OnClick = FrmFrameBotoes1SpbExtraClick
        ExplicitLeft = 523
        ExplicitTop = 1
        ExplicitWidth = 105
        ExplicitHeight = 40
      end
      inherited SpbProcurar: TSpeedButton
        AlignWithMargins = True
        Left = 783
        Top = 3
        Width = 95
        Height = 40
        Font.Height = -11
        Font.Name = 'Calibri'
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 709
        ExplicitTop = 1
        ExplicitWidth = 95
        ExplicitHeight = 44
      end
    end
    inherited DataSource: TDataSource
      Left = 763
      Top = 8
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 84
    Width = 1134
    Height = 525
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object ScrollBoxNF: TScrollBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1128
      Height = 448
      HorzScrollBar.Increment = 63
      HorzScrollBar.ParentColor = False
      VertScrollBar.Color = clInactiveCaption
      VertScrollBar.ParentColor = False
      VertScrollBar.Range = 800
      Align = alClient
      AutoScroll = False
      Color = clWhite
      ParentColor = False
      TabOrder = 0
      object gbxProduto: TcxGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 135
        Margins.Left = 5
        Margins.Right = 5
        Align = alTop
        Caption = 
          'Procurar Produto: F8 | Tecle "Seta pra baixo" ou "Insert" = Inse' +
          'rir | Gravar/Recalcular ap'#243's digitar: Seta "pra cima" ou "pra ba' +
          'ixo"'
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Calibri'
        Style.Font.Style = []
        Style.Shadow = False
        Style.TextColor = clRed
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 2
        OnEnter = gbxProdutoEnter
        Height = 244
        Width = 1097
        object cxGrid1: TcxGrid
          Left = 2
          Top = 18
          Width = 1093
          Height = 224
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnEnter = cxGrid1Enter
          object cxGridProduto: TcxGridDBTableView
            OnKeyDown = cxGridProdutoKeyDown
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsVendaItem
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Appending = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object cxGridColProduto: TcxGridDBColumn
              Caption = 'Produto'
              DataBinding.FieldName = 'PRODUTO'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Caption = '...'
                  Default = True
                  Glyph.SourceDPI = 96
                  Glyph.Data = {
                    89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
                    610000000B744558745469746C65005A6F6F6D3BCF09FEBC0000035A49444154
                    785E7D936B4C1C7514C57F33BBB0BBBC7641046A2AD0D242B616ABB605D41462
                    7996F8819268254693A6311AF41BA6180214A4055A959AC6588DB18FB0049342
                    237DA821585B405AB1A948080F53A3B5B42C9447175876766699BF5308899F3C
                    C9B92737B9E7E4DE0F1721C40A01D3C79F77EC38F54D5FFBD9B6FEFB67DB6F8A
                    33E7FA27BF6AE9B950FB514B26100C486BF3D547DB015869720BF759BE7475D7
                    B67D37A88EFE392516BD7E616045476E4F0AD7F9FEC0E1A6F39FEEC8C87500B2
                    E1E1FDDA16D660FAA2F9DAE1CEEE31A16ACBE287BE7F44F5C95FC581DAABA2CA
                    D04BBD7F0BEF922A5ABFFD4594D7B95A011B2095967F0D80FCC9C94BDBA31CF6
                    83BBD236D2E41AA4F3C63D0AD2E229CE4B25608DA2A3D7CDF1D62172B2B6E270
                    D85F2B39F0E11EC0E4F3F901904342EC155B926383AEDE9A60CAE3A766FF76E2
                    9F70101F63E3796734492949B83D1A3FDD9CE099D44482ADF652204851140064
                    1D9196B83E8A1F6F8DB3775722F37EC1AC6F9939839884618064E77A6E0C4FB2
                    31218E40403C07981545E5C25BE9C89AA6AFB35ACD3C58505892830C73803925
                    C0BCA61B5C263C44223A3204AFAA116C09C6AF6A9180E1D3305BACC88AE29F5A
                    F269C6908D2BB73D8CCDAA3C547566D4004B0822224CE8928AC36165EEA11763
                    F579004D0BA0EB3AF2C282B767E48F09763A63989D79C0A8C7CFC8829F2509C2
                    C34D58424CDC754FB32DE9318686FFC2E75B1C00960D1845204FBAC74F5DECFC
                    8DF4CD51C44698718FDFC32C544243C1A72A0C8EDE415AD6D8141B46C7C51E3C
                    3313CD802684BE1220019637DEFDECF453290925050569FC7EDF38C3ED61DAD8
                    22CE6E2525CEC106870D97EB32E18B6344DEF9BEFE83CBC34781C573FB5FD065
                    40FDB9ABB9B4EFFAC089A6136D3AD3D3BCEC5CC77BBB9DE427C7B078779C63C7
                    CE10ED1DA2B67433D9D9CF561CC9771E04425F39DD27AFFD810C583372DECECB
                    2EAAE8CA2D3EA4E4141F12D945556A6661D9B56D19FB4A2AB3363474D7BF2AC4
                    40A3B85EBF5754BF94DC08D8FFFB4C1260066C4038605F2561800588284B7FB2
                    BEABB25088DE32D1539927EAF2B71E917617D5201020745851C12A044820B1DA
                    5FE9689081B0779E8EAB28CCDA549E9F9380CB35E6E5FFD0F2FA4E1A3213A87B
                    319E9A8CF8B55323DE4C7EBCEE78EE16AD714F6ACBBF059CA12764F2DBD90000
                    000049454E44AE426082}
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridColProdutoPropertiesButtonClick
              MinWidth = 90
              Options.AutoWidthSizable = False
              Options.Moving = False
              Width = 90
            end
            object cxGridColDescricao: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'DESCRICAO'
              MinWidth = 90
              Options.Editing = False
              Options.Moving = False
              Width = 294
            end
            object cxGridColNCM: TcxGridDBColumn
              DataBinding.FieldName = 'NCM'
              MinWidth = 90
              Options.Editing = False
              Options.AutoWidthSizable = False
              Options.Moving = False
              Width = 90
            end
            object cxGridColCEST: TcxGridDBColumn
              DataBinding.FieldName = 'CEST'
              MinWidth = 70
              Options.Editing = False
              Options.AutoWidthSizable = False
              Options.Moving = False
              Width = 70
            end
            object cxGridColCFOP: TcxGridDBColumn
              DataBinding.FieldName = 'CFOP'
              MinWidth = 60
              Options.AutoWidthSizable = False
              Options.Moving = False
              Width = 60
            end
            object cxGridColUND: TcxGridDBColumn
              DataBinding.FieldName = 'UND'
              MinWidth = 50
              Options.AutoWidthSizable = False
              Options.Moving = False
              Width = 50
            end
            object cxGridColQTD: TcxGridDBColumn
              Caption = 'QTD'
              DataBinding.FieldName = 'QUANTIDADE'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '###,##0'
              Properties.OnEditValueChanged = cxGridColQTDPropertiesEditValueChanged
              MinWidth = 50
              Options.AutoWidthSizable = False
              Options.Moving = False
              Width = 50
            end
            object cxGridColVlUnit: TcxGridDBColumn
              Caption = 'Vl Unit.'
              DataBinding.FieldName = 'VLR_UNIT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.OnEditValueChanged = cxGridColVlUnitPropertiesEditValueChanged
              MinWidth = 80
              Options.AutoWidthSizable = False
              Options.Moving = False
              Width = 80
            end
            object cxGridColVlDesconto: TcxGridDBColumn
              Caption = 'Desconto %'
              DataBinding.FieldName = 'DESCONTO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              MinWidth = 80
              Options.AutoWidthSizable = False
              Options.Moving = False
              Width = 80
            end
            object cxGridColVlrTotal: TcxGridDBColumn
              Caption = 'Valor Total'
              DataBinding.FieldName = 'VLR_TOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              MinWidth = 90
              Options.Editing = False
              Options.AutoWidthSizable = False
              Options.Moving = False
              Width = 90
            end
            object cxGridColICMS: TcxGridDBColumn
              DataBinding.FieldName = 'ICMS'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.AssignedValues.EditFormat = True
              Properties.DisplayFormat = '###,##0.00%'
              MinWidth = 50
              Options.AutoWidthSizable = False
              Options.Moving = False
              Width = 50
            end
            object cxGridColIPI: TcxGridDBColumn
              DataBinding.FieldName = 'IPI'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.AssignedValues.EditFormat = True
              Properties.DisplayFormat = '###,##0.00%'
              MinWidth = 50
              Options.AutoWidthSizable = False
              Options.Moving = False
              Width = 50
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGridProduto
          end
        end
      end
      object BoxCalculo: TGroupBox
        Left = 0
        Top = 382
        Width = 1107
        Height = 99
        Align = alTop
        Caption = 'C'#193'LCULO DO IMPOSTO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        object Label21: TLabel
          Left = 593
          Top = 56
          Width = 69
          Height = 11
          Caption = 'Valor Total da Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label17: TLabel
          Left = 593
          Top = 18
          Width = 91
          Height = 11
          Caption = 'Valor Total dos Produtos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label16: TLabel
          Left = 300
          Top = 18
          Width = 57
          Height = 11
          Caption = 'Base C'#225'lculo ST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label15: TLabel
          Left = 5
          Top = 18
          Width = 92
          Height = 11
          Caption = 'Base de C'#225'lculo do ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label20: TLabel
          Left = 300
          Top = 56
          Width = 91
          Height = 11
          Caption = 'Outras Desp. Acess'#243'rias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label19: TLabel
          Left = 93
          Top = 56
          Width = 59
          Height = 11
          Caption = 'Valor do Seguro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label18: TLabel
          Left = 5
          Top = 56
          Width = 53
          Height = 11
          Caption = 'Valor do Frete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label13: TLabel
          Left = 157
          Top = 18
          Width = 52
          Height = 11
          Caption = 'Valor do ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label29: TLabel
          Left = 444
          Top = 18
          Width = 63
          Height = 11
          Caption = 'Valor do ICMS ST.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label39: TLabel
          Left = 444
          Top = 56
          Width = 61
          Height = 11
          Caption = 'Valor Total do IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label11: TLabel
          Left = 195
          Top = 56
          Width = 70
          Height = 11
          Caption = 'Valor do Desconto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object EFrete: TDBEdit
          Left = 5
          Top = 69
          Width = 84
          Height = 22
          DataField = 'VLR_FRETE'
          DataSource = dsVenda
          TabOrder = 5
        end
        object ebase: TDBEdit
          Left = 5
          Top = 30
          Width = 130
          Height = 22
          Color = clBtnFace
          DataField = 'ICMS_BASECALCULO'
          DataSource = dsVenda
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DbEditICMSSubst: TDBEdit
          Left = 300
          Top = 30
          Width = 130
          Height = 22
          Color = clBtnFace
          DataField = 'ICMS_BASECALCULO_SUBSTITUICAO'
          DataSource = dsVenda
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object eseguro: TDBEdit
          Left = 93
          Top = 69
          Width = 88
          Height = 22
          DataField = 'VLR_SEGURO'
          DataSource = dsVenda
          TabOrder = 6
        end
        object eoutras: TDBEdit
          Left = 300
          Top = 69
          Width = 130
          Height = 22
          DataField = 'VLR_DESPESAS_ASSESSORIAS'
          DataSource = dsVenda
          TabOrder = 8
        end
        object eprod: TDBEdit
          Left = 593
          Top = 30
          Width = 130
          Height = 22
          Color = clBtnFace
          DataField = 'VALOR_PRODUTOS'
          DataSource = dsVenda
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object enota: TDBEdit
          Left = 593
          Top = 69
          Width = 130
          Height = 22
          Color = clBtnFace
          DataField = 'TOTAL_NF'
          DataSource = dsVenda
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit3: TDBEdit
          Left = 157
          Top = 30
          Width = 130
          Height = 22
          Color = clBtnFace
          DataField = 'ICMS_VALOR'
          DataSource = dsVenda
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 444
          Top = 30
          Width = 130
          Height = 22
          Color = clBtnFace
          DataField = 'ICMS_BASECALCULO_SUBSTITUICAO_V'
          DataSource = dsVenda
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 444
          Top = 69
          Width = 130
          Height = 22
          Color = clBtnFace
          DataField = 'IPI_VALOR'
          DataSource = dsVenda
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit14: TDBEdit
          Left = 195
          Top = 69
          Width = 97
          Height = 22
          Color = clBtnFace
          DataField = 'VLR_DESCONTO'
          DataSource = dsVenda
          Enabled = False
          ReadOnly = True
          TabOrder = 7
        end
      end
      object BoxTransportadora: TGroupBox
        Left = 0
        Top = 481
        Width = 1107
        Height = 182
        Align = alTop
        Caption = 'TRANSPORTADOR / VOLUMES TRANSPORTADOS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 4
        object Label30: TLabel
          Left = 373
          Top = 18
          Width = 19
          Height = 11
          Caption = 'Qtde'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label31: TLabel
          Left = 481
          Top = 18
          Width = 29
          Height = 11
          Caption = 'Esp'#233'cie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label32: TLabel
          Left = 593
          Top = 18
          Width = 23
          Height = 11
          Caption = 'Marca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label33: TLabel
          Left = 5
          Top = 56
          Width = 31
          Height = 11
          Caption = 'Numero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label34: TLabel
          Left = 3
          Top = 96
          Width = 42
          Height = 11
          Caption = 'Peso Bruto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label35: TLabel
          Left = 3
          Top = 134
          Width = 49
          Height = 11
          Caption = 'Peso Liquido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Eqtde: TDBEdit
          Left = 373
          Top = 30
          Width = 100
          Height = 22
          Color = clWhite
          DataField = 'FRETE_QUANTIDADE'
          DataSource = dsVenda
          TabOrder = 2
        end
        object Eliquido: TDBEdit
          Left = 3
          Top = 147
          Width = 100
          Height = 22
          Color = clWhite
          DataField = 'FRETE_PLIQUIDO'
          DataSource = dsVenda
          TabOrder = 7
        end
        object Eespecie: TDBEdit
          Left = 481
          Top = 30
          Width = 100
          Height = 22
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'FRETE_ESPECIE'
          DataSource = dsVenda
          TabOrder = 3
        end
        object Emarca: TDBEdit
          Left = 593
          Top = 30
          Width = 130
          Height = 22
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'FRETE_MARCA'
          DataSource = dsVenda
          TabOrder = 4
        end
        object Enumero: TDBEdit
          Left = 5
          Top = 69
          Width = 100
          Height = 22
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'FRETE_NUMERO'
          DataSource = dsVenda
          TabOrder = 5
        end
        object Ebruto: TDBEdit
          Left = 3
          Top = 109
          Width = 100
          Height = 22
          Color = clWhite
          DataField = 'FRETE_PBRUTO'
          DataSource = dsVenda
          TabOrder = 6
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 111
          Top = 56
          Width = 612
          Height = 119
          Caption = 'Frete'
          DataField = 'FRETE'
          DataSource = dsVenda
          Items.Strings = (
            'Contrata'#231#227'o do Frete por conta do Remetente (CIF);'
            'Contrata'#231#227'o do Frete por conta do destinat'#225'rio/remetente (FOB);'
            'Contrata'#231#227'o do Frete por conta de terceiros;'
            'Transporte pr'#243'prio por conta do remetente;'
            'Transporte pr'#243'prio por conta do destinat'#225'rio;'
            'Sem Transportadora.')
          TabOrder = 8
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '9')
        end
        object EditNomeTrasportadora: TEdit
          Left = 77
          Top = 29
          Width = 290
          Height = 22
          CharCase = ecUpperCase
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Text = '***'
        end
        object EditTransportadora: TIDBEditDialog
          Left = 6
          Top = 29
          Width = 65
          Height = 22
          HelpKeyWord = ''
          Color = clWindow
          Enabled = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = ''
          Visible = True
          EditType = etAlphaNumeric
          EmptyText = 'Tecle F8'
          FocusColor = clBtnFace
          LabelCaption = 'Nome / Raz'#227'o Social'
          LabelAlwaysEnabled = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clBlack
          LabelFont.Height = -9
          LabelFont.Name = 'Calibri'
          LabelFont.Style = [fsBold]
          Lookup.Separator = ';'
          Version = '5.0.0.0'
          ButtonStyle = bsButton
          ButtonWidth = 16
          ButtonHint = 'Transportadora:'
          Etched = False
          ButtonCaption = '...'
          DataField = 'TRANSPORTADORA'
          DataSource = dsVenda
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditNomeTrasportadora
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT * FROM CAD_CLIENTES'
            'WHERE'
            'CODIGO=:CODIGO')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_CLIENTES'
            'WHERE'
            '%WHERE%')
          CountQuery.Strings = (
            '')
          SearchDialogFieldList = <
            item
              FieldName = 'CODIGO'
              WhereSyntax = 'CODIGO'
              DisplayLabel = 'C'#243'digo'
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
      end
      object BoxObs_Fisco: TGroupBox
        Left = 0
        Top = 663
        Width = 1107
        Height = 140
        Align = alTop
        Caption = 'DADOS ADICIONAIS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 5
        object DBMemo_Fisco: TDBMemo
          Left = 367
          Top = 24
          Width = 355
          Height = 107
          DataField = 'OBS2'
          DataSource = dsVenda
          TabOrder = 1
        end
        object DBMemo_OBS: TDBMemo
          Left = 6
          Top = 24
          Width = 355
          Height = 107
          DataField = 'OBS1'
          DataSource = dsVenda
          TabOrder = 0
        end
      end
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 58
        Width = 1097
        Height = 71
        Margins.Left = 5
        Margins.Right = 5
        Align = alTop
        Caption = 'Dados da Nota Fiscal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnExit = GroupBox2Exit
        object EditNomeCliente: TEdit
          Left = 74
          Top = 34
          Width = 330
          Height = 22
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          TabOrder = 1
        end
        object EditNomeVendedor: TEdit
          Left = 745
          Top = 34
          Width = 182
          Height = 22
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          TabOrder = 5
        end
        object EditCliente: TIDBEditDialog
          Left = 5
          Top = 34
          Width = 65
          Height = 22
          HelpKeyWord = ''
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          TabOrder = 0
          Text = ''
          Visible = True
          LabelCaption = 'Cliente'
          LabelAlwaysEnabled = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Calibri'
          LabelFont.Style = []
          Lookup.Separator = ';'
          Version = '5.0.0.0'
          ButtonStyle = bsButton
          ButtonWidth = 16
          ButtonHint = 'Procurar...'
          Etched = False
          ButtonCaption = '...'
          DataField = 'CLIENTE'
          DataSource = dsVenda
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditNomeCliente
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = ' *** '
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT * FROM CAD_CLIENTES'
            'WHERE'
            'CODIGO=:CODIGO')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_CLIENTES'
            'WHERE'
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
              Search = True
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
        object EstSearchDialogZeos2: TIDBEditDialog
          Left = 673
          Top = 34
          Width = 70
          Height = 22
          HelpKeyWord = ''
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          TabOrder = 4
          Text = ''
          Visible = True
          LabelCaption = 'Vendedor'
          LabelAlwaysEnabled = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Calibri'
          LabelFont.Style = []
          Lookup.Separator = ';'
          Version = '5.0.0.0'
          ButtonStyle = bsButton
          ButtonWidth = 16
          ButtonHint = 'Procurar...'
          Etched = False
          ButtonCaption = '...'
          DataField = 'VENDEDOR'
          DataSource = dsVenda
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditNomeVendedor
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = ' *** '
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT * FROM CAD_CLIENTES'
            'WHERE'
            'CODIGO=:CODIGO')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_CLIENTES'
            'WHERE'
            '  TIPO in ('#39'VENDEDOR'#39','#39'REPRESENTANTE'#39')'
            'AND'
            '%WHERE%')
          CountQuery.Strings = (
            '')
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
        object EditNomeFormaPagto: TEdit
          Left = 475
          Top = 34
          Width = 192
          Height = 22
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          Text = '***'
        end
        object EditPagamento: TIDBEditDialog
          Left = 412
          Top = 34
          Width = 61
          Height = 22
          HelpKeyWord = ''
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = '0'
          Visible = True
          EditType = etNumeric
          EmptyText = 'F8 - Cliente'
          FocusColor = clBtnFace
          LabelCaption = 'Forma de Pagamento'
          LabelAlwaysEnabled = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Calibri'
          LabelFont.Style = []
          Lookup.Separator = ';'
          Version = '5.0.0.0'
          ButtonStyle = bsButton
          ButtonWidth = 16
          ButtonHint = 'Forma de Pagamento'
          Etched = False
          ButtonCaption = '...'
          DataField = 'FORMAPAGTO'
          DataSource = dsVenda
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditNomeFormaPagto
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT CODIGO, NOME FROM CAD_FORMAPAGTO'
            'WHERE'
            'CODIGO=:CODIGO')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT CODIGO, NOME FROM CAD_FORMAPAGTO'
            'WHERE'
            '%WHERE%')
          CountQuery.Strings = (
            'SELECT COUNT(NOME) FROM CAD_FORMAPAGTO'
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
      end
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 3
        Width = 1097
        Height = 49
        Margins.Left = 5
        Margins.Right = 5
        Align = alTop
        Color = clWhite
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        OnExit = GroupBox1Exit
        object Label4: TLabel
          Left = 5
          Top = 3
          Width = 27
          Height = 14
          Caption = 'Data:'
          FocusControl = DBEdit6
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 91
          Top = 3
          Width = 30
          Height = 14
          Caption = 'Sa'#237'da:'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EditCFOP: TIDBEditDialog
          Left = 176
          Top = 19
          Width = 73
          Height = 22
          HelpKeyWord = ''
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = ''
          Visible = True
          EditType = etUppercase
          EmptyText = 'F8 - Pesquisar'
          FocusColor = clWindow
          LabelCaption = 'CFOP'
          LabelAlwaysEnabled = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Calibri'
          LabelFont.Style = []
          Lookup.Separator = ';'
          Version = '5.0.0.0'
          ButtonStyle = bsButton
          ButtonWidth = 16
          ButtonHint = 'Plano de Contas'
          Etched = False
          ButtonCaption = '...'
          DataField = 'CFOP'
          DataSource = dsVenda
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
          Left = 255
          Top = 19
          Width = 233
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          TabOrder = 3
          Text = '***'
        end
        object DBEdit6: TDBEdit
          Left = 5
          Top = 19
          Width = 80
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'EMISSAO'
          DataSource = dsVenda
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 91
          Top = 19
          Width = 80
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'DATA_ENTRADASAIDA'
          DataSource = dsVenda
          ParentCtl3D = False
          TabOrder = 1
        end
      end
    end
    object gpTotais: TGroupBox
      Left = 0
      Top = 454
      Width = 1134
      Height = 71
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alBottom
      Caption = 'Totais da Nota Fiscal'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object Panel4: TPanel
        Left = 2
        Top = 15
        Width = 1130
        Height = 54
        Align = alClient
        Alignment = taRightJustify
        BevelKind = bkSoft
        Caption = '[use as teclas PageUp e PageDown]   '
        Color = clWhite
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object Label3: TLabel
          Left = 533
          Top = 7
          Width = 69
          Height = 11
          Caption = 'Valor Total da Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label6: TLabel
          Left = 397
          Top = 7
          Width = 91
          Height = 11
          Caption = 'Valor Total dos Produtos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label7: TLabel
          Left = 7
          Top = 7
          Width = 59
          Height = 11
          Caption = 'Base de C'#225'lculo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label8: TLabel
          Left = 143
          Top = 7
          Width = 52
          Height = 11
          Caption = 'Valor do ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label9: TLabel
          Left = 252
          Top = 7
          Width = 61
          Height = 11
          Caption = 'Valor Total do IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBEdit8: TDBEdit
          Left = 533
          Top = 20
          Width = 130
          Height = 19
          Color = clWhite
          DataField = 'TOTAL_NF'
          DataSource = dsVenda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit9: TDBEdit
          Left = 397
          Top = 20
          Width = 130
          Height = 19
          Color = clWhite
          DataField = 'VALOR_PRODUTOS'
          DataSource = dsVenda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit10: TDBEdit
          Left = 7
          Top = 20
          Width = 130
          Height = 19
          Color = clWhite
          DataField = 'ICMS_BASECALCULO'
          DataSource = dsVenda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit11: TDBEdit
          Left = 143
          Top = 20
          Width = 101
          Height = 19
          Color = clWhite
          DataField = 'ICMS_VALOR'
          DataSource = dsVenda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit12: TDBEdit
          Left = 250
          Top = 20
          Width = 130
          Height = 19
          Color = clWhite
          DataField = 'IPI_VALOR'
          DataSource = dsVenda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
      end
    end
  end
  object dbProcurarProduto: TIDBEditDialog
    Left = 758
    Top = 8
    Width = 65
    Height = 22
    HelpKeyWord = ''
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
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
    LabelFont.Name = 'Calibri'
    LabelFont.Style = []
    Lookup.Separator = ';'
    Version = '5.0.0.0'
    ButtonStyle = bsButton
    ButtonWidth = 16
    ButtonHint = 'Procurar...'
    Etched = False
    ButtonCaption = '...'
    ButtonKeyClickBtn = 119
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'TIPO='#39'TRANSPORTADORA'#39
      'AND'
      'CODIGO=:CODIGO'
      ''
      '')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT *  FROM VIEW_REFERENCIAS'
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'REFERENCIA'
        WhereSyntax = 'REFERENCIA'
        DisplayLabel = 'C'#211'DIGO PR'#211'PRIO:'
        DisplayWidth = 20
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
        DisplayWidth = 45
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
        DisplayWidth = 20
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
        DisplayWidth = 20
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
        Search = True
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
      end>
    SearchPresetList = <>
    DialogCaption = 'Pesquisa'
    DialogWidth = 900
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
  object dbProcurarNFe: TIDBEditDialog
    Left = 328
    Top = 8
    Width = 65
    Height = 22
    HelpKeyWord = ''
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = ''
    Visible = False
    EditType = etAlphaNumeric
    EmptyText = 'Tecle F8'
    FocusColor = clBtnFace
    LabelCaption = 'Transportadora:'
    LabelAlwaysEnabled = True
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Calibri'
    LabelFont.Style = []
    Lookup.Separator = ';'
    Version = '5.0.0.0'
    ButtonStyle = bsButton
    ButtonWidth = 16
    ButtonHint = 'Transportadora:'
    Etched = False
    ButtonCaption = '...'
    ButtonKeyClickBtn = 119
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'TIPO='#39'TRANSPORTADORA'#39
      'AND'
      'CODIGO=:CODIGO'
      ''
      '')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM VIEW_NOTAFISCAL'
      'WHERE'
      'TIPONF='#39'NFE'#39
      'AND'
      '%WHERE%'
      'ORDER BY EMISSAO DESC, NOTAFISCAL DESC')
    SearchDialogFieldList = <
      item
        FieldName = 'EMISSAO'
        WhereSyntax = 'EMISSAO'
        DisplayLabel = 'EMISS'#195'O:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'NOTAFISCAL'
        WhereSyntax = 'NOTAFISCAL'
        DisplayLabel = 'NOTA FISCAL:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'STATUS'
        WhereSyntax = 'STATUS'
        DisplayLabel = 'CONCLUIDA:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end
      item
        FieldName = 'CFOP'
        WhereSyntax = 'CFOP'
        DisplayLabel = 'CFOP:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'OPERACAO'
        WhereSyntax = 'OPERACAO'
        DisplayLabel = 'OPERA'#199#195'O:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'CLIENTE_NOME'
        WhereSyntax = 'CLIENTE_NOME'
        DisplayLabel = 'CLIENTE:'
        DisplayWidth = 27
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'NF_QTDE_PRODUTOS'
        WhereSyntax = 'NF_QTDE_PRODUTOS'
        DisplayLabel = 'QTD PROD:'
        DisplayFormat = '###,##0'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'NF_VALOR_PRODUTOS'
        WhereSyntax = 'NF_VALOR_PRODUTOS'
        DisplayLabel = 'VALOR PRODUTOS:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 18
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'NF_VALOR_TOTAL'
        WhereSyntax = 'NF_VALOR_TOTAL'
        DisplayLabel = 'VALOR NF:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 16
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'PEDIDO'
        WhereSyntax = 'PEDIDO'
        DisplayLabel = 'PEDIDO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
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
  object PedidoProcurar: TIDBEditDialog
    Left = 203
    Top = 8
    Width = 65
    Height = 22
    HelpKeyWord = ''
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = ''
    Visible = False
    EditType = etAlphaNumeric
    EmptyText = 'Tecle F8'
    FocusColor = clBtnFace
    LabelCaption = 'Pedido de venda'
    LabelAlwaysEnabled = True
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Calibri'
    LabelFont.Style = []
    Lookup.Separator = ';'
    Version = '5.0.0.0'
    ButtonStyle = bsButton
    ButtonWidth = 16
    ButtonHint = 'Pedido de venda'
    Etched = False
    ButtonCaption = '...'
    ButtonKeyClickBtn = 119
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'TIPO='#39'TRANSPORTADORA'#39
      'AND'
      'CODIGO=:CODIGO'
      ''
      '')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM VIEW_PEDIDOSVENDAS'
      'WHERE'
      '%WHERE%'
      '')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'PEDIDO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'DATA'
        WhereSyntax = 'DATA'
        DisplayLabel = 'DATA:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'DATA_ENTREGA'
        WhereSyntax = 'DATA_ENTREGA'
        DisplayLabel = 'DATA ENTREGA:'
        DisplayWidth = 16
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'CLIENTE_NOME'
        WhereSyntax = 'CLIENTE_NOME'
        DisplayLabel = 'CLIENTE:'
        DisplayWidth = 30
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'VENDEDOR_NOME'
        WhereSyntax = 'VENDEDOR_NOME'
        DisplayLabel = 'VENDEDOR:'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'QTDE_TOTAL'
        WhereSyntax = 'QTDE_TOTAL'
        DisplayLabel = 'QTDE TOTAL:'
        DisplayFormat = '###,##0'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VLR_TOTAL'
        WhereSyntax = 'VLR_TOTAL'
        DisplayLabel = 'VALOR TOTAL:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 14
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'APROVADO'
        WhereSyntax = 'APROVADO'
        DisplayLabel = 'APROVADO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'STATUS'
        WhereSyntax = 'STATUS'
        DisplayLabel = 'FATURADO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'PRODUZINDO'
        WhereSyntax = 'PRODUZINDO'
        DisplayLabel = 'PRODUZINDO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end>
    SearchPresetList = <>
    DialogCaption = 'Pesquisa'
    DialogWidth = 965
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
  object Panel2: TPanel
    Left = 0
    Top = 50
    Width = 1140
    Height = 31
    Align = alTop
    Alignment = taLeftJustify
    BevelKind = bkTile
    BevelOuter = bvNone
    Color = clWhite
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 6
    object Label2: TLabel
      Left = 888
      Top = 0
      Width = 122
      Height = 27
      Align = alRight
      AutoSize = False
      Caption = 'Nota Fiscal:'
      Color = clWindowFrame
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      ExplicitLeft = 776
      ExplicitTop = 1
      ExplicitHeight = 31
    end
    object DBText1: TDBText
      AlignWithMargins = True
      Left = 1013
      Top = 3
      Width = 120
      Height = 21
      Align = alRight
      DataField = 'NOTAFISCAL'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 904
      ExplicitTop = 1
      ExplicitHeight = 31
    end
  end
  object db_PedidosConferencia: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDOCONFERENCIA'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 64
    Top = 285
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object db_PedidosConferenciaItens: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'select '
      'REFERENCIA,'
      'DESCRICAO,'
      'VALOR_UNIT,'
      'SUM(QUANTIDADE) AS QUANTIDADE'
      'From PEDIDOCONFERENCIA_ITENS'
      'WHERE'
      'CODIGO=:CODIGO'
      ''
      'GROUP BY  REFERENCIA, DESCRICAO, VALOR_UNIT')
    Left = 184
    Top = 287
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QryPedidoVenda: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDOSVENDAS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 344
    Top = 277
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QryPedidoVendaItens: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'select '
      'REFERENCIA,'
      'DESCRICAO,'
      'VALOR_UNIT,'
      'QUANTIDADE '
      'From VIEW_PEDIDOSITENS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 464
    Top = 279
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QryFaturas: TFDQuery
    Connection = FrmPrincipal.DBConexao
    Transaction = FrmPrincipal.FDTransacao
    Left = 864
    Top = 143
  end
  object QryVenda: TFDQuery
    BeforeOpen = QryVendaBeforeOpen
    AfterOpen = QryVendaAfterOpen
    AfterClose = QryVendaAfterClose
    BeforePost = QryVendaBeforePost
    AfterPost = QryVendaAfterPost
    OnNewRecord = QryVendaNewRecord
    Connection = FrmPrincipal.DBConexao
    Transaction = FrmPrincipal.FDTransacao
    FormatOptions.AssignedValues = [fvFmtDisplayNumeric]
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM VENDAS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 160
    Top = 160
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QryVendaItem: TFDQuery
    AfterOpen = QryVendaItemAfterOpen
    BeforePost = QryVendaItemBeforePost
    AfterPost = QryVendaItemAfterPost
    MasterSource = dsVenda
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    Transaction = FrmPrincipal.FDTransacao
    SQL.Strings = (
      'SELECT * FROM VENDAS_ITENS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 248
    Top = 160
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsVenda: TDataSource
    DataSet = QryVenda
    OnStateChange = dsVendaStateChange
    Left = 160
    Top = 216
  end
  object dsVendaItem: TDataSource
    DataSet = QryVendaItem
    Left = 248
    Top = 216
  end
  object SPNFE_PROCESSAR: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPNFE_PROCESSAR'
    Left = 808
    Top = 383
    ParamData = <
      item
        Position = 1
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = 'NEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'NVENDA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
  end
  object db_Parametros: TFDQuery
    BeforeOpen = db_ParametrosBeforeOpen
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'EMPRESA'
    SQL.Strings = (
      'SELECT * FROM CONFIG_PARAMETROS'
      'WHERE '
      'EMPRESA=:EMPRESA')
    Left = 152
    Top = 360
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QrySomaProduto: TFDQuery
    AfterOpen = QryVendaItemAfterOpen
    BeforePost = QryVendaItemBeforePost
    AfterPost = QryVendaItemAfterPost
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    Transaction = FrmPrincipal.FDTransacao
    SQL.Strings = (
      'SELECT'
      'SUM(COALESCE(QUANTIDADE,0)) AS TOT_QTDE,'
      'SUM(COALESCE(VLR_UNIT,0)) AS TOT_VUNIT,'
      
        'SUM(COALESCE(VLR_UNIT,0) * COALESCE(QUANTIDADE,0)) AS TOT_VUNIT_' +
        'QTDE,'
      'SUM(COALESCE(VLR_DESCONTO,0)) AS TOT_VDESC,'
      'SUM(COALESCE(VLR_TOTAL,0)) AS TOT_VTOTAL,'
      'SUM(COALESCE(VLR_ICMS,0))  AS TOT_VICMS,'
      
        'SUM((COALESCE(VLR_UNIT,0) * COALESCE(QUANTIDADE,0)) - COALESCE(V' +
        'LR_DESCONTO,0))  AS T_BC'
      'FROM VENDAS_ITENS'
      'WHERE'
      'CODIGO=:IDVENDA')
    Left = 632
    Top = 200
    ParamData = <
      item
        Name = 'IDVENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
