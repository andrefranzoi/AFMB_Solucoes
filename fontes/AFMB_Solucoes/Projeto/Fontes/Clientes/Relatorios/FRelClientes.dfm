object FrmRelClientes: TFrmRelClientes
  Left = 303
  Top = 106
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rios Clientes/Fornecedores'
  ClientHeight = 549
  ClientWidth = 622
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Calibri'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 499
    Width = 622
    Height = 50
    Align = alBottom
    BevelInner = bvRaised
    BorderStyle = bsSingle
    TabOrder = 0
    object btnImprimir: TBitBtn
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 110
      Height = 36
      Cursor = crHandPoint
      Hint = '[tecla F11] Imprimir registro'
      Align = alLeft
      Caption = '&Imprimir...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF00000000000000000000000000000000000000000000
        00000000000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF848484FF000000000000000000000000000000002626264A8484
        84FF848484FF848484FF848484FFFFFFFFFFB8824DFFB8824DFFB8824DFFB882
        4DFFFFFFFFFF848484FF848484FF848484FF848484FF2626264A848484FF8484
        84FF848484FF848484FF848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF0000000000000000848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000848484FF848484FF848484FF777777E68484
        84FF848484FF00000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFF00000000848484FF848484FF777777E6262626498484
        84FF848484FF00000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFF00000000848484FF848484FF26262649000000000000
        00000000000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF848484FF00000000000000000000000000000000000000000000
        00000000000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF848484FF00000000000000000000000000000000000000000000
        00000000000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF848484FF00000000000000000000000000000000000000000000
        00000000000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF848484FF00000000000000000000000000000000000000000000
        00000000000000000000848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnClick = btnImprimirClick
    end
    object BtnSair: TBitBtn
      AlignWithMargins = True
      Left = 121
      Top = 5
      Width = 110
      Height = 36
      Cursor = crHandPoint
      Hint = 'Sair'
      Align = alLeft
      Caption = 'Sai&r'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000000000000000000000000000000000004463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF31479CB82638798F4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF2536758A31479CB84463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF31479CB802030809000000002536778C4463D8FF4463D8FF4463D8FF4463
        D8FF24357388000000000203070831479CB84463D8FF4463D8FF4463D8FF4463
        D8FF233370840000000000000000000000002536778C4463D8FF4463D8FF2435
        7388000000000000000000000000233471854463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF22326C800000000000000000000000002536778C243573880000
        0000000000000000000022326D814463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF22326C80000000000000000000000000000000000000
        00000000000022326D814463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF22326C800000000000000000000000000000
        000022326D814463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF243573880000000000000000000000000000
        00002536768B4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF24357388000000000000000000000000000000000000
        0000000000002536768B4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF2435738800000000000000000000000022326D8122326C800000
        000000000000000000002536768B4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF2536758A00000000000000000000000023326E824463D8FF4463D8FF2232
        6C800000000000000000000000002637778D4463D8FF4463D8FF4463D8FF4463
        D8FF2F4597B2020205060000000023326E824463D8FF4463D8FF4463D8FF4463
        D8FF22326C8000000000020205062F4596B14463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF2F4597B2233471854463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF233370842F4597B24463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtnSairClick
    end
  end
  object pgControle: TPageControl
    Left = 0
    Top = 44
    Width = 622
    Height = 455
    ActivePage = Tab_fornecedores
    Align = alClient
    TabOrder = 1
    object Tab_clientes: TTabSheet
      Caption = 'Clientes'
      OnShow = Tab_clientesShow
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 241
        Height = 420
        Align = alLeft
        BevelKind = bkTile
        BevelOuter = bvNone
        BorderStyle = bsSingle
        TabOrder = 0
        object GroupBox2: TGroupBox
          Left = 0
          Top = 0
          Width = 233
          Height = 64
          Align = alTop
          Caption = 'Data de cadastro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label3: TLabel
            Left = 8
            Top = 24
            Width = 14
            Height = 13
            Caption = 'De'
          end
          object Label4: TLabel
            Left = 112
            Top = 24
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
            Text = '01/01/2012'
            OnExit = MskDataIniExit
          end
          object MskDataFim: TMaskEdit
            Left = 133
            Top = 20
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
        object RadioG: TRadioGroup
          Left = 0
          Top = 64
          Width = 233
          Height = 348
          Cursor = crHandPoint
          Align = alClient
          Caption = '&Selecione seu Relat'#243'rio'
          ItemIndex = 0
          Items.Strings = (
            'Lista Telef'#244'nica'
            'Cadastro ana&l'#237'tico'
            'Cidades'
            'Estados (UF)'
            'Vendedores'
            'Bloqueados')
          TabOrder = 1
          OnClick = RadioGClick
        end
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 250
        Top = 3
        Width = 361
        Height = 420
        Align = alClient
        BorderStyle = bsSingle
        TabOrder = 1
        object bxRepresentante: TGroupBox
          Left = 1
          Top = 89
          Width = 355
          Height = 91
          Cursor = crHandPoint
          Align = alTop
          Caption = 'Sele'#231#227'o de Representantes'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 1
          Visible = False
          object chkRepres: TCheckBox
            Left = 10
            Top = 20
            Width = 145
            Height = 17
            Cursor = crHandPoint
            Caption = 'Todos os Vendedores'
            Checked = True
            State = cbChecked
            TabOrder = 1
            OnClick = chkRepresClick
          end
          object EditNomeVendedor: TEdit
            Left = 89
            Top = 60
            Width = 255
            Height = 21
            Color = clWhite
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = '***'
          end
          object EditVendedor: TIDBEditDialog
            Left = 5
            Top = 60
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
              'SELECT * FROM CAD_PESSOA'
              'WHERE'
              'CODIGO=:CODIGO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_PESSOA'
              'WHERE'
              'TIPO='#39'VENDEDOR'#39
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
        end
        object BoxCidades: TGroupBox
          Left = 1
          Top = 180
          Width = 355
          Height = 60
          Cursor = crHandPoint
          Align = alTop
          Caption = 'Sele'#231#227'o de Cidades'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 2
          object Label2: TLabel
            Left = 146
            Top = 20
            Width = 65
            Height = 14
            Caption = 'C'#243'digo IBGE'
          end
          object EditCidade: TEdit
            Left = 218
            Top = 16
            Width = 125
            Height = 21
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 1
          end
          object chkCidades: TCheckBox
            Left = 10
            Top = 20
            Width = 105
            Height = 17
            Cursor = crHandPoint
            Caption = 'Todas as Cidades'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = chkCidadesClick
          end
        end
        object BoxEstados: TGroupBox
          Left = 1
          Top = 240
          Width = 355
          Height = 77
          Cursor = crHandPoint
          Align = alTop
          Caption = 'Sele'#231#227'o de Estado (UF)'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 3
          Visible = False
          object Label1: TLabel
            Left = 11
            Top = 52
            Width = 37
            Height = 14
            Caption = 'Estado'
          end
          object chkEstados: TCheckBox
            Left = 10
            Top = 20
            Width = 105
            Height = 17
            Cursor = crHandPoint
            Caption = 'Todos os Estados'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = chkEstadosClick
          end
          object EditEstado: TComboBox
            Left = 54
            Top = 48
            Width = 211
            Height = 22
            Style = csDropDownList
            DropDownCount = 20
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Sorted = True
            TabOrder = 1
            Items.Strings = (
              'AC-Acre'
              'AL-Alagoas'
              'AM-Amazonas'
              'AP-Amapa'
              'BA-Bahia'
              'CE-Ceara'
              'DF-Distrito Federal'
              'ES-Espirito Santo'
              'EX-Exterior'
              'GO-Goias'
              'MA-Maranhao'
              'MG-Minas Gerais'
              'MS-Mato Grosso do Sul'
              'MT-Mato Grosso'
              'PA-Para'
              'PB-Paraiba'
              'PE-Pernambuco'
              'PI-Piaui'
              'PR-Parana'
              'RJ-Rio de Janeiro'
              'RN-Rio Grande do Norte'
              'RO-Rondonia'
              'RR-Roraima'
              'RS-Rio Grande do Sul'
              'SC-Santa Catarina'
              'SE-Sergipe'
              'SP-Sao Paulo'
              'TO-Tocantins')
          end
        end
        object BoxClientes: TGroupBox
          Left = 1
          Top = 1
          Width = 355
          Height = 88
          Align = alTop
          Caption = 'Sele'#231#227'o de Clientes'
          TabOrder = 0
          object chkCliente: TCheckBox
            Left = 9
            Top = 20
            Width = 120
            Height = 13
            Cursor = crHandPoint
            Caption = 'Todos os Clientes'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = chkClienteClick
          end
          object EditClienteNome: TEdit
            Left = 89
            Top = 55
            Width = 255
            Height = 21
            Color = clWhite
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
            Left = 5
            Top = 55
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
            TabOrder = 2
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
            SearchDialogFieldList = <
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
              end
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
        object RadioGroupOrdenar: TRadioGroup
          Left = 1
          Top = 317
          Width = 355
          Height = 98
          Align = alClient
          Caption = 'Ordenar por'
          ItemIndex = 0
          Items.Strings = (
            'Vendedor/Cliente'
            'Cliente'
            'Cidade'
            'UF')
          TabOrder = 4
        end
      end
    end
    object Tab_fornecedores: TTabSheet
      Caption = 'Fornecedores'
      ImageIndex = 1
      OnShow = Tab_fornecedoresShow
      object RadioGForn: TRadioGroup
        AlignWithMargins = True
        Left = 3
        Top = 85
        Width = 608
        Height = 173
        Align = alTop
        Caption = '&Selecione seu Relat'#243'rio'
        ItemIndex = 0
        Items.Strings = (
          'Lista Telef'#244'nica'
          'Cidades'
          'Estados (UF)')
        TabOrder = 0
        OnClick = RadioGFornClick
      end
      object BoxCidadesForn: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 264
        Width = 608
        Height = 60
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Sele'#231#227'o de Cidades'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object Label8: TLabel
          Left = 253
          Top = 23
          Width = 61
          Height = 13
          Caption = 'C'#243'digo IBGE'
        end
        object DCodCidadeForn: TEdit
          Left = 320
          Top = 20
          Width = 125
          Height = 21
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 1
        end
        object chkCidadesForn: TCheckBox
          Left = 10
          Top = 24
          Width = 105
          Height = 17
          Cursor = crHandPoint
          Caption = 'Todas as Cidades'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = chkCidadesFornClick
        end
      end
      object BoxEstadosForn: TGroupBox
        Left = 0
        Top = 327
        Width = 614
        Height = 60
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Sele'#231#227'o de Estado (UF)'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        object Label9: TLabel
          Left = 227
          Top = 22
          Width = 33
          Height = 13
          Caption = 'Estado'
        end
        object chkEstadosForn: TCheckBox
          Left = 10
          Top = 24
          Width = 105
          Height = 17
          Cursor = crHandPoint
          Caption = 'Todos os Estados'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = chkEstadosFornClick
        end
        object dCodEstadoForn: TComboBox
          Left = 264
          Top = 19
          Width = 145
          Height = 21
          Style = csDropDownList
          Color = clWhite
          DropDownCount = 20
          Enabled = False
          Sorted = True
          TabOrder = 1
          Items.Strings = (
            'AC-Acre'
            'AL-Alagoas'
            'AM-Amazonas'
            'AP-Amapa'
            'BA-Bahia'
            'CE-Ceara'
            'DF-Distrito Federal'
            'ES-Espirito Santo'
            'EX-Exterior'
            'GO-Goias'
            'MA-Maranhao'
            'MG-Minas Gerais'
            'MS-Mato Grosso do Sul'
            'MT-Mato Grosso'
            'PA-Para'
            'PB-Paraiba'
            'PE-Pernambuco'
            'PI-Piaui'
            'PR-Parana'
            'RJ-Rio de Janeiro'
            'RN-Rio Grande do Norte'
            'RO-Rondonia'
            'RR-Roraima'
            'RS-Rio Grande do Sul'
            'SC-Santa Catarina'
            'SE-Sergipe'
            'SP-Sao Paulo'
            'TO-Tocantins')
        end
      end
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 608
        Height = 76
        Align = alTop
        Caption = 'Data de cadastro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object Label6: TLabel
          Left = 8
          Top = 24
          Width = 14
          Height = 13
          Caption = 'De'
        end
        object Label7: TLabel
          Left = 112
          Top = 24
          Width = 16
          Height = 13
          Caption = 'At'#233
        end
        object MaskEdit1: TMaskEdit
          Left = 32
          Top = 20
          Width = 70
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
          Text = '01/01/2004'
        end
        object MaskEdit2: TMaskEdit
          Left = 133
          Top = 20
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
        end
        object chkFornecedor: TCheckBox
          Left = 226
          Top = 15
          Width = 134
          Height = 13
          Cursor = crHandPoint
          Caption = 'Todos os Fornecedores'
          Checked = True
          State = cbChecked
          TabOrder = 2
          Visible = False
          OnClick = chkFornecedorClick
        end
        object EditFornecedor: TIDBEditDialog
          Left = 227
          Top = 46
          Width = 105
          Height = 21
          HelpKeyWord = ''
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = False
          TabOrder = 3
          Text = '0'
          Visible = False
          LabelCaption = 'Fornecedor'
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
        object EditNomeCliente: TEdit
          Left = 336
          Top = 46
          Width = 271
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          Enabled = False
          TabOrder = 4
          Text = '***'
          Visible = False
        end
      end
    end
  end
  inline FrameRelatorios1: TFrameRelatorios
    Left = 0
    Top = 0
    Width = 622
    Height = 44
    Align = alTop
    Color = 10114859
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    TabStop = True
    ExplicitWidth = 622
    inherited Image3: TImage
      Width = 622
      ExplicitWidth = 622
    end
    inherited LblBarraTitulo: TLabel
      Width = 616
      Caption = 'Relat'#243'rios Clientes/Fornecedores'
      ExplicitWidth = 268
    end
    inherited Image2: TImage
      Left = 549
      ExplicitLeft = 549
    end
  end
end
