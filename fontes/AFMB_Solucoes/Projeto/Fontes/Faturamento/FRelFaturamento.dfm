object FrmRelFaturamento: TFrmRelFaturamento
  Left = 1
  Top = 1
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de Faturamento'
  ClientHeight = 601
  ClientWidth = 876
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 44
    Width = 876
    Height = 557
    Align = alClient
    TabOrder = 0
    object PainelBotoes: TPanel
      Left = 1
      Top = 504
      Width = 874
      Height = 52
      Align = alBottom
      BevelInner = bvRaised
      BorderStyle = bsSingle
      TabOrder = 4
      object BtnSair: TBitBtn
        AlignWithMargins = True
        Left = 111
        Top = 5
        Width = 100
        Height = 38
        Cursor = crHandPoint
        Hint = 'Sair'
        Align = alLeft
        Caption = 'Sai&r'
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000CE0E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0077FF77FF700F
          77FFFF77FF77F0B0FF7777FF77FF70B307FF00000007F0B330007777770000B3
          307777770708800330777777000880F03077777702088003307700000A2080B3
          3077AAAAAAA200B3307700000AA080B3307777770A0880B330777777000880BB
          307777770708880BB077777777088880B0777777770000000077}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BtnSairClick
        ExplicitLeft = 5
      end
      object Btn_Imprimir: TBitBtn
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 100
        Height = 38
        Cursor = crHandPoint
        Hint = 'Imprimir relat'#243'rio selecionado...'
        Align = alLeft
        Caption = '&Imprimir...'
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000C7C7C7C7C7C7
          C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C8C8C8C3C3C3CACACADEDFDFDDDD
          DDCDCDCDBFBFBFC7C6C6DADADAD6D6D6C3C3C3C4C4C4C8C8C8C7C7C7C7C7C7C7
          C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C6C6C6D1D1D1
          BFBFBF909090939393B7B7B7D8D8D8C7C9C9999A9AA3A2A3CFCFCFCDCDCDC5C5
          C5C6C6C6C6C6C6C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C6C6C6C6C6C6CB
          CBCBC8C8C8979897A1A1A19493935959595B5C5C7C7B7B9C90908C8586505151
          6E6E6EA1A1A1CFCFCFCCCCCCC9C9C9C6C6C6C7C7C7C7C7C7C7C7C7C7C7C7C6C6
          C6CCCCCCCACACABABABA9A9A9AB2B3B2F0F0F0D1D1D1B2B4B59892928367668B
          7878ADACACC2C3C38F8E8E636363666666A2A2A2C1C1C1CCCCCCC7C7C7C7C7C7
          C7C7C7C6C6C6CBCBCBB5B5B59E9E9EA4A4A4E6E6E6F9F9F9EFEEEEBBBABBAFB0
          B0ABA5A54F49494C4F4F676868888888B8B8B8CECECEAAAAAA7E7E7E787878BD
          BDBDC7C7C7C7C7C7C6C6C6CACACABDBDBDABABABD0D0D0FFFFFFF2F1F1E9E8E8
          EAEAEABBBCBCA6A6A6ABACAC8B8D8D7575756868686B6B6B7979799A9A9AC1C0
          C0CBCCCC6A6A6A969696C7C7C7C7C7C7C7C7C7CACACAB8B8B8E2E2E2FFFFFFEF
          EFEFEFEEEEDFDFDFC7C7C79E9E9E969595A6A5A5B6B5B5BABABAB2B2B2A1A1A1
          9999997070708181819B9A9A767676CBCBCBC7C7C7C6C6C6C6C6C6C9C9C9BBBB
          BBE6E6E6F8F8F8DCDCDCBCBCBCACACACB9B9B9A0A0A08686868989898E8E8E99
          9999A8A8A8B9B9B9C4C4C4B6B6B6B1B1B3A5A5A8828181D0D1D0C5C7C7CACBCB
          CBCBCBCECFCFBDBDBEC3C4C4BFBFBFB0B0B0C0C1C1D1D1D2D9D9D9D7D6D6C6C6
          C6B1B1B1A1A0A19494949090908F8F8F979797B2ACB098BAA6739B83848082CF
          CFCFD0C9C6BBB8B6B7B4B2BBB9B7A9A7A4B0AFAFD3D3D3DEDEDEDFDFDFCFCFD0
          D8D9D9E5E6E5DADADADDDDDDD8D8D8D2D2D2C3C3C3B6B6B6A2A3A39998998A93
          8D717B74818081CFCFCF74A0B4386F8A3469852662805C8192E9E6E4E2E3E4D7
          D8D7CCCCCCD4D4D5E3E3E3C8C7C7D5D5D5D0D1D1CCCCCCCCCECED3D4D4D5D5D5
          D5D5D6CECFCFCCCACBA29EA0848484CFCFCF1992C746B8EA5EC8F950C4F76BBB
          E0DCD5D1DFDBD9D0D0D2D5D5D6E1E1E1D5D4D4EBEAEAF8F7F7F0F0F0E7E7E7DE
          DEDDD3D3D4CDCDCCC9C9C9C7C7C7D6D6D5AFB0AF999999CDCDCD47AAD165C6EA
          79DBFF72D6FE6FD1F692C0D3BBC2C5C0C3C5CCCDCCCAC9C8CECECCE7E6E5EAE9
          E9EDEDECF0EFEFEEEDEEEDEDEDEAEAEAE6E6E6DADADAB5B5B49D9D9DC5C5C5C8
          C8C849A8CF65BDE179DDFD71D7FB73D9FD70DAFE67CBED97BDC9E6E3E1E1E7EA
          A0A4A7A4A7A9B3B7B8C5C7C7D5D5D5DBDBDBE3E3E3E7E6E7DFDFDFBDBCBCA7A7
          A7C4C4C4C9C9C9C7C7C74BB5D568BBE088E2FE76DFFC7ADEFB7CDFFC75E1FD9B
          D2E2F2E0DAF8D4C9DDBDB3D4C2BACCC1BEC4C0BEC3C4C5D2D3D6CACBCBA8A9A9
          ACACACB6B5B5C2C2C2C9C9C9C6C6C6C7C7C74ABEDB69BCE099E7FA7BE6FE81E5
          FC80E5FC83E9FD76D9F0C8BEAEFFCFA3FFD3ADFFD0AAFCCFABF8D5B6F8D6B6F0
          D5BD999495A7A7A7C6C6C6CACACAC8C8C8C6C6C6C7C7C7C7C7C75AC6E46CC2E9
          9CE8F685EFFE87ECFC88EBFB88F3FE85DAE7DCC6B0FDE0B8F9DAB7FCDBB7FDDC
          B7FDD9B4FFDFB8E3BE9C655D5FB6B7B7CDCDCDC5C5C5C7C7C7C7C7C7C7C7C7C7
          C7C774D1EC64C2F0A0E5F58FF6FE89F1FC8DF2FB86F7FE9AD5D7F0CEB6FEE4C7
          FBDFC4FDE0C5FDE0C5FBE0C4FDE7CAD6BBAC807E7FB0B0B0CCCBCBC6C6C6C7C7
          C7C7C7C7C7C7C7C7C7C77ED7EC68CAF8A2E2F7A9FFFE9BFCFCA0FEFE98FAFAB4
          CDCAFDE0CAFDEAD4FCE6D0FDE7D1FDE7D1FCE7D1FDE8D0D9D7CFABADAEA7A7A6
          CFCECEC6C6C6C7C7C7C7C7C7C7C7C7C7C7C788D7EC76D9FB78D2F9A6E8FCA4E8
          FCA4E9FE9DDDF2D2C8C2FEF0DEFBECDCFBEBDCFCECDDFCEBDBFDF0E0F4E0CFCA
          C6C4AFB1B2B5B4B4CBCBCBC6C6C6C7C7C7C7C7C7C7C7C7C7C7C790DBED83E6FD
          74E0FD72DBFC76DBFB6EE0FE8DC3D6F4E4D8FDF9EEFDF4E9FEF5EAFEF5EAFCF2
          E7FFFEF6CFB8B1978D8DBDBDBECCCBCBC6C6C6C7C7C7C7C7C7C7C7C7C7C7C7C7
          C7C79CDEEFA7F4FD8AF0FE90F2FD8DF5FF90E5EDCCCBCAF5F4EFFAF5F1F9F5F2
          F9F4F0F9F5F2FAF7F5F7EFEEB4ABAABBBBBBCCCCCCC6C6C6C7C7C7C7C7C7C7C7
          C7C7C7C7C7C7C7C7C7C796C9DCADE4F3A4EFF89CEFF89EF1FAA8E2ED84B3C4B7
          B8B6D5C8C8CEC4C4CEC1C1D1C7C7D3C9C9CEC2C2CAC7C7C8C9C9C6C6C6C7C7C7
          C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C2C6C7A9C4CEB4C8D0B3C8D1B4C9
          D0AEC8D2B1C8D0CAC9C8C5C7C7C6C7C7C6C8C8C6C7C7C6C7C7C6C8C8C7C7C7C7
          C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = Btn_ImprimirClick
        ExplicitLeft = -30
        ExplicitTop = 4
      end
    end
    object RadioG_Ordem: TRadioGroup
      Left = 1
      Top = 454
      Width = 874
      Height = 50
      Cursor = crHandPoint
      Align = alBottom
      Caption = 'Order por'
      Color = clBtnFace
      Columns = 4
      ItemIndex = 0
      Items.Strings = (
        'Data de Emissao'
        'N'#186' Nota Fiscal'
        'Nome do Cliente'
        'Vendedor')
      ParentColor = False
      TabOrder = 3
    end
    object RadioNF: TRadioGroup
      Left = 1
      Top = 407
      Width = 874
      Height = 47
      Align = alBottom
      Caption = 'Nota Fiscal'
      Columns = 6
      ItemIndex = 0
      Items.Strings = (
        'Todas'
        'Sa'#237'das'
        'Entrada'
        'Devolu'#231#227'o'
        'Canceladas'
        'Frente de Caixa')
      TabOrder = 2
    end
    object Panel2: TPanel
      Left = 1
      Top = 97
      Width = 874
      Height = 310
      Align = alClient
      BevelWidth = 2
      TabOrder = 1
      object RadioG: TRadioGroup
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 637
        Height = 300
        Cursor = crHandPoint
        Align = alClient
        Caption = '&Selecione seu Relat'#243'rio'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          '0 - Notas Fiscais'
          '1 - Faturamento por Vendedores'
          '2 - Comiss'#227'o de Vendedores - Sint'#233'tico'
          '3 - Comiss'#227'o de Vendedores - Anal'#237'tico'
          '4 - Anal'#237'tico de Notas Fiscais por Clientes'
          '5 - Anal'#237'tico de Notas Fiscais por Produtos'
          '6 - Ranking de Clientes'
          '7 - Ranking de Representantes'
          '8 - Ranking de Forma de Pagamento'
          '9 - CFOP'
          '10 - Comiss'#227'o de Vendedores por Pedido de Venda'
          '11 - Vendas Frente de Caixa')
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        OnClick = RadioGClick
      end
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 648
        Top = 5
        Width = 221
        Height = 300
        Align = alRight
        TabOrder = 1
        object GrpProduto: TGroupBox
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 211
          Height = 107
          Align = alTop
          Caption = 'Produto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object PainelProdutos: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 50
            Width = 201
            Height = 52
            Align = alBottom
            BevelKind = bkTile
            BevelOuter = bvNone
            Enabled = False
            TabOrder = 0
            object EditProduto: TIDBEditDialog
              Left = 9
              Top = 18
              Width = 145
              Height = 23
              HelpKeyWord = ''
              Color = clWindow
              Enabled = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = ''
              Visible = True
              FocusColor = clBtnFace
              LabelCaption = 'C'#243'digo Produto'
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
              SQLdbCampoRetorno = 'DESCRICAO'
              SQLdbRetornoVazio = ' *** '
              SQLdbCampoParametro = 'CODIGO'
              SQLdbSQL.Strings = (
                ''
                'SELECT * FROM CAD_PRODUTOS'
                'WHERE'
                'CODIGO=:CODIGO')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM CAD_PRODUTOS'
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
                  DisplayWidth = 70
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
                end
                item
                  FieldName = 'REFERENCIA'
                  WhereSyntax = 'REFERENCIA'
                  DisplayLabel = 'Refer'#234'ncia'
                  DisplayWidth = 20
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
          object chk_Referencia: TCheckBox
            Left = 3
            Top = 20
            Width = 112
            Height = 13
            Cursor = crHandPoint
            Hint = 'Rastrear todos os produtos'
            Caption = 'Todos os produtos'
            Checked = True
            ParentShowHint = False
            ShowHint = True
            State = cbChecked
            TabOrder = 1
            OnClick = chk_ReferenciaClick
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 874
      Height = 96
      Align = alTop
      BorderWidth = 2
      TabOrder = 0
      object GroupBox2: TGroupBox
        Left = 3
        Top = 3
        Width = 150
        Height = 90
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Data de Emiss'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label3: TLabel
          Left = 13
          Top = 24
          Width = 14
          Height = 13
          Caption = 'De'
        end
        object Label4: TLabel
          Left = 8
          Top = 51
          Width = 16
          Height = 13
          Caption = 'At'#233
        end
        object MskDataIni: TMaskEdit
          Left = 32
          Top = 20
          Width = 69
          Height = 21
          EditMask = '99/99/9999'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
          Text = '01/01/2020'
          OnExit = MskDataIniExit
        end
        object MskDataFim: TMaskEdit
          Left = 30
          Top = 47
          Width = 72
          Height = 21
          EditMask = '99/99/9999'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 1
          Text = '  /  /    '
          OnExit = MskDataFimExit
        end
      end
      object GroupBox1: TGroupBox
        Left = 153
        Top = 3
        Width = 718
        Height = 90
        Align = alClient
        Caption = 'Sele'#231#227'o de Clientes/Representante'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object EditClienteNome: TEdit
          Left = 96
          Top = 51
          Width = 230
          Height = 21
          Color = clBtnFace
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '***'
        end
        object EditCliente: TIDBEditDialog
          Left = 14
          Top = 51
          Width = 80
          Height = 21
          HelpKeyWord = ''
          Color = clWindow
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = '0'
          Visible = True
          EditType = etNumeric
          FocusColor = clBtnFace
          LabelCaption = 'Cliente'
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
          SQLdbFazBusca = True
          SQLdbFocusControl = EditClienteNome
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
            '%WHERE%')
          CountQuery.Strings = (
            '')
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
              SearchCase = scUpper
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
        object chkCliente: TCheckBox
          Left = 14
          Top = 15
          Width = 105
          Height = 13
          Cursor = crHandPoint
          Caption = 'Todos os Clientes'
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = chkClienteClick
        end
        object chkRepres: TCheckBox
          Left = 331
          Top = 15
          Width = 145
          Height = 17
          Cursor = crHandPoint
          Caption = 'Todos os Vendedores'
          Checked = True
          State = cbChecked
          TabOrder = 3
          OnClick = chkRepresClick
        end
        object EditVendedor: TIDBEditDialog
          Left = 330
          Top = 51
          Width = 80
          Height = 21
          HelpKeyWord = ''
          Color = clWindow
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Text = '0'
          Visible = True
          EditType = etNumeric
          FocusColor = clBtnFace
          LabelCaption = 'Vendedor'
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
          SQLdbFazBusca = True
          SQLdbFocusControl = EditNomeVendedor
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = ' *** '
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT * FROM CAD_CLIENTES'
            'WHERE'
            'CODIGO=:CODIGO'
            '')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_CLIENTES'
            'WHERE'
            '%WHERE%'
            'AND '
            'TIPO IN ('#39'VENDEDOR'#39','#39'REPRESENTANTE'#39')')
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
              SearchCase = scUpper
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
        object EditNomeVendedor: TEdit
          Left = 413
          Top = 51
          Width = 230
          Height = 21
          Color = clBtnFace
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
    end
  end
  inline FrameRelatorios1: TFrameRelatorios
    Left = 0
    Top = 0
    Width = 876
    Height = 44
    Align = alTop
    Color = 4276288
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    TabStop = True
    ExplicitWidth = 876
    inherited Image3: TImage
      Width = 876
      ExplicitWidth = 431
    end
    inherited LblBarraTitulo: TLabel
      Width = 204
      Height = 23
      Caption = 'Relat'#243'rio de Faturamento'
      ExplicitWidth = 204
    end
    inherited Image2: TImage
      Left = 803
      ExplicitLeft = 358
    end
  end
  object db_ComissaoPedidos: TFDQuery
    BeforeOpen = db_ComissaoPedidosBeforeOpen
    AfterOpen = db_ComissaoPedidosAfterOpen
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_COMISSAO'
      'WHERE'
      'EMPRESA=:EMPRESA'
      ''
      'ORDER BY VENDEDORNOME, CLIENTE_NOME')
    Left = 208
    Top = 104
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object fsd_ComissaoPedidos: TfrxDBDataset
    UserName = 'DBComissaoPedidos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'DOCUMENTO=DOCUMENTO'
      'DATA=DATA'
      'DATA_ENTREGA=DATA_ENTREGA'
      'DATAFATURAMENTO=DATAFATURAMENTO'
      'CLIENTE=CLIENTE'
      'CLIENTE_NOME=CLIENTE_NOME'
      'CPF_CNPJ=CPF_CNPJ'
      'FORMA_PAGTO=FORMA_PAGTO'
      'VENDEDOR=VENDEDOR'
      'VENDEDORNOME=VENDEDORNOME'
      'VENDEDORSALARIO=VENDEDORSALARIO'
      'VALORTOTAL=VALORTOTAL'
      'COMISSAOCADASTRO=COMISSAOCADASTRO'
      'COMISSAOPEDIDO=COMISSAOPEDIDO'
      'COMISSAO_VALORVIACADASTRO=COMISSAO_VALORVIACADASTRO'
      'COMISSAO_VALORVIAPEDIDO=COMISSAO_VALORVIAPEDIDO'
      'COMISSAO_COM_SALARIO=COMISSAO_COM_SALARIO'
      'APROVADO=APROVADO'
      'STATUS=STATUS')
    DataSet = db_ComissaoPedidos
    BCDToCurrency = False
    Left = 328
    Top = 104
  end
  object fsr_ComissaoPedidos: TfrxReport
    Version = '6.2.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39917.957612847210000000
    ReportOptions.Name = 'Listagem de Ordem de Produ'#231#227'o'
    ReportOptions.LastChange = 40772.624502048600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 448
    Top = 104
    Datasets = <
      item
        DataSet = fsd_ComissaoPedidos
        DataSetName = 'DBComissaoPedidos'
      end
      item
        DataSet = FrmPrincipal.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        DataSet = fsd_ComissaoPedidos
        DataSetName = 'DBComissaoPedidos'
        RowCount = 0
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 1.236240000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'DATA'
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DBComissaoPedidos."DATA"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 48.692950000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataField = 'CODIGO'
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBComissaoPedidos."CODIGO"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929065510000000000
          Width = 154.960676300000000000
          Height = 15.118120000000000000
          DataField = 'CLIENTE_NOME'
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DBComissaoPedidos."CLIENTE_NOME"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 0.000041500000000000
          Width = 60.472453150000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBComissaoPedidos."COMISSAO_VALORVIAPEDIDO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Width = 26.456695350000000000
          Height = 15.118110240000000000
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          DisplayFormat.FormatStr = '###,##0%'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '([DBComissaoPedidos."COMISSAOPEDIDO"])')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'VALORTOTAL'
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBComissaoPedidos."VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataField = 'STATUS'
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBComissaoPedidos."STATUS"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 60.472440940000000000
        ParentFont = False
        Top = 381.732530000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DataField = 'SRV_EMPRESA'
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_EMPRESA"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 536.693260000000000000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DataField = 'SRV_SITE'
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_SITE"]')
          ParentFont = False
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 79.370095830000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 1.236240000000000000
          Top = 64.251968500000000000
          Width = 30.236240000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 390.291355670000000000
          Top = 64.251968500000000000
          Width = 86.929141180000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DO PEDIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 554.590910000000000000
          Width = 162.511750000000000000
          Height = 49.133858270000000000
          Fill.BackColor = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 566.149603860000000000
          Top = 1.889763780000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 567.149603860000000000
          Top = 16.629921260000000000
          Width = 36.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 567.149603860000000000
          Top = 31.748031500000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 632.299215040000000000
          Top = 1.889763780000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 632.299215040000000000
          Top = 16.629921260000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 632.299215040000000000
          Top = 31.748031500000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 77.913420000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 52.574830000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object MemoTitulo: TfrxMemoView
          AllowVectorExport = True
          Left = 1.220470000000000000
          Width = 550.464750000000000000
          Height = 49.133858270000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Georgia'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'Relat'#243'rio - VENDAS:'
            'Comiss'#227'o por Pedidos de Vendas')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 48.692950000000000000
          Top = 64.251968500000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PEDIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929065510000000000
          Top = 64.251968500000000000
          Width = 83.149606300000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CLIENTE:')
          ParentFont = False
          WordWrap = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 492.338900000000000000
          Top = 64.252010000000000000
          Width = 102.047310000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'COMISS'#195'O PEDIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Top = 64.252010000000000000
          Width = 49.133890000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FATURADO:')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 321.260050000000000000
        Width = 718.110700000000000000
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 419.527559060000000000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DBComissaoPedidos."VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 282.905690000000000000
          Width = 132.283501180000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL DOS PEDIDOS:')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 282.905690000000000000
          Top = 14.338590000000000000
          Width = 132.283501180000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL DAS COMISS'#213'ES:')
          ParentFont = False
          WordWrap = False
        end
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 419.527559055118000000
          Top = 14.338590000000000000
          Width = 56.692913385826800000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DBComissaoPedidos."COMISSAO_VALORVIAPEDIDO">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 26.456710000000000000
        ParentFont = False
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        Condition = 'DBComissaoPedidos."VENDEDOR"'
        object Memo16: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = 16053492
          Memo.UTF8W = (
            
              'VENDEDOR: [DBComissaoPedidos."VENDEDOR"]-[DBComissaoPedidos."VEN' +
              'DEDORNOME"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Height = 15.118120000000000000
        ParentFont = False
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 419.527595670000000000
          Width = 56.692913385826800000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DBComissaoPedidos."VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 502.677490000000000000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DBComissaoPedidos."COMISSAO_VALORVIAPEDIDO">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object QryFrenteCaixa: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      ''
      'SELECT '
      ' COUNT(VEN.CODIGO) AS QTDEVENDA'
      ',SUM(COALESCE(VEN.TOTAL_NF,0)) AS VVALORTOTAL'
      
        ',(SELECT COUNT(VENDCANC1.CODIGO) FROM VENDAS VENDCANC1 WHERE VEN' +
        'DCANC1.TIPONF = '#39'NFCE'#39' AND VENDCANC1.MODELO = 65 AND VENDCANC1.S' +
        'TATUS = '#39'S'#39' AND VENDCANC1.OPERACAO = '#39'C'#39' AND VENDCANC1.EMISSAO B' +
        'ETWEEN :DTINI AND :DTFIM ) AS QTOTALVENDCANC'
      
        ',(SELECT SUM(COALESCE(VENDCANC2.TOTAL_NF,0)) FROM VENDAS VENDCAN' +
        'C2 WHERE VENDCANC2.TIPONF = '#39'NFCE'#39' AND VENDCANC2.MODELO = 65 AND' +
        ' VENDCANC2.STATUS = '#39'S'#39' AND VENDCANC2.OPERACAO = '#39'C'#39' AND VENDCAN' +
        'C2.EMISSAO BETWEEN :DTINI AND :DTFIM ) AS VTOTALVENDCANC'
      ',SUM(COALESCE(VEN.VALORDINHEIRO,0)) AS VVALORDINHEIRO'
      ',SUM(COALESCE(VEN.VALORCARTAOCREDITO,0)) AS VVALORCARTAOCREDITO'
      ',SUM(COALESCE(VEN.VALORCARTAODEBITO,0)) AS VVALORCARTAODEBITO'
      
        ',(SELECT COUNT(VENDCANC3.CODIGO) FROM VENDAS VENDCANC3 WHERE VEN' +
        'DCANC3.TIPONF = '#39'NFCE'#39' AND VENDCANC3.MODELO = 65 AND VENDCANC3.S' +
        'TATUS = '#39'S'#39' AND VENDCANC3.VLR_DESCONTO > 0 AND VENDCANC3.EMISSAO' +
        ' BETWEEN :DTINI AND :DTFIM ) AS QTOTVENDDESC'
      
        ',(SELECT SUM(COALESCE(VENDCANC4.VLR_DESCONTO,0)) FROM VENDAS VEN' +
        'DCANC4 WHERE VENDCANC4.TIPONF = '#39'NFCE'#39' AND VENDCANC4.MODELO = 65' +
        ' AND VENDCANC4.STATUS = '#39'S'#39' AND VENDCANC4.VLR_DESCONTO > 0  AND ' +
        'VENDCANC4.EMISSAO BETWEEN :DTINI AND :DTFIM ) AS VTOTVENDDESC'
      ',SUM(COALESCE(VEN.TROCO,0)) AS VVALORTROCO'
      'FROM VENDAS VEN'
      'WHERE'
      'VEN.TIPONF = '#39'NFCE'#39' '
      'AND VEN.MODELO = 65'
      'AND VEN.STATUS = '#39'S'#39
      'AND VEN.OPERACAO = '#39'S'#39
      'AND VEN.EMISSAO BETWEEN :DTINI AND :DTFIM')
    Left = 385
    Top = 269
    ParamData = <
      item
        Name = 'DTINI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DTFIM'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object frxDBFrenteCaixa: TfrxDBDataset
    UserName = 'DBFrenteCaixa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'QTDEVENDA=QTDEVENDA'
      'VVALORTOTAL=VVALORTOTAL'
      'QTOTALVENDCANC=QTOTALVENDCANC'
      'VTOTALVENDCANC=VTOTALVENDCANC'
      'VVALORDINHEIRO=VVALORDINHEIRO'
      'VVALORCARTAOCREDITO=VVALORCARTAOCREDITO'
      'VVALORCARTAODEBITO=VVALORCARTAODEBITO'
      'QTOTVENDDESC=QTOTVENDDESC'
      'VTOTVENDDESC=VTOTVENDDESC'
      'VVALORTROCO=VVALORTROCO')
    DataSet = QryFrenteCaixa
    BCDToCurrency = False
    Left = 384
    Top = 328
  end
  object frxFrenteCaixa: TfrxReport
    Version = '6.2.11'
    DataSet = frxDBFrenteCaixa
    DataSetName = 'DBFrenteCaixa'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39917.957612847210000000
    ReportOptions.Name = 'Listagem de Ordem de Produ'#231#227'o'
    ReportOptions.LastChange = 43888.185947963000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 512
    Top = 328
    Datasets = <
      item
        DataSet = frxDBFrenteCaixa
        DataSetName = 'DBFrenteCaixa'
      end
      item
        DataSet = FrmPrincipal.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 60.472445830000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Child = frxFrenteCaixa.Child1
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 554.590910000000000000
          Width = 162.511750000000000000
          Height = 49.133858270000000000
          Fill.BackColor = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 566.149603860000000000
          Top = 1.889763780000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 567.149603860000000000
          Top = 16.629921260000000000
          Width = 36.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 567.149603860000000000
          Top = 31.748031500000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 632.299215040000000000
          Top = 1.889763780000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 632.299215040000000000
          Top = 16.629921260000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 632.299215040000000000
          Top = 31.748031500000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
        object MemoTitulo: TfrxMemoView
          AllowVectorExport = True
          Left = 1.220470000000000000
          Width = 550.464750000000000000
          Height = 49.133858270000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Georgia'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'Relat'#243'rio - VENDAS: Frente de Caixa')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Frame.Typ = [ftTop, ftBottom]
        Height = 230.551330000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        Child = frxFrenteCaixa.Child2
        ToNRows = 0
        ToNRowsMode = rmCount
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 49.133890000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade de Venda:')
          ParentFont = False
        end
        object DBFrenteCaixaQTDEVENDA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 49.133890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'QTDEVENDA'
          DataSet = frxDBFrenteCaixa
          DataSetName = 'DBFrenteCaixa'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBFrenteCaixa."QTDEVENDA"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 75.590600000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Dinheiro:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBFrenteCaixa
          DataSetName = 'DBFrenteCaixa'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBFrenteCaixa."VVALORDINHEIRO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 105.826840000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cart'#227'o de Cr'#233'dito:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 105.826840000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBFrenteCaixa
          DataSetName = 'DBFrenteCaixa'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBFrenteCaixa."VVALORCARTAOCREDITO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 136.063080000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cart'#227'o de D'#233'bito:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 136.063080000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBFrenteCaixa
          DataSetName = 'DBFrenteCaixa'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBFrenteCaixa."VVALORCARTAODEBITO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 166.299320000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 166.299320000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBFrenteCaixa
          DataSetName = 'DBFrenteCaixa'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<DBFrenteCaixa."VVALORDINHEIRO"> + <DBFrenteCaixa."VVALORCARTAO' +
              'CREDITO"> + <DBFrenteCaixa."VVALORCARTAODEBITO"> ]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'VENDAS REALIZADAS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Child2: TfrxChild
        FillType = ftBrush
        Frame.Typ = [ftTop, ftBottom]
        Height = 90.708720000000000000
        Top = 355.275820000000000000
        Width = 718.110700000000000000
        Child = frxFrenteCaixa.Child3
        ToNRows = 0
        ToNRowsMode = rmCount
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 30.236240000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade de Venda:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBFrenteCaixa
          DataSetName = 'DBFrenteCaixa'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBFrenteCaixa."QTOTALVENDCANC"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 56.692950000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 56.692950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBFrenteCaixa
          DataSetName = 'DBFrenteCaixa'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBFrenteCaixa."VTOTALVENDCANC"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'VENDAS CANCELADAS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Child3: TfrxChild
        FillType = ftBrush
        Frame.Typ = []
        Height = 109.606370000000000000
        Top = 468.661720000000000000
        Visible = False
        Width = 718.110700000000000000
        ToNRows = 0
        ToNRowsMode = rmCount
        object Memo27: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCONTOS REALIZADOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 26.456710000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade de Venda:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBFrenteCaixa
          DataSetName = 'DBFrenteCaixa'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBFrenteCaixa."QTOTVENDDESC"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 52.913420000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBFrenteCaixa
          DataSetName = 'DBFrenteCaixa'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBFrenteCaixa."VTOTVENDDESC"]')
          ParentFont = False
        end
      end
    end
  end
end
