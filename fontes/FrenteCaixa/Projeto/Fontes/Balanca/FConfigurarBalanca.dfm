object FrmConfigurarBalanca: TFrmConfigurarBalanca
  Left = 270
  Top = 172
  BorderStyle = bsDialog
  Caption = 'Configura'#231#227'o de Balan'#231'a'
  ClientHeight = 469
  ClientWidth = 950
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnTitulo: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 944
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
    TabOrder = 1
    object Shape2: TShape
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 936
      Height = 49
      Align = alClient
      Brush.Color = 4276288
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
      Width = 912
      Height = 49
      Margins.Left = 15
      Margins.Right = 15
      Align = alClient
      Alignment = taCenter
      Caption = 'Configura'#231#227'o de Balan'#231'a'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -29
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 368
      ExplicitHeight = 34
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 424
    Width = 950
    Height = 45
    Align = alBottom
    Color = 4276288
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object btnOk: TButton
      Left = 1
      Top = 1
      Width = 120
      Height = 43
      Align = alLeft
      Caption = 'Ok (Enter)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = btnOkClick
    end
    object btnSair: TButton
      Left = 829
      Top = 1
      Width = 120
      Height = 43
      Align = alRight
      Caption = 'Sair (Esc)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = btnSairClick
    end
  end
  object GrpConfigurar: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 66
    Width = 944
    Height = 355
    Align = alClient
    Caption = 'Par'#226'metros'
    TabOrder = 0
    object GroupBox4: TGroupBox
      AlignWithMargins = True
      Left = 5
      Top = 296
      Width = 934
      Height = 54
      Align = alBottom
      Caption = 'Log da Balan'#231'a'
      TabOrder = 2
      object lblLogBalanca: TLabel
        AlignWithMargins = True
        Left = 100
        Top = 18
        Width = 829
        Height = 31
        Align = alClient
        Caption = 'Arq.Log:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 46
        ExplicitHeight = 13
      end
      object Panel3: TPanel
        Left = 2
        Top = 15
        Width = 95
        Height = 37
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object btnLerArquivo: TBitBtn
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 89
          Height = 31
          Align = alClient
          Caption = 'Ler Arquivo...'
          TabOrder = 0
          OnClick = btnLerArquivoClick
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 2
      Top = 210
      Width = 940
      Height = 83
      Align = alBottom
      Caption = 'Mascara da Etiqueta de Balan'#231'a (na leitura da etiqueta)'
      TabOrder = 1
      object Label6: TLabel
        Left = 10
        Top = 21
        Width = 138
        Height = 13
        Caption = 'M'#225'scara Etiqueta de Balan'#231'a'
        Color = clBtnFace
        ParentColor = False
      end
      object EditMascara: TEdit
        Left = 10
        Top = 39
        Width = 145
        Height = 21
        TabOrder = 0
        Text = '2CCCC0TTTTTTDV'
      end
      object GroupBox5: TGroupBox
        Left = 320
        Top = 15
        Width = 618
        Height = 66
        Align = alRight
        Caption = 'Exemplo'
        Enabled = False
        TabOrder = 1
        object Memo2: TMemo
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 608
          Height = 43
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Lines.Strings = (
            'Se for por total: 2CCCCCTTTTTTDV'
            'Se for por peso:  2CCCCCPPPPPPDV')
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object pnConfigurar: TPanel
      Left = 2
      Top = 15
      Width = 940
      Height = 195
      Align = alClient
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 0
      object pnEquipamento: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 930
        Height = 65
        Align = alTop
        BevelKind = bkTile
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 10
          Top = 6
          Width = 37
          Height = 13
          Caption = 'Balanca'
          Color = clBtnFace
          ParentColor = False
        end
        object Label4: TLabel
          Left = 173
          Top = 6
          Width = 55
          Height = 13
          Caption = 'Porta Serial'
          Color = clBtnFace
          ParentColor = False
        end
        object Label9: TLabel
          Left = 499
          Top = 5
          Width = 116
          Height = 13
          Caption = 'TimeOut (milissegundos)'
          Color = clBtnFace
          ParentColor = False
        end
        object Label5: TLabel
          Left = 336
          Top = 5
          Width = 47
          Height = 13
          Caption = 'Baud rate'
          Color = clBtnFace
          ParentColor = False
        end
        object cmbBalanca: TComboBox
          Left = 10
          Top = 23
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 0
          Text = 'Nenhuma'
          Items.Strings = (
            'Nenhuma'
            'Filizola'
            'Toledo')
        end
        object cmbPortaSerial: TComboBox
          Left = 173
          Top = 23
          Width = 145
          Height = 21
          ItemIndex = 0
          TabOrder = 1
          Text = 'COM1'
          Items.Strings = (
            'COM1'
            'COM2'
            'COM3'
            'COM4'
            'COM5'
            'COM6'
            'COM7'
            'COM8')
        end
        object edtTimeOut: TEdit
          Left = 499
          Top = 23
          Width = 145
          Height = 21
          NumbersOnly = True
          TabOrder = 3
          Text = '2000'
        end
        object cmbBaudRate: TComboBox
          Left = 336
          Top = 23
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 6
          TabOrder = 2
          Text = '9600'
          Items.Strings = (
            '110'
            '300'
            '600'
            '1200'
            '2400'
            '4800'
            '9600'
            '14400'
            '19200'
            '38400'
            '56000'
            '57600')
        end
      end
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 74
        Width = 930
        Height = 114
        Align = alClient
        Caption = '[Testar]'
        TabOrder = 1
        object GroupBox6: TGroupBox
          Left = 11
          Top = 55
          Width = 217
          Height = 57
          Caption = 'Peso Lido'
          TabOrder = 1
          object sttPeso: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 18
            Width = 207
            Height = 34
            Align = alClient
            Alignment = taCenter
            AutoSize = False
            Caption = '0'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
            WordWrap = True
            ExplicitLeft = 7
            ExplicitTop = 20
          end
        end
        object GroupBox7: TGroupBox
          Left = 234
          Top = 54
          Width = 281
          Height = 57
          Caption = 'Resposta'
          TabOrder = 2
          object sttResposta: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 18
            Width = 271
            Height = 34
            Align = alClient
            Alignment = taCenter
            AutoSize = False
            Caption = '...'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
            WordWrap = True
            ExplicitLeft = 13
            ExplicitTop = 23
            ExplicitWidth = 173
          end
        end
        object GroupBox9: TGroupBox
          Left = 521
          Top = 55
          Width = 380
          Height = 59
          Caption = 'Mensagem'
          TabOrder = 3
          object lblMensagem: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 18
            Width = 370
            Height = 36
            Align = alClient
            Alignment = taCenter
            AutoSize = False
            Caption = '...'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
            WordWrap = True
            ExplicitLeft = 13
            ExplicitTop = 23
            ExplicitWidth = 149
          end
        end
        object chbMonitorar: TCheckBox
          Left = 371
          Top = 29
          Width = 230
          Height = 19
          Caption = 'Monitorar a Balan'#231'a (ler automaticamente)'
          TabOrder = 0
          OnClick = chbMonitorarClick
        end
        object btnConectar: TButton
          Left = 11
          Top = 24
          Width = 105
          Height = 25
          Caption = 'Ativar'
          TabOrder = 4
          OnClick = btnConectarClick
        end
        object btnLeitura: TButton
          Left = 122
          Top = 24
          Width = 129
          Height = 25
          Caption = 'Ler Peso'
          Enabled = False
          TabOrder = 5
          OnClick = btnLeituraClick
        end
        object btnDesconectar: TButton
          Left = 257
          Top = 24
          Width = 105
          Height = 25
          Caption = 'Desativar'
          Enabled = False
          TabOrder = 6
          OnClick = btnDesconectarClick
        end
      end
    end
  end
  object ACBrBAL1: TACBrBAL
    Porta = 'COM1'
    OnLePeso = ACBrBAL1LePeso
    Left = 720
    Top = 104
  end
end
