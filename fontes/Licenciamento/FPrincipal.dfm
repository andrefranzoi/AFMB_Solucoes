object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Gerador de Licen'#231'as'
  ClientHeight = 608
  ClientWidth = 1083
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 567
    Width = 1083
    Height = 41
    Align = alBottom
    TabOrder = 0
    object Button2: TBitBtn
      AlignWithMargins = True
      Left = 1004
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Sair (ESC)'
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1083
    Height = 567
    Align = alClient
    TabOrder = 1
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1075
      Height = 559
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 38
        Width = 1065
        Height = 270
        Align = alTop
        Caption = '[Gerador de chave]'
        TabOrder = 0
        object Label1: TLabel
          Left = 200
          Top = 222
          Width = 238
          Height = 29
          Caption = '(enviar ao seu cliente)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 319
          Top = 86
          Width = 47
          Height = 33
          Caption = 'dias'
        end
        object Label3: TLabel
          Left = 129
          Top = 45
          Width = 65
          Height = 33
          Caption = 'Hoje:'
        end
        object EditDias: TLabeledEdit
          Left = 200
          Top = 84
          Width = 113
          Height = 37
          Alignment = taCenter
          EditLabel.Width = 180
          EditLabel.Height = 33
          EditLabel.Caption = '&Tempo de uso:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          LabelPosition = lpLeft
          MaxLength = 5
          NumbersOnly = True
          ParentFont = False
          TabOrder = 0
          Text = '30'
        end
        object EditChaveLicenca: TLabeledEdit
          Left = 200
          Top = 178
          Width = 819
          Height = 45
          AutoSize = False
          Color = clBtnFace
          EditLabel.Width = 82
          EditLabel.Height = 33
          EditLabel.Caption = 'Chave:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Courier New'
          Font.Style = []
          LabelPosition = lpLeft
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          OnEnter = EditChaveLicencaEnter
        end
        object btnGerar: TBitBtn
          Left = 200
          Top = 128
          Width = 201
          Height = 45
          Caption = '&Gerar Chave'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
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
            0000D77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
            11FF0000000000000000D77711FFD77711FFD77711FFD77711FFD77711FFD777
            11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
            11FFD77711FFD77711FFD77711FFD77711FF0000000000000000000000000000
            0000D77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
            11FF0000000000000000D77711FFD77711FFD77711FFD77711FFD77711FFD777
            11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
            11FFD77711FFD77711FFD77711FFD77711FF0000000000000000000000000000
            0000D77711FFD77711FF00000000000000000000000000000000000000000000
            00000000000000000000D77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFD77711FFD77711FF0000000000000000000000000000
            0000D77711FFD77711FF00000000000000000000000000000000000000000000
            00000000000000000000D77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFD77711FFD77711FF0000000000000000000000000000
            0000D77711FFD77711FF00000000000000000000000000000000000000000000
            00000000000000000000D77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFD77711FFD77711FF0000000000000000000000000000
            0000D77711FFD77711FF00000000000000000000000000000000000000000000
            00000000000000000000D77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFD77711FFD77711FF0000000000000000000000000000
            0000D77711FFD77711FF00000000000000000000000000000000000000000000
            00000000000000000000D77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFD77711FFD77711FF0000000000000000000000000000
            0000D77711FFD77711FF00000000000000000000000000000000000000000000
            00000000000000000000D77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFD77711FFD77711FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000D77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFD77711FFD77711FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000D77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFD77711FFD77711FF0000000000000000000000000000
            0000D77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
            11FFD77711FFD77711FFD77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFD77711FFD77711FF0000000000000000000000000000
            0000D77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
            11FFD77711FFD77711FFD77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFD77711FFD77711FF0000000000000000000000000000
            0000D77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFD77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFD77711FFD77711FF0000000000000000000000000000
            0000D77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFD77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFD77711FFD77711FF0000000000000000000000000000
            0000D77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFD77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFD77711FFD77711FF0000000000000000000000000000
            0000D77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFD77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFD77711FFD77711FF0000000000000000000000000000
            0000D77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFD77711FFD77711FFD77711FFD77711FFD77711FFD777
            11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
            11FFD77711FFD77711FFD77711FFD77711FF0000000000000000000000000000
            0000D77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFD77711FFD77711FFD77711FFD77711FFD77711FFD777
            11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
            11FFD77711FFD77711FFD77711FFD77711FF0000000000000000000000000000
            0000D77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFD77711FFD77711FF00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000D77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFD77711FFD77711FF00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000D77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFD77711FFD77711FF00000000000000000000000000000000000000000000
            00000000000000000000D77711FFD77711FF0000000000000000000000000000
            0000D77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFD77711FFD77711FF00000000000000000000000000000000000000000000
            00000000000000000000D77711FFD77711FF0000000000000000000000000000
            0000D77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFD77711FFD77711FF00000000000000000000000000000000000000000000
            00000000000000000000D77711FFD77711FF0000000000000000000000000000
            0000D77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFD77711FFD77711FF00000000000000000000000000000000000000000000
            00000000000000000000D77711FFD77711FF0000000000000000000000000000
            0000D77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFD77711FFD77711FF00000000000000000000000000000000000000000000
            00000000000000000000D77711FFD77711FF0000000000000000000000000000
            0000D77711FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFD77711FFD77711FF00000000000000000000000000000000000000000000
            00000000000000000000D77711FFD77711FF0000000000000000000000000000
            0000D77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
            11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
            11FFD77711FFD77711FF0000000000000000D77711FFD77711FFD77711FFD777
            11FFD77711FFD77711FFD77711FFD77711FF0000000000000000000000000000
            0000D77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
            11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
            11FFD77711FFD77711FF0000000000000000D77711FFD77711FFD77711FFD777
            11FFD77711FFD77711FFD77711FFD77711FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentFont = False
          TabOrder = 2
          OnClick = btnGerarClick
        end
        object dtDataHoje: TDateTimePicker
          Left = 200
          Top = 40
          Width = 186
          Height = 37
          Date = 43675.000000000000000000
          Time = 0.582544270830112500
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object btnClipBoard: TBitBtn
          Left = 1021
          Top = 178
          Width = 45
          Height = 45
          Cursor = crHandPoint
          Hint = 'Copiar para a '#225'rea de transfer'#234'ncia '
          Enabled = False
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
            00000000000000000000727272FF727272FF727272FF727272FF727272FF7272
            72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
            72FF727272FF727272FF727272FF727272FF727272FF727272FF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000727272FF727272FF727272FF727272FF727272FF7272
            72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
            72FF727272FF727272FF727272FF727272FF727272FF727272FF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000727272FF727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF727272FF727272FF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000727272FF727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF727272FF727272FF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000727272FF727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF727272FF727272FF727272FF7272
            72FF727272FF727272FF00000000000000000000000000000000000000000000
            00000000000000000000727272FF727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF727272FF727272FF727272FF7272
            72FF727272FF727272FF00000000000000000000000000000000000000000000
            00000000000000000000727272FF727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF727272FF727272FFFFFFFFFFFFFF
            FFFF727272FF727272FF00000000000000000000000000000000000000000000
            00000000000000000000727272FF727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF727272FF727272FFFFFFFFFFFFFF
            FFFF727272FF727272FF00000000000000000000000000000000000000000000
            00000000000000000000727272FF727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF727272FF727272FFFFFFFFFFFFFF
            FFFF727272FF727272FF00000000000000000000000000000000000000000000
            00000000000000000000727272FF727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF727272FF727272FFFFFFFFFFFFFF
            FFFF727272FF727272FF00000000000000000000000000000000000000000000
            00000000000000000000727272FF727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF727272FF727272FFFFFFFFFFFFFF
            FFFF727272FF727272FF00000000000000000000000000000000000000000000
            00000000000000000000727272FF727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF727272FF727272FFFFFFFFFFFFFF
            FFFF727272FF727272FF00000000000000000000000000000000000000000000
            00000000000000000000727272FF727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF727272FF727272FFFFFFFFFFFFFF
            FFFF727272FF727272FF00000000000000000000000000000000000000000000
            00000000000000000000727272FF727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF727272FF727272FFFFFFFFFFFFFF
            FFFF727272FF727272FF00000000000000000000000000000000000000000000
            00000000000000000000727272FF727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF727272FF727272FFFFFFFFFFFFFF
            FFFF727272FF727272FF00000000000000000000000000000000000000000000
            00000000000000000000727272FF727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF727272FF727272FFFFFFFFFFFFFF
            FFFF727272FF727272FF00000000000000000000000000000000000000000000
            00000000000000000000727272FF727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF727272FF727272FFFFFFFFFFFFFF
            FFFF727272FF727272FF00000000000000000000000000000000000000000000
            00000000000000000000727272FF727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF727272FF727272FFFFFFFFFFFFFF
            FFFF727272FF727272FF00000000000000000000000000000000000000000000
            00000000000000000000727272FF727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF727272FF727272FF727272FF727272FF727272FF727272FFFFFFFFFFFFFF
            FFFF727272FF727272FF00000000000000000000000000000000000000000000
            00000000000000000000727272FF727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF727272FF727272FF727272FF727272FF727272FF727272FFFFFFFFFFFFFF
            FFFF727272FF727272FF00000000000000000000000000000000000000000000
            00000000000000000000727272FF727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF727272FF727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF727272FF727272FF00000000000000000000000000000000000000000000
            00000000000000000000727272FF727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF727272FF727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF727272FF727272FF00000000000000000000000000000000000000000000
            00000000000000000000727272FF727272FF727272FF727272FF727272FF7272
            72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
            72FF727272FF727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF727272FF727272FF00000000000000000000000000000000000000000000
            00000000000000000000727272FF727272FF727272FF727272FF727272FF7272
            72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
            72FF727272FF727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF727272FF727272FF00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000727272FF7272
            72FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF727272FF727272FF00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000727272FF7272
            72FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF727272FF727272FF00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000727272FF7272
            72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
            72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
            72FF727272FF727272FF00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000727272FF7272
            72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
            72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
            72FF727272FF727272FF00000000000000000000000000000000000000000000
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
          TabOrder = 4
          OnClick = btnClipBoardClick
        end
      end
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 313
        Width = 1065
        Height = 241
        Align = alBottom
        Caption = 'Verificar Chave'
        TabOrder = 1
        object Panel1: TPanel
          Left = 2
          Top = 35
          Width = 1061
          Height = 55
          Align = alTop
          BevelKind = bkTile
          BevelOuter = bvNone
          TabOrder = 0
          object btnVerificar: TBitBtn
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 187
            Height = 45
            Align = alLeft
            Caption = 'Verificar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              36100000424D3610000000000000360000002800000020000000200000000100
              2000000000000010000000000000000000000000000000000000000000000000
              0000565656C1727272FF727272FF727272FF727272FF727272FF727272FF7272
              72FF727272FF727272FF727272FF727272FF727272FF5A5A5AC8000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
              72FF727272FF727272FF727272FF727272FF727272FF727272FF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000727272FF727272FF00000000000000000000000000000000000000000000
              000000000000000000000000000000000000727272FF727272FF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000727272FF727272FF00000000000000000000000000000000000000000000
              000000000000000000000000000000000000727272FF727272FF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000727272FF727272FF00000000000000000000000000000000000000000000
              000000000000000000000000000000000000727272FF727272FF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000727272FF727272FF00000000000000000000000000000000000000000000
              000000000000000000000000000000000000727272FF727272FF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000727272FF727272FF00000000000000000000000000000000000000000000
              000000000000000000000000000000000000727272FF727272FF000000000000
              00000000000000000000727272FF727272FF727272FF727272FF727272FF7272
              72FF727272FF727272FF727272FF727272FF0000000000000000000000000000
              0000727272FF727272FF00000000000000000000000000000000000000000000
              000000000000000000000000000000000000727272FF727272FF000000000000
              00000000000000000000727272FF727272FF727272FF727272FF727272FF7272
              72FF727272FF727272FF727272FF727272FF0000000000000000000000000000
              0000727272FF727272FF00000000000000000000000000000000000000000000
              000000000000000000000000000000000000727272FF727272FF000000000000
              00000000000000000000727272FF727272FF727272FF727272FF727272FF7272
              72FF727272FF727272FF727272FF727272FF0000000000000000000000000000
              0000727272FF727272FF00000000000000000000000000000000000000000000
              000000000000000000000000000000000000727272FF727272FF000000000000
              00000000000000000000727272FF727272FF727272FF727272FF727272FF7272
              72FF727272FF727272FF727272FF727272FF0000000000000000000000000000
              0000727272FF727272FF00000000000000000000000000000000000000000000
              000000000000000000000000000000000000727272FF727272FF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000727272FF727272FF00000000000000000000000000000000000000000000
              000000000000000000000000000000000000727272FF727272FF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
              72FF727272FF727272FF727272FF727272FF727272FF727272FF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000535353B9727272FF727272FF727272FF727272FF727272FF727272FF7272
              72FF727272FF727272FF727272FF727272FF727272FF565656C0000000000000
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
              0000565656C1727272FF727272FF727272FF727272FF727272FF727272FF7272
              72FF727272FF727272FF727272FF727272FF727272FF5A5A5AC8000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
              72FF727272FF727272FF727272FF727272FF727272FF727272FF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000727272FF727272FF00000000000000000000000000000000000000000000
              000000000000000000000000000000000000727272FF727272FF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000727272FF727272FF00000000000000000000000000000000000000000000
              000000000000000000000000000000000000727272FF727272FF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000727272FF727272FF00000000000000000000000000000000000000001251
              028412510284000000000000000000000000727272FF727272FF000000000000
              00000000000000000000727272FF727272FF727272FF727272FF727272FF7272
              72FF727272FF727272FF727272FF727272FF0000000000000000000000000000
              0000727272FF727272FF0000000000000000000000000000000012510284239C
              03FF239C03FF1251028400000000000000004B4B4BA8727272FF000000000000
              00000000000000000000727272FF727272FF727272FF727272FF727272FF7272
              72FF727272FF727272FF727272FF727272FF0000000000000000000000000000
              0000727272FF727272FF00000000000000000000000012510284239C03FF239C
              03FF239C03FF239C03FF1251028400000000020202044B4B4BA8000000000000
              00000000000000000000727272FF727272FF727272FF727272FF727272FF7272
              72FF727272FF727272FF727272FF727272FF0000000000000000000000000000
              0000727272FF727272FF000000000000000012510284239C03FF239C03FF114C
              017C114C017C239C03FF239C03FF125102840000000002020204000000000000
              00000000000000000000727272FF727272FF727272FF727272FF727272FF7272
              72FF727272FF727272FF727272FF727272FF0000000000000000000000000000
              0000727272FF727272FF0000000000000000239C03FF239C03FF114C017C0000
              000000000000114C017C239C03FF239C03FF1251028400000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000727272FF727272FF0000000000000000239C03FF114C017C000000000000
              00000000000000000000114C017C239C03FF239C03FF12510284000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000727272FF727272FF0000000000000000114C017C00000000000000000000
              0000000000000000000000000000114C017C239C03FF239C03FF125102840000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000727272FF727272FF00000000000000000000000000000000000000000000
              000000000000000000000000000000000000114C017C239C03FF239C03FF1251
              0284000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
              72FF727272FF727272FF515151B40303030700000000114C017C239C03FF239C
              03FF000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000535353B9727272FF727272FF727272FF727272FF727272FF727272FF7272
              72FF727272FF727272FF727272FF515151B40303030700000000114C017C239C
              03FF000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000114C
              017C000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            ParentFont = False
            TabOrder = 0
            OnClick = btnVerificarClick
          end
          object EditChave: TEdit
            AlignWithMargins = True
            Left = 196
            Top = 3
            Width = 858
            Height = 45
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -29
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            ExplicitHeight = 40
          end
        end
        object MemoTeste: TMemo
          Left = 2
          Top = 90
          Width = 1061
          Height = 149
          Align = alClient
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clLime
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = []
          Lines.Strings = (
            ''
            'Chave            :'
            'Data da Chave    :'
            'Tempo de Licen'#231'a :'
            'Data Limite      :'
            '')
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 1
        end
      end
    end
  end
end