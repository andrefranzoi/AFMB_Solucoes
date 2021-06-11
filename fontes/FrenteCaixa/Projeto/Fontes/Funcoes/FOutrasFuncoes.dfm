inherited FrmOutrasFuncoes: TFrmOutrasFuncoes
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Fun'#231#245'es'
  ClientHeight = 511
  ClientWidth = 694
  Color = 4276288
  Constraints.MinWidth = 500
  Font.Charset = ANSI_CHARSET
  Font.Height = -15
  Font.Name = 'Tahoma'
  ExplicitHeight = 540
  PixelsPerInch = 96
  TextHeight = 18
  inherited pnBotoes: TPanel
    Top = 470
    Width = 688
    Height = 38
    Color = 4276288
    ExplicitTop = 470
    ExplicitWidth = 688
    ExplicitHeight = 38
    inherited btnOk: TBitBtn
      Height = 36
      Glyph.Data = {00000000}
      Visible = False
      ExplicitHeight = 36
    end
    inherited btnCancelar: TBitBtn
      Left = 577
      Height = 36
      Glyph.Data = {00000000}
      ExplicitLeft = 577
      ExplicitHeight = 36
    end
  end
  inherited pnPrincipal: TPanel
    Width = 688
    Height = 398
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Height = -15
    Font.Name = 'Tahoma'
    ParentBackground = False
    ParentFont = False
    ExplicitWidth = 688
    ExplicitHeight = 398
    object GridPanel1: TGridPanel
      AlignWithMargins = True
      Left = 5
      Top = 17
      Width = 674
      Height = 360
      Margins.Top = 15
      Margins.Bottom = 15
      Align = alClient
      Color = clWhite
      ColumnCollection = <
        item
          Value = 50.004577497024630000
        end
        item
          Value = 49.995422502975370000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = Panel1
          Row = 0
        end
        item
          Column = 1
          Control = Panel2
          Row = 0
        end
        item
          Column = 0
          Control = Panel3
          Row = 1
        end
        item
          Column = 1
          Control = Panel4
          Row = 1
        end
        item
          Column = 0
          Control = Panel5
          Row = 2
        end
        item
          Column = 1
          Control = Panel6
          Row = 2
        end
        item
          Column = 0
          Control = Panel7
          Row = 3
        end
        item
          Column = 1
          Control = Panel25
          Row = 3
        end
        item
          Column = 0
          Control = Panel22
          Row = 4
        end>
      ParentBackground = False
      RowCollection = <
        item
          Value = 20.006487127533910000
        end
        item
          Value = 19.999467867898010000
        end
        item
          Value = 19.997150034356170000
        end
        item
          Value = 19.997629934856080000
        end
        item
          Value = 19.999265035355830000
        end>
      TabOrder = 0
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 330
        Height = 65
        Align = alClient
        BevelOuter = bvLowered
        ParentBackground = False
        TabOrder = 0
        object Panel8: TPanel
          AlignWithMargins = True
          Left = 59
          Top = 4
          Width = 267
          Height = 57
          Align = alClient
          BevelKind = bkTile
          BevelOuter = bvNone
          Caption = 'Abertura do Caixa'
          ParentBackground = False
          TabOrder = 0
        end
        object Panel9: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 49
          Height = 57
          Align = alLeft
          BevelKind = bkTile
          BevelOuter = bvNone
          Caption = 'F1'
          ParentBackground = False
          TabOrder = 1
        end
      end
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 340
        Top = 4
        Width = 330
        Height = 65
        Align = alClient
        BevelOuter = bvLowered
        ParentBackground = False
        TabOrder = 1
        object Panel10: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 49
          Height = 57
          Align = alLeft
          BevelKind = bkTile
          BevelOuter = bvNone
          Caption = 'F2'
          ParentBackground = False
          TabOrder = 0
        end
        object Panel11: TPanel
          AlignWithMargins = True
          Left = 59
          Top = 4
          Width = 267
          Height = 57
          Align = alClient
          BevelKind = bkTile
          BevelOuter = bvNone
          Caption = 'Refor'#231'o de Caixa'
          ParentBackground = False
          TabOrder = 1
        end
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 75
        Width = 330
        Height = 65
        Align = alClient
        BevelOuter = bvLowered
        ParentBackground = False
        TabOrder = 2
        object Panel12: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 49
          Height = 57
          Align = alLeft
          BevelKind = bkTile
          BevelOuter = bvNone
          Caption = 'F3'
          ParentBackground = False
          TabOrder = 0
        end
        object Panel13: TPanel
          AlignWithMargins = True
          Left = 59
          Top = 4
          Width = 267
          Height = 57
          Align = alClient
          BevelKind = bkTile
          BevelOuter = bvNone
          Caption = 'Retirada (sangria)'
          ParentBackground = False
          TabOrder = 1
        end
      end
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 340
        Top = 75
        Width = 330
        Height = 65
        Align = alClient
        BevelOuter = bvLowered
        ParentBackground = False
        TabOrder = 3
        object Panel14: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 49
          Height = 57
          Align = alLeft
          BevelKind = bkTile
          BevelOuter = bvNone
          Caption = 'F4'
          ParentBackground = False
          TabOrder = 0
        end
        object Panel15: TPanel
          AlignWithMargins = True
          Left = 59
          Top = 4
          Width = 267
          Height = 57
          Align = alClient
          BevelKind = bkTile
          BevelOuter = bvNone
          Caption = 'Resumo Financeiro'
          ParentBackground = False
          TabOrder = 1
        end
      end
      object Panel5: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 146
        Width = 330
        Height = 65
        Align = alClient
        BevelOuter = bvLowered
        ParentBackground = False
        TabOrder = 4
        object Panel16: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 49
          Height = 57
          Align = alLeft
          BevelKind = bkTile
          BevelOuter = bvNone
          Caption = 'F5'
          ParentBackground = False
          TabOrder = 0
        end
        object Panel17: TPanel
          AlignWithMargins = True
          Left = 59
          Top = 4
          Width = 267
          Height = 57
          Align = alClient
          BevelKind = bkTile
          BevelOuter = bvNone
          Caption = 'Abrir Gaveta'
          ParentBackground = False
          TabOrder = 1
        end
      end
      object Panel6: TPanel
        AlignWithMargins = True
        Left = 340
        Top = 146
        Width = 330
        Height = 65
        Align = alClient
        BevelOuter = bvLowered
        ParentBackground = False
        TabOrder = 5
        object Panel18: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 49
          Height = 57
          Align = alLeft
          BevelKind = bkTile
          BevelOuter = bvNone
          Caption = 'F6'
          ParentBackground = False
          TabOrder = 0
        end
        object Panel19: TPanel
          AlignWithMargins = True
          Left = 59
          Top = 4
          Width = 267
          Height = 57
          Align = alClient
          BevelKind = bkTile
          BevelOuter = bvNone
          Caption = 'Fechamento do Caixa'
          ParentBackground = False
          TabOrder = 1
        end
      end
      object Panel7: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 217
        Width = 330
        Height = 65
        Align = alClient
        BevelOuter = bvLowered
        ParentBackground = False
        TabOrder = 6
        object Panel20: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 49
          Height = 57
          Align = alLeft
          BevelKind = bkTile
          BevelOuter = bvNone
          Caption = 'F7'
          ParentBackground = False
          TabOrder = 0
        end
        object Panel21: TPanel
          AlignWithMargins = True
          Left = 59
          Top = 4
          Width = 267
          Height = 57
          Align = alClient
          BevelKind = bkTile
          BevelOuter = bvNone
          Caption = 'Notas Emitidas'
          ParentBackground = False
          TabOrder = 1
        end
      end
      object Panel25: TPanel
        AlignWithMargins = True
        Left = 340
        Top = 217
        Width = 330
        Height = 65
        Align = alClient
        BevelOuter = bvLowered
        ParentBackground = False
        TabOrder = 7
        object Panel26: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 49
          Height = 57
          Align = alLeft
          BevelKind = bkTile
          BevelOuter = bvNone
          Caption = 'F8'
          ParentBackground = False
          TabOrder = 0
        end
        object Panel27: TPanel
          AlignWithMargins = True
          Left = 59
          Top = 4
          Width = 267
          Height = 57
          Align = alClient
          BevelKind = bkTile
          BevelOuter = bvNone
          Caption = 'Configura'#231#227'o do Sistema'
          ParentBackground = False
          TabOrder = 1
        end
      end
      object Panel22: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 288
        Width = 330
        Height = 68
        Align = alClient
        BevelOuter = bvLowered
        ParentBackground = False
        TabOrder = 8
        object Panel23: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 49
          Height = 60
          Align = alLeft
          BevelKind = bkTile
          BevelOuter = bvNone
          Caption = 'F9'
          ParentBackground = False
          TabOrder = 0
        end
        object Panel24: TPanel
          AlignWithMargins = True
          Left = 59
          Top = 4
          Width = 267
          Height = 60
          Align = alClient
          BevelKind = bkTile
          BevelOuter = bvNone
          Caption = 'Configurar Balan'#231'a'
          ParentBackground = False
          TabOrder = 1
        end
      end
    end
  end
  inherited pnTitulo: TPanel
    Width = 688
    ExplicitWidth = 688
    inherited Shape1: TShape
      Width = 680
      Pen.Color = clWhite
      ExplicitWidth = 486
    end
    inherited lblTitulo: TLabel
      Width = 656
      Height = 49
      Caption = 'Fun'#231#245'es'
      Font.Height = -24
      ExplicitWidth = 91
      ExplicitHeight = 28
    end
  end
end
