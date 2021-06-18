object FrmPedidosAplicativo: TFrmPedidosAplicativo
  Left = 0
  Top = 0
  Caption = 'Pedidos Aplicativos'
  ClientHeight = 511
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 0
    Width = 380
    Height = 511
    Align = alLeft
    Color = clWhite
    PanelBorder = gbNone
    PanelHeight = 73
    PanelWidth = 363
    ParentColor = False
    TabOrder = 0
    RowCount = 7
    object lblListCodPesdido: TLabel
      Left = 0
      Top = 0
      Width = 69
      Height = 73
      Align = alLeft
      Caption = '#123456789'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitTop = -1
    end
    object imgListaApp: TImage
      AlignWithMargins = True
      Left = 303
      Top = 0
      Width = 60
      Height = 73
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Center = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000014
        0000001408060000008D891D0D00000006624B474400FF00FF00FFA0BDA79300
        0000A5494441543811E594410AC2400C4587F104AD1EC28D58BD807BAF5C4198
        0B752514BAF1FD850B6126C9AC5BFE0B4C923E5A284D6977D7C178E30BB30D56
        08271B9B67666F3841389650922BE5054708C5134AF2938E3A784484724C143D
        A92B8D0AF1A51B6586019AE9114A72A798D25E213E3BBDC282EE010B5493ABDD
        7AB3D07EC2079AC9CDC9FFA0707465ECA4ACE250988764ECB9C22E998416FA39
        98DF9C75F38E665F7EED125D23D6E6720000000049454E44AE426082}
      ExplicitLeft = 280
    end
    object Panel9: TPanel
      AlignWithMargins = True
      Left = 72
      Top = 3
      Width = 223
      Height = 67
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 136
      ExplicitTop = 32
      ExplicitWidth = 185
      ExplicitHeight = 41
      object lblListCliente: TLabel
        AlignWithMargins = True
        Left = 20
        Top = 0
        Width = 203
        Height = 25
        Margins.Left = 20
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Andr'#233' Luiz Franzoi'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 226
      end
      object Panel10: TPanel
        Left = 0
        Top = 25
        Width = 223
        Height = 42
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 80
        ExplicitTop = 56
        ExplicitWidth = 185
        ExplicitHeight = 41
        object lblHoraRecusado: TLabel
          AlignWithMargins = True
          Left = 217
          Top = 0
          Width = 24
          Height = 42
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = '..:..:..'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 13
        end
        object lblHoraAceita: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 0
          Width = 40
          Height = 42
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = '19:52:32'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 13
        end
        object imgSeta3: TImage
          AlignWithMargins = True
          Left = 192
          Top = 0
          Width = 20
          Height = 42
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Center = True
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000014
            0000001408060000008D891D0D00000006624B474400FF00FF00FFA0BDA79300
            0000A5494441543811E594410AC2400C4587F104AD1EC28D58BD807BAF5C4198
            0B752514BAF1FD850B6126C9AC5BFE0B4C923E5A284D6977D7C178E30BB30D56
            08271B9B67666F3841389650922BE5054708C5134AF2938E3A784484724C143D
            A92B8D0AF1A51B6586019AE9114A72A798D25E213E3BBDC282EE010B5493ABDD
            7AB3D07EC2079AC9CDC9FFA0707465ECA4ACE250988764ECB9C22E998416FA39
            98DF9C75F38E665F7EED125D23D6E6720000000049454E44AE426082}
          ExplicitLeft = 161
          ExplicitHeight = 34
        end
        object lblHoraEntregue: TLabel
          AlignWithMargins = True
          Left = 147
          Top = 0
          Width = 40
          Height = 42
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = '20:09:13'
          Font.Charset = ANSI_CHARSET
          Font.Color = 21248
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 13
        end
        object lblHoraCaminho: TLabel
          AlignWithMargins = True
          Left = 75
          Top = 0
          Width = 42
          Height = 42
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = '20:00:32'
          Font.Charset = ANSI_CHARSET
          Font.Color = 24767
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 13
        end
        object imgSeta2: TImage
          AlignWithMargins = True
          Left = 122
          Top = 0
          Width = 20
          Height = 42
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Center = True
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000014
            0000001408060000008D891D0D00000006624B474400FF00FF00FFA0BDA79300
            0000A5494441543811E594410AC2400C4587F104AD1EC28D58BD807BAF5C4198
            0B752514BAF1FD850B6126C9AC5BFE0B4C923E5A284D6977D7C178E30BB30D56
            08271B9B67666F3841389650922BE5054708C5134AF2938E3A784484724C143D
            A92B8D0AF1A51B6586019AE9114A72A798D25E213E3BBDC282EE010B5493ABDD
            7AB3D07EC2079AC9CDC9FFA0707465ECA4ACE250988764ECB9C22E998416FA39
            98DF9C75F38E665F7EED125D23D6E6720000000049454E44AE426082}
          ExplicitLeft = 109
          ExplicitTop = -8
          ExplicitHeight = 34
        end
        object imgSeta1: TImage
          AlignWithMargins = True
          Left = 50
          Top = 0
          Width = 20
          Height = 42
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Center = True
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000014
            0000001408060000008D891D0D00000006624B474400FF00FF00FFA0BDA79300
            0000A5494441543811E594410AC2400C4587F104AD1EC28D58BD807BAF5C4198
            0B752514BAF1FD850B6126C9AC5BFE0B4C923E5A284D6977D7C178E30BB30D56
            08271B9B67666F3841389650922BE5054708C5134AF2938E3A784484724C143D
            A92B8D0AF1A51B6586019AE9114A72A798D25E213E3BBDC282EE010B5493ABDD
            7AB3D07EC2079AC9CDC9FFA0707465ECA4ACE250988764ECB9C22E998416FA39
            98DF9C75F38E665F7EED125D23D6E6720000000049454E44AE426082}
          ExplicitLeft = 29
          ExplicitHeight = 34
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 380
    Top = 0
    Width = 628
    Height = 511
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 364
    ExplicitTop = -6
    ExplicitWidth = 650
    ExplicitHeight = 451
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 368
      Width = 622
      Height = 140
      Align = alBottom
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Color = 15132390
      ParentBackground = False
      TabOrder = 0
      object lblInfoObservacao: TLabel
        AlignWithMargins = True
        Left = 20
        Top = 34
        Width = 250
        Height = 106
        Margins.Left = 20
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        AutoSize = False
        Caption = 'Trazer os produtos bem embaados para n'#227'o vir bagun'#231'ado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
        ExplicitTop = 28
        ExplicitHeight = 103
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 622
        Height = 34
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        Caption = 'Observa'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
        object cxButton1: TcxButton
          AlignWithMargins = True
          Left = 422
          Top = 2
          Width = 180
          Height = 30
          Hint = 'Clique aqui para acessar o sistema'
          Margins.Left = 0
          Margins.Top = 2
          Margins.Right = 20
          Margins.Bottom = 2
          Align = alRight
          BiDiMode = bdLeftToRight
          Caption = 'IMPRIMIR PEDIDO'
          Colors.Normal = 4210752
          Colors.NormalText = clWhite
          Colors.Hot = clTeal
          Colors.HotText = clWhite
          Colors.Pressed = clGray
          Colors.PressedText = clWhite
          Colors.Disabled = clGray
          Colors.DisabledText = clBlack
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.ScrollbarMode = sbmDefault
          ParentBiDiMode = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          WordWrap = True
          ExplicitLeft = 440
          ExplicitTop = 0
        end
      end
      object Panel2: TPanel
        Left = 298
        Top = 34
        Width = 324
        Height = 106
        Align = alRight
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        ExplicitLeft = 320
        ExplicitTop = 31
        ExplicitHeight = 103
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 164
          Height = 106
          Align = alLeft
          Alignment = taLeftJustify
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          ExplicitHeight = 103
          object Label2: TLabel
            AlignWithMargins = True
            Left = 0
            Top = 80
            Width = 164
            Height = 21
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 5
            Align = alBottom
            Alignment = taRightJustify
            Caption = 'TOTAL  '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitLeft = 110
            ExplicitTop = 77
            ExplicitWidth = 54
          end
          object Label3: TLabel
            AlignWithMargins = True
            Left = 0
            Top = 52
            Width = 164
            Height = 21
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 5
            Align = alTop
            Alignment = taRightJustify
            Caption = 'DESCONTO '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
            ExplicitLeft = 79
            ExplicitTop = 47
            ExplicitWidth = 85
          end
          object Label8: TLabel
            AlignWithMargins = True
            Left = 0
            Top = 26
            Width = 164
            Height = 21
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 5
            Align = alTop
            Alignment = taRightJustify
            Caption = 'TAXA DE ENTREGUA '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
            ExplicitLeft = 5
            ExplicitTop = 21
            ExplicitWidth = 145
          end
          object Label9: TLabel
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 164
            Height = 21
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 5
            Align = alTop
            Alignment = taRightJustify
            Caption = 'SUB-TOTAL '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
            ExplicitLeft = 82
            ExplicitWidth = 82
          end
        end
        object Panel8: TPanel
          Left = 164
          Top = 0
          Width = 160
          Height = 106
          Align = alClient
          Alignment = taLeftJustify
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
          ExplicitLeft = 8
          ExplicitWidth = 164
          ExplicitHeight = 103
          object lblInfoTotal: TLabel
            AlignWithMargins = True
            Left = 0
            Top = 80
            Width = 155
            Height = 21
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alBottom
            Alignment = taRightJustify
            Caption = 'R$ 15,99'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitLeft = 95
            ExplicitTop = 77
            ExplicitWidth = 60
          end
          object lblInfoDesconto: TLabel
            AlignWithMargins = True
            Left = 0
            Top = 52
            Width = 155
            Height = 21
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alTop
            Alignment = taRightJustify
            Caption = 'R$ -'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
            ExplicitLeft = 126
            ExplicitWidth = 29
          end
          object lblinfoTaxaEntregua: TLabel
            AlignWithMargins = True
            Left = 0
            Top = 26
            Width = 155
            Height = 21
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alTop
            Alignment = taRightJustify
            Caption = 'R$ 5,00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
            ExplicitLeft = 102
            ExplicitWidth = 53
          end
          object lblInfoSubTotal: TLabel
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 155
            Height = 21
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alTop
            Alignment = taRightJustify
            Caption = 'R$ 10,99'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
            ExplicitLeft = 98
            ExplicitWidth = 62
          end
        end
      end
    end
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 50
      Width = 622
      Height = 60
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 6
      ExplicitWidth = 644
      object lblInfoEndereco: TLabel
        AlignWithMargins = True
        Left = 20
        Top = 0
        Width = 250
        Height = 60
        Margins.Left = 20
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        AutoSize = False
        Caption = 
          'Rua Dr Paulo Barra 1464 (AP 24) - Jd Iraja'#13#10'Ribeir'#227'o Preso-SP CE' +
          'P: 14020-320'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
      end
      object btnRecusar: TcxButton
        AlignWithMargins = True
        Left = 522
        Top = 15
        Width = 95
        Height = 30
        Hint = 'Clique aqui para acessar o sistema'
        Margins.Left = 0
        Margins.Top = 15
        Margins.Right = 5
        Margins.Bottom = 15
        Align = alRight
        BiDiMode = bdLeftToRight
        Caption = 'RECUSAR'
        Colors.Normal = clMaroon
        Colors.NormalText = clWhite
        Colors.Hot = clTeal
        Colors.HotText = clWhite
        Colors.Pressed = clRed
        Colors.PressedText = clWhite
        Colors.Disabled = clGray
        Colors.DisabledText = clBlack
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmDefault
        ParentBiDiMode = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        WordWrap = True
        ExplicitLeft = 549
      end
      object btnAceitar: TcxButton
        AlignWithMargins = True
        Left = 222
        Top = 15
        Width = 95
        Height = 30
        Hint = 'Clique aqui para acessar o sistema'
        Margins.Left = 0
        Margins.Top = 15
        Margins.Right = 5
        Margins.Bottom = 15
        Align = alRight
        BiDiMode = bdLeftToRight
        Caption = 'ACEITAR'
        Colors.Normal = 8404992
        Colors.NormalText = clWhite
        Colors.Hot = clTeal
        Colors.HotText = clWhite
        Colors.Pressed = clBlue
        Colors.PressedText = clWhite
        Colors.Disabled = clGray
        Colors.DisabledText = clBlack
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmDefault
        ParentBiDiMode = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        WordWrap = True
        ExplicitLeft = 264
      end
      object btnACaminho: TcxButton
        AlignWithMargins = True
        Left = 322
        Top = 15
        Width = 95
        Height = 30
        Hint = 'Clique aqui para acessar o sistema'
        Margins.Left = 0
        Margins.Top = 15
        Margins.Right = 5
        Margins.Bottom = 15
        Align = alRight
        BiDiMode = bdLeftToRight
        Caption = 'A CAMINHO'
        Colors.Normal = 24767
        Colors.NormalText = clWhite
        Colors.Hot = clTeal
        Colors.HotText = clWhite
        Colors.Pressed = 4227327
        Colors.PressedText = clWhite
        Colors.Disabled = clGray
        Colors.DisabledText = clBlack
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmDefault
        ParentBiDiMode = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        WordWrap = True
        ExplicitLeft = 359
      end
      object btnEntregue: TcxButton
        AlignWithMargins = True
        Left = 422
        Top = 15
        Width = 95
        Height = 30
        Hint = 'Clique aqui para acessar o sistema'
        Margins.Left = 0
        Margins.Top = 15
        Margins.Right = 5
        Margins.Bottom = 15
        Align = alRight
        BiDiMode = bdLeftToRight
        Caption = 'ENTREGUE'
        Colors.Normal = 21248
        Colors.NormalText = clWhite
        Colors.Hot = clTeal
        Colors.HotText = clWhite
        Colors.Pressed = clLime
        Colors.PressedText = clWhite
        Colors.Disabled = clGray
        Colors.DisabledText = clBlack
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmDefault
        ParentBiDiMode = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        WordWrap = True
        ExplicitLeft = 454
      end
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 113
      Width = 628
      Height = 252
      Align = alClient
      BorderStyle = bsNone
      Options = [dgTitles, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Produto'
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Pre'#231'o'
          Title.Color = clBlack
          Visible = True
        end>
    end
    object Panel5: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 622
      Height = 41
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Color = 13619151
      ParentBackground = False
      TabOrder = 3
      ExplicitLeft = 144
      ExplicitTop = 64
      ExplicitWidth = 185
      object lblInfoCodPedido: TLabel
        Left = 0
        Top = 0
        Width = 39
        Height = 41
        Align = alLeft
        Caption = '#1012'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 21
      end
      object lblInfoCliente: TLabel
        AlignWithMargins = True
        Left = 59
        Top = 0
        Width = 107
        Height = 41
        Margins.Left = 20
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'Andr'#233' Luiz Franzoi'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 17
      end
      object Label7: TLabel
        AlignWithMargins = True
        Left = 503
        Top = 0
        Width = 114
        Height = 41
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alRight
        Caption = 'Aceitar Pedido?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitLeft = 525
        ExplicitHeight = 21
      end
    end
  end
end
