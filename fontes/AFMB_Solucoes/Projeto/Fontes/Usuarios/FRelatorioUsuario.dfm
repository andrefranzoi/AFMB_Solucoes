object FrmUsuarioLog: TFrmUsuarioLog
  Left = 209
  Top = 71
  BorderStyle = bsDialog
  Caption = 'Log de usu'#225'rios'
  ClientHeight = 528
  ClientWidth = 1052
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 50
    Width = 227
    Height = 254
    Align = alLeft
    Caption = 'Usu'#225'rios:'
    TabOrder = 0
    ExplicitTop = 33
    ExplicitHeight = 271
    object GridUsuario: TDBGrid
      Left = 2
      Top = 15
      Width = 223
      Height = 237
      Align = alClient
      Color = clBtnFace
      DataSource = DS_Usuario
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'USERNAME'
          Title.Alignment = taCenter
          Title.Caption = 'USU'#193'RIO:'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 304
    Width = 1052
    Height = 183
    Align = alBottom
    Caption = 'A'#231#227'o do usu'#225'rio'
    TabOrder = 1
    object DBMemo1: TDBMemo
      Left = 2
      Top = 15
      Width = 1048
      Height = 166
      Align = alClient
      Color = clBtnFace
      DataField = 'ACAO'
      DataSource = DS_Log
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
      WantTabs = True
    end
  end
  object GroupBox3: TGroupBox
    Left = 227
    Top = 50
    Width = 825
    Height = 254
    Align = alClient
    Caption = 'Lista de Logs'
    TabOrder = 2
    ExplicitTop = 33
    ExplicitHeight = 271
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 821
      Height = 237
      Align = alClient
      DataSource = DS_Log
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Caption = 'Data'
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HORAS'
          Title.Caption = 'Hora:'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODULO'
          Title.Caption = 'M'#243'dulo'
          Width = 572
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 487
    Width = 1052
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BorderStyle = bsSingle
    TabOrder = 3
    object BtnSair: TBitBtn
      Left = 15
      Top = 4
      Width = 80
      Height = 28
      Cursor = crHandPoint
      Hint = 'Sair'
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
      TabOrder = 0
      OnClick = BtnSairClick
    end
    object Btn_Imprimir: TBitBtn
      Left = 101
      Top = 4
      Width = 80
      Height = 28
      Cursor = crHandPoint
      Hint = 'Imprimir relat'#243'rio selecionado...'
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
      TabOrder = 1
      Visible = False
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 1052
    Height = 50
    Align = alTop
    Constraints.MinHeight = 50
    Color = 16024898
    ParentBackground = False
    ParentColor = False
    TabOrder = 4
    ExplicitWidth = 1052
    inherited Image3: TImage
      Width = 1052
      ExplicitWidth = 915
    end
    inherited pnTitulo: TPanel
      Width = 1046
      Constraints.MinHeight = 27
      ExplicitWidth = 1046
      ExplicitHeight = 27
      inherited LblBarraTitulo: TLabel
        Width = 895
        Caption = 'Registro de a'#231#245'es dos usu'#225'rios'
        ExplicitWidth = 188
        ExplicitHeight = 33
      end
      inherited Image1: TImage
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 984
        ExplicitLeft = 859
        ExplicitHeight = 31
      end
    end
  end
  object db_Usuario: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM USUARIO'
      'ORDER BY USERNAME')
    Left = 452
    Top = 92
  end
  object DS_Usuario: TDataSource
    DataSet = db_Usuario
    Left = 336
    Top = 96
  end
  object db_UsuarioLog: TFDQuery
    MasterSource = DS_Usuario
    MasterFields = 'ID'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM USUARIOLOG'
      'WHERE'
      'ID=:ID'
      'ORDER BY DATA DESC, HORAS  DESC')
    Left = 452
    Top = 164
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
  end
  object DS_Log: TDataSource
    DataSet = db_UsuarioLog
    Left = 328
    Top = 168
  end
end
