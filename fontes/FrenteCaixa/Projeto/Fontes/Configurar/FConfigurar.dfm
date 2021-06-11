object FrmConfigurar: TFrmConfigurar
  Left = 209
  Top = 22
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Configura'#231#227'o do Sistema'
  ClientHeight = 612
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
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object Panel4: TPanel
    Left = 0
    Top = 562
    Width = 1064
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object BtnCancelar: TBitBtn
      AlignWithMargins = True
      Left = 174
      Top = 3
      Width = 165
      Height = 44
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
      Height = 44
      Cursor = crHandPoint
      Align = alLeft
      Caption = '&Gravar e Sair'
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000001010102000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000B0C081277845DC9323727540000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000B0C081279865FCD97A776FF94A474FA3237275400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000090A
        070F79865FCD97A776FF97A776FF97A776FF94A474FA31362652000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000090A070F7884
        5DCA97A776FF97A776FF97A776FF97A776FF97A776FF93A373F92E33244E0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000090A070F78845DCA97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF93A373F92E33
        244E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000090A070F78845DCA97A776FF97A7
        76FF97A776FF97A776FF74805BC493A373F997A776FF97A776FF97A776FF93A3
        73F92F34254F0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000090A070F78845DCA97A776FF97A776FF97A7
        76FF97A776FF687351B0040403062E32244D93A373F997A776FF97A776FF97A7
        76FF93A373F92F34254F00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000090A070F78845DCA97A776FF97A776FF97A776FF97A7
        76FF687351B00404030600000000000000002E32244D93A373F997A776FF97A7
        76FF97A776FF93A373F92F34254F000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000090A070F78845DCA97A776FF97A776FF97A776FF97A776FF6873
        51B004040306000000000000000000000000000000002E32244D93A373F997A7
        76FF97A776FF97A776FF93A373F92F34254F0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000353A295996A676FE97A776FF97A776FF97A776FF687351B00404
        03060000000000000000000000000000000000000000000000002E32244D93A3
        73F997A776FF97A776FF97A776FF93A373F92F34254F00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000004147326D96A676FE97A776FF687351B0040403060000
        0000000000000000000000000000000000000000000000000000000000002E32
        244D93A373F997A776FF97A776FF97A776FF93A373F92F34254F000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000004147326D687351AF04040306000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00002E32244D93A373F997A776FF97A776FF97A776FF93A373F92F34254F0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000101000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000002E32244D93A373F997A776FF97A776FF97A776FF93A373F92F34
        254F000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002E32244D93A373F997A776FF97A776FF97A776FF93A3
        73F92F34254F0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000002E32244D93A373F997A776FF97A776FF97A7
        76FF93A373F92F34254F00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000002E32244D93A373F997A776FF97A7
        76FF97A776FF93A373F92F34254F000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000002E32244D93A373F997A7
        76FF97A776FF97A776FF93A373F92F34254F0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000002E32244D93A3
        73F997A776FF97A776FF97A776FF75815BC50101000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002E32
        244D93A373F997A776FF78855ECB090A07100000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00002E32244D75815BC5090A0710000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000101010200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Btn_SalvarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 63
    Width = 1064
    Height = 499
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    ParentColor = True
    TabOrder = 0
    object PgParametros: TPageControl
      Left = 5
      Top = 5
      Width = 1054
      Height = 489
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
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 1046
          Height = 457
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
            AlignWithMargins = True
            Left = 5
            Top = 18
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
              Left = 307
              Top = 11
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
              Left = 14
              Top = 11
              Width = 60
              Height = 13
              Caption = 'Raz'#227'o Social'
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
              TabOrder = 7
            end
            object EditBAIRRO: TDBEdit
              Left = 520
              Top = 109
              Width = 159
              Height = 21
              CharCase = ecUpperCase
              DataField = 'BAIRRO'
              DataSource = DS_Parametros
              TabOrder = 9
            end
            object EditCEP: TDBEdit
              Left = 14
              Top = 109
              Width = 64
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CEP'
              DataSource = DS_Parametros
              TabOrder = 6
            end
            object EditCIDADE: TDBEdit
              Left = 252
              Top = 152
              Width = 293
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CIDADE'
              DataSource = DS_Parametros
              TabOrder = 12
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
              TabOrder = 14
            end
            object EditNUM_FONE: TDBEdit
              Left = 14
              Top = 193
              Width = 115
              Height = 21
              CharCase = ecUpperCase
              DataField = 'FONE'
              DataSource = DS_Parametros
              TabOrder = 15
            end
            object EditULT_VISITA: TDBEdit
              Left = 14
              Top = 68
              Width = 137
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CNPJ'
              DataSource = DS_Parametros
              TabOrder = 2
            end
            object DBEdit1: TDBEdit
              Left = 158
              Top = 68
              Width = 145
              Height = 21
              CharCase = ecUpperCase
              DataField = 'IE'
              DataSource = DS_Parametros
              TabOrder = 3
            end
            object DBEdit21: TDBEdit
              Left = 470
              Top = 109
              Width = 41
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NUMERO'
              DataSource = DS_Parametros
              TabOrder = 8
            end
            object DBEdit22: TDBEdit
              Left = 520
              Top = 193
              Width = 159
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CONTATO'
              DataSource = DS_Parametros
              TabOrder = 18
            end
            object DBEdit27: TDBEdit
              Left = 307
              Top = 26
              Width = 372
              Height = 21
              DataField = 'NOMEFANTASIA'
              DataSource = DS_Parametros
              TabOrder = 1
            end
            object DBEdit12: TDBEdit
              Left = 14
              Top = 152
              Width = 132
              Height = 21
              CharCase = ecUpperCase
              DataField = 'COMPLEMENTO'
              DataSource = DS_Parametros
              TabOrder = 10
            end
            object DBEdit20: TDBEdit
              Left = 135
              Top = 193
              Width = 157
              Height = 21
              CharCase = ecLowerCase
              DataField = 'SITE'
              DataSource = DS_Parametros
              TabOrder = 16
            end
            object DBEdit23: TDBEdit
              Left = 296
              Top = 193
              Width = 218
              Height = 21
              CharCase = ecLowerCase
              DataField = 'EMAIL'
              DataSource = DS_Parametros
              TabOrder = 17
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
              TabOrder = 11
            end
            object EditNOME: TDBEdit
              Left = 14
              Top = 26
              Width = 289
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NOME'
              DataSource = DS_Parametros
              TabOrder = 0
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
              TabOrder = 13
            end
            object DBEdit30: TDBEdit
              Left = 307
              Top = 68
              Width = 183
              Height = 21
              CharCase = ecUpperCase
              DataField = 'IM'
              DataSource = DS_Parametros
              TabOrder = 4
            end
            object DBEdit40: TDBEdit
              Left = 496
              Top = 68
              Width = 183
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CNAE'
              DataSource = DS_Parametros
              TabOrder = 5
            end
            object GroupBox13: TGroupBox
              AlignWithMargins = True
              Left = 696
              Top = 18
              Width = 335
              Height = 204
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
              TabOrder = 19
              Visible = False
              object DBRadioGroup10: TDBRadioGroup
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 325
                Height = 134
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
                Left = 5
                Top = 158
                Width = 325
                Height = 41
                Align = alBottom
                Caption = 'Ind. Rat. ISSQN'
                Columns = 2
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
          end
          object Panel6: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 251
            Width = 1036
            Height = 201
            Align = alClient
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object Panel10: TPanel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 427
              Height = 193
              Align = alClient
              BevelKind = bkSoft
              Color = clWhite
              ParentBackground = False
              TabOrder = 0
              object DBRadioGroup4: TDBRadioGroup
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 415
                Height = 181
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
              Left = 434
              Top = 1
              Width = 170
              Height = 199
              Align = alRight
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
            object DBRadioGroup11: TDBRadioGroup
              Left = 861
              Top = 1
              Width = 174
              Height = 199
              Align = alRight
              Caption = 'Tipo de Emiss'#227'o:'
              DataField = 'NFE_FORMAEMISSAO'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              Items.Strings = (
                'Normal'
                'Conting'#234'ncia (offline)'
                'SCAN'
                'EPEC'
                'FSDA')
              ParentFont = False
              TabOrder = 3
              Values.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5')
            end
            object DBRadioGroup1: TDBRadioGroup
              AlignWithMargins = True
              Left = 607
              Top = 4
              Width = 251
              Height = 193
              Align = alRight
              Caption = 'Tipo de Ambiente (NFC-e)'
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
              TabOrder = 2
              Values.Strings = (
                '0'
                '1')
            end
          end
        end
      end
      object Tab_Operacionais: TTabSheet
        Caption = 'Par'#226'metros Operacionais'
        ImageIndex = 8
        object GroupBox10: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1040
          Height = 451
          Align = alClient
          TabOrder = 0
          object GroupBox4: TGroupBox
            AlignWithMargins = True
            Left = 5
            Top = 288
            Width = 1030
            Height = 158
            Align = alBottom
            Caption = 'Email - Configura'#231#245'es'
            TabOrder = 1
            object Label20: TLabel
              Left = 15
              Top = 64
              Width = 133
              Height = 14
              Caption = 'Servidor de Sa'#237'da (SMTP)'
            end
            object Label26: TLabel
              Left = 222
              Top = 64
              Width = 28
              Height = 14
              Caption = 'Porta'
            end
            object Label35: TLabel
              Left = 270
              Top = 21
              Width = 43
              Height = 14
              Caption = 'Usu'#225'rio'
            end
            object Label39: TLabel
              Left = 270
              Top = 62
              Width = 34
              Height = 14
              Caption = 'Senha'
            end
            object Label49: TLabel
              Left = 15
              Top = 21
              Width = 137
              Height = 14
              Caption = 'Servidor de Entrada (POP)'
            end
            object Label47: TLabel
              Left = 222
              Top = 21
              Width = 28
              Height = 14
              Caption = 'Porta'
            end
            object Label50: TLabel
              Left = 534
              Top = 62
              Width = 215
              Height = 14
              Caption = 'De/From (nome abreviado da empresa)'
            end
            object DBEdit11: TDBEdit
              Left = 16
              Top = 79
              Width = 202
              Height = 22
              DataField = 'EMAIL_SMTPHOST'
              DataSource = DS_Parametros
              TabOrder = 2
            end
            object DBEdit17: TDBEdit
              Left = 222
              Top = 79
              Width = 43
              Height = 22
              DataField = 'EMAIL_SMTPPORTA'
              DataSource = DS_Parametros
              TabOrder = 3
            end
            object DBEdit18: TDBEdit
              Left = 271
              Top = 38
              Width = 249
              Height = 22
              DataField = 'EMAIL_USUARIO'
              DataSource = DS_Parametros
              TabOrder = 4
            end
            object DBEdit24: TDBEdit
              Left = 271
              Top = 79
              Width = 249
              Height = 22
              DataField = 'EMAIL_SENHA'
              DataSource = DS_Parametros
              PasswordChar = '*'
              TabOrder = 5
            end
            object DBCheckBox3: TDBCheckBox
              Left = 536
              Top = 41
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
              Top = 38
              Width = 202
              Height = 22
              DataField = 'EMAIL_POP3HOST'
              DataSource = DS_Parametros
              TabOrder = 0
            end
            object DBEdit25: TDBEdit
              Left = 222
              Top = 38
              Width = 43
              Height = 22
              DataField = 'EMAIL_POP3PORTA'
              DataSource = DS_Parametros
              TabOrder = 1
            end
            object DBEdit28: TDBEdit
              Left = 535
              Top = 79
              Width = 249
              Height = 22
              DataField = 'EMAIL_NOME'
              DataSource = DS_Parametros
              TabOrder = 7
            end
            object DBCheckBox9: TDBCheckBox
              Left = 16
              Top = 107
              Width = 525
              Height = 22
              Hint = 
                'Para cada NF-e emitida, envia e-mail com anexo do XML/PDF, autom' +
                'aticamente ao cliente.'
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
            Width = 1030
            Height = 263
            Align = alClient
            Color = cl3DLight
            ParentBackground = False
            TabOrder = 0
            object grpCertificado: TGroupBox
              AlignWithMargins = True
              Left = 224
              Top = 4
              Width = 410
              Height = 255
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
              Height = 255
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
              Left = 640
              Top = 4
              Width = 386
              Height = 255
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
              Height = 255
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
      object TabSheet3: TTabSheet
        Caption = 'NFC-e | SAT / MF-e'
        ImageIndex = 8
        object pgcNFCeSAT: TPageControl
          AlignWithMargins = True
          Left = 3
          Top = 68
          Width = 1040
          Height = 303
          ActivePage = tabNFCe
          Align = alClient
          MultiLine = True
          TabOrder = 1
          object tabNFCe: TTabSheet
            Caption = 'NFC-e'
            object Panel13: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 880
              Height = 268
              Align = alClient
              BevelKind = bkTile
              BevelOuter = bvNone
              TabOrder = 0
              object GroupBox28: TGroupBox
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 870
                Height = 67
                Align = alTop
                Caption = 'N'#250'mero sequencial'
                TabOrder = 0
                object Label54: TLabel
                  Left = 10
                  Top = 19
                  Width = 132
                  Height = 15
                  Hint = 'informe o ultimo numero de Nota Fiscal Eletronica emitida'
                  Caption = 'Ultima Sequ'#234'ncia NFC-e:'
                  FocusControl = DBEdit32
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Calibri'
                  Font.Style = []
                  ParentFont = False
                end
                object DBEdit32: TDBEdit
                  Left = 9
                  Top = 35
                  Width = 142
                  Height = 23
                  CharCase = ecUpperCase
                  DataField = 'NFCE_SEQUENCIA'
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
              end
              object GroupBox22: TGroupBox
                AlignWithMargins = True
                Left = 3
                Top = 76
                Width = 870
                Height = 117
                Align = alClient
                Caption = 'Token (IDCSC/CSC)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                object Label53: TLabel
                  Left = 10
                  Top = 19
                  Width = 89
                  Height = 15
                  Hint = 'informe o ultimo numero de Nota Fiscal Eletronica emitida'
                  Caption = 'ID Token (IDCSC)'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Calibri'
                  Font.Style = []
                  ParentFont = False
                end
                object Label56: TLabel
                  Left = 181
                  Top = 19
                  Width = 54
                  Height = 15
                  Hint = 'informe o ultimo numero de Nota Fiscal Eletronica emitida'
                  Caption = 'Token CSC'
                  FocusControl = DBEdit29
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Calibri'
                  Font.Style = []
                  ParentFont = False
                end
                object DBEdit29: TDBEdit
                  Left = 181
                  Top = 36
                  Width = 347
                  Height = 23
                  DataField = 'NFCE_CSC'
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
                object DBEdit31: TDBEdit
                  Left = 10
                  Top = 36
                  Width = 164
                  Height = 23
                  DataField = 'NFCE_IDCSC'
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
              end
              object GroupBox26: TGroupBox
                AlignWithMargins = True
                Left = 3
                Top = 199
                Width = 870
                Height = 62
                Align = alBottom
                Caption = 'CFOP padr'#227'o para NFC-e'
                TabOrder = 2
                object IDBEditDialog12: TIDBEditDialog
                  Left = 10
                  Top = 32
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
                  DataField = 'NFCE_CFOP'
                  DataSource = DS_Parametros
                  ButtonKeyClickBtn = 119
                  SQLdbFazBusca = True
                  SQLdbFocusControl = Edit11
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
                  ConnectionDialog = FrmPrincipal.ConnectFirebird
                  Connection = FrmPrincipal.ConnectFirebird
                end
                object Edit11: TEdit
                  Left = 91
                  Top = 32
                  Width = 437
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
              end
            end
            object DBRadioGroup14: TDBRadioGroup
              Left = 886
              Top = 0
              Width = 146
              Height = 274
              Align = alRight
              Caption = 'QRCode - Vers'#227'o'
              DataField = 'NFCE_QRCODE'
              DataSource = DS_Parametros
              Items.Strings = (
                '1.00'
                '2.00')
              TabOrder = 1
              Values.Strings = (
                '1'
                '2')
            end
          end
          object TabSAT: TTabSheet
            AlignWithMargins = True
            Caption = 'SAT / MF-e'
            ImageIndex = 1
            ParentShowHint = False
            ShowHint = True
            object pnComunLogoQRCode: TPanel
              AlignWithMargins = True
              Left = 656
              Top = 3
              Width = 367
              Height = 262
              Align = alRight
              BevelKind = bkTile
              BevelOuter = bvNone
              TabOrder = 1
              object DBRadioGroup2: TDBRadioGroup
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 357
                Height = 160
                Align = alClient
                Caption = 'Modelo (comunica'#231#227'o)'
                DataField = 'SATMODELO'
                DataSource = DS_Parametros
                Items.Strings = (
                  'satNenhum'
                  'satDinamico_cdecl'
                  'satDinamico_stdcall'
                  'mfe_Integrador_XML')
                TabOrder = 0
                Values.Strings = (
                  '0'
                  '1'
                  '2'
                  '3')
              end
              object DBRadioGroup8: TDBRadioGroup
                AlignWithMargins = True
                Left = 3
                Top = 215
                Width = 357
                Height = 40
                Align = alBottom
                Caption = 'QRCode Lateral'
                Columns = 2
                DataField = 'SATQRCODELATERAL'
                DataSource = DS_Parametros
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 2
                Values.Strings = (
                  'SIM'
                  'NAO')
              end
              object DBRadioGroup7: TDBRadioGroup
                AlignWithMargins = True
                Left = 3
                Top = 169
                Width = 357
                Height = 40
                Align = alBottom
                Caption = 'Logo Lateral'
                Columns = 2
                DataField = 'SATLOGOLATERAL'
                DataSource = DS_Parametros
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 1
                Values.Strings = (
                  'SIM'
                  'NAO')
              end
            end
            object Panel9: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 647
              Height = 262
              Align = alClient
              BevelKind = bkTile
              BevelOuter = bvNone
              TabOrder = 0
              object Label23: TLabel
                Left = 8
                Top = 191
                Width = 184
                Height = 14
                Caption = 'Chave de Acesso Validador (MF-e)'
                Color = clBtnFace
                ParentColor = False
              end
              object GroupBox27: TGroupBox
                AlignWithMargins = True
                Left = 3
                Top = 107
                Width = 637
                Height = 81
                Align = alTop
                Caption = 'Assinatura (344 caracteres)'
                TabOrder = 1
                object DBMemo2: TDBMemo
                  AlignWithMargins = True
                  Left = 5
                  Top = 19
                  Width = 627
                  Height = 57
                  Align = alClient
                  DataField = 'SATASSINATURA'
                  DataSource = DS_Parametros
                  TabOrder = 0
                end
              end
              object Panel11: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 637
                Height = 98
                Align = alTop
                BevelKind = bkSoft
                BevelOuter = bvNone
                TabOrder = 0
                object Label71: TLabel
                  Left = 5
                  Top = 46
                  Width = 102
                  Height = 14
                  Caption = 'C'#243'digo de Ativa'#231#227'o'
                  Color = clBtnFace
                  ParentColor = False
                end
                object sbNomeDLL: TSpeedButton
                  Left = 599
                  Top = 64
                  Width = 24
                  Height = 22
                  Caption = '...'
                  OnClick = sbNomeDLLClick
                end
                object Label38: TLabel
                  Left = 225
                  Top = 47
                  Width = 56
                  Height = 14
                  Caption = 'Nome DLL:'
                  Color = clBtnFace
                  ParentColor = False
                end
                object DBEdit48: TDBEdit
                  Left = 5
                  Top = 64
                  Width = 214
                  Height = 22
                  DataField = 'SATCODATIV'
                  DataSource = DS_Parametros
                  TabOrder = 2
                end
                object EditNomeDLL: TDBEdit
                  Left = 225
                  Top = 64
                  Width = 370
                  Height = 22
                  DataField = 'SATDLL'
                  DataSource = DS_Parametros
                  TabOrder = 3
                end
                object IDBEditDialog13: TIDBEditDialog
                  Left = 5
                  Top = 22
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
                  LabelCaption = 'CFOP Dentro do Estado (opera'#231#245'es internas)'
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
                  DataField = 'SAT_CFOP'
                  DataSource = DS_Parametros
                  ButtonKeyClickBtn = 119
                  SQLdbFazBusca = True
                  SQLdbFocusControl = Edit12
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
                end
                object Edit12: TEdit
                  Left = 83
                  Top = 22
                  Width = 540
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
              end
              object DBEdit41: TDBEdit
                Left = 8
                Top = 208
                Width = 627
                Height = 22
                DataField = 'MFE_CHAVEACESSO'
                DataSource = DS_Parametros
                TabOrder = 2
              end
            end
          end
        end
        object GroupBox11: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 377
          Width = 1040
          Height = 77
          Align = alBottom
          Caption = 
            'Impressora ESC/POS | Impressora PDV ( bobina de papel 40 colunas' +
            ' )'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          object Label51: TLabel
            Left = 10
            Top = 23
            Width = 124
            Height = 15
            Hint = 'informe o ultimo numero de Nota Fiscal Eletronica emitida'
            Caption = 'Modelo EscPos Printer'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label52: TLabel
            Left = 245
            Top = 23
            Width = 186
            Height = 15
            Hint = 'informe o ultimo numero de Nota Fiscal Eletronica emitida'
            Caption = 'Porta Impressora (EscPos Printer)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object cbxModelo: TDBComboBox
            Left = 10
            Top = 42
            Width = 230
            Height = 23
            DataField = 'MODELOESCPOS'
            DataSource = DS_Parametros
            TabOrder = 0
          end
          object cbxPorta: TDBComboBox
            Left = 245
            Top = 42
            Width = 356
            Height = 23
            DataField = 'PORTAESCPOS'
            DataSource = DS_Parametros
            TabOrder = 1
          end
          object DBRadioGroup18: TDBRadioGroup
            AlignWithMargins = True
            Left = 645
            Top = 20
            Width = 390
            Height = 52
            Align = alRight
            Caption = 'Abre a gaveta automaticamente ao concluir venda?'
            Columns = 2
            DataField = 'ABRIRGAVETA'
            DataSource = DS_Parametros
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 2
            Values.Strings = (
              'S'
              'N')
          end
        end
        object GroupBox3: TGroupBox
          Left = 0
          Top = 0
          Width = 1046
          Height = 65
          Align = alTop
          Caption = 'Configura'#231#245'es para NFC-e | SAT'
          TabOrder = 0
          object gbxNFCeSAT: TDBRadioGroup
            AlignWithMargins = True
            Left = 5
            Top = 19
            Width = 204
            Height = 41
            Align = alLeft
            Caption = 'O que ir'#225' utilizar?'
            Columns = 2
            DataField = 'SATNFCE'
            DataSource = DS_Parametros
            Items.Strings = (
              'NFC-e'
              'SAT CF-e')
            TabOrder = 0
            Values.Strings = (
              'NFCE'
              'SAT')
          end
          object DBRadioGroup3: TDBRadioGroup
            AlignWithMargins = True
            Left = 215
            Top = 19
            Width = 563
            Height = 41
            Align = alClient
            Caption = 'Formato de impress'#227'o'
            Columns = 2
            DataField = 'NFCE_DANFE'
            DataSource = DS_Parametros
            Items.Strings = (
              'Tela (formato A4)'
              'Bobina (40 colunas )')
            TabOrder = 1
            Values.Strings = (
              'TELA'
              'PDV')
          end
          object DBRadioGroup17: TDBRadioGroup
            AlignWithMargins = True
            Left = 784
            Top = 19
            Width = 257
            Height = 41
            Align = alRight
            Caption = 'Qual tipo de emiss'#227'o?'
            Columns = 2
            DataField = 'PDVTIPOFISCAL'
            DataSource = DS_Parametros
            Items.Strings = (
              'Fiscal'
              'N'#227'o Fiscal')
            TabOrder = 2
            Values.Strings = (
              'FISCAL'
              'NAOFISCAL')
          end
        end
      end
    end
  end
  object pnTitulo: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1058
    Height = 57
    Align = alTop
    Color = 4276288
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object Shape2: TShape
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1050
      Height = 49
      Align = alClient
      Brush.Style = bsClear
      Pen.Color = 6403220
      Pen.Style = psDot
      Shape = stRoundRect
      ExplicitLeft = 5
      ExplicitTop = 8
      ExplicitWidth = 901
    end
    object lblTitulo: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 4
      Width = 1026
      Height = 49
      Margins.Left = 15
      Margins.Right = 15
      Align = alClient
      Alignment = taCenter
      Caption = 'Configura'#231#245'es - Frente de Caixa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -29
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 496
      ExplicitHeight = 34
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
    OnNewRecord = db_ParametrosNewRecord
    Connection = FrmPrincipal.ConnectConfigPDV
    UpdateOptions.AutoIncFields = 'EMPRESA'
    SQL.Strings = (
      'SELECT * FROM CONFIGURACAO')
    Left = 640
    Top = 280
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
    Left = 859
    Top = 337
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
