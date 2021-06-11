inherited FrmReforcoCaixa: TFrmReforcoCaixa
  BorderStyle = bsDialog
  Caption = 'Refor'#231'o de Caixa'
  ClientHeight = 411
  ClientWidth = 694
  ExplicitHeight = 440
  PixelsPerInch = 96
  TextHeight = 22
  inherited pnBotoes: TPanel
    Top = 363
    Width = 688
    TabOrder = 1
    ExplicitTop = 363
    ExplicitWidth = 688
    inherited btnOk: TBitBtn
      Width = 144
      Caption = 'F2 (Concluir)'
      TabOrder = 0
      ExplicitWidth = 144
    end
    inherited btnCancelar: TBitBtn
      Left = 577
      Caption = 'Esc (Sair)'
      TabOrder = 1
      ExplicitLeft = 577
    end
  end
  inherited pnPrincipal: TPanel
    Width = 688
    Height = 291
    TabOrder = 0
    ExplicitWidth = 688
    ExplicitHeight = 291
    object EditID: TLabeledEdit
      Left = 16
      Top = 49
      Width = 161
      Height = 41
      EditLabel.Width = 140
      EditLabel.Height = 22
      EditLabel.Caption = 'ID Operador(a)'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Calibri'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 0
    end
    object EditNome: TLabeledEdit
      Left = 183
      Top = 49
      Width = 482
      Height = 41
      EditLabel.Width = 10
      EditLabel.Height = 22
      EditLabel.Caption = ' '
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EditSenha: TLabeledEdit
      Left = 16
      Top = 121
      Width = 161
      Height = 41
      CharCase = ecUpperCase
      EditLabel.Width = 50
      EditLabel.Height = 22
      EditLabel.Caption = 'Senha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object EditValor: TLabeledEdit
      Left = 480
      Top = 121
      Width = 185
      Height = 41
      EditLabel.Width = 170
      EditLabel.Height = 22
      EditLabel.Caption = 'Valor Abertura R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyDown = EditValorKeyDown
      OnKeyPress = EditValorKeyPress
    end
  end
  inherited pnTitulo: TPanel
    Width = 688
    ExplicitWidth = 688
    inherited Shape1: TShape
      Width = 680
      ExplicitWidth = 680
    end
    inherited lblTitulo: TLabel
      Width = 656
      Caption = 'Refor'#231'o de Caixa'
      ExplicitWidth = 256
    end
  end
  object QryUsuario: TFDQuery
    Connection = FrmPrincipal.ConnectFirebird
    SQL.Strings = (
      'SELECT * FROM USUARIO '
      'WHERE'
      'ID=:ID')
    Left = 459
    Top = 63
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 323
    Top = 71
  end
end
