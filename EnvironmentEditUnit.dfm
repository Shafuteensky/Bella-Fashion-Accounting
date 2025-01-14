object EnvironmentEditForm: TEnvironmentEditForm
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  ClientHeight = 794
  ClientWidth = 1084
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object EnvironmentEditMainPanel: TScrollBox
    Left = 0
    Top = 0
    Width = 1084
    Height = 794
    HorzScrollBar.Smooth = True
    HorzScrollBar.Tracking = True
    VertScrollBar.Smooth = True
    VertScrollBar.Tracking = True
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    TabOrder = 0
    OnMouseWheel = EnvironmentEditMainPanelMouseWheel
    object Filler4: TGroupBox
      AlignWithMargins = True
      Left = 955
      Top = 6
      Width = 123
      Height = 782
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Align = alClient
      TabOrder = 0
    end
    object ConsumersPanel: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 501
      Height = 788
      Align = alLeft
      BevelKind = bkTile
      BevelOuter = bvNone
      Constraints.MinWidth = 308
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      object ConsumersGrid: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 292
        Width = 491
        Height = 489
        Align = alClient
        DataSource = DataModule2.Customers_source
        DrawingStyle = gdsGradient
        GradientEndColor = 1033457
        GradientStartColor = 1033457
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = ConsumersPopupMenu
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnKeyDown = ConsumersGridKeyDown
        OnMouseEnter = ConsumersGridMouseEnter
        OnTitleClick = ConsumersGridTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id_c'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'name_c'
            Title.Caption = #1048#1084#1103', '#1092#1072#1084#1080#1083#1080#1103
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'phone_number_c'
            Title.Caption = #1053#1086#1084#1077#1088
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'address_c'
            Title.Caption = #1040#1076#1088#1077#1089
            Width = 190
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'info_c'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'purchases_number_c'
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1086#1082#1091#1087#1086#1082
            Visible = False
          end>
      end
      object ConsumersEditToolBar: TToolBar
        Left = 0
        Top = 0
        Width = 497
        Height = 22
        AutoSize = True
        ButtonWidth = 202
        Constraints.MaxWidth = 600
        DoubleBuffered = True
        EdgeInner = esNone
        EdgeOuter = esNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Menu = ConsumersMenu
        ParentDoubleBuffered = False
        ParentFont = False
        ShowCaptions = True
        TabOrder = 1
      end
      object ConsumersInfoBox: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 181
        Width = 491
        Height = 108
        Margins.Bottom = 0
        Align = alTop
        BiDiMode = bdRightToLeftNoAlign
        Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083#1077
        Color = clCream
        Constraints.MaxHeight = 153
        ParentBackground = False
        ParentBiDiMode = False
        ParentColor = False
        TabOrder = 2
        object ConsumersInfoMemo: TDBMemo
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 481
          Height = 83
          Align = alClient
          BiDiMode = bdLeftToRight
          DataField = 'info_c'
          DataSource = DataModule2.Customers_source
          Enabled = False
          ParentBiDiMode = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object ConsumersEditBox: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 25
        Width = 491
        Height = 153
        Margins.Bottom = 0
        Align = alTop
        BiDiMode = bdRightToLeftNoAlign
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1087#1080#1089#1082#1072' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083#1077#1081
        Color = clCream
        Constraints.MaxHeight = 153
        ParentBackground = False
        ParentBiDiMode = False
        ParentColor = False
        TabOrder = 3
        Visible = False
        object GridPanel2: TGridPanel
          Left = 3
          Top = 14
          Width = 482
          Height = 133
          BevelOuter = bvNone
          ColumnCollection = <
            item
              SizeStyle = ssAbsolute
              Value = 215.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 195.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 72.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = Label1
              Row = 0
            end
            item
              Column = 1
              Control = Label10
              Row = 0
            end
            item
              Column = 0
              Control = ConsumersNameEdit
              Row = 1
            end
            item
              Column = 0
              Control = ConsumersNumberEdit
              Row = 3
            end
            item
              Column = 1
              ColumnSpan = 2
              Control = ConsumersMemo
              Row = 1
              RowSpan = 4
            end
            item
              Column = 1
              Control = ConsumersPostButton
              Row = 5
            end
            item
              Column = 2
              Control = ConsumersCancelButton
              Row = 5
            end
            item
              Column = 0
              Control = Label7
              Row = 2
            end
            item
              Column = 0
              Control = Label3
              Row = 4
            end
            item
              Column = 0
              Control = ConsumersAddressEdit
              Row = 5
            end>
          RowCollection = <
            item
              SizeStyle = ssAbsolute
              Value = 17.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 28.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 17.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 28.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 17.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 28.000000000000000000
            end>
          TabOrder = 0
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 209
            Height = 14
            Margins.Bottom = 0
            Align = alClient
            BiDiMode = bdLeftToRight
            Caption = #1048#1084#1103', '#1092#1072#1084#1080#1083#1080#1103'*'
            ParentBiDiMode = False
            ExplicitWidth = 86
            ExplicitHeight = 15
          end
          object Label10: TLabel
            AlignWithMargins = True
            Left = 218
            Top = 3
            Width = 189
            Height = 14
            Margins.Bottom = 0
            Align = alClient
            Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
            ExplicitWidth = 74
            ExplicitHeight = 15
          end
          object ConsumersNameEdit: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 209
            Height = 22
            Align = alClient
            BiDiMode = bdLeftToRight
            DataField = 'name_c'
            DataSource = DataModule2.Customers_source
            ParentBiDiMode = False
            TabOrder = 0
            OnChange = ConsumersNameEditChange
            OnKeyPress = ConsumersNameEditKeyPress
            ExplicitHeight = 23
          end
          object ConsumersNumberEdit: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 65
            Width = 209
            Height = 22
            Align = alClient
            BiDiMode = bdLeftToRight
            DataField = 'phone_number_c'
            DataSource = DataModule2.Customers_source
            ParentBiDiMode = False
            TabOrder = 1
            OnKeyPress = ConsumersNumberEditKeyPress
            ExplicitHeight = 23
          end
          object ConsumersMemo: TDBMemo
            AlignWithMargins = True
            Left = 218
            Top = 20
            Width = 261
            Height = 84
            Align = alClient
            BiDiMode = bdLeftToRight
            DataField = 'info_c'
            DataSource = DataModule2.Customers_source
            ParentBiDiMode = False
            TabOrder = 3
          end
          object ConsumersPostButton: TButton
            AlignWithMargins = True
            Left = 341
            Top = 107
            Width = 66
            Height = 25
            Margins.Top = 0
            Align = alRight
            BiDiMode = bdLeftToRight
            Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100
            Constraints.MaxHeight = 25
            Constraints.MaxWidth = 66
            Enabled = False
            ParentBiDiMode = False
            TabOrder = 4
            OnClick = ConsumersPostButtonClick
          end
          object ConsumersCancelButton: TButton
            AlignWithMargins = True
            Left = 413
            Top = 107
            Width = 66
            Height = 25
            Margins.Top = 0
            Align = alClient
            Caption = #1054#1090#1084#1077#1085#1080#1090#1100
            Constraints.MaxHeight = 25
            Constraints.MaxWidth = 66
            TabOrder = 5
            OnClick = ConsumersCancelButtonClick
          end
          object Label7: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 48
            Width = 209
            Height = 14
            Margins.Bottom = 0
            Align = alClient
            Caption = #1053#1086#1084#1077#1088
            ExplicitLeft = 27
          end
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 93
            Width = 209
            Height = 14
            Margins.Bottom = 0
            Align = alClient
            Caption = #1040#1076#1088#1077#1089
            ExplicitWidth = 33
            ExplicitHeight = 15
          end
          object ConsumersAddressEdit: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 110
            Width = 209
            Height = 22
            Align = alClient
            BiDiMode = bdLeftToRight
            DataField = 'address_c'
            DataSource = DataModule2.Customers_source
            ParentBiDiMode = False
            TabOrder = 2
            OnKeyPress = ConsumersAddressEditKeyPress
            ExplicitHeight = 23
          end
        end
      end
    end
    object StoragesPanel: TPanel
      AlignWithMargins = True
      Left = 510
      Top = 3
      Width = 436
      Height = 788
      Align = alLeft
      BevelKind = bkTile
      BevelOuter = bvNone
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      object StoragesGrid: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 317
        Width = 426
        Height = 464
        Align = alClient
        Constraints.MinWidth = 318
        DataSource = DataModule2.Storages_source
        DrawingStyle = gdsGradient
        FixedColor = clWhite
        GradientEndColor = 1033457
        GradientStartColor = 1033457
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = StoragesPopupMenu
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnKeyDown = StoragesGridKeyDown
        OnMouseEnter = StoragesGridMouseEnter
        OnTitleClick = StoragesGridTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id_sl'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'name_sl'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'info_sl'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'type_sl'
            Title.Caption = #1058#1080#1087
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'address_sl'
            Title.Caption = #1040#1076#1088#1077#1089
            Width = 185
            Visible = True
          end>
      end
      object StoragesEditToolBar: TToolBar
        Left = 0
        Top = 0
        Width = 432
        Height = 23
        AutoSize = True
        ButtonHeight = 23
        ButtonWidth = 87
        EdgeInner = esNone
        EdgeOuter = esNone
        Menu = StoragesMenu
        ShowCaptions = True
        TabOrder = 1
      end
      object StoragesEditBox: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 26
        Width = 426
        Height = 177
        Margins.Bottom = 0
        Align = alTop
        BiDiMode = bdRightToLeftNoAlign
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1087#1080#1089#1082#1072' '#1089#1082#1083#1072#1076#1086#1074'/'#1094#1077#1093#1086#1074
        Color = clCream
        ParentBackground = False
        ParentBiDiMode = False
        ParentColor = False
        TabOrder = 2
        Visible = False
        object StorageEditGridPanel: TGridPanel
          Left = 4
          Top = 16
          Width = 417
          Height = 158
          BevelOuter = bvNone
          ColumnCollection = <
            item
              SizeStyle = ssAbsolute
              Value = 190.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 155.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 72.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = Label8
              Row = 0
            end
            item
              Column = 0
              Control = StoragesNameEdit
              Row = 1
            end
            item
              Column = 1
              Control = StoragesPostButton
              Row = 4
            end
            item
              Column = 0
              ColumnSpan = 2
              Control = StoragesEditMemo
              Row = 3
            end
            item
              Column = 0
              Control = Label6
              Row = 2
            end
            item
              Column = 1
              ColumnSpan = 2
              Control = StoragesAddressEdit
              Row = 1
            end
            item
              Column = 1
              Control = Label9
              Row = 0
            end
            item
              Column = 2
              Control = StoragesCancelButton
              Row = 4
            end
            item
              Column = 2
              Control = StoragesTypeRadio
              Row = 3
            end>
          RowCollection = <
            item
              SizeStyle = ssAbsolute
              Value = 17.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 27.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 17.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 70.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 27.000000000000000000
            end>
          TabOrder = 0
          object Label8: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 184
            Height = 14
            Margins.Bottom = 0
            Align = alClient
            BiDiMode = bdLeftToRight
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'*'
            ParentBiDiMode = False
            ExplicitWidth = 88
            ExplicitHeight = 15
          end
          object StoragesNameEdit: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 184
            Height = 21
            Align = alClient
            BiDiMode = bdLeftToRight
            DataField = 'name_sl'
            DataSource = DataModule2.Storages_source
            ParentBiDiMode = False
            TabOrder = 0
            OnChange = StoragesNameEditChange
            OnKeyPress = StoragesNameEditKeyPress
            ExplicitHeight = 23
          end
          object StoragesPostButton: TButton
            AlignWithMargins = True
            Left = 276
            Top = 131
            Width = 66
            Height = 24
            Margins.Top = 0
            Align = alRight
            Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100
            Constraints.MaxWidth = 66
            Enabled = False
            TabOrder = 3
            OnClick = StoragesPostButtonClick
          end
          object StoragesEditMemo: TDBMemo
            AlignWithMargins = True
            Left = 3
            Top = 64
            Width = 339
            Height = 64
            Align = alClient
            BiDiMode = bdLeftToRight
            DataField = 'info_sl'
            DataSource = DataModule2.Storages_source
            ParentBiDiMode = False
            TabOrder = 2
          end
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 47
            Width = 184
            Height = 14
            Margins.Bottom = 0
            Align = alClient
            Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
            ExplicitWidth = 74
            ExplicitHeight = 15
          end
          object StoragesAddressEdit: TDBEdit
            AlignWithMargins = True
            Left = 193
            Top = 20
            Width = 221
            Height = 21
            Align = alClient
            BiDiMode = bdLeftToRight
            DataField = 'address_sl'
            DataSource = DataModule2.Storages_source
            ParentBiDiMode = False
            TabOrder = 1
            OnKeyPress = StoragesAddressEditKeyPress
            ExplicitHeight = 23
          end
          object Label9: TLabel
            AlignWithMargins = True
            Left = 193
            Top = 3
            Width = 149
            Height = 14
            Margins.Bottom = 0
            Align = alClient
            Caption = #1040#1076#1088#1077#1089
            ExplicitWidth = 33
            ExplicitHeight = 15
          end
          object StoragesCancelButton: TButton
            AlignWithMargins = True
            Left = 348
            Top = 131
            Width = 66
            Height = 24
            Margins.Top = 0
            Align = alClient
            Caption = #1054#1090#1084#1077#1085#1080#1090#1100
            Constraints.MaxHeight = 25
            TabOrder = 4
            OnClick = StoragesCancelButtonClick
          end
          object StoragesTypeRadio: TDBRadioGroup
            AlignWithMargins = True
            Left = 348
            Top = 64
            Width = 66
            Height = 64
            Align = alClient
            BiDiMode = bdLeftToRight
            Caption = #1058#1080#1087'*'
            DataField = 'type_sl'
            DataSource = DataModule2.Storages_source
            Items.Strings = (
              #1057#1082#1083#1072#1076
              #1062#1077#1093)
            ParentBiDiMode = False
            TabOrder = 5
            Values.Strings = (
              #1057#1082#1083#1072#1076
              #1062#1077#1093)
          end
        end
      end
      object StoragesInfoBox: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 206
        Width = 426
        Height = 108
        Margins.Bottom = 0
        Align = alTop
        BiDiMode = bdRightToLeftNoAlign
        Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1089#1082#1083#1072#1076#1077'/'#1094#1077#1093#1077
        Color = clCream
        Constraints.MaxHeight = 143
        ParentBackground = False
        ParentBiDiMode = False
        ParentColor = False
        TabOrder = 3
        object StoragesMemo: TDBMemo
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 416
          Height = 83
          Align = alClient
          BiDiMode = bdLeftToRight
          DataField = 'info_sl'
          DataSource = DataModule2.Storages_source
          Enabled = False
          ParentBiDiMode = False
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
  end
  object ConsumersMenu: TMainMenu
    Left = 996
    Top = 40
    object N1: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' > '#1055#1086#1090#1088#1077#1073#1080#1090#1077#1083#1080' |'
      Enabled = False
    end
    object ConsumersAddButton: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = ConsumersAddButtonClick
    end
    object ConsumersEditButton: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = ConsumersEditButtonClick
    end
    object ConsumersDeleteButton: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = ConsumersDeleteButtonClick
    end
  end
  object StoragesMenu: TMainMenu
    Left = 997
    Top = 105
    object N2: TMenuItem
      Caption = #1057#1082#1083#1072#1076#1099'/'#1062#1077#1093#1072' |'
      Enabled = False
    end
    object StoragesAddButton: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = StoragesAddButtonClick
    end
    object StoragesEditButton: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = StoragesEditButtonClick
    end
    object StoragesDeleteButton: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = StoragesDeleteButtonClick
    end
  end
  object ConsumersPopupMenu: TPopupMenu
    Left = 995
    Top = 174
    object N3: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = ConsumersAddButtonClick
    end
    object N4: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = ConsumersEditButtonClick
    end
    object N5: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = ConsumersDeleteButtonClick
    end
  end
  object StoragesPopupMenu: TPopupMenu
    Left = 995
    Top = 238
    object N6: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = StoragesAddButtonClick
    end
    object N7: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = ConsumersEditButtonClick
    end
    object N8: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = StoragesDeleteButtonClick
    end
  end
end
