object ProductionEditForm: TProductionEditForm
  Left = 0
  Top = 0
  HorzScrollBar.Increment = 88
  VertScrollBar.Increment = 66
  Align = alClient
  BorderStyle = bsNone
  Caption = 'ProductionEditForm'
  ClientHeight = 905
  ClientWidth = 1504
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 15
    Top = 33
    Width = 81
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  object Label6: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1498
    Height = 902
    Margins.Bottom = 0
    Align = alClient
    Caption = #1062#1074#1077#1090
    ExplicitWidth = 25
    ExplicitHeight = 13
  end
  object ProductionEditMainPanel: TScrollBox
    Left = 0
    Top = 0
    Width = 1504
    Height = 905
    HorzScrollBar.Smooth = True
    HorzScrollBar.Tracking = True
    VertScrollBar.Smooth = True
    VertScrollBar.Tracking = True
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnMouseWheel = ProductionEditMainPanelMouseWheel
    object Filler4: TGroupBox
      AlignWithMargins = True
      Left = 1416
      Top = 6
      Width = 82
      Height = 893
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Align = alClient
      TabOrder = 0
    end
    object ProductionPanel: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 724
      Height = 899
      Align = alLeft
      BevelKind = bkTile
      BevelOuter = bvNone
      Constraints.MinWidth = 308
      TabOrder = 1
      object ProductionGrid: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 90
        Width = 712
        Height = 802
        Align = alLeft
        DataSource = DataModule2.Products_view_source
        DrawingStyle = gdsGradient
        GradientEndColor = 1033457
        GradientStartColor = 1033457
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = ProductPopupMenu
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnKeyDown = ProductionGridKeyDown
        OnMouseEnter = ProductionGridMouseEnter
        OnTitleClick = ProductionGridTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id_p'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'name_p'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '
            Width = 220
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'name_pt'
            Title.Caption = #1058#1080#1087
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'proceeds_p'
            Title.Caption = #1062#1077#1085#1072' (USD)'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cost_price_p'
            Title.Caption = #1047#1072#1090#1088#1072#1090#1099' (USD)'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'added_value_pl'
            Title.Caption = #1044#1057#1058' (USD)'
            Width = 90
            Visible = True
          end>
      end
      object ProductionEditToolBar: TToolBar
        Left = 0
        Top = 0
        Width = 600
        Height = 21
        AutoSize = True
        ButtonHeight = 21
        ButtonWidth = 174
        Constraints.MaxWidth = 600
        EdgeInner = esNone
        EdgeOuter = esNone
        Menu = ProductionMenu
        ShowCaptions = True
        TabOrder = 1
      end
      object ProductionEditPanel: TPanel
        Left = 0
        Top = 21
        Width = 720
        Height = 66
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        Visible = False
        object ProductionEditBox: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 712
          Height = 63
          Margins.Bottom = 0
          Align = alLeft
          BiDiMode = bdRightToLeftNoAlign
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1087#1080#1089#1082#1072' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
          Color = clCream
          ParentBackground = False
          ParentBiDiMode = False
          ParentColor = False
          TabOrder = 0
          object ProductionEditGridPanel: TGridPanel
            Left = 5
            Top = 13
            Width = 704
            Height = 47
            BevelOuter = bvNone
            ColumnCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 180.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 142.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 72.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 90.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 72.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 72.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 72.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 2
                Control = Label10
                Row = 0
              end
              item
                Column = 3
                Control = Label11
                Row = 0
              end
              item
                Column = 4
                Control = Label12
                Row = 0
              end
              item
                Column = 1
                Control = Label9
                Row = 0
              end
              item
                Column = 0
                Control = Label4
                Row = 0
              end
              item
                Column = 5
                Control = ProductionPostButton
                Row = 1
              end
              item
                Column = 6
                Control = ProductionCancelButton
                Row = 1
              end
              item
                Column = 0
                Control = ProductionNameEdit
                Row = 1
              end
              item
                Column = 1
                Control = ProductionTypeCB
                Row = 1
              end
              item
                Column = 2
                Control = ProceedsEdit
                Row = 1
              end
              item
                Column = 3
                Control = CostPriceEdit
                Row = 1
              end
              item
                Column = 4
                Control = AddedValueEdit
                Row = 1
              end>
            RowCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 17.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 28.000000000000000000
              end>
            TabOrder = 0
            object Label10: TLabel
              AlignWithMargins = True
              Left = 325
              Top = 3
              Width = 66
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1062#1077#1085#1072' (USD)'
              OnClick = Label10Click
              ExplicitWidth = 58
              ExplicitHeight = 13
            end
            object Label11: TLabel
              AlignWithMargins = True
              Left = 397
              Top = 3
              Width = 84
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1047#1072#1090#1088#1072#1090#1099' (USD)'
              OnClick = Label11Click
              ExplicitWidth = 74
              ExplicitHeight = 13
            end
            object Label12: TLabel
              AlignWithMargins = True
              Left = 487
              Top = 3
              Width = 66
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1044#1057#1058' (USD)'
              OnClick = Label12Click
              ExplicitWidth = 52
              ExplicitHeight = 13
            end
            object Label9: TLabel
              AlignWithMargins = True
              Left = 183
              Top = 3
              Width = 136
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1058#1080#1087
              ExplicitWidth = 20
              ExplicitHeight = 13
            end
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 174
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              ExplicitWidth = 81
              ExplicitHeight = 13
            end
            object ProductionPostButton: TButton
              AlignWithMargins = True
              Left = 559
              Top = 17
              Width = 66
              Height = 25
              Margins.Top = 0
              Align = alClient
              Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100
              Enabled = False
              TabOrder = 0
              OnClick = ProductionPostButtonClick
            end
            object ProductionCancelButton: TButton
              AlignWithMargins = True
              Left = 631
              Top = 17
              Width = 66
              Height = 25
              Margins.Top = 0
              Align = alClient
              Caption = #1054#1090#1084#1077#1085#1080#1090#1100
              TabOrder = 1
              OnClick = ProductionCancelButtonClick
            end
            object ProductionNameEdit: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 20
              Width = 174
              Height = 22
              Align = alClient
              BiDiMode = bdLeftToRight
              DataField = 'name_p'
              DataSource = DataModule2.Products_source
              ParentBiDiMode = False
              TabOrder = 2
              OnChange = ProductionNameEditChange
              OnKeyPress = ProductionNameEditKeyPress
              ExplicitHeight = 21
            end
            object ProductionTypeCB: TDBLookupComboBox
              AlignWithMargins = True
              Left = 183
              Top = 20
              Width = 136
              Height = 21
              Align = alClient
              BiDiMode = bdLeftToRight
              DataField = 'id_pt'
              DataSource = DataModule2.Products_source
              DropDownRows = 15
              DropDownWidth = 250
              KeyField = 'id_pt'
              ListField = 'name_pt'
              ListSource = DataModule2.Product_type_source_1
              ParentBiDiMode = False
              TabOrder = 3
              OnClick = ProductionNameEditChange
              OnKeyPress = ProductionTypeCBKeyPress
            end
            object ProceedsEdit: TDBEdit
              AlignWithMargins = True
              Left = 325
              Top = 20
              Width = 66
              Height = 22
              Align = alClient
              BiDiMode = bdLeftToRight
              DataField = 'proceeds_p'
              DataSource = DataModule2.Products_source
              ParentBiDiMode = False
              TabOrder = 4
              OnChange = ProductionNameEditChange
              OnKeyPress = ProceedsEditKeyPress
              ExplicitHeight = 21
            end
            object CostPriceEdit: TDBEdit
              AlignWithMargins = True
              Left = 397
              Top = 20
              Width = 84
              Height = 22
              Align = alClient
              BiDiMode = bdLeftToRight
              DataField = 'cost_price_p'
              DataSource = DataModule2.Products_source
              ParentBiDiMode = False
              TabOrder = 5
              OnChange = ProductionNameEditChange
              OnKeyPress = CostPriceEditKeyPress
              ExplicitHeight = 21
            end
            object AddedValueEdit: TDBEdit
              AlignWithMargins = True
              Left = 487
              Top = 20
              Width = 66
              Height = 22
              Align = alClient
              BiDiMode = bdLeftToRight
              DataField = 'added_value_p'
              DataSource = DataModule2.Products_source
              ParentBiDiMode = False
              TabOrder = 6
              OnChange = ProductionNameEditChange
              OnKeyPress = AddedValueEditKeyPress
              ExplicitHeight = 21
            end
          end
        end
      end
    end
    object ColorPanel: TPanel
      AlignWithMargins = True
      Left = 1073
      Top = 3
      Width = 334
      Height = 899
      Align = alLeft
      AutoSize = True
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 2
      object ColorGrid: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 90
        Width = 324
        Height = 802
        Align = alClient
        Constraints.MinWidth = 318
        DataSource = DataModule2.Product_color_source
        DrawingStyle = gdsGradient
        FixedColor = clWhite
        GradientEndColor = 1033457
        GradientStartColor = 1033457
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = ColorPopupMenu
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnKeyDown = ColorGridKeyDown
        OnMouseEnter = ColorGridMouseEnter
        OnTitleClick = ColorGridTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id_pc'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'name_pc'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '
            Width = 270
            Visible = True
          end>
      end
      object ColorEditToolBar: TToolBar
        Left = 0
        Top = 0
        Width = 250
        Height = 21
        AutoSize = True
        ButtonHeight = 21
        ButtonWidth = 59
        Constraints.MaxWidth = 250
        EdgeInner = esNone
        EdgeOuter = esNone
        Menu = ColorMenu
        ShowCaptions = True
        TabOrder = 1
      end
      object ColorEditBox: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 24
        Width = 324
        Height = 63
        Margins.Bottom = 0
        Align = alTop
        BiDiMode = bdRightToLeftNoAlign
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1087#1080#1089#1082#1072' '#1094#1074#1077#1090#1086#1074
        Color = clCream
        Constraints.MaxWidth = 324
        Constraints.MinWidth = 312
        ParentBackground = False
        ParentBiDiMode = False
        ParentColor = False
        TabOrder = 2
        Visible = False
        object ColorEditGridPanel: TGridPanel
          Left = 3
          Top = 12
          Width = 314
          Height = 47
          BevelOuter = bvNone
          ColumnCollection = <
            item
              SizeStyle = ssAbsolute
              Value = 170.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 72.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 72.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = Label3
              Row = 0
            end
            item
              Column = 0
              Control = ColorEdit
              Row = 1
            end
            item
              Column = 1
              Control = ColorPostButton
              Row = 1
            end
            item
              Column = 2
              Control = ColorCancelButton
              Row = 1
            end>
          RowCollection = <
            item
              SizeStyle = ssAbsolute
              Value = 17.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 28.000000000000000000
            end>
          TabOrder = 0
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 164
            Height = 14
            Margins.Bottom = 0
            Align = alClient
            Caption = #1062#1074#1077#1090
            ExplicitWidth = 25
            ExplicitHeight = 13
          end
          object ColorEdit: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 164
            Height = 22
            Align = alClient
            BiDiMode = bdLeftToRight
            DataField = 'name_pc'
            DataSource = DataModule2.Product_color_source
            ParentBiDiMode = False
            TabOrder = 0
            OnChange = ColorEditChange
            OnKeyPress = ColorEditKeyPress
            ExplicitHeight = 21
          end
          object ColorPostButton: TButton
            AlignWithMargins = True
            Left = 173
            Top = 17
            Width = 66
            Height = 25
            Margins.Top = 0
            Align = alClient
            Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100
            Enabled = False
            TabOrder = 1
            OnClick = ColorPostButtonClick
          end
          object ColorCancelButton: TButton
            AlignWithMargins = True
            Left = 245
            Top = 17
            Width = 66
            Height = 25
            Margins.Top = 0
            Align = alClient
            Caption = #1054#1090#1084#1077#1085#1080#1090#1100
            TabOrder = 2
            OnClick = ColorCancelButtonClick
          end
        end
      end
    end
    object TypePanel: TPanel
      AlignWithMargins = True
      Left = 733
      Top = 3
      Width = 334
      Height = 899
      Align = alLeft
      AutoSize = True
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 3
      object TypeGrid: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 90
        Width = 324
        Height = 802
        Align = alClient
        Constraints.MinWidth = 318
        DataSource = DataModule2.Product_type_source_2
        DrawingStyle = gdsGradient
        GradientEndColor = 1033457
        GradientStartColor = 1033457
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = TypePopupMenu
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnKeyDown = TypeGridKeyDown
        OnMouseEnter = TypeGridMouseEnter
        OnTitleClick = TypeGridTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id_pt'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'name_pt'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 270
            Visible = True
          end>
      end
      object TypeEditToolBar: TToolBar
        Left = 0
        Top = 0
        Width = 250
        Height = 21
        AutoSize = True
        ButtonHeight = 21
        ButtonWidth = 59
        Constraints.MaxWidth = 250
        EdgeInner = esNone
        EdgeOuter = esNone
        Menu = TypeMenu
        ShowCaptions = True
        TabOrder = 1
      end
      object TypeEditBox: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 24
        Width = 324
        Height = 63
        Margins.Bottom = 0
        Align = alTop
        BiDiMode = bdRightToLeftNoAlign
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1087#1080#1089#1082#1072' '#1090#1080#1087#1086#1074
        Color = clCream
        Constraints.MaxWidth = 324
        Constraints.MinWidth = 312
        ParentBackground = False
        ParentBiDiMode = False
        ParentColor = False
        TabOrder = 2
        Visible = False
        object TypeEditGridPanel: TGridPanel
          Left = 3
          Top = 14
          Width = 314
          Height = 47
          BevelOuter = bvNone
          ColumnCollection = <
            item
              SizeStyle = ssAbsolute
              Value = 170.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 72.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 72.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = Label2
              Row = 0
            end
            item
              Column = 0
              Control = TypeEdit
              Row = 1
            end
            item
              Column = 1
              Control = TypePostButton
              Row = 1
            end
            item
              Column = 2
              Control = TypeCancelButton
              Row = 1
            end>
          RowCollection = <
            item
              SizeStyle = ssAbsolute
              Value = 17.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 28.000000000000000000
            end>
          TabOrder = 0
          object Label2: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 164
            Height = 14
            Margins.Bottom = 0
            Align = alClient
            Caption = #1058#1080#1087
            ExplicitWidth = 20
            ExplicitHeight = 13
          end
          object TypeEdit: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 164
            Height = 22
            Align = alClient
            BiDiMode = bdLeftToRight
            DataField = 'name_pt'
            DataSource = DataModule2.Product_type_source_2
            ParentBiDiMode = False
            TabOrder = 0
            OnChange = TypeEditChange
            OnKeyPress = TypeEditKeyPress
            ExplicitHeight = 21
          end
          object TypePostButton: TButton
            AlignWithMargins = True
            Left = 173
            Top = 17
            Width = 66
            Height = 25
            Margins.Top = 0
            Align = alClient
            Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100
            Enabled = False
            TabOrder = 1
            OnClick = TypePostButtonClick
          end
          object TypeCancelButton: TButton
            AlignWithMargins = True
            Left = 245
            Top = 17
            Width = 66
            Height = 25
            Margins.Top = 0
            Align = alClient
            Caption = #1054#1090#1084#1077#1085#1080#1090#1100
            TabOrder = 2
            OnClick = TypeCancelButtonClick
          end
        end
      end
    end
  end
  object ProductionMenu: TMainMenu
    Left = 1440
    Top = 24
    object N1: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' > '#1055#1088#1086#1076#1091#1082#1094#1080#1103' |'
      Enabled = False
    end
    object ProductionAddButton: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = ProductionAddButtonClick
    end
    object ProductionEditButton: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = ProductionEditButtonClick
    end
    object ProductionDeleteButton: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = ProductionDeleteButtonClick
    end
  end
  object ColorMenu: TMainMenu
    Left = 1440
    Top = 104
    object N2: TMenuItem
      Caption = #1062#1074#1077#1090#1072' |'
      Enabled = False
    end
    object ColorAddButton: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = ColorAddButtonClick
    end
    object ColorEditButton: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = ColorEditButtonClick
    end
    object ColorDeleteButton: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = ColorDeleteButtonClick
    end
  end
  object TypeMenu: TMainMenu
    Left = 1440
    Top = 184
    object N3: TMenuItem
      Caption = #1058#1080#1087#1099' |'
      Enabled = False
    end
    object TypeAddButton: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = TypeAddButtonClick
    end
    object TypeEditButton: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = TypeEditButtonClick
    end
    object TypeDeleteButton: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = TypeDeleteButtonClick
    end
  end
  object ProductPopupMenu: TPopupMenu
    Left = 1443
    Top = 262
    object MenuItem1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = ProductionAddButtonClick
    end
    object N4: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = ProductionEditButtonClick
    end
    object N5: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = ProductionDeleteButtonClick
    end
  end
  object TypePopupMenu: TPopupMenu
    Left = 1443
    Top = 326
    object MenuItem2: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = TypeAddButtonClick
    end
    object MenuItem3: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = TypeEditButtonClick
    end
    object MenuItem4: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = TypeDeleteButtonClick
    end
  end
  object ColorPopupMenu: TPopupMenu
    Left = 1443
    Top = 382
    object MenuItem5: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = ColorAddButtonClick
    end
    object MenuItem6: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = ColorEditButtonClick
    end
    object MenuItem7: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = ColorDeleteButtonClick
    end
  end
end
