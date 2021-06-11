inherited FrmOperador: TFrmOperador
  BorderStyle = bsDialog
  Caption = 'Informar Operador'
  ClientHeight = 371
  ClientWidth = 694
  PixelsPerInch = 96
  TextHeight = 22
  inherited pnBotoes: TPanel
    Top = 323
    Width = 688
    TabOrder = 1
    ExplicitTop = 323
    ExplicitWidth = 688
    inherited btnOk: TBitBtn
      Width = 144
      Caption = 'F2 (Concluir)'
      Glyph.Data = {00000000}
      TabOrder = 0
      ExplicitWidth = 144
    end
    inherited btnCancelar: TBitBtn
      Left = 577
      Caption = 'Esc (Sair)'
      Glyph.Data = {00000000}
      TabOrder = 1
      ExplicitLeft = 577
    end
  end
  inherited pnPrincipal: TPanel
    Width = 688
    Height = 251
    TabOrder = 0
    ExplicitWidth = 688
    ExplicitHeight = 251
    object EditID: TLabeledEdit
      Left = 16
      Top = 49
      Width = 161
      Height = 30
      EditLabel.Width = 110
      EditLabel.Height = 22
      EditLabel.Caption = 'ID Operador'
      NumbersOnly = True
      TabOrder = 0
      OnExit = EditIDExit
    end
    object EditNome: TLabeledEdit
      Left = 183
      Top = 49
      Width = 482
      Height = 30
      EditLabel.Width = 10
      EditLabel.Height = 22
      EditLabel.Caption = ' '
      Enabled = False
      TabOrder = 1
    end
    object EditSenha: TLabeledEdit
      Left = 16
      Top = 137
      Width = 161
      Height = 30
      EditLabel.Width = 50
      EditLabel.Height = 22
      EditLabel.Caption = 'Senha'
      TabOrder = 2
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
      Caption = 'Informar Operador'
      ExplicitWidth = 272
    end
  end
  object QryUsuario: TFDQuery
    Connection = FrmPrincipal.ConnectFirebird
    SQL.Strings = (
      'SELECT * FROM USUARIO '
      'WHERE'
      'ID=:ID')
    Left = 379
    Top = 79
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
    Left = 291
    Top = 79
  end
end
