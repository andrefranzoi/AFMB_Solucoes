inherited FrmContaCorrente: TFrmContaCorrente
  Caption = 'Cadastro de Conta Corrente'
  ClientHeight = 591
  OnDestroy = FormDestroy
  ExplicitHeight = 630
  PixelsPerInch = 96
  TextHeight = 15
  inherited FrmFrameBarra1: TFrmFrameBarra
    inherited pnTitulo: TPanel
      ExplicitHeight = 44
      inherited LblBarraTitulo: TLabel
        Caption = 'Cadastro de Conta Corrente'
      end
    end
  end
  inherited FrmFrameBotoes1: TFrmFrameBotoes
    Top = 531
    ExplicitTop = 531
    inherited PanelBotoesBottom: TPanel
      inherited SpbProcurar: TSpeedButton
        ExplicitLeft = 520
        ExplicitTop = 1
        ExplicitHeight = 50
      end
    end
  end
  inherited dbEditPesquisar: TIDBEditDialog
    SearchQuery.Strings = (
      'SELECT * FROM VIEW_CONTA_CORRENTE_DADOS'
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
        FieldName = 'DADOS_CONTA'
        WhereSyntax = 'DADOS_CONTA'
        DisplayLabel = 'DADOS DA CONTA:'
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
    Height = 481
    ActivePage = tabDetalhe
    ExplicitTop = 50
    ExplicitHeight = 481
    inherited tabPrincipal: TTabSheet
      OnEnter = tabPrincipalEnter
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 922
      ExplicitHeight = 451
      inherited GroupBox1: TGroupBox
        Height = 451
        ExplicitHeight = 451
        inherited cxGrid: TcxGrid
          Height = 432
          ExplicitHeight = 432
          inherited cxGridDados: TcxGridDBTableView
            inherited cxGridDadosCodigo: TcxGridDBColumn
              MinWidth = 60
              Width = 60
            end
            object cxGridDadosCodBanco: TcxGridDBColumn [1]
              Caption = 'C'#243'd Banco'
              DataBinding.FieldName = 'BANCO'
              MinWidth = 100
              Options.AutoWidthSizable = False
              Width = 100
            end
            object cxGridDadosAgencia: TcxGridDBColumn [2]
              Caption = 'Ag'#234'ncia'
              DataBinding.FieldName = 'AGENCIA'
              MinWidth = 100
              Options.AutoWidthSizable = False
              Width = 100
            end
            object cxGridDadosContaCorrente: TcxGridDBColumn [3]
              Caption = 'Conta Corrente'
              DataBinding.FieldName = 'CTA_CORRENTE'
              MinWidth = 100
              Options.AutoWidthSizable = False
              Width = 100
            end
            inherited cxGridDadosNome: TcxGridDBColumn
              Caption = 'Correntisa'
              DataBinding.FieldName = 'NOME_CORRENTISTA'
              Options.AutoWidthSizable = False
              Width = 154
            end
            object cxGridDadosNomeAgencia: TcxGridDBColumn [5]
              Caption = 'Nome da Ag'#234'ncia'
              DataBinding.FieldName = 'NOME_AGENCIA'
              Width = 206
            end
            object cxGridDadosSaldoInicial: TcxGridDBColumn [6]
              Caption = 'Saldo Inicial'
              DataBinding.FieldName = 'SALDOINICIAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.AutoWidthSizable = False
              Width = 150
            end
            inherited cxGridDadosStatus: TcxGridDBColumn
              Caption = 'Saldo Inicial'
              DataBinding.FieldName = 'SALDOINICIAL'
              Visible = False
              VisibleForEditForm = bTrue
              Width = 150
            end
          end
        end
      end
    end
    inherited tabDetalhe: TTabSheet
      OnEnter = tabDetalheEnter
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 922
      ExplicitHeight = 451
      inherited lblNome: TLabel
        Left = 10
        Top = 53
        Width = 293
        Caption = 'Correntista da Conta (Seu nome ou nome da empresa)'
        ExplicitLeft = 10
        ExplicitTop = 53
        ExplicitWidth = 293
      end
      object Label3: TLabel [2]
        Left = 385
        Top = 8
        Width = 43
        Height = 15
        Caption = 'Ag'#234'ncia'
      end
      object Label4: TLabel [3]
        Left = 495
        Top = 8
        Width = 82
        Height = 15
        Caption = 'Conta Corrente'
      end
      object Label5: TLabel [4]
        Left = 9
        Top = 97
        Width = 94
        Height = 15
        Caption = 'Nome da Ag'#234'ncia'
      end
      object Label7: TLabel [5]
        Left = 8
        Top = 143
        Width = 94
        Height = 15
        Caption = 'Gerente da Conta'
      end
      object Label8: TLabel [6]
        Left = 355
        Top = 145
        Width = 89
        Height = 15
        Caption = 'Fone da Ag'#234'ncia'
      end
      object Label1: TLabel [7]
        Left = 444
        Top = 8
        Width = 33
        Height = 15
        Caption = 'Digito'
      end
      object Label2: TLabel [8]
        Left = 498
        Top = 145
        Width = 73
        Height = 15
        Caption = 'Saldo Inicial:'
      end
      object Label10: TLabel [9]
        Left = 600
        Top = 9
        Width = 33
        Height = 15
        Caption = 'Digito'
      end
      inherited EditNome: TDBEdit
        Left = 10
        Top = 69
        Width = 620
        DataField = 'NOME_CORRENTISTA'
        TabOrder = 7
        ExplicitLeft = 10
        ExplicitTop = 69
        ExplicitWidth = 620
      end
      inherited rgStatus: TDBRadioGroup
        Left = 8
        Top = 188
        Width = 622
        TabOrder = 12
        ExplicitLeft = 8
        ExplicitTop = 188
        ExplicitWidth = 622
      end
      object DBEdit_nomeag: TDBEdit
        Left = 10
        Top = 114
        Width = 620
        Height = 23
        CharCase = ecUpperCase
        DataField = 'NOME_AGENCIA'
        DataSource = dsTabela
        TabOrder = 8
      end
      object DBEdit_contato: TDBEdit
        Left = 9
        Top = 159
        Width = 340
        Height = 23
        CharCase = ecUpperCase
        DataField = 'CONTATO'
        DataSource = dsTabela
        TabOrder = 9
      end
      object DBEdit_fone: TDBEdit
        Left = 355
        Top = 159
        Width = 137
        Height = 23
        CharCase = ecUpperCase
        DataField = 'FONE'
        DataSource = dsTabela
        TabOrder = 10
      end
      object DBEdit_agencia: TDBEdit
        Left = 383
        Top = 24
        Width = 57
        Height = 23
        CharCase = ecUpperCase
        DataField = 'AGENCIA'
        DataSource = dsTabela
        TabOrder = 3
      end
      object DBEdit_conta: TDBEdit
        Left = 495
        Top = 24
        Width = 98
        Height = 23
        CharCase = ecUpperCase
        DataField = 'CTA_CORRENTE'
        DataSource = dsTabela
        TabOrder = 5
      end
      object DBEdit2: TDBEdit
        Left = 446
        Top = 24
        Width = 31
        Height = 23
        CharCase = ecUpperCase
        DataField = 'AGENCIA_DIG'
        DataSource = dsTabela
        TabOrder = 4
      end
      object EditBancoNome: TEdit
        Left = 162
        Top = 24
        Width = 215
        Height = 23
        Enabled = False
        TabOrder = 2
        Text = '***'
      end
      object EditBanco: TIDBEditDialog
        Left = 93
        Top = 24
        Width = 65
        Height = 23
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = True
        TabOrder = 1
        Text = ''
        Visible = True
        LabelCaption = 'Banco'
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
        DataField = 'BANCO'
        DataSource = dsTabela
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditBancoNome
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = ' *** '
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_BANCOS'
          'WHERE'
          'CODIGO=:CODIGO'
          '')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_BANCOS'
          'WHERE'
          '%WHERE%')
        CountQuery.Strings = (
          'SELECT count(*) FROM CAD_BANCOS'
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
      object DBEdit1: TDBEdit
        Left = 498
        Top = 159
        Width = 132
        Height = 23
        CharCase = ecUpperCase
        DataField = 'SALDOINICIAL'
        DataSource = dsTabela
        TabOrder = 11
      end
      object DBEdit3: TDBEdit
        Left = 599
        Top = 24
        Width = 31
        Height = 23
        CharCase = ecUpperCase
        DataField = 'CTA_CORRENTE_DIG'
        DataSource = dsTabela
        TabOrder = 6
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 227
        Width = 922
        Height = 224
        Align = alBottom
        Caption = 'Configurar Boleto Banc'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        OnEnter = GroupBox2Enter
        OnExit = GroupBox2Exit
        object Label11: TLabel
          Left = 8
          Top = 16
          Width = 34
          Height = 15
          Caption = 'Banco'
        end
        object Label12: TLabel
          Left = 299
          Top = 15
          Width = 43
          Height = 15
          Caption = 'Ag'#234'ncia'
        end
        object Label13: TLabel
          Left = 407
          Top = 15
          Width = 114
          Height = 15
          Caption = 'C'#243'digo Cedente (C/C)'
        end
        object Label14: TLabel
          Left = 356
          Top = 15
          Width = 32
          Height = 15
          Caption = 'D'#237'gito'
        end
        object Label15: TLabel
          Left = 297
          Top = 56
          Width = 45
          Height = 15
          Caption = 'Carteira'
        end
        object Label17: TLabel
          Left = 407
          Top = 56
          Width = 79
          Height = 15
          Caption = 'Nosso n'#250'mero'
        end
        object Label18: TLabel
          Left = 10
          Top = 56
          Width = 94
          Height = 15
          Caption = 'Nome do Cedente'
        end
        object Label19: TLabel
          Left = 344
          Top = 56
          Width = 51
          Height = 15
          Caption = 'Conv'#234'nio'
        end
        object DBEdit4: TDBEdit
          Left = 297
          Top = 31
          Width = 57
          Height = 23
          CharCase = ecUpperCase
          Color = clBtnFace
          DataField = 'AGENCIA'
          DataSource = ds_BoletoConfigurar
          Enabled = False
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 407
          Top = 31
          Width = 79
          Height = 23
          CharCase = ecUpperCase
          Color = clBtnFace
          DataField = 'CEDENTECODIGO'
          DataSource = ds_BoletoConfigurar
          Enabled = False
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 8
          Top = 31
          Width = 35
          Height = 23
          CharCase = ecUpperCase
          Color = clBtnFace
          DataField = 'BANCO'
          DataSource = ds_BoletoConfigurar
          Enabled = False
          TabOrder = 0
        end
        object DBEdit7: TDBEdit
          Left = 47
          Top = 31
          Width = 247
          Height = 23
          CharCase = ecUpperCase
          Color = clBtnFace
          DataField = 'BANCONOME'
          DataSource = ds_BoletoConfigurar
          Enabled = False
          TabOrder = 1
        end
        object DBEdit8: TDBEdit
          Left = 358
          Top = 31
          Width = 31
          Height = 23
          CharCase = ecUpperCase
          Color = clBtnFace
          DataField = 'AGENCIADIGITO'
          DataSource = ds_BoletoConfigurar
          Enabled = False
          TabOrder = 3
        end
        object DBEdit9: TDBEdit
          Left = 489
          Top = 31
          Width = 31
          Height = 23
          CharCase = ecUpperCase
          Color = clBtnFace
          DataField = 'DIGITO'
          DataSource = ds_BoletoConfigurar
          Enabled = False
          TabOrder = 5
        end
        object GroupBox3: TGroupBox
          Left = 3
          Top = 99
          Width = 518
          Height = 122
          Caption = 'Instru'#231#245'es do Boleto'
          TabOrder = 10
          object DBMemo1: TDBMemo
            Left = 2
            Top = 17
            Width = 514
            Height = 103
            Hint = 'Instru'#231#245'es que sair'#225' no corpo do Boleto'
            Align = alClient
            DataField = 'INSTRUCOES'
            DataSource = ds_BoletoConfigurar
            TabOrder = 0
          end
        end
        object DBEdit10: TDBEdit
          Left = 295
          Top = 72
          Width = 46
          Height = 23
          Hint = 'Carteira de conv'#234'ncio com o banco para emiss'#227'o de boletos'
          CharCase = ecUpperCase
          DataField = 'CARTEIRA'
          DataSource = ds_BoletoConfigurar
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
        end
        object DBEdit11: TDBEdit
          Left = 407
          Top = 72
          Width = 113
          Height = 23
          Hint = 
            'Nosso n'#250'mero (seq'#252#234'ncia) - Campo modificado automaticamente pelo' +
            ' sistema. Informe um numero inicial ou atual'
          CharCase = ecUpperCase
          DataField = 'PROXIMONOSSONUMERO'
          DataSource = ds_BoletoConfigurar
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
        end
        object DBEdit12: TDBEdit
          Left = 8
          Top = 72
          Width = 284
          Height = 23
          Hint = 'Nome de sua empresa (sair'#225' no topo do boleto)'
          CharCase = ecUpperCase
          DataField = 'NOME_CEDENTE'
          DataSource = ds_BoletoConfigurar
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object DBRadioGroup2: TDBRadioGroup
          Left = 542
          Top = 17
          Width = 148
          Height = 205
          Hint = 
            'Tipo de Inscri'#231#227'o de sua empresa ou neg'#243'cio. Informe se '#233' CNPJ o' +
            'u CPF'
          Align = alRight
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Sua Inscri'#231#227'o:'
          DataField = 'TIPOINSCRICAO'
          DataSource = ds_BoletoConfigurar
          Items.Strings = (
            'Jur'#237'dica'
            'F'#237'sica')
          TabOrder = 11
          Values.Strings = (
            'J'
            'F')
        end
        object DBEdit13: TDBEdit
          Left = 344
          Top = 72
          Width = 52
          Height = 23
          Hint = 'Carteira de conv'#234'ncio com o banco para emiss'#227'o de boletos'
          CharCase = ecUpperCase
          DataField = 'CONVENIO'
          DataSource = ds_BoletoConfigurar
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object DBRadioGroup3: TDBRadioGroup
          Left = 690
          Top = 17
          Width = 230
          Height = 205
          Hint = 'Escolha o tipo (extens'#227'o) de arquivo ao exportar os boletos'
          Align = alRight
          Caption = 'Ao exportar boletos gerar arquivo:'
          DataField = 'EXPORTAR'
          DataSource = ds_BoletoConfigurar
          Items.Strings = (
            '&PDF - Adobe Reader'
            '&RTF - Microsoft Word'
            '&HTML - Formato internet')
          TabOrder = 12
          Values.Strings = (
            'pdf'
            'rtf'
            'htm')
        end
      end
    end
  end
  inherited dbTabela: TFDQuery
    AfterScroll = dbTabelaAfterScroll
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM FIN_CONTA_CORRENTE'
      'ORDER BY CODIGO, BANCO, AGENCIA, CTA_CORRENTE')
    Left = 664
    Top = 8
  end
  inherited dsTabela: TDataSource
    Left = 664
    Top = 32
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
  object db_BoletoConfigurar: TFDQuery
    AfterOpen = db_BoletoConfigurarAfterOpen
    BeforePost = db_BoletoConfigurarBeforePost
    MasterSource = dsTabela
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AssignedValues = [uvUpdateMode, uvCountUpdatedRecords]
    UpdateOptions.UpdateMode = upWhereAll
    SQL.Strings = (
      'SELECT * FROM FIN_CONTA_CORRENTE_BOLETO'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 768
    Top = 8
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object db_BoletoConfigurarCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object db_BoletoConfigurarBANCO: TIntegerField
      FieldName = 'BANCO'
    end
    object db_BoletoConfigurarBANCONOME: TStringField
      FieldName = 'BANCONOME'
      Size = 30
    end
    object db_BoletoConfigurarAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 30
    end
    object db_BoletoConfigurarAGENCIADIGITO: TStringField
      FieldName = 'AGENCIADIGITO'
      Size = 30
    end
    object db_BoletoConfigurarAGENCIANOME: TStringField
      FieldName = 'AGENCIANOME'
      Size = 30
    end
    object db_BoletoConfigurarCEDENTECODIGO: TStringField
      FieldName = 'CEDENTECODIGO'
      Size = 30
    end
    object db_BoletoConfigurarDIGITO: TStringField
      FieldName = 'DIGITO'
      Size = 30
    end
    object db_BoletoConfigurarCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      Size = 30
    end
    object db_BoletoConfigurarPROXIMONOSSONUMERO: TStringField
      FieldName = 'PROXIMONOSSONUMERO'
      Size = 30
    end
    object db_BoletoConfigurarINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 5000
    end
    object db_BoletoConfigurarTIPOINSCRICAO: TStringField
      FieldName = 'TIPOINSCRICAO'
      Size = 30
    end
    object db_BoletoConfigurarNOME_CEDENTE: TStringField
      FieldName = 'NOME_CEDENTE'
      Size = 200
    end
    object db_BoletoConfigurarCNPJ_CEDENTE: TStringField
      FieldName = 'CNPJ_CEDENTE'
      Size = 30
    end
    object db_BoletoConfigurarCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 30
    end
    object db_BoletoConfigurarEXPORTAR: TStringField
      FieldName = 'EXPORTAR'
      Size = 30
    end
  end
  object ds_BoletoConfigurar: TDataSource
    DataSet = db_BoletoConfigurar
    OnStateChange = ds_BoletoConfigurarStateChange
    Left = 768
    Top = 40
  end
end
