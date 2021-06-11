object FrmCtaReceberBaixasLotesSelecionar: TFrmCtaReceberBaixasLotesSelecionar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Baixas a Receber por Lote'
  ClientHeight = 480
  ClientWidth = 620
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 620
    Height = 50
    Align = alTop
    Constraints.MinHeight = 50
    Color = 16024898
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 620
    inherited Image3: TImage
      Width = 620
      ExplicitWidth = 620
      ExplicitHeight = 36
    end
    inherited pnTitulo: TPanel
      Width = 614
      Constraints.MinHeight = 30
      ExplicitWidth = 614
      ExplicitHeight = 30
      inherited LblBarraTitulo: TLabel
        Width = 463
        Caption = 'Baixas de Titulos a Receber por Lote | Selecionar'
        ExplicitWidth = 299
        ExplicitHeight = 36
      end
      inherited Image1: TImage
        ExplicitHeight = 34
      end
      inherited Image2: TImage
        Left = 552
        ExplicitLeft = 564
        ExplicitHeight = 34
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 50
    Width = 620
    Height = 389
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 36
    ExplicitHeight = 403
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 618
      Height = 387
      Align = alClient
      Caption = 'Selecionar titulos a baixar'
      TabOrder = 0
      ExplicitHeight = 401
      object cxGrid1: TcxGrid
        Left = 2
        Top = 15
        Width = 614
        Height = 370
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 384
        object cxGridSelecionar: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = FrmCtaReceberBaixasLotes.ds_ctaReceber
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          object cxGridSelecionarColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'DOCUMENTO'
            Options.Editing = False
            Width = 89
          end
          object cxGridSelecionarColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'DATA'
            Options.Editing = False
            Width = 89
          end
          object cxGridSelecionarColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'VENCIMENTO'
            Options.Editing = False
            Width = 108
          end
          object cxGridSelecionarColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'CLIENTE'
            Options.Editing = False
            Width = 72
          end
          object cxGridSelecionarColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'VENDEDOR'
            Options.Editing = False
            Width = 85
          end
          object cxGridSelecionarColumn6: TcxGridDBColumn
            DataBinding.FieldName = 'VALOR'
            Options.Editing = False
            Width = 82
          end
          object cxGridSelecionarColumn7: TcxGridDBColumn
            DataBinding.FieldName = 'SELECIONADO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 87
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGridSelecionar
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 439
    Width = 620
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 17
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Ok'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 98
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
end
