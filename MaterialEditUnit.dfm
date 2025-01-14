object MaterialEditForm: TMaterialEditForm
  Left = 0
  Top = 0
  HorzScrollBar.Increment = 97
  VertScrollBar.Increment = 68
  Align = alClient
  BorderStyle = bsNone
  Caption = 'MaterialEditForm'
  ClientHeight = 911
  ClientWidth = 1863
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
  object MaterialEditMainPanel: TScrollBox
    Left = 0
    Top = 0
    Width = 1863
    Height = 911
    HorzScrollBar.Smooth = True
    HorzScrollBar.Tracking = True
    VertScrollBar.Smooth = True
    VertScrollBar.Tracking = True
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    TabOrder = 0
    OnMouseWheel = MaterialEditMainPanelMouseWheel
    object MaterialPanel: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 694
      Height = 905
      Align = alLeft
      BevelKind = bkTile
      BevelOuter = bvNone
      Constraints.MinWidth = 308
      TabOrder = 0
      object MaterialEditToolBar: TToolBar
        Left = 0
        Top = 0
        Width = 600
        Height = 21
        AutoSize = True
        ButtonHeight = 21
        ButtonWidth = 176
        Constraints.MaxWidth = 600
        EdgeInner = esNone
        EdgeOuter = esNone
        Menu = MaterialMenu
        ShowCaptions = True
        TabOrder = 0
      end
      object MaterialEditPanel: TPanel
        Left = 0
        Top = 21
        Width = 690
        Height = 66
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        Visible = False
        object MaterialEditBox: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 678
          Height = 63
          Margins.Bottom = 0
          Align = alLeft
          BiDiMode = bdRightToLeftNoAlign
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1087#1080#1089#1082#1072' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074
          Color = clCream
          ParentBackground = False
          ParentBiDiMode = False
          ParentColor = False
          TabOrder = 0
          object MaterialEditGridPanel: TGridPanel
            Left = 3
            Top = 13
            Width = 669
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
                Value = 115.000000000000000000
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
              end>
            ControlCollection = <
              item
                Column = 1
                Control = Label9
                Row = 0
              end
              item
                Column = 0
                Control = Label5
                Row = 0
              end
              item
                Column = 0
                Control = MaterialEditNameEdit
                Row = 1
              end
              item
                Column = 1
                Control = MaterialEditTypeComboBox
                Row = 1
              end
              item
                Column = 3
                Control = MaterialCostEdit
                Row = 1
              end
              item
                Column = 4
                Control = MaterialPostButton
                Row = 1
              end
              item
                Column = 5
                Control = MaterialCancelButton
                Row = 1
              end
              item
                Column = 2
                Control = Label1
                Row = 0
              end
              item
                Column = 3
                Control = Label4
                Row = 0
              end
              item
                Column = 2
                Control = MaterialEditMeasureCB
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
            object Label9: TLabel
              AlignWithMargins = True
              Left = 183
              Top = 3
              Width = 136
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              BiDiMode = bdLeftToRight
              Caption = #1058#1080#1087
              ParentBiDiMode = False
              ExplicitWidth = 20
              ExplicitHeight = 13
            end
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 174
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              BiDiMode = bdLeftToRight
              Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              ParentBiDiMode = False
              ExplicitWidth = 81
              ExplicitHeight = 13
            end
            object MaterialEditNameEdit: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 20
              Width = 174
              Height = 22
              Align = alClient
              BiDiMode = bdLeftToRight
              DataField = 'name_m'
              DataSource = DataModule2.Materials_source
              ParentBiDiMode = False
              TabOrder = 0
              OnChange = MaterialEditNameEditChange
              OnKeyPress = MaterialEditNameEditKeyPress
              ExplicitHeight = 21
            end
            object MaterialEditTypeComboBox: TDBLookupComboBox
              AlignWithMargins = True
              Left = 183
              Top = 20
              Width = 136
              Height = 21
              Align = alClient
              BiDiMode = bdLeftToRight
              DataField = 'id_mt'
              DataSource = DataModule2.Materials_source
              DropDownRows = 15
              DropDownWidth = 250
              KeyField = 'id_mt'
              ListField = 'name_mt'
              ListSource = DataModule2.Material_type_source_1
              ParentBiDiMode = False
              TabOrder = 1
              OnCloseUp = MaterialEditNameEditChange
              OnKeyPress = MaterialEditTypeComboBoxKeyPress
            end
            object MaterialCostEdit: TDBEdit
              AlignWithMargins = True
              Left = 440
              Top = 20
              Width = 84
              Height = 22
              Align = alClient
              BiDiMode = bdLeftToRight
              DataField = 'cost_m'
              DataSource = DataModule2.Materials_source
              ParentBiDiMode = False
              TabOrder = 2
              OnChange = MaterialEditNameEditChange
              OnKeyPress = MaterialCostEditKeyPress
              ExplicitHeight = 21
            end
            object MaterialPostButton: TButton
              AlignWithMargins = True
              Left = 530
              Top = 17
              Width = 66
              Height = 25
              Margins.Top = 0
              Align = alClient
              Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100
              Enabled = False
              TabOrder = 3
              OnClick = MaterialPostButtonClick
            end
            object MaterialCancelButton: TButton
              AlignWithMargins = True
              Left = 602
              Top = 17
              Width = 66
              Height = 25
              Margins.Top = 0
              Align = alClient
              Caption = #1054#1090#1084#1077#1085#1080#1090#1100
              TabOrder = 4
              OnClick = MaterialCancelButtonClick
            end
            object Label1: TLabel
              AlignWithMargins = True
              Left = 325
              Top = 3
              Width = 109
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              BiDiMode = bdLeftToRight
              Caption = #1052#1077#1088#1072
              ParentBiDiMode = False
              ExplicitWidth = 29
              ExplicitHeight = 13
            end
            object Label4: TLabel
              AlignWithMargins = True
              Left = 440
              Top = 3
              Width = 84
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              BiDiMode = bdLeftToRight
              Caption = #1062#1077#1085#1072' (USD)'
              ParentBiDiMode = False
              ExplicitWidth = 58
              ExplicitHeight = 13
            end
            object MaterialEditMeasureCB: TDBLookupComboBox
              AlignWithMargins = True
              Left = 325
              Top = 20
              Width = 109
              Height = 21
              Align = alClient
              BiDiMode = bdLeftToRight
              DataField = 'id_mm'
              DataSource = DataModule2.Materials_source
              DropDownRows = 15
              DropDownWidth = 250
              KeyField = 'id_mm'
              ListField = 'name_mm'
              ListSource = DataModule2.Material_measure_source_1
              ParentBiDiMode = False
              TabOrder = 5
              OnCloseUp = MaterialEditNameEditChange
              OnKeyPress = MaterialEditMeasureCBKeyPress
            end
          end
        end
      end
      object MaterialGrid: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 90
        Width = 678
        Height = 808
        Align = alLeft
        DataSource = DataModule2.Matrials_view_source
        DrawingStyle = gdsGradient
        GradientEndColor = 1033457
        GradientStartColor = 1033457
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = MaterialPopupMenu
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnKeyDown = MaterialGridKeyDown
        OnMouseEnter = MaterialGridMouseEnter
        OnTitleClick = MaterialGridTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id_m'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'name_m'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '
            Width = 160
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'name_mt'
            Title.Caption = #1058#1080#1087
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cost_m'
            Title.Caption = #1062#1077#1085#1072' (USD)'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'name_mm'
            Title.Caption = #1052#1077#1088#1072
            Width = 130
            Visible = True
          end>
      end
    end
    object Filler4: TGroupBox
      AlignWithMargins = True
      Left = 1726
      Top = 6
      Width = 131
      Height = 899
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Align = alClient
      TabOrder = 1
    end
    object TypePanel: TPanel
      AlignWithMargins = True
      Left = 703
      Top = 3
      Width = 334
      Height = 905
      Align = alLeft
      AutoSize = True
      BevelKind = bkTile
      BevelOuter = bvNone
      Constraints.MinWidth = 334
      TabOrder = 2
      object TypeEditToolBar: TToolBar
        Left = 0
        Top = 0
        Width = 250
        Height = 21
        AutoSize = True
        ButtonHeight = 21
        ButtonWidth = 59
        Caption = 'PETypeToolBar'
        Constraints.MaxWidth = 250
        EdgeInner = esNone
        EdgeOuter = esNone
        Menu = TypeMenu
        ShowCaptions = True
        TabOrder = 0
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
        TabOrder = 1
        Visible = False
        object TypeEditGridPanel: TGridPanel
          Left = 4
          Top = 12
          Width = 313
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
            BiDiMode = bdLeftToRight
            Caption = #1058#1080#1087
            ParentBiDiMode = False
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
            DataField = 'name_mt'
            DataSource = DataModule2.Material_type_source_2
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
      object TypeGrid: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 90
        Width = 324
        Height = 808
        Align = alClient
        DataSource = DataModule2.Material_type_source_2
        DrawingStyle = gdsGradient
        GradientEndColor = 1033457
        GradientStartColor = 1033457
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = TypePopupMenu
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnKeyDown = TypeGridKeyDown
        OnTitleClick = TypeGridTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id_mt'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'name_mt'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '
            Width = 270
            Visible = True
          end>
      end
    end
    object ColorPanel: TPanel
      AlignWithMargins = True
      Left = 1043
      Top = 3
      Width = 334
      Height = 905
      Align = alLeft
      AutoSize = True
      BevelKind = bkTile
      BevelOuter = bvNone
      Constraints.MinWidth = 334
      TabOrder = 3
      object ColorEditToolBar: TToolBar
        Left = 0
        Top = 0
        Width = 250
        Height = 21
        AutoSize = True
        ButtonHeight = 21
        ButtonWidth = 59
        Caption = 'PEColorToolBar'
        Constraints.MaxWidth = 250
        EdgeInner = esNone
        EdgeOuter = esNone
        Menu = ColorMenu
        ShowCaptions = True
        TabOrder = 0
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
        TabOrder = 1
        Visible = False
        object ColorEditGridPanel: TGridPanel
          Left = 5
          Top = 12
          Width = 312
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
            BiDiMode = bdLeftToRight
            Caption = #1062#1074#1077#1090
            ParentBiDiMode = False
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
            DataField = 'name_mc'
            DataSource = DataModule2.Material_color_source
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
      object ColorGrid: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 90
        Width = 324
        Height = 808
        Align = alClient
        DataSource = DataModule2.Material_color_source
        DrawingStyle = gdsGradient
        GradientEndColor = 1033457
        GradientStartColor = 1033457
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = ColorPopupMenu
        ReadOnly = True
        TabOrder = 2
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
            FieldName = 'id_mc'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'name_mc'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '
            Width = 270
            Visible = True
          end>
      end
    end
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 1383
      Top = 3
      Width = 334
      Height = 905
      Align = alLeft
      AutoSize = True
      BevelKind = bkTile
      BevelOuter = bvNone
      Constraints.MinWidth = 334
      TabOrder = 4
      object MeasureEditToolBar: TToolBar
        Left = 0
        Top = 0
        Width = 250
        Height = 21
        AutoSize = True
        ButtonHeight = 21
        ButtonWidth = 59
        Caption = 'PEColorToolBar'
        Constraints.MaxWidth = 250
        EdgeInner = esNone
        EdgeOuter = esNone
        Menu = MeasureMenu
        ShowCaptions = True
        TabOrder = 0
      end
      object MeasureEditBox: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 24
        Width = 324
        Height = 63
        Margins.Bottom = 0
        Align = alTop
        BiDiMode = bdRightToLeftNoAlign
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1087#1080#1089#1082#1072' '#1084#1077#1088
        Color = clCream
        Constraints.MaxWidth = 324
        Constraints.MinWidth = 312
        ParentBackground = False
        ParentBiDiMode = False
        ParentColor = False
        TabOrder = 1
        Visible = False
        object GridPanel1: TGridPanel
          Left = 5
          Top = 13
          Width = 312
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
              Control = Label6
              Row = 0
            end
            item
              Column = 0
              Control = MeasureEdit
              Row = 1
            end
            item
              Column = 1
              Control = MeasurePostButton
              Row = 1
            end
            item
              Column = 2
              Control = MeasureCancelButton
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
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 164
            Height = 14
            Margins.Bottom = 0
            Align = alClient
            BiDiMode = bdLeftToRight
            Caption = #1052#1077#1088#1072
            ParentBiDiMode = False
            ExplicitWidth = 29
            ExplicitHeight = 13
          end
          object MeasureEdit: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 164
            Height = 22
            Align = alClient
            BiDiMode = bdLeftToRight
            DataField = 'name_mm'
            DataSource = DataModule2.Material_measure_source_2
            ParentBiDiMode = False
            TabOrder = 0
            OnChange = MeasureEditChange
            OnKeyPress = MeasureEditKeyPress
            ExplicitHeight = 21
          end
          object MeasurePostButton: TButton
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
            OnClick = MeasurePostButtonClick
          end
          object MeasureCancelButton: TButton
            AlignWithMargins = True
            Left = 245
            Top = 17
            Width = 66
            Height = 25
            Margins.Top = 0
            Align = alClient
            Caption = #1054#1090#1084#1077#1085#1080#1090#1100
            TabOrder = 2
            OnClick = MeasureCancelButtonClick
          end
        end
      end
      object MeasureGrid: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 90
        Width = 324
        Height = 808
        Align = alClient
        DataSource = DataModule2.Material_measure_source_2
        DrawingStyle = gdsGradient
        GradientEndColor = 1033457
        GradientStartColor = 1033457
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = MeasurePopupMenu
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnKeyDown = MeasureGridKeyDown
        OnMouseEnter = MeasureGridMouseEnter
        OnTitleClick = MeasureGridTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id_mm'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'name_mm'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 270
            Visible = True
          end>
      end
    end
  end
  object ColorMenu: TMainMenu
    Left = 1312
    Top = 152
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
  object MaterialMenu: TMainMenu
    Left = 1312
    Top = 24
    object N1: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' > '#1052#1072#1090#1077#1088#1080#1072#1083#1099' |'
      Enabled = False
    end
    object MaterialAddButton: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = MaterialAddButtonClick
    end
    object MaterialEditButton: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = MaterialEditButtonClick
    end
    object MaterialDeleteButton: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = MaterialDeleteButtonClick
    end
  end
  object TypeMenu: TMainMenu
    Left = 1312
    Top = 88
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
  object MaterialPopupMenu: TPopupMenu
    Left = 1307
    Top = 262
    object MenuItem1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = MaterialAddButtonClick
    end
    object N4: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = MaterialEditButtonClick
    end
    object N5: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = MaterialDeleteButtonClick
    end
  end
  object TypePopupMenu: TPopupMenu
    Left = 1307
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
    Left = 1307
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
  object MeasurePopupMenu: TPopupMenu
    Left = 1307
    Top = 438
    object MenuItem8: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = MaterialAddButtonClick
    end
    object MenuItem9: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = MaterialEditButtonClick
    end
    object MenuItem10: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = MaterialDeleteButtonClick
    end
  end
  object MeasureMenu: TMainMenu
    Left = 1312
    Top = 208
    object MenuItem11: TMenuItem
      Caption = #1052#1077#1088#1099' |'
      Enabled = False
    end
    object MeasureAddButton: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = MeasureAddButtonClick
    end
    object MeasureEditButton: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = MeasureEditButtonClick
    end
    object MeasureDeleteButton: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = MeasureDeleteButtonClick
    end
  end
end
