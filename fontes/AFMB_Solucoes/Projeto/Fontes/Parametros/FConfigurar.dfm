object FrmConfigurar: TFrmConfigurar
  Left = 209
  Top = 22
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Configura'#231#227'o do Sistema'
  ClientHeight = 613
  ClientWidth = 1064
  Color = clWhite
  Constraints.MinHeight = 597
  Constraints.MinWidth = 1070
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -15
  Font.Name = 'Calibri'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 564
    Width = 1058
    Height = 46
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object BtnCancelar: TBitBtn
      AlignWithMargins = True
      Left = 174
      Top = 3
      Width = 165
      Height = 40
      Cursor = crHandPoint
      Margins.Right = 15
      Align = alLeft
      Caption = '&Cancelar e Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtnCancelarClick
    end
    object BtnSalvar: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 165
      Height = 40
      Cursor = crHandPoint
      Align = alLeft
      Caption = '&Gravar e Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Btn_SalvarClick
    end
    object btnAdicionar: TBitBtn
      AlignWithMargins = True
      Left = 890
      Top = 3
      Width = 165
      Height = 40
      Align = alRight
      Caption = 'Cadastrar Empresa'
      TabOrder = 2
      OnClick = btnAdicionarClick
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 53
    Width = 1058
    Height = 505
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    ParentColor = True
    TabOrder = 0
    object PgParametros: TPageControl
      Left = 5
      Top = 5
      Width = 1048
      Height = 495
      ActivePage = Tab_DadosEmpresa
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      MultiLine = True
      ParentFont = False
      Style = tsFlatButtons
      TabOrder = 0
      object Tab_DadosEmpresa: TTabSheet
        Caption = 'Dados da Empresa'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 1040
          Height = 463
          Align = alClient
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object GroupBox7: TGroupBox
            Left = 2
            Top = 15
            Width = 1036
            Height = 227
            Align = alTop
            Color = clWhite
            ParentBackground = False
            ParentColor = False
            TabOrder = 0
            object Label5: TLabel
              Left = 82
              Top = 94
              Width = 45
              Height = 13
              Caption = '&Endere'#231'o'
              FocusControl = EditRUA
            end
            object Label8: TLabel
              Left = 520
              Top = 94
              Width = 28
              Height = 13
              Caption = '&Bairro'
              FocusControl = EditBAIRRO
            end
            object Label9: TLabel
              Left = 14
              Top = 94
              Width = 19
              Height = 13
              Caption = 'CE&P'
              FocusControl = EditCEP
            end
            object Label10: TLabel
              Left = 253
              Top = 136
              Width = 33
              Height = 13
              Caption = 'Ci&dade'
              FocusControl = EditCIDADE
            end
            object Label11: TLabel
              Left = 654
              Top = 136
              Width = 13
              Height = 13
              Caption = '&UF'
              FocusControl = EditUF
            end
            object Label12: TLabel
              Left = 14
              Top = 178
              Width = 24
              Height = 13
              Caption = 'F&one'
              FocusControl = EditNUM_FONE
            end
            object Label19: TLabel
              Left = 14
              Top = 51
              Width = 25
              Height = 13
              Caption = 'CNPJ'
              FocusControl = EditULT_VISITA
            end
            object Label1: TLabel
              Left = 157
              Top = 51
              Width = 18
              Height = 13
              Caption = 'I.E.'
              FocusControl = DBEdit1
            end
            object Label33: TLabel
              Left = 470
              Top = 94
              Width = 37
              Height = 13
              Caption = 'N'#250'mero'
              FocusControl = DBEdit21
            end
            object Label34: TLabel
              Left = 518
              Top = 178
              Width = 39
              Height = 13
              Caption = 'Contato'
              FocusControl = DBEdit22
            end
            object Label48: TLabel
              Left = 685
              Top = 13
              Width = 73
              Height = 13
              Caption = 'Nome fantasia:'
              FocusControl = DBEdit27
            end
            object Label25: TLabel
              Left = 14
              Top = 136
              Width = 65
              Height = 13
              Caption = 'Complemento'
              FocusControl = DBEdit12
            end
            object Label44: TLabel
              Left = 135
              Top = 177
              Width = 77
              Height = 13
              Caption = 'Site da Empresa'
              FocusControl = DBEdit20
            end
            object Label45: TLabel
              Left = 297
              Top = 177
              Width = 93
              Height = 13
              Caption = 'E - mail da Empresa'
              FocusControl = DBEdit23
            end
            object Label6: TLabel
              Left = 152
              Top = 136
              Width = 93
              Height = 13
              Caption = 'C'#243'd. Cidade [IBGE]'
              FocusControl = EditCIDADE
            end
            object Label2: TLabel
              Left = 84
              Top = 12
              Width = 60
              Height = 13
              Caption = 'Raz'#227'o Social'
              FocusControl = EditNOME
            end
            object Label15: TLabel
              Left = 14
              Top = 12
              Width = 55
              Height = 13
              Caption = 'ID Empresa'
              FocusControl = EditNOME
            end
            object Label13: TLabel
              Left = 552
              Top = 136
              Width = 73
              Height = 13
              Caption = 'C'#243'd. UF [IBGE]'
              FocusControl = EditCIDADE
            end
            object Label21: TLabel
              Left = 307
              Top = 51
              Width = 20
              Height = 13
              Caption = 'I.M.'
              FocusControl = DBEdit30
            end
            object Label22: TLabel
              Left = 496
              Top = 51
              Width = 27
              Height = 13
              Caption = 'CNAE'
              FocusControl = DBEdit40
            end
            object EditRUA: TDBEdit
              Left = 82
              Top = 109
              Width = 382
              Height = 21
              CharCase = ecUpperCase
              DataField = 'ENDERECO'
              DataSource = DS_Parametros
              TabOrder = 8
            end
            object EditBAIRRO: TDBEdit
              Left = 520
              Top = 109
              Width = 159
              Height = 21
              CharCase = ecUpperCase
              DataField = 'BAIRRO'
              DataSource = DS_Parametros
              TabOrder = 10
            end
            object EditCEP: TDBEdit
              Left = 14
              Top = 109
              Width = 64
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CEP'
              DataSource = DS_Parametros
              TabOrder = 7
            end
            object EditCIDADE: TDBEdit
              Left = 252
              Top = 152
              Width = 293
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CIDADE'
              DataSource = DS_Parametros
              TabOrder = 13
            end
            object EditUF: TDBEdit
              Left = 654
              Top = 152
              Width = 25
              Height = 21
              CharCase = ecUpperCase
              DataField = 'UF'
              DataSource = DS_Parametros
              MaxLength = 2
              TabOrder = 15
            end
            object EditNUM_FONE: TDBEdit
              Left = 14
              Top = 193
              Width = 115
              Height = 21
              CharCase = ecUpperCase
              DataField = 'FONE'
              DataSource = DS_Parametros
              TabOrder = 16
            end
            object EditULT_VISITA: TDBEdit
              Left = 14
              Top = 68
              Width = 137
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CNPJ'
              DataSource = DS_Parametros
              TabOrder = 3
            end
            object DBEdit1: TDBEdit
              Left = 158
              Top = 68
              Width = 145
              Height = 21
              CharCase = ecUpperCase
              DataField = 'IE'
              DataSource = DS_Parametros
              TabOrder = 4
            end
            object DBEdit21: TDBEdit
              Left = 470
              Top = 109
              Width = 41
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NUMERO'
              DataSource = DS_Parametros
              TabOrder = 9
            end
            object DBEdit22: TDBEdit
              Left = 520
              Top = 193
              Width = 159
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CONTATO'
              DataSource = DS_Parametros
              TabOrder = 19
            end
            object DBEdit27: TDBEdit
              Left = 685
              Top = 27
              Width = 340
              Height = 21
              DataField = 'NOMEFANTASIA'
              DataSource = DS_Parametros
              TabOrder = 2
            end
            object DBEdit12: TDBEdit
              Left = 14
              Top = 152
              Width = 132
              Height = 21
              CharCase = ecUpperCase
              DataField = 'COMPLEMENTO'
              DataSource = DS_Parametros
              TabOrder = 11
            end
            object DBEdit20: TDBEdit
              Left = 135
              Top = 193
              Width = 157
              Height = 21
              CharCase = ecLowerCase
              DataField = 'SITE'
              DataSource = DS_Parametros
              TabOrder = 17
            end
            object DBEdit23: TDBEdit
              Left = 296
              Top = 193
              Width = 218
              Height = 21
              CharCase = ecLowerCase
              DataField = 'EMAIL'
              DataSource = DS_Parametros
              TabOrder = 18
            end
            object Panel1: TPanel
              Left = 685
              Top = 54
              Width = 160
              Height = 159
              BevelKind = bkSoft
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 20
              object IMGLogomarca: TImage
                AlignWithMargins = True
                Left = 3
                Top = 44
                Width = 150
                Height = 108
                Hint = '2 cliques limpar'
                Align = alClient
                Center = True
                ParentShowHint = False
                Proportional = True
                ShowHint = True
                Transparent = True
                OnDblClick = IMGLogomarcaDblClick
                ExplicitLeft = 2
                ExplicitTop = 51
                ExplicitWidth = 135
                ExplicitHeight = 120
              end
              object BtnLogomarca: TSpeedButton
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 150
                Height = 35
                Cursor = crHandPoint
                Align = alTop
                Caption = 'Imagem Principal'
                OnClick = BtnLogomarcaClick
                ExplicitLeft = -2
              end
            end
            object Panel3: TPanel
              Left = 865
              Top = 54
              Width = 160
              Height = 159
              BevelKind = bkSoft
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 21
              object IMGLogoRelatorios: TImage
                AlignWithMargins = True
                Left = 3
                Top = 44
                Width = 150
                Height = 108
                Hint = '2 cliques limpar'
                Align = alClient
                Center = True
                ParentShowHint = False
                Proportional = True
                ShowHint = True
                Transparent = True
                OnDblClick = IMGLogoRelatoriosDblClick
                ExplicitLeft = 2
                ExplicitTop = 24
                ExplicitWidth = 135
                ExplicitHeight = 98
              end
              object BtnLogoRelatorios: TSpeedButton
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 150
                Height = 35
                Cursor = crHandPoint
                Align = alTop
                Caption = 'Logo na NF-e'
                OnClick = BtnLogoRelatoriosClick
                ExplicitLeft = 0
                ExplicitTop = 124
                ExplicitWidth = 140
              end
            end
            object DBEdit4: TDBEdit
              Left = 152
              Top = 152
              Width = 96
              Height = 21
              Hint = 'obrigat'#243'rio caso sua empresa emita Nota Fiscal Eletr'#244'nica'
              CharCase = ecUpperCase
              DataField = 'IDCIDADE'
              DataSource = DS_Parametros
              ParentShowHint = False
              ShowHint = True
              TabOrder = 12
            end
            object DBEdit5: TDBEdit
              Left = 14
              Top = 27
              Width = 64
              Height = 21
              Hint = 
                'C'#243'digo da empresa ou filial (c'#243'digo 1 sempre ser'#225' empresa matriz' +
                ')'
              CharCase = ecUpperCase
              Color = clBtnFace
              DataField = 'EMPRESA'
              DataSource = DS_Parametros
              Enabled = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
            object EditNOME: TDBEdit
              Left = 84
              Top = 27
              Width = 595
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NOME'
              DataSource = DS_Parametros
              TabOrder = 1
            end
            object DBEdit7: TDBEdit
              Left = 552
              Top = 152
              Width = 96
              Height = 21
              Hint = 'obrigat'#243'rio caso sua empresa emita Nota Fiscal Eletr'#244'nica'
              CharCase = ecUpperCase
              DataField = 'IDUF'
              DataSource = DS_Parametros
              ParentShowHint = False
              ShowHint = True
              TabOrder = 14
            end
            object DBEdit30: TDBEdit
              Left = 307
              Top = 68
              Width = 183
              Height = 21
              CharCase = ecUpperCase
              DataField = 'IM'
              DataSource = DS_Parametros
              TabOrder = 5
            end
            object DBEdit40: TDBEdit
              Left = 496
              Top = 68
              Width = 183
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CNAE'
              DataSource = DS_Parametros
              TabOrder = 6
            end
          end
          object GroupBox13: TGroupBox
            AlignWithMargins = True
            Left = 527
            Top = 245
            Width = 508
            Height = 213
            Align = alRight
            Caption = 'ISSQN'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 2
            Visible = False
            object DBRadioGroup10: TDBRadioGroup
              AlignWithMargins = True
              Left = 5
              Top = 18
              Width = 373
              Height = 190
              Align = alClient
              Caption = 'Regime Tribut'#225'rio ISSQN'
              DataField = 'REGTRIBISSQN'
              DataSource = DS_Parametros
              Items.Strings = (
                '0 - Nenhum'
                '1 - Microempresa municipal'
                '2 - Estimativa'
                '3 - Sociedade de profissionais'
                '4 - Cooperativa'
                '5 - Microempres'#225'rio Individual (MEI)'
                '6 - Microempres'#225'rio e Empresa de Pequeno Porte (ME EPP)')
              TabOrder = 0
              Values.Strings = (
                '0'
                '1'
                '2'
                '3'
                '4'
                '5'
                '6')
            end
            object DBRadioGroup12: TDBRadioGroup
              AlignWithMargins = True
              Left = 384
              Top = 18
              Width = 119
              Height = 190
              Align = alRight
              Caption = 'Ind. Rat. ISSQN'
              DataField = 'INDRATISSQN'
              DataSource = DS_Parametros
              Items.Strings = (
                'Sim'
                'N'#227'o')
              TabOrder = 1
              Values.Strings = (
                '0'
                '1')
            end
          end
          object Panel6: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 245
            Width = 516
            Height = 213
            Align = alClient
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object Panel10: TPanel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 344
              Height = 205
              Align = alLeft
              BevelKind = bkSoft
              Color = clWhite
              ParentBackground = False
              TabOrder = 0
              object DBRadioGroup4: TDBRadioGroup
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 332
                Height = 193
                Align = alClient
                Caption = 'Regime Tribut'#225'rio'
                Color = clWhite
                DataField = 'REGIME_TRIB'
                DataSource = DS_Parametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Items.Strings = (
                  '1 - Simples Nacional')
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 0
                Values.Strings = (
                  '1')
              end
            end
            object GroupBox9: TGroupBox
              Left = 351
              Top = 1
              Width = 164
              Height = 211
              Align = alClient
              Caption = 'Al'#237'quotas - Regime da Empresa'
              Color = clWhite
              ParentBackground = False
              ParentColor = False
              TabOrder = 1
              object Label68: TLabel
                Left = 10
                Top = 18
                Width = 108
                Height = 15
                Caption = 'Simples Nacional %'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
              end
              object Label72: TLabel
                Left = 10
                Top = 72
                Width = 29
                Height = 15
                Caption = 'PIS %'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
              end
              object Label73: TLabel
                Left = 10
                Top = 122
                Width = 52
                Height = 15
                Caption = 'COFINS %'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
              end
              object DBEdit47: TDBEdit
                Left = 10
                Top = 35
                Width = 120
                Height = 23
                Hint = 'Al'#237'quota do Simples Nacional %'
                DataField = 'REGIME_TRIBALIQUOT'
                DataSource = DS_Parametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
              end
              object DBEdit49: TDBEdit
                Left = 10
                Top = 89
                Width = 120
                Height = 23
                Hint = 'Al'#237'quota do Simples Nacional %'
                DataField = 'ALIQPIS'
                DataSource = DS_Parametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
              end
              object DBEdit50: TDBEdit
                Left = 10
                Top = 139
                Width = 120
                Height = 23
                Hint = 'Al'#237'quota do Simples Nacional %'
                DataField = 'ALIQCOFINS'
                DataSource = DS_Parametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
              end
            end
          end
        end
      end
      object Tab_Operacionais: TTabSheet
        Caption = 'Certificado e email'
        ImageIndex = 8
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox10: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1034
          Height = 457
          Align = alClient
          TabOrder = 0
          object GroupBox4: TGroupBox
            AlignWithMargins = True
            Left = 5
            Top = 324
            Width = 1024
            Height = 128
            Align = alBottom
            Caption = 'Email - Configura'#231#245'es'
            TabOrder = 1
            object Label20: TLabel
              Left = 15
              Top = 59
              Width = 133
              Height = 14
              Caption = 'Servidor de Sa'#237'da (SMTP)'
            end
            object Label26: TLabel
              Left = 222
              Top = 59
              Width = 28
              Height = 14
              Caption = 'Porta'
            end
            object Label35: TLabel
              Left = 270
              Top = 16
              Width = 43
              Height = 14
              Caption = 'Usu'#225'rio'
            end
            object Label39: TLabel
              Left = 270
              Top = 57
              Width = 34
              Height = 14
              Caption = 'Senha'
            end
            object Label49: TLabel
              Left = 15
              Top = 16
              Width = 137
              Height = 14
              Caption = 'Servidor de Entrada (POP)'
            end
            object Label47: TLabel
              Left = 222
              Top = 16
              Width = 28
              Height = 14
              Caption = 'Porta'
            end
            object Label50: TLabel
              Left = 534
              Top = 57
              Width = 215
              Height = 14
              Caption = 'De/From (nome abreviado da empresa)'
            end
            object DBEdit11: TDBEdit
              Left = 16
              Top = 74
              Width = 202
              Height = 22
              DataField = 'EMAIL_SMTPHOST'
              DataSource = DS_Parametros
              TabOrder = 2
            end
            object DBEdit17: TDBEdit
              Left = 222
              Top = 74
              Width = 43
              Height = 22
              DataField = 'EMAIL_SMTPPORTA'
              DataSource = DS_Parametros
              TabOrder = 3
            end
            object DBEdit18: TDBEdit
              Left = 271
              Top = 33
              Width = 249
              Height = 22
              DataField = 'EMAIL_USUARIO'
              DataSource = DS_Parametros
              TabOrder = 4
            end
            object DBEdit24: TDBEdit
              Left = 271
              Top = 74
              Width = 249
              Height = 22
              DataField = 'EMAIL_SENHA'
              DataSource = DS_Parametros
              PasswordChar = '*'
              TabOrder = 5
            end
            object DBCheckBox3: TDBCheckBox
              Left = 536
              Top = 36
              Width = 249
              Height = 17
              Caption = 'Usar seguran'#231'a SSL/TSL'
              DataField = 'EMAIL_SSLTSL'
              DataSource = DS_Parametros
              TabOrder = 6
              ValueChecked = 'SIM'
              ValueUnchecked = 'NAO'
            end
            object DBEdit26: TDBEdit
              Left = 16
              Top = 33
              Width = 202
              Height = 22
              DataField = 'EMAIL_POP3HOST'
              DataSource = DS_Parametros
              TabOrder = 0
            end
            object DBEdit25: TDBEdit
              Left = 222
              Top = 33
              Width = 43
              Height = 22
              DataField = 'EMAIL_POP3PORTA'
              DataSource = DS_Parametros
              TabOrder = 1
            end
            object DBEdit28: TDBEdit
              Left = 535
              Top = 74
              Width = 249
              Height = 22
              DataField = 'EMAIL_NOME'
              DataSource = DS_Parametros
              TabOrder = 7
            end
            object DBCheckBox9: TDBCheckBox
              AlignWithMargins = True
              Left = 5
              Top = 99
              Width = 1014
              Height = 24
              Hint = 
                'Para cada NF-e emitida, envia e-mail com anexo do XML/PDF, autom' +
                'aticamente ao cliente.'
              Align = alBottom
              Caption = 'Enviar e-mail do XML/PDF da NF-e para o cliente'
              DataField = 'NFE_ENVIAREMAIL'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 8
              ValueChecked = 'SIM'
              ValueUnchecked = 'NAO'
            end
          end
          object Panel8: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 19
            Width = 1024
            Height = 299
            Align = alClient
            Color = cl3DLight
            ParentBackground = False
            TabOrder = 0
            object grpCertificado: TGroupBox
              AlignWithMargins = True
              Left = 224
              Top = 4
              Width = 404
              Height = 291
              Margins.Left = 1
              Align = alClient
              Caption = 'Certificado Digital'
              Color = clWhite
              ParentBackground = False
              ParentColor = False
              TabOrder = 1
              object Label42: TLabel
                Left = 8
                Top = 21
                Width = 128
                Height = 14
                Caption = 'Local do Certificado (A1)'
              end
              object Label43: TLabel
                Left = 8
                Top = 69
                Width = 110
                Height = 14
                Caption = 'Senha do Certificado'
              end
              object Label46: TLabel
                Left = 8
                Top = 116
                Width = 128
                Height = 14
                Caption = 'S'#233'rie do Certificado (A3)'
              end
              object DBEdit8: TDBEdit
                Left = 8
                Top = 39
                Width = 367
                Height = 22
                DataField = 'NFE_CERTIFICADO_LOCAL'
                DataSource = DS_Parametros
                TabOrder = 0
              end
              object btnCarregarCertficado: TButton
                Left = 378
                Top = 37
                Width = 25
                Height = 24
                Caption = '...'
                TabOrder = 1
                OnClick = btnCarregarCertficadoClick
              end
              object DBEdit9: TDBEdit
                Left = 8
                Top = 87
                Width = 233
                Height = 22
                DataField = 'NFE_CERTIFICADO_SENHA'
                DataSource = DS_Parametros
                PasswordChar = '*'
                TabOrder = 2
              end
              object DBEdit10: TDBEdit
                Left = 8
                Top = 133
                Width = 345
                Height = 22
                DataField = 'NFE_CERTIFICADO_NUMSERIE'
                DataSource = DS_Parametros
                TabOrder = 3
              end
              object Button1: TButton
                Left = 359
                Top = 133
                Width = 25
                Height = 24
                Caption = '...'
                TabOrder = 4
                OnClick = Button1Click
              end
            end
            object rgbTipoSSL: TDBRadioGroup
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 105
              Height = 291
              Align = alLeft
              Caption = 'SSL - Tipo'
              Color = clWhite
              DataField = 'SSL_TIPO'
              DataSource = DS_Parametros
              Items.Strings = (
                'OpenSSL'
                'WinCrypt'
                'Capicom')
              ParentBackground = False
              ParentColor = False
              TabOrder = 0
              Values.Strings = (
                'OPENSSL'
                'WINCRYPT'
                'CAPICOM')
            end
            object GroupBox29: TGroupBox
              AlignWithMargins = True
              Left = 634
              Top = 4
              Width = 386
              Height = 291
              Align = alRight
              Caption = 'Respons'#225'vel T'#233'cnico do Software Emissor de NF-e/NFC-e/SAT CF-e'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              TabOrder = 2
              object Label74: TLabel
                Left = 9
                Top = 79
                Width = 65
                Height = 15
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'CNPJ:'
                FocusControl = DBEdit51
              end
              object Label75: TLabel
                Left = 9
                Top = 105
                Width = 65
                Height = 15
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Contato:'
                FocusControl = DBEdit52
              end
              object Label76: TLabel
                Left = 9
                Top = 131
                Width = 65
                Height = 15
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'F&one:'
                FocusControl = DBEdit53
              end
              object Label77: TLabel
                Left = 9
                Top = 157
                Width = 65
                Height = 15
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'E-mail:'
                FocusControl = DBEdit54
              end
              object Label78: TLabel
                Left = 9
                Top = 27
                Width = 65
                Height = 15
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'ID - CSRT:'
                FocusControl = DBEdit55
              end
              object Label79: TLabel
                Left = 9
                Top = 53
                Width = 65
                Height = 15
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'CSRT:'
                FocusControl = DBEdit56
              end
              object Label80: TLabel
                Left = 232
                Top = 79
                Width = 140
                Height = 13
                Caption = '(ser'#225' utlizado pelo SAT CF-e)'
                FocusControl = DBEdit51
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object DBEdit51: TDBEdit
                Left = 75
                Top = 76
                Width = 153
                Height = 21
                CharCase = ecUpperCase
                DataField = 'RESPTEC_CNPJ'
                DataSource = DS_Parametros
                TabOrder = 2
              end
              object DBEdit52: TDBEdit
                Left = 75
                Top = 101
                Width = 300
                Height = 21
                CharCase = ecUpperCase
                DataField = 'RESPTEC_XCONTATO'
                DataSource = DS_Parametros
                TabOrder = 3
              end
              object DBEdit53: TDBEdit
                Left = 75
                Top = 128
                Width = 153
                Height = 21
                CharCase = ecUpperCase
                DataField = 'RESPTEC_FONE'
                DataSource = DS_Parametros
                TabOrder = 4
              end
              object DBEdit54: TDBEdit
                Left = 75
                Top = 155
                Width = 300
                Height = 21
                CharCase = ecLowerCase
                DataField = 'RESPTEC_EMAIL'
                DataSource = DS_Parametros
                TabOrder = 5
              end
              object DBEdit55: TDBEdit
                Left = 75
                Top = 24
                Width = 41
                Height = 21
                CharCase = ecUpperCase
                DataField = 'RESPTEC_IDCSRT'
                DataSource = DS_Parametros
                TabOrder = 0
              end
              object DBEdit56: TDBEdit
                Left = 75
                Top = 50
                Width = 153
                Height = 21
                CharCase = ecUpperCase
                DataField = 'RESPTEC_CSRT'
                DataSource = DS_Parametros
                TabOrder = 1
              end
            end
            object rgbSSLSeguranca: TDBRadioGroup
              AlignWithMargins = True
              Left = 115
              Top = 4
              Width = 105
              Height = 291
              Align = alLeft
              Caption = 'TSL - Tipo'
              Color = clWhite
              DataField = 'TSL_TIPO'
              DataSource = DS_Parametros
              Items.Strings = (
                'LT_ALL'
                'LT_TLSV1_2')
              ParentBackground = False
              ParentColor = False
              TabOrder = 3
              Values.Strings = (
                'LT_ALL'
                'LT_TLSV1_2')
            end
          end
        end
      end
      object TabNFe: TTabSheet
        Caption = 'NF-e'
        ImageIndex = 6
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox14: TGroupBox
          Left = 0
          Top = 340
          Width = 1040
          Height = 79
          Align = alTop
          Caption = 
            'Configura'#231#227'o Documento/N'#250'mero Fiscal/Optante do Simples Nacional' +
            ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object Panel7: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 20
            Width = 1030
            Height = 54
            Align = alClient
            BevelKind = bkSoft
            TabOrder = 0
            object Label7: TLabel
              Left = 4
              Top = 3
              Width = 45
              Height = 15
              Caption = 'Modelo:'
              FocusControl = DBEdit35
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 79
              Top = 3
              Width = 30
              Height = 15
              Caption = 'S'#233'rie:'
              FocusControl = DBEdit36
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
            end
            object Label58: TLabel
              Left = 157
              Top = 3
              Width = 125
              Height = 15
              Hint = 'informe o ultimo numero de Nota Fiscal Eletronica emitida'
              Caption = 'Ultima Sequ'#234'ncia NF-e:'
              FocusControl = DBEdit37
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
            end
            object Label62: TLabel
              Left = 298
              Top = 3
              Width = 74
              Height = 15
              Caption = 'Lote de Envio:'
              FocusControl = DBEdit38
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit35: TDBEdit
              Left = 4
              Top = 19
              Width = 74
              Height = 23
              Hint = 'Informe o n'#250'mero: 55'
              CharCase = ecUpperCase
              DataField = 'NFE_MODELO'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
            object DBEdit36: TDBEdit
              Left = 80
              Top = 19
              Width = 74
              Height = 23
              Hint = 'Informe a s'#233'rie da sua NFe (padr'#227'o '#233' numero  1)'
              CharCase = ecUpperCase
              DataField = 'NFE_SERIE'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
            end
            object DBEdit37: TDBEdit
              Left = 157
              Top = 19
              Width = 136
              Height = 23
              Hint = 
                'Pela legisla'#231#227'o brasileira este campo deve ser sequencial e n'#227'o ' +
                'pode ser alterado manualmente.'
              CharCase = ecUpperCase
              DataField = 'NFE_SEQUENCIA'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
            end
            object DBEdit38: TDBEdit
              Left = 298
              Top = 19
              Width = 83
              Height = 23
              Hint = 
                'Pela legisla'#231#227'o brasileira este campo deve ser sequencial e n'#227'o ' +
                'pode ser alterado manualmente.'
              CharCase = ecUpperCase
              DataField = 'NFE_LOTE'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
            end
          end
        end
        object grpCFOP: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 264
          Width = 1034
          Height = 73
          Align = alTop
          Caption = 'CFOP padr'#227'o para Venda'
          TabOrder = 1
          object IDBEditDialog6: TIDBEditDialog
            Left = 10
            Top = 40
            Width = 75
            Height = 23
            Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = ''
            Visible = True
            EditType = etUppercase
            FocusColor = clWindow
            LabelCaption = 'Dentro do Estado (opera'#231#245'es internas)'
            LabelAlwaysEnabled = True
            LabelFont.Charset = ANSI_CHARSET
            LabelFont.Color = clBlack
            LabelFont.Height = -12
            LabelFont.Name = 'Calibri'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Version = '5.0.0.0'
            ButtonStyle = bsButton
            ButtonWidth = 16
            ButtonHint = 'Procurar...'
            Etched = False
            ButtonCaption = '...'
            DataField = 'CFOP_VNDUFLOCAL'
            DataSource = DS_Parametros
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = Edit5
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
              'OPERACAO='#39'S'#39
              'AND'
              '%WHERE%')
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
                DisplayWidth = 75
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
                DisplayWidth = 15
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
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
          object Edit5: TEdit
            Left = 88
            Top = 40
            Width = 338
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object IDBEditDialog7: TIDBEditDialog
            Left = 441
            Top = 40
            Width = 75
            Height = 23
            Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = ''
            Visible = True
            EditType = etUppercase
            FocusColor = clWindow
            LabelCaption = 'Fora do Estado (opera'#231#245'es externas)'
            LabelAlwaysEnabled = True
            LabelFont.Charset = ANSI_CHARSET
            LabelFont.Color = clBlack
            LabelFont.Height = -12
            LabelFont.Name = 'Calibri'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Version = '5.0.0.0'
            ButtonStyle = bsButton
            ButtonWidth = 16
            ButtonHint = 'Procurar...'
            Etched = False
            ButtonCaption = '...'
            DataField = 'CFOP_VNDAUFEXTERNO'
            DataSource = DS_Parametros
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = Edit6
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
              'OPERACAO='#39'S'#39
              'AND'
              '%WHERE%')
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
                DisplayWidth = 75
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
                DisplayWidth = 15
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
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
          object Edit6: TEdit
            Left = 517
            Top = 40
            Width = 338
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
        end
        object Panel5: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1034
          Height = 255
          Align = alTop
          BevelWidth = 2
          TabOrder = 0
          object DBRadioGroup6: TDBRadioGroup
            AlignWithMargins = True
            Left = 380
            Top = 5
            Width = 208
            Height = 245
            Align = alLeft
            Caption = 'Modelo de DANFE'
            DataField = 'NFE_TIPODANFE'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Items.Strings = (
              'Retrato'
              'Paisagem')
            ParentFont = False
            TabOrder = 2
            Values.Strings = (
              '1'
              '2')
          end
          object DBRadioGroup11: TDBRadioGroup
            AlignWithMargins = True
            Left = 202
            Top = 5
            Width = 172
            Height = 245
            Align = alLeft
            Caption = 'Tipo de emiss'#227'o'
            DataField = 'NFE_FORMAEMISSAO'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Items.Strings = (
              'Normal'
              'Conting'#234'ncia (offline)'
              'SCAN'
              'EPEC'
              'FSDA')
            ParentFont = False
            TabOrder = 1
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5')
          end
          object DBRadioGroup15: TDBRadioGroup
            AlignWithMargins = True
            Left = 594
            Top = 5
            Width = 435
            Height = 245
            Align = alClient
            Caption = 'Frete por conta do:'
            DataField = 'FRETEPADRAO'
            DataSource = DS_Parametros
            Items.Strings = (
              'Contrata'#231#227'o do Frete por conta do Remetente (CIF);'
              'Contrata'#231#227'o do Frete por conta do destinat'#225'rio/remetente (FOB);'
              'Contrata'#231#227'o do Frete por conta de terceiros;'
              'Transporte pr'#243'prio por conta do remetente;'
              'Transporte pr'#243'prio por conta do destinat'#225'rio;'
              'Sem Transportadora.')
            TabOrder = 3
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4'
              '9')
          end
          object DBRadioGroup5: TDBRadioGroup
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 191
            Height = 245
            Align = alLeft
            Caption = 'Tipo de Ambiente (para NF-e)'
            Color = clWhite
            DataField = 'NFE_AMBIENTE'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Items.Strings = (
              'Produ'#231#227'o (Real)'
              'Homologa'#231#227'o (Teste)')
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            Values.Strings = (
              '0'
              '1')
          end
        end
      end
      object tabvenda: TTabSheet
        Caption = 'Cliente e Vendedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        ImageIndex = 4
        ParentFont = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox16: TGroupBox
          Left = 0
          Top = 0
          Width = 1040
          Height = 153
          Align = alTop
          Caption = 'Cliente e Vendedor Padr'#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object EditCliente: TIDBEditDialog
            Left = 5
            Top = 43
            Width = 80
            Height = 23
            Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = ''
            Visible = True
            LabelCaption = 'Cliente padr'#227'o do sistema:'
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
            DataField = 'VND_IDCLIENTEPADRAO'
            DataSource = DS_Parametros
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditNomeCliente
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = ' *** '
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_CLIENTES'
              'WHERE'
              'TIPO='#39'CLIENTE'#39
              'AND'
              'CODIGO=:CODIGO')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_CLIENTES'
              'WHERE'
              'TIPO='#39'CLIENTE'#39
              'AND'
              '%WHERE%')
            CountQuery.Strings = (
              'SELECT COUNT(*) FROM CAD_CLIENTES'
              'WHERE'
              'TIPO='#39'CLIENTE'#39
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
          object EditNomeCliente: TEdit
            Left = 89
            Top = 43
            Width = 310
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = '***'
          end
          object EditCodevendedor: TIDBEditDialog
            Left = 5
            Top = 91
            Width = 80
            Height = 23
            Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
            HelpKeyWord = ''
            Color = clWindow
            Enabled = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = ''
            Visible = True
            LabelCaption = 'Vendedor padr'#227'o do sistema:'
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
            DataField = 'VND_IDVENDPADRAO'
            DataSource = DS_Parametros
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditVendedor1
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
              
                'TIPO IN ('#39'VENDEDOR'#39','#39'REPRESENTANTE'#39','#39'BALCONISTA'#39','#39'FUNCIONARIO'#39','#39 +
                'PREPOSTO'#39','#39'TELEVENDAS'#39','#39'WEBVENDAS'#39')'
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
                SearchCase = scUpper
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
          object EditVendedor1: TEdit
            Left = 89
            Top = 91
            Width = 310
            Height = 23
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Text = '***'
          end
        end
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 1064
    Height = 50
    Align = alTop
    Constraints.MinHeight = 50
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 1064
    inherited Image3: TImage
      Width = 1064
      ExplicitTop = 33
      ExplicitWidth = 894
      ExplicitHeight = 39
    end
    inherited pnTitulo: TPanel
      Width = 1058
      Constraints.MinHeight = 33
      ExplicitWidth = 1058
      ExplicitHeight = 44
      inherited LblBarraTitulo: TLabel
        Width = 907
        Caption = 'Configura'#231#227'o e padroniza'#231#227'o do sistema'
        ExplicitWidth = 416
        ExplicitHeight = 33
      end
      inherited Image1: TImage
        ExplicitLeft = 1008
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 996
        ExplicitLeft = 838
        ExplicitHeight = 31
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'All (*.gif;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf)|*.gif;*.jpg;*.j' +
      'peg;*.bmp;*.ico;*.emf;*.wmf|GIF Image (*.gif)|*.gif|JPEG Image F' +
      'ile (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bitmaps (*.bmp' +
      ')|*.bmp|Icons (*.ico)|*.ico|Enhanced Metafiles (*.emf)|*.emf|Met' +
      'afiles (*.wmf)|*.wmf'
    Left = 581
    Top = 337
  end
  object db_Parametros: TFDQuery
    AfterPost = db_ParametrosAfterPost
    AfterScroll = db_ParametrosAfterScroll
    OnNewRecord = db_ParametrosNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'EMPRESA'
    SQL.Strings = (
      'SELECT * FROM CONFIG_PARAMETROS'
      'WHERE EMPRESA=:EMPRESA')
    Left = 632
    Top = 312
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object DS_Parametros: TDataSource
    DataSet = db_Parametros
    Left = 592
    Top = 264
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 504
    Top = 336
  end
  object OpenCertificado: TOpenDialog
    Filter = 'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*'
    Title = 'Selecione o Certificado'
    Left = 939
    Top = 81
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 280
    Top = 286
  end
  object ACBrPosPrinter1: TACBrPosPrinter
    Modelo = ppEscPosEpson
    Device.NomeDocumento = 'ACBrPorPrinterDemo'
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 0
    CortaPapel = False
    VerificarImpressora = True
    Left = 448
    Top = 232
  end
end
