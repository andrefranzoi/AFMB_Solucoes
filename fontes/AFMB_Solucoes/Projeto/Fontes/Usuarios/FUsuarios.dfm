object FrmUsuarios: TFrmUsuarios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Usu'#225'rios'
  ClientHeight = 663
  ClientWidth = 968
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pgControl: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 53
    Width = 962
    Height = 547
    ActivePage = tabDetalhe
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    OnChanging = pgControlChanging
    object tabRegistro: TTabSheet
      Caption = 'Registros'
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 954
        Height = 516
        Align = alClient
        TabOrder = 0
        object cxGridDB: TcxGridDBTableView
          OnDblClick = cxGridDBDblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsDados
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridDBID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            MinWidth = 65
            Options.AutoWidthSizable = False
            Options.Moving = False
            Width = 65
          end
          object cxGridDBNome: TcxGridDBColumn
            Caption = 'Usu'#225'rio'
            DataBinding.FieldName = 'USERNAME'
            Options.Moving = False
            Width = 446
          end
        end
        object cxGridNivel: TcxGridLevel
          GridView = cxGridDB
        end
      end
    end
    object tabDetalhe: TTabSheet
      Caption = 'Editar'
      ImageIndex = 1
      object gbDados: TGroupBox
        Left = 0
        Top = 0
        Width = 954
        Height = 81
        Align = alTop
        Caption = 'Dados do usu'#225'rio'
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 24
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object Label2: TLabel
          Left = 62
          Top = 24
          Width = 36
          Height = 13
          Caption = 'Usu'#225'rio'
        end
        object Label4: TLabel
          Left = 429
          Top = 24
          Width = 30
          Height = 13
          Caption = 'Senha'
        end
        object EditID: TDBEdit
          Left = 8
          Top = 39
          Width = 49
          Height = 21
          DataField = 'ID'
          DataSource = dsDados
          Enabled = False
          TabOrder = 0
        end
        object EditUsuario: TDBEdit
          Left = 62
          Top = 39
          Width = 361
          Height = 21
          CharCase = ecUpperCase
          DataField = 'USERNAME'
          DataSource = dsDados
          TabOrder = 1
        end
        object EditSenha: TDBEdit
          Left = 429
          Top = 39
          Width = 156
          Height = 21
          CharCase = ecUpperCase
          DataField = 'SENHA'
          DataSource = dsDados
          PasswordChar = '*'
          TabOrder = 2
        end
      end
      object gbPermissao: TGroupBox
        Left = 0
        Top = 81
        Width = 954
        Height = 435
        Align = alClient
        Caption = '[Permiss'#245'es]'
        TabOrder = 1
        object cxGridAcessos: TcxGrid
          AlignWithMargins = True
          Left = 145
          Top = 18
          Width = 804
          Height = 412
          Align = alClient
          TabOrder = 0
          object cxGridMenus: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsMenu
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            object cxGridMenusColumn1: TcxGridDBColumn
              Caption = 'Nivel'
              DataBinding.FieldName = 'CATEGORIA'
              Visible = False
              GroupIndex = 0
              Options.Editing = False
              Options.AutoWidthSizable = False
              Width = 173
            end
            object cxGridMenusColumn2: TcxGridDBColumn
              Caption = 'Menu'
              DataBinding.FieldName = 'TITULO'
              Options.Editing = False
            end
            object cxGridMenusColumn3: TcxGridDBColumn
              Caption = 'Acesso'
              DataBinding.FieldName = 'ACESSO'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.DisplayChecked = 'SIM'
              Properties.DisplayUnchecked = 'NAO'
              Properties.ValueChecked = 'SIM'
              Properties.ValueUnchecked = 'NAO'
              Options.AutoWidthSizable = False
            end
          end
          object cxGridAcessosLevel1: TcxGridLevel
            GridView = cxGridMenus
          end
        end
        object Panel1: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 134
          Height = 412
          Align = alLeft
          BevelKind = bkTile
          BevelOuter = bvNone
          TabOrder = 1
          object btnBloquear: TBitBtn
            Left = 0
            Top = 68
            Width = 130
            Height = 34
            Align = alTop
            Caption = 'Bloquear todos'
            TabOrder = 0
            OnClick = btnBloquearClick
          end
          object btnRecriar: TBitBtn
            Left = 0
            Top = 0
            Width = 130
            Height = 34
            Align = alTop
            Caption = 'Recriar Menus'
            TabOrder = 1
            OnClick = btnRecriarClick
          end
          object btnLiberar: TBitBtn
            Left = 0
            Top = 34
            Width = 130
            Height = 34
            Align = alTop
            Caption = 'Liberar todos'
            TabOrder = 2
            OnClick = btnLiberarClick
          end
        end
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 603
    Width = 968
    Height = 60
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 603
    ExplicitWidth = 968
    inherited PanelBotoesBottom: TPanel
      Width = 958
      ExplicitWidth = 958
      inherited SpbAdicionar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbAdicionarClick
        ExplicitLeft = 26
      end
      inherited SpbEditar: TSpeedButton
        Visible = False
        OnClick = FrmFrameBotoes1SpbEditarClick
        ExplicitLeft = 226
      end
      inherited SpbCancelar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbCancelarClick
        ExplicitLeft = 326
      end
      inherited SpbSalvar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSalvarClick
        ExplicitLeft = 126
      end
      inherited SpbExcluir: TSpeedButton
        OnClick = FrmFrameBotoes1SpbExcluirClick
        ExplicitLeft = 426
      end
      inherited SpbImprimir: TSpeedButton
        ExplicitLeft = 626
      end
      inherited SpbSair: TSpeedButton
        Left = 854
        OnClick = FrmFrameBotoes1SpbSairClick
        ExplicitLeft = 816
      end
      inherited SpbExtra: TSpeedButton
        Left = 764
        ExplicitLeft = 726
      end
      inherited SpbProcurar: TSpeedButton
        Visible = False
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 526
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 968
    Height = 50
    Align = alTop
    Constraints.MinHeight = 50
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 968
    inherited Image3: TImage
      Width = 968
      ExplicitTop = 36
      ExplicitWidth = 1028
      ExplicitHeight = 36
    end
    inherited pnTitulo: TPanel
      Width = 962
      Constraints.MinHeight = 30
      ExplicitWidth = 962
      ExplicitHeight = 44
      inherited LblBarraTitulo: TLabel
        Width = 811
        Caption = 'Usu'#225'rios'
        ExplicitWidth = 320
        ExplicitHeight = 28
      end
      inherited Image1: TImage
        ExplicitLeft = 972
        ExplicitHeight = 34
      end
      inherited Image2: TImage
        Left = 900
        ExplicitLeft = 972
        ExplicitHeight = 34
      end
    end
  end
  object QryExcluirAcesso: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'DELETE FROM USUARIOACESSO'
      'WHERE'
      'ID=:ID')
    Left = 560
    Top = 276
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QryUsuarioSetarAcesso: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'UPDATE USUARIOACESSO SET ACESSO=:ACAO'
      'WHERE'
      'ID=:ID'
      'AND'
      'MENU<>'#39#39)
    Left = 560
    Top = 332
    ParamData = <
      item
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QueryMenu: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM USUARIOACESSO'
      'WHERE'
      'ID=:ID')
    Left = 103
    Top = 333
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsMenu: TDataSource
    DataSet = QueryMenu
    Left = 47
    Top = 341
  end
  object dsDados: TDataSource
    DataSet = QryDados
    OnStateChange = dsDadosStateChange
    Left = 55
    Top = 268
  end
  object QryDados: TFDQuery
    OnNewRecord = QryDadosNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM USUARIO')
    Left = 103
    Top = 268
  end
end
