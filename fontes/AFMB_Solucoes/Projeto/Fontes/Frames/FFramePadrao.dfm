object FrmFramePadrao: TFrmFramePadrao
  Left = 0
  Top = 0
  Width = 451
  Height = 305
  Align = alClient
  AutoSize = True
  TabOrder = 0
  object PNPainelPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 451
    Height = 305
    Align = alClient
    TabOrder = 0
    inline FrmFrameBarra1: TFrmFrameBarra
      Left = 1
      Top = 1
      Width = 449
      Height = 50
      Align = alTop
      AutoSize = True
      Constraints.MinHeight = 50
      Color = clTeal
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 449
      inherited Image3: TImage
        Width = 449
        ExplicitWidth = 449
      end
      inherited pnTitulo: TPanel
        Width = 443
        ExplicitWidth = 443
        inherited LblBarraTitulo: TLabel
          Width = 292
          ExplicitWidth = 292
        end
        inherited Image1: TImage
          ExplicitLeft = 3
        end
        inherited Image2: TImage
          Left = 381
          ExplicitLeft = 381
        end
      end
    end
  end
end
