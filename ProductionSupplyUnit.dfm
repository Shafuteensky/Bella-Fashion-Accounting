object ProductionSupplyForm: TProductionSupplyForm
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'ProductionSupplyForm'
  ClientHeight = 795
  ClientWidth = 1175
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ProductionSupplyMainPanel: TPanel
    Left = 0
    Top = 21
    Width = 1175
    Height = 774
    Align = alClient
    BevelOuter = bvNone
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    object PanelSalesControl: TPanel
      Left = 0
      Top = 0
      Width = 1175
      Height = 207
      Align = alTop
      Alignment = taLeftJustify
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 0
      VerticalAlignment = taAlignTop
      object FilterPanel: TPanel
        Left = 0
        Top = 0
        Width = 1175
        Height = 69
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alTop
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        Visible = False
        object Filler1: TGroupBox
          AlignWithMargins = True
          Left = 919
          Top = 3
          Width = 253
          Height = 63
          Align = alClient
          Constraints.MaxHeight = 63
          Constraints.MinHeight = 63
          TabOrder = 0
        end
        object DateFilterBox: TGroupBox
          AlignWithMargins = True
          Left = 535
          Top = 3
          Width = 378
          Height = 63
          Align = alLeft
          BiDiMode = bdRightToLeftNoAlign
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1077
          Color = clCream
          Constraints.MaxHeight = 63
          Constraints.MaxWidth = 378
          Constraints.MinHeight = 63
          Constraints.MinWidth = 378
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          object DateFilterGridPanel: TGridPanel
            Left = 3
            Top = 13
            Width = 363
            Height = 47
            BevelOuter = bvNone
            ColumnCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 164.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 101.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 101.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Label14
                Row = 0
              end
              item
                Column = 0
                Control = DateFilterTypeCB
                Row = 1
              end
              item
                Column = 1
                Control = FilterDateLabel
                Row = 0
              end
              item
                Column = 1
                Control = DateFilterDTP1
                Row = 1
              end
              item
                Column = 2
                Control = DateFilterDTP2
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
            object Label14: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 55
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1058#1080#1087
              Constraints.MaxWidth = 55
              ExplicitWidth = 18
              ExplicitHeight = 13
            end
            object DateFilterTypeCB: TComboBox
              AlignWithMargins = True
              Left = 3
              Top = 20
              Width = 158
              Height = 21
              Align = alClient
              Style = csDropDownList
              BiDiMode = bdLeftToRight
              DropDownCount = 0
              ItemIndex = 0
              ParentBiDiMode = False
              TabOrder = 0
              Text = #1042#1089#1077' '#1074#1088#1077#1084#1103
              OnChange = DateFilterTypeCBChange
              Items.Strings = (
                #1042#1089#1077' '#1074#1088#1077#1084#1103
                #1057#1077#1075#1086#1076#1085#1103
                #1048#1085#1090#1077#1088#1074#1072#1083)
            end
            object FilterDateLabel: TLabel
              AlignWithMargins = True
              Left = 167
              Top = 3
              Width = 55
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1048#1085#1090#1077#1088#1074#1072#1083
              Constraints.MaxWidth = 55
              Enabled = False
              ExplicitWidth = 49
              ExplicitHeight = 13
            end
            object DateFilterDTP1: TDateTimePicker
              AlignWithMargins = True
              Left = 167
              Top = 20
              Width = 95
              Height = 22
              Align = alClient
              BiDiMode = bdLeftToRight
              Date = 43820.000000000000000000
              Time = 43820.000000000000000000
              Enabled = False
              ParentBiDiMode = False
              TabOrder = 1
              OnChange = FieldFilterCriterionCBChange
            end
            object DateFilterDTP2: TDateTimePicker
              AlignWithMargins = True
              Left = 268
              Top = 20
              Width = 95
              Height = 22
              Align = alClient
              BiDiMode = bdLeftToRight
              Date = 43820.000000000000000000
              Time = 43820.000000000000000000
              Enabled = False
              ParentBiDiMode = False
              TabOrder = 2
              OnChange = FieldFilterCriterionCBChange
            end
          end
        end
        object FieldFilterBox: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 526
          Height = 63
          Align = alLeft
          BiDiMode = bdRightToLeftNoAlign
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1087#1086#1083#1102
          Color = clCream
          Constraints.MaxHeight = 63
          Constraints.MinHeight = 63
          ParentBackground = False
          ParentBiDiMode = False
          ParentColor = False
          TabOrder = 2
          object FieldFilterGridPanel: TGridPanel
            Left = 5
            Top = 13
            Width = 518
            Height = 47
            BevelOuter = bvNone
            ColumnCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 171.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 171.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 100.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 77.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Label6
                Row = 0
              end
              item
                Column = 1
                Control = FilterCriterionLabel
                Row = 0
              end
              item
                Column = 0
                Control = FieldFilterTypeCB
                Row = 1
              end
              item
                Column = 2
                Control = FilterAmountLabel
                Row = 0
              end
              item
                Column = 3
                Control = FieldFilterAmountEdit
                Row = 1
              end
              item
                Column = 2
                Control = FieldFilterSignCB
                Row = 1
              end
              item
                Column = 1
                Control = FieldFilterCriterionCB
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
              Width = 55
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1058#1080#1087
              Constraints.MaxWidth = 55
              ExplicitWidth = 20
              ExplicitHeight = 13
            end
            object FilterCriterionLabel: TLabel
              AlignWithMargins = True
              Left = 174
              Top = 3
              Width = 55
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1050#1088#1080#1090#1077#1088#1080#1081
              Constraints.MaxWidth = 55
              Enabled = False
              ExplicitWidth = 52
              ExplicitHeight = 13
            end
            object FieldFilterTypeCB: TComboBox
              AlignWithMargins = True
              Left = 3
              Top = 20
              Width = 165
              Height = 21
              Align = alClient
              Style = csDropDownList
              BiDiMode = bdLeftToRight
              DropDownCount = 0
              ItemIndex = 0
              ParentBiDiMode = False
              TabOrder = 0
              Text = #1041#1077#1079' '#1092#1080#1083#1100#1090#1088#1072
              OnChange = FieldFilterTypeCBChange
              Items.Strings = (
                #1041#1077#1079' '#1092#1080#1083#1100#1090#1088#1072
                #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                #1058#1080#1087
                #1062#1074#1077#1090
                #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                #1058#1086#1095#1082#1072' '#1089#1087#1080#1089#1072#1085#1080#1103
                #1058#1086#1095#1082#1072' '#1087#1086#1087#1086#1083#1085#1077#1085#1080#1103
                #1062#1077#1085#1072
                #1047#1072#1090#1088#1072#1090#1099
                #1044#1057#1058
                #1057#1086#1090#1088#1091#1076#1085#1080#1082)
            end
            object FilterAmountLabel: TLabel
              AlignWithMargins = True
              Left = 345
              Top = 3
              Width = 70
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
              Constraints.MaxWidth = 70
              Enabled = False
              ExplicitWidth = 62
              ExplicitHeight = 13
            end
            object FieldFilterAmountEdit: TEdit
              AlignWithMargins = True
              Left = 445
              Top = 20
              Width = 71
              Height = 21
              Align = alClient
              BiDiMode = bdLeftToRight
              Constraints.MaxHeight = 21
              Enabled = False
              ParentBiDiMode = False
              TabOrder = 1
              OnChange = FieldFilterCriterionCBChange
              OnKeyPress = FieldFilterAmountEditKeyPress
            end
            object FieldFilterSignCB: TComboBox
              AlignWithMargins = True
              Left = 345
              Top = 20
              Width = 94
              Height = 21
              Align = alClient
              Style = csDropDownList
              BiDiMode = bdLeftToRight
              DropDownCount = 0
              Enabled = False
              ItemIndex = 0
              ParentBiDiMode = False
              TabOrder = 2
              Text = #1056#1072#1074#1085#1086
              OnChange = FieldFilterCriterionCBChange
              Items.Strings = (
                #1056#1072#1074#1085#1086
                #1041#1086#1083#1100#1096#1077
                #1052#1077#1085#1100#1096#1077
                #1041#1086#1083#1100#1096#1077' '#1080#1083#1080' ='
                #1052#1077#1085#1100#1096#1077' '#1080#1083#1080' =')
            end
            object FieldFilterCriterionCB: TEdit
              AlignWithMargins = True
              Left = 174
              Top = 20
              Width = 165
              Height = 21
              Align = alClient
              BiDiMode = bdLeftToRight
              Constraints.MaxHeight = 21
              Enabled = False
              ParentBiDiMode = False
              TabOrder = 3
              OnChange = FieldFilterCriterionCBChange
            end
          end
        end
      end
      object EditPanel: TPanel
        Left = 0
        Top = 138
        Width = 1175
        Height = 69
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alTop
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 1
        Visible = False
        object EditBox: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 878
          Height = 63
          Align = alLeft
          BiDiMode = bdRightToLeftNoAlign
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1087#1080#1089#1077#1081' '#1087#1086#1089#1090#1072#1074#1086#1082' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
          Color = clCream
          Constraints.MaxHeight = 63
          Constraints.MinHeight = 63
          ParentBackground = False
          ParentBiDiMode = False
          ParentColor = False
          TabOrder = 0
          object EditGridPanel: TGridPanel
            Left = 3
            Top = 13
            Width = 871
            Height = 45
            BevelOuter = bvNone
            ColumnCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 85.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 180.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 108.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 72.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 142.000000000000000000
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
                Value = 72.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Label4
                Row = 0
              end
              item
                Column = 1
                Control = Label7
                Row = 0
              end
              item
                Column = 2
                Control = Label8
                Row = 0
              end
              item
                Column = 3
                Control = Label9
                Row = 0
              end
              item
                Column = 4
                Control = Label10
                Row = 0
              end
              item
                Column = 5
                Control = Label11
                Row = 0
              end
              item
                Column = 5
                Control = EditStorageFillCB
                Row = 1
              end
              item
                Column = 4
                Control = EditStorageOffCB
                Row = 1
              end
              item
                Column = 6
                Control = PostButton
                Row = 1
              end
              item
                Column = 7
                Control = CancelButton
                Row = 1
              end
              item
                Column = 0
                Control = EditDateDTP
                Row = 1
              end
              item
                Column = 1
                Control = EditNameCB
                Row = 1
              end
              item
                Column = 2
                Control = EditColorCB
                Row = 1
              end
              item
                Column = 3
                Control = EditAmountEdit
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
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 79
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1044#1072#1090#1072
              ExplicitWidth = 25
              ExplicitHeight = 13
            end
            object Label7: TLabel
              AlignWithMargins = True
              Left = 88
              Top = 3
              Width = 174
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              ExplicitWidth = 81
              ExplicitHeight = 13
            end
            object Label8: TLabel
              AlignWithMargins = True
              Left = 268
              Top = 3
              Width = 102
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1062#1074#1077#1090
              ExplicitWidth = 25
              ExplicitHeight = 13
            end
            object Label9: TLabel
              AlignWithMargins = True
              Left = 376
              Top = 3
              Width = 66
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
              OnClick = Label9Click
              ExplicitWidth = 62
              ExplicitHeight = 13
            end
            object Label10: TLabel
              AlignWithMargins = True
              Left = 448
              Top = 3
              Width = 136
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1058#1086#1095#1082#1072' '#1089#1087#1080#1089#1072#1085#1080#1103
              ExplicitWidth = 85
              ExplicitHeight = 13
            end
            object Label11: TLabel
              AlignWithMargins = True
              Left = 590
              Top = 3
              Width = 136
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1058#1086#1095#1082#1072' '#1087#1086#1087#1086#1083#1085#1077#1085#1080#1103
              ExplicitWidth = 102
              ExplicitHeight = 13
            end
            object EditStorageFillCB: TDBLookupComboBox
              AlignWithMargins = True
              Left = 590
              Top = 20
              Width = 136
              Height = 21
              Align = alClient
              BiDiMode = bdLeftToRight
              DataField = 'id_sl_to'
              DataSource = DataModule2.Product_supply_source
              DropDownRows = 15
              DropDownWidth = 250
              KeyField = 'id_sl'
              ListField = 'name_sl'
              ListSource = DataModule2.Storages_view_source
              ParentBiDiMode = False
              TabOrder = 0
              OnCloseUp = EditAmountEditChange
              OnKeyPress = EditStorageFillCBKeyPress
            end
            object EditStorageOffCB: TDBLookupComboBox
              AlignWithMargins = True
              Left = 448
              Top = 20
              Width = 136
              Height = 21
              Align = alClient
              BiDiMode = bdLeftToRight
              DataField = 'id_sl_from'
              DataSource = DataModule2.Product_supply_source
              DropDownRows = 15
              DropDownWidth = 250
              KeyField = 'id_sl'
              ListField = 'name_sl'
              ListSource = DataModule2.Storages_view_source
              ParentBiDiMode = False
              TabOrder = 1
              OnCloseUp = EditAmountEditChange
              OnKeyPress = EditStorageOffCBKeyPress
            end
            object PostButton: TButton
              AlignWithMargins = True
              Left = 732
              Top = 17
              Width = 66
              Height = 25
              Margins.Top = 0
              Align = alClient
              Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100
              Enabled = False
              TabOrder = 2
              OnClick = PostButtonClick
            end
            object CancelButton: TButton
              AlignWithMargins = True
              Left = 804
              Top = 17
              Width = 66
              Height = 25
              Margins.Top = 0
              Align = alClient
              Caption = #1054#1090#1084#1077#1085#1080#1090#1100
              TabOrder = 3
              OnClick = CancelButtonClick
            end
            object EditDateDTP: TDateTimePicker
              AlignWithMargins = True
              Left = 3
              Top = 20
              Width = 79
              Height = 22
              Align = alClient
              BiDiMode = bdLeftToRight
              Date = 43817.000000000000000000
              Time = 43817.000000000000000000
              ParentBiDiMode = False
              TabOrder = 4
              OnKeyPress = EditDateDTPKeyPress
            end
            object EditNameCB: TDBLookupComboBox
              AlignWithMargins = True
              Left = 88
              Top = 20
              Width = 174
              Height = 21
              Align = alClient
              BiDiMode = bdLeftToRight
              DataField = 'id_pl'
              DataSource = DataModule2.Product_supply_source
              DropDownRows = 15
              DropDownWidth = 250
              KeyField = 'id_p'
              ListField = 'name_p'
              ListSource = DataModule2.Products_source
              ParentBiDiMode = False
              TabOrder = 5
              OnCloseUp = EditAmountEditChange
              OnKeyPress = EditNameCBKeyPress
            end
            object EditColorCB: TDBLookupComboBox
              AlignWithMargins = True
              Left = 268
              Top = 20
              Width = 102
              Height = 21
              Align = alClient
              BiDiMode = bdLeftToRight
              DataField = 'id_pc'
              DataSource = DataModule2.Product_supply_source
              DropDownRows = 15
              DropDownWidth = 250
              KeyField = 'id_pc'
              ListField = 'name_pc'
              ListSource = DataModule2.Product_color_source
              ParentBiDiMode = False
              TabOrder = 6
              OnCloseUp = EditAmountEditChange
              OnKeyPress = EditColorCBKeyPress
            end
            object EditAmountEdit: TDBEdit
              AlignWithMargins = True
              Left = 376
              Top = 20
              Width = 66
              Height = 21
              Align = alClient
              BiDiMode = bdLeftToRight
              Constraints.MaxHeight = 21
              DataField = 'amount_ps'
              DataSource = DataModule2.Product_supply_source
              ParentBiDiMode = False
              TabOrder = 7
              OnChange = EditAmountEditChange
              OnKeyPress = EditAmountEditKeyPress
            end
          end
        end
        object Filler2: TGroupBox
          AlignWithMargins = True
          Left = 887
          Top = 3
          Width = 285
          Height = 63
          Align = alClient
          Constraints.MaxHeight = 63
          Constraints.MinHeight = 63
          TabOrder = 1
        end
      end
      object SearchPanel: TPanel
        Left = 0
        Top = 69
        Width = 1175
        Height = 69
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alTop
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 2
        Visible = False
        object Filler3: TGroupBox
          AlignWithMargins = True
          Left = 953
          Top = 3
          Width = 219
          Height = 63
          Align = alClient
          Constraints.MaxHeight = 63
          Constraints.MinHeight = 63
          TabOrder = 0
        end
        object StatBox: TGroupBox
          AlignWithMargins = True
          Left = 535
          Top = 3
          Width = 412
          Height = 63
          Align = alLeft
          Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072' '#1087#1086#1089#1090#1072#1074#1086#1082
          Color = clCream
          Constraints.MaxHeight = 63
          Constraints.MinHeight = 63
          ParentBackground = False
          ParentColor = False
          TabOrder = 1
          Visible = False
          object StatGridPanel: TGridPanel
            Left = 6
            Top = 22
            Width = 401
            Height = 31
            BevelOuter = bvNone
            ColumnCollection = <
              item
                Value = 18.853218027859410000
              end
              item
                SizeStyle = ssAbsolute
                Value = 4.000000000000000000
              end
              item
                Value = 27.076102302765440000
              end
              item
                SizeStyle = ssAbsolute
                Value = 4.000000000000000000
              end
              item
                Value = 27.047958817500130000
              end
              item
                SizeStyle = ssAbsolute
                Value = 4.000000000000000000
              end
              item
                Value = 27.022720851875020000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Label15
                Row = 0
              end
              item
                Column = 2
                Control = Label16
                Row = 0
              end
              item
                Column = 4
                Control = Label17
                Row = 0
              end
              item
                Column = 6
                Control = Label18
                Row = 0
              end
              item
                Column = 0
                Control = AmountLabel
                Row = 1
              end
              item
                Column = 2
                Control = ProceedsLabel
                Row = 1
              end
              item
                Column = 4
                Control = CostPriceLabel
                Row = 1
              end
              item
                Column = 6
                Control = AddedValueLabel
                Row = 1
              end
              item
                Column = 1
                Control = Bevel1
                Row = 0
                RowSpan = 2
              end
              item
                Column = 3
                Control = Bevel2
                Row = 0
                RowSpan = 2
              end
              item
                Column = 5
                Control = Bevel3
                Row = 0
                RowSpan = 2
              end>
            RowCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 14.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 15.000000000000000000
              end>
            TabOrder = 0
            object Label15: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 0
              Width = 67
              Height = 14
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alClient
              AutoSize = False
              Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
              ExplicitLeft = 49
              ExplicitTop = 2
              ExplicitWidth = 37
              ExplicitHeight = 13
            end
            object Label16: TLabel
              AlignWithMargins = True
              Left = 80
              Top = 0
              Width = 99
              Height = 14
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alClient
              AutoSize = False
              Caption = #1062#1077#1085#1072
              ExplicitLeft = 94
              ExplicitWidth = 78
            end
            object Label17: TLabel
              AlignWithMargins = True
              Left = 189
              Top = 0
              Width = 99
              Height = 14
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alClient
              AutoSize = False
              Caption = #1047#1072#1090#1088#1072#1090#1099
              ExplicitLeft = 301
              ExplicitTop = 2
              ExplicitWidth = 77
              ExplicitHeight = 13
            end
            object Label18: TLabel
              AlignWithMargins = True
              Left = 298
              Top = 0
              Width = 40
              Height = 14
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alClient
              AutoSize = False
              Caption = #1044#1057#1058
              Constraints.MaxWidth = 40
              ExplicitLeft = 279
              ExplicitTop = 3
            end
            object AmountLabel: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 16
              Width = 67
              Height = 13
              Margins.Top = 2
              Margins.Bottom = 0
              Align = alClient
              AutoSize = False
              Caption = '0'
              Constraints.MaxHeight = 14
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 686742
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              Font.Quality = fqClearType
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              ExplicitTop = 20
              ExplicitWidth = 75
              ExplicitHeight = 14
            end
            object ProceedsLabel: TLabel
              AlignWithMargins = True
              Left = 80
              Top = 16
              Width = 99
              Height = 13
              Margins.Top = 2
              Margins.Bottom = 0
              Align = alClient
              AutoSize = False
              Caption = '0'
              Constraints.MaxHeight = 14
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 686742
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              ExplicitLeft = 84
              ExplicitTop = 20
              ExplicitWidth = 75
              ExplicitHeight = 14
            end
            object CostPriceLabel: TLabel
              AlignWithMargins = True
              Left = 189
              Top = 16
              Width = 99
              Height = 13
              Margins.Top = 2
              Margins.Bottom = 0
              Align = alClient
              AutoSize = False
              Caption = '0'
              Constraints.MaxHeight = 14
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 686742
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              ExplicitLeft = 167
              ExplicitTop = 19
              ExplicitWidth = 86
            end
            object AddedValueLabel: TLabel
              AlignWithMargins = True
              Left = 298
              Top = 16
              Width = 100
              Height = 13
              Margins.Top = 2
              Margins.Bottom = 0
              Align = alClient
              AutoSize = False
              Caption = '0'
              Constraints.MaxHeight = 14
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 686742
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              ExplicitLeft = 261
              ExplicitTop = 20
              ExplicitWidth = 76
              ExplicitHeight = 14
            end
            object Bevel1: TBevel
              Left = 73
              Top = 0
              Width = 4
              Height = 29
              Align = alClient
              Shape = bsLeftLine
              ExplicitLeft = 78
              ExplicitHeight = 14
            end
            object Bevel2: TBevel
              Left = 182
              Top = 0
              Width = 4
              Height = 29
              Align = alClient
              Shape = bsLeftLine
              ExplicitLeft = 160
              ExplicitHeight = 14
            end
            object Bevel3: TBevel
              Left = 291
              Top = 0
              Width = 4
              Height = 29
              Align = alClient
              Shape = bsLeftLine
              ExplicitLeft = 78
              ExplicitHeight = 14
            end
          end
        end
        object SearchBox: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 526
          Height = 63
          Align = alLeft
          BiDiMode = bdRightToLeftNoAlign
          Caption = #1055#1086#1080#1089#1082
          Color = clCream
          Constraints.MaxHeight = 63
          Constraints.MaxWidth = 526
          Constraints.MinHeight = 63
          Constraints.MinWidth = 526
          ParentBackground = False
          ParentBiDiMode = False
          ParentColor = False
          TabOrder = 2
          Visible = False
          DesignSize = (
            526
            63)
          object SearchGridPanel: TGridPanel
            Left = 3
            Top = 13
            Width = 520
            Height = 47
            Anchors = []
            BevelOuter = bvNone
            ColumnCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 171.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 171.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 57.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 120.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Label60
                Row = 0
              end
              item
                Column = 1
                Control = Label31
                Row = 0
              end
              item
                Column = 1
                Control = SearchCriterionEdit
                Row = 1
              end
              item
                Column = 2
                Control = SearchButton
                Row = 1
              end
              item
                Column = 3
                Control = ExtendedSearchButton
                Row = 1
              end
              item
                Column = 0
                Control = SearchFieldCB
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
            object Label60: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 165
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1055#1086#1083#1077
              ExplicitWidth = 27
              ExplicitHeight = 13
            end
            object Label31: TLabel
              AlignWithMargins = True
              Left = 174
              Top = 3
              Width = 165
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1050#1088#1080#1090#1077#1088#1080#1081
              ExplicitWidth = 52
              ExplicitHeight = 13
            end
            object SearchCriterionEdit: TEdit
              AlignWithMargins = True
              Left = 174
              Top = 20
              Width = 165
              Height = 21
              Align = alClient
              BiDiMode = bdLeftToRight
              Constraints.MaxHeight = 21
              ParentBiDiMode = False
              TabOrder = 0
              OnChange = SearchCriterionEditChange
              OnKeyPress = SearchCriterionEditKeyPress
            end
            object SearchButton: TButton
              AlignWithMargins = True
              Left = 345
              Top = 17
              Width = 51
              Height = 25
              Margins.Top = 0
              Align = alClient
              Caption = #1048#1089#1082#1072#1090#1100
              Enabled = False
              TabOrder = 1
              OnClick = SearchButtonClick
            end
            object ExtendedSearchButton: TButton
              AlignWithMargins = True
              Left = 402
              Top = 17
              Width = 114
              Height = 25
              Margins.Top = 0
              Align = alClient
              Caption = #1056#1072#1089#1096#1080#1088#1077#1085#1085#1099#1081' '#1087#1086#1080#1089#1082
              TabOrder = 2
              OnClick = ExtendedSearchButtonClick
            end
            object SearchFieldCB: TComboBox
              AlignWithMargins = True
              Left = 3
              Top = 20
              Width = 165
              Height = 21
              Align = alClient
              Style = csDropDownList
              BiDiMode = bdLeftToRight
              DropDownCount = 0
              ItemIndex = 0
              ParentBiDiMode = False
              TabOrder = 3
              Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              OnChange = SearchFieldCBChange
              Items.Strings = (
                #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                #1058#1080#1087
                #1062#1074#1077#1090
                #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                #1058#1086#1095#1082#1072' '#1089#1087#1080#1089#1072#1085#1080#1103
                #1058#1086#1095#1082#1072' '#1087#1086#1087#1086#1083#1085#1077#1085#1080#1103
                #1062#1077#1085#1072
                #1047#1072#1090#1088#1072#1090#1099
                #1044#1057#1058
                #1057#1086#1090#1088#1091#1076#1085#1080#1082)
            end
          end
        end
      end
    end
    object ProductSupplyGrid: TDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 210
      Width = 1169
      Height = 561
      Align = alClient
      DataSource = DataModule2.Product_supply_view_source
      DrawingStyle = gdsGradient
      GradientEndColor = 1033457
      GradientStartColor = 1033457
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      PopupMenu = PopupMenu
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDrawColumnCell = ProductSupplyGridDrawColumnCell
      OnKeyDown = ProductSupplyGridKeyDown
      OnMouseEnter = ProductSupplyGridMouseEnter
      OnTitleClick = ProductSupplyGridTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'id_ps'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'date'
          Title.Caption = #1044#1072#1090#1072
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name_p'
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name_pc'
          Title.Caption = #1062#1074#1077#1090
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name_pt'
          Title.Caption = #1058#1080#1087
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'amount'
          Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'storage_from'
          Title.Caption = #1058#1086#1095#1082#1072' '#1089#1087#1080#1089#1072#1085#1080#1103
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'storage_to'
          Title.Caption = #1058#1086#1095#1082#1072' '#1087#1086#1087#1086#1083#1085#1077#1085#1080#1103
          Width = 130
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'proceeds'
          Title.Caption = #1062#1077#1085#1072
          Width = 90
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'cost_price'
          Title.Caption = #1047#1072#1090#1088#1072#1090#1099
          Width = 90
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'added_value'
          Title.Caption = #1044#1057#1058
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fictitious'
          Title.Caption = #1060#1080#1082#1090#1080#1074#1085#1086#1089#1090#1100
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'name_e'
          Title.Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
          Width = 130
          Visible = True
        end>
    end
  end
  object PurchaseEditPanel: TPanel
    Left = 0
    Top = 21
    Width = 1175
    Height = 774
    Margins.Top = 0
    Margins.Bottom = 0
    Align = alClient
    AutoSize = True
    BevelOuter = bvNone
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    Visible = False
    object PurchaseEditBox: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1169
      Height = 768
      Align = alClient
      BiDiMode = bdRightToLeftNoAlign
      Caption = #1053#1086#1074#1099#1081' '#1089#1087#1080#1089#1086#1082' '#1087#1086#1089#1090#1072#1074#1086#1082
      Color = 15073210
      Constraints.MinHeight = 255
      Constraints.MinWidth = 772
      DoubleBuffered = True
      ParentBackground = False
      ParentBiDiMode = False
      ParentColor = False
      ParentDoubleBuffered = False
      TabOrder = 0
      object PurchaseGrid: TDBGrid
        AlignWithMargins = True
        Left = 5
        Top = 114
        Width = 1159
        Height = 652
        Margins.Bottom = 0
        Align = alClient
        BiDiMode = bdLeftToRight
        DataSource = DataModule2.Product_supply_buffer_view_source
        DrawingStyle = gdsGradient
        GradientEndColor = 11592284
        GradientStartColor = 11592284
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentBiDiMode = False
        PopupMenu = PurchasePopupMenu
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = PurchaseGridDrawColumnCell
        OnKeyDown = PurchaseGridKeyDown
        OnMouseEnter = PurchaseGridMouseEnter
        OnTitleClick = PurchaseGridTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id_pb'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'date_pb'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'name_p'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'name_pt'
            Title.Caption = #1058#1080#1087
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'name_pc'
            Title.Caption = #1062#1074#1077#1090
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'amount'
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Width = 90
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'proceeds'
            Title.Caption = #1062#1077#1085#1072
            Width = 90
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'cost_price'
            Title.Caption = #1047#1072#1090#1088#1072#1090#1099
            Width = 90
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'added_value'
            Title.Caption = #1044#1057#1058
            Width = 90
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 2
        Top = 15
        Width = 1165
        Height = 96
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object PositionEditBox: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 0
          Width = 370
          Height = 93
          Margins.Top = 0
          Align = alLeft
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1087#1080#1089#1082#1072' '#1087#1086#1079#1080#1094#1080#1081
          TabOrder = 0
          ExplicitLeft = 27
          ExplicitTop = 3
          ExplicitHeight = 95
          object GridPanel2: TGridPanel
            AlignWithMargins = True
            Left = 2
            Top = 61
            Width = 363
            Height = 27
            Margins.Left = 0
            Align = alBottom
            BevelOuter = bvNone
            ColumnCollection = <
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
                Value = 75.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 4.000000000000000000
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
                Control = PositionAddButton
                Row = 0
              end
              item
                Column = 1
                Control = PositionEditButton
                Row = 0
              end
              item
                Column = 2
                Control = PositionDeleteButton
                Row = 0
              end
              item
                Column = 3
                Control = Bevel4
                Row = 0
              end
              item
                Column = 5
                Control = PositionCancelButton
                Row = 0
              end
              item
                Column = 4
                Control = PositionPostButton
                Row = 0
              end>
            RowCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 28.000000000000000000
              end>
            TabOrder = 0
            ExplicitTop = 63
            ExplicitWidth = 364
            object PositionAddButton: TButton
              AlignWithMargins = True
              Left = 3
              Top = 0
              Width = 66
              Height = 25
              Margins.Top = 0
              Align = alClient
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100
              TabOrder = 0
              OnClick = PositionAddButtonClick
              ExplicitTop = -2
            end
            object PositionEditButton: TButton
              AlignWithMargins = True
              Left = 75
              Top = 0
              Width = 66
              Height = 25
              Margins.Top = 0
              Align = alClient
              Caption = #1048#1079#1084#1077#1085#1080#1090#1100
              TabOrder = 1
              OnClick = PositionEditButtonClick
            end
            object PositionDeleteButton: TButton
              AlignWithMargins = True
              Left = 147
              Top = 0
              Width = 66
              Height = 25
              Margins.Top = 0
              Margins.Right = 6
              Align = alClient
              Caption = #1059#1076#1072#1083#1080#1090#1100
              TabOrder = 2
              OnClick = PositionDeleteButtonClick
            end
            object Bevel4: TBevel
              AlignWithMargins = True
              Left = 219
              Top = 3
              Width = 4
              Height = 19
              Margins.Left = 0
              Margins.Right = 0
              Margins.Bottom = 6
              Align = alClient
              Shape = bsLeftLine
              ExplicitTop = 0
              ExplicitHeight = 25
            end
            object PositionCancelButton: TButton
              AlignWithMargins = True
              Left = 298
              Top = 0
              Width = 66
              Height = 25
              Margins.Top = 0
              Align = alClient
              Caption = #1054#1090#1084#1077#1085#1080#1090#1100
              Enabled = False
              TabOrder = 3
              OnClick = PositionCancelButtonClick
            end
            object PositionPostButton: TSpeedButton
              AlignWithMargins = True
              Left = 226
              Top = 0
              Width = 66
              Height = 25
              Margins.Top = 0
              Align = alClient
              Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100
              Enabled = False
              OnClick = PositionPostButtonClick
              OnDblClick = PositionPostButtonDblClick
              ExplicitLeft = 247
              ExplicitTop = 3
              ExplicitWidth = 23
              ExplicitHeight = 22
            end
          end
          object PurchaseEditGridPanel: TGridPanel
            Left = 2
            Top = 15
            Width = 366
            Height = 43
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Align = alBottom
            BevelOuter = bvNone
            ColumnCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 155.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 135.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 75.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Label2
                Row = 0
              end
              item
                Column = 1
                Control = Label19
                Row = 0
              end
              item
                Column = 2
                Control = Label20
                Row = 0
              end
              item
                Column = 0
                Control = PurchaseEditNameCB
                Row = 1
              end
              item
                Column = 1
                Control = PurchaseEditColorCB
                Row = 1
              end
              item
                Column = 2
                Control = PurchaseEditAmountEdit
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
            TabOrder = 1
            ExplicitLeft = 3
            ExplicitTop = 17
            ExplicitWidth = 365
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 149
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Enabled = False
              ExplicitWidth = 81
              ExplicitHeight = 13
            end
            object Label19: TLabel
              AlignWithMargins = True
              Left = 158
              Top = 3
              Width = 50
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1062#1074#1077#1090
              Constraints.MaxWidth = 50
              Enabled = False
              ExplicitWidth = 25
              ExplicitHeight = 13
            end
            object Label20: TLabel
              AlignWithMargins = True
              Left = 293
              Top = 3
              Width = 69
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
              Enabled = False
              ExplicitWidth = 62
              ExplicitHeight = 13
            end
            object PurchaseEditNameCB: TDBLookupComboBox
              AlignWithMargins = True
              Left = 3
              Top = 20
              Width = 149
              Height = 21
              Align = alClient
              BiDiMode = bdLeftToRight
              DataField = 'id_pl'
              DataSource = DataModule2.Product_supply_buffer_source
              DropDownRows = 15
              DropDownWidth = 250
              Enabled = False
              KeyField = 'id_p'
              ListField = 'name_p'
              ListSource = DataModule2.Products_source
              ParentBiDiMode = False
              TabOrder = 0
              OnCloseUp = PurchaseEditNameCBCloseUp
              OnKeyPress = PurchaseEditNameCBKeyPress
            end
            object PurchaseEditColorCB: TDBLookupComboBox
              AlignWithMargins = True
              Left = 158
              Top = 20
              Width = 129
              Height = 21
              Align = alClient
              BiDiMode = bdLeftToRight
              DataField = 'id_pc'
              DataSource = DataModule2.Product_supply_buffer_source
              DropDownRows = 15
              DropDownWidth = 250
              Enabled = False
              KeyField = 'id_pc'
              ListField = 'name_pc'
              ListSource = DataModule2.Product_color_source
              ParentBiDiMode = False
              TabOrder = 1
              OnCloseUp = PurchaseEditNameCBCloseUp
              OnKeyPress = PurchaseEditColorCBKeyPress
            end
            object PurchaseEditAmountEdit: TDBEdit
              AlignWithMargins = True
              Left = 293
              Top = 20
              Width = 69
              Height = 21
              Align = alClient
              BiDiMode = bdLeftToRight
              Constraints.MaxHeight = 21
              DataField = 'amount_ps'
              DataSource = DataModule2.Product_supply_buffer_source
              Enabled = False
              ParentBiDiMode = False
              TabOrder = 2
              OnChange = PurchaseEditNameCBCloseUp
              OnKeyPress = PurchaseEditAmountEditKeyPress
            end
          end
        end
        object GroupBox2: TGroupBox
          AlignWithMargins = True
          Left = 767
          Top = 3
          Width = 395
          Height = 90
          Align = alClient
          Constraints.MaxHeight = 91
          TabOrder = 1
          ExplicitLeft = 648
          ExplicitTop = 51
          ExplicitWidth = 786
          ExplicitHeight = 91
        end
        object Panel2: TPanel
          Left = 376
          Top = 0
          Width = 388
          Height = 96
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          ExplicitLeft = 379
          ExplicitTop = -3
          ExplicitHeight = 97
          object DataConsumerGridPanel: TGridPanel
            Left = 0
            Top = 0
            Width = 388
            Height = 45
            Align = alTop
            BevelOuter = bvNone
            ColumnCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 85.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 150.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 150.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Label1
                Row = 0
              end
              item
                Column = 0
                Control = PurchaseEditDTP
                Row = 1
              end
              item
                Column = 1
                Control = PurchaseEditStorageFromCB
                Row = 1
              end
              item
                Column = 2
                Control = Label12
                Row = 0
              end
              item
                Column = 2
                Control = PurchaseEditStorageToCB
                Row = 1
              end
              item
                Column = 1
                Control = Label3
                Row = 0
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
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 79
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1044#1072#1090#1072
              ExplicitWidth = 25
              ExplicitHeight = 13
            end
            object PurchaseEditDTP: TDateTimePicker
              AlignWithMargins = True
              Left = 3
              Top = 20
              Width = 79
              Height = 20
              Margins.Bottom = 5
              Align = alClient
              BiDiMode = bdLeftToRight
              Date = 43817.000000000000000000
              Time = 43817.000000000000000000
              ParentBiDiMode = False
              TabOrder = 0
              OnChange = PurchaseEditDTPChange
            end
            object PurchaseEditStorageFromCB: TDBLookupComboBox
              AlignWithMargins = True
              Left = 88
              Top = 20
              Width = 144
              Height = 21
              Align = alClient
              BiDiMode = bdLeftToRight
              DropDownRows = 15
              DropDownWidth = 250
              KeyField = 'id_sl'
              ListField = 'name_sl'
              ListSource = DataModule2.Storages_source
              ParentBiDiMode = False
              TabOrder = 1
              OnCloseUp = PurchaseEditStorageFromCBCloseUp
              OnKeyPress = PurchaseEditStorageFromCBKeyPress
            end
            object Label12: TLabel
              AlignWithMargins = True
              Left = 238
              Top = 3
              Width = 100
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1058#1086#1095#1082#1072' '#1087#1086#1087#1086#1083#1085#1077#1085#1080#1103
              Constraints.MaxWidth = 100
              ExplicitHeight = 13
            end
            object PurchaseEditStorageToCB: TDBLookupComboBox
              AlignWithMargins = True
              Left = 238
              Top = 20
              Width = 144
              Height = 21
              Align = alClient
              BiDiMode = bdLeftToRight
              DataField = 'id_gc'
              DropDownRows = 15
              DropDownWidth = 250
              KeyField = 'id_sl'
              ListField = 'name_sl'
              ListSource = DataModule2.Storages_source_2
              ParentBiDiMode = False
              TabOrder = 2
              OnCloseUp = PurchaseEditStorageFromCBCloseUp
            end
            object Label3: TLabel
              AlignWithMargins = True
              Left = 88
              Top = 3
              Width = 90
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1058#1086#1095#1082#1072' '#1089#1087#1080#1089#1072#1085#1080#1103
              Constraints.MaxWidth = 90
              ExplicitWidth = 85
              ExplicitHeight = 13
            end
          end
          object GroupBox1: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 51
            Width = 42
            Height = 42
            Margins.Top = 6
            Align = alLeft
            TabOrder = 1
          end
          object PurchaseBox: TGroupBox
            AlignWithMargins = True
            Left = 51
            Top = 45
            Width = 333
            Height = 48
            Margins.Top = 0
            Align = alLeft
            BiDiMode = bdLeftToRight
            Caption = #1057#1087#1080#1089#1086#1082' '
            ParentBiDiMode = False
            TabOrder = 2
            object GridPanel4: TGridPanel
              Left = 2
              Top = 15
              Width = 184
              Height = 31
              Align = alLeft
              BevelOuter = bvNone
              ColumnCollection = <
                item
                  SizeStyle = ssAbsolute
                  Value = 70.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 110.000000000000000000
                end>
              ControlCollection = <
                item
                  Column = 0
                  Control = Label23
                  Row = 0
                end
                item
                  Column = 1
                  Control = PurchaseSumLabel
                  Row = 0
                end
                item
                  Column = 0
                  Control = Label13
                  Row = 1
                end
                item
                  Column = 1
                  Control = PurchaseAmountLabel
                  Row = 1
                end>
              RowCollection = <
                item
                  SizeStyle = ssAbsolute
                  Value = 14.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 14.000000000000000000
                end>
              TabOrder = 0
              object Label23: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 0
                Width = 64
                Height = 14
                Margins.Top = 0
                Margins.Bottom = 0
                Align = alClient
                AutoSize = False
                BiDiMode = bdLeftToRight
                Caption = 'C'#1090#1086#1080#1084#1086#1089#1090#1100':'
                ParentBiDiMode = False
                ExplicitLeft = 2
                ExplicitTop = -2
                ExplicitWidth = 98
                ExplicitHeight = 17
              end
              object PurchaseSumLabel: TLabel
                AlignWithMargins = True
                Left = 73
                Top = 0
                Width = 104
                Height = 14
                Margins.Top = 0
                Margins.Bottom = 0
                Align = alClient
                Alignment = taRightJustify
                AutoSize = False
                BiDiMode = bdLeftToRight
                Caption = '999999999'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 686742
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentBiDiMode = False
                ParentFont = False
                ExplicitLeft = 81
                ExplicitHeight = 17
              end
              object Label13: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 14
                Width = 64
                Height = 14
                Margins.Top = 0
                Margins.Bottom = 0
                Align = alClient
                AutoSize = False
                BiDiMode = bdLeftToRight
                Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
                ParentBiDiMode = False
                ExplicitLeft = 9
                ExplicitTop = 16
                ExplicitWidth = 98
                ExplicitHeight = 17
              end
              object PurchaseAmountLabel: TLabel
                AlignWithMargins = True
                Left = 73
                Top = 14
                Width = 104
                Height = 14
                Margins.Top = 0
                Margins.Bottom = 0
                Align = alClient
                Alignment = taRightJustify
                AutoSize = False
                BiDiMode = bdLeftToRight
                Caption = '999999999'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 686742
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentBiDiMode = False
                ParentFont = False
                ExplicitLeft = 81
                ExplicitTop = 20
                ExplicitHeight = 11
              end
            end
            object GridPanel1: TGridPanel
              Left = 186
              Top = 15
              Width = 140
              Height = 31
              Align = alLeft
              BevelOuter = bvNone
              ColumnCollection = <
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
                  Control = PurchasePostButton
                  Row = 0
                end
                item
                  Column = 1
                  Control = PurchaseCancelButton
                  Row = 0
                end>
              RowCollection = <
                item
                  SizeStyle = ssAbsolute
                  Value = 28.000000000000000000
                end>
              TabOrder = 1
              ExplicitLeft = 141
              ExplicitTop = 12
              ExplicitHeight = 38
              object PurchasePostButton: TButton
                AlignWithMargins = True
                Left = 3
                Top = 0
                Width = 66
                Height = 25
                Margins.Top = 0
                Align = alClient
                Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100
                Enabled = False
                TabOrder = 0
                OnClick = PurchasePostButtonClick
              end
              object PurchaseCancelButton: TButton
                AlignWithMargins = True
                Left = 75
                Top = 0
                Width = 66
                Height = 25
                Margins.Top = 0
                Align = alClient
                Caption = #1054#1090#1084#1077#1085#1080#1090#1100
                TabOrder = 1
                OnClick = PurchaseCancelButtonClick
              end
            end
          end
        end
      end
    end
  end
  object ToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 1175
    Height = 21
    ButtonHeight = 21
    ButtonWidth = 136
    Caption = 'ToolBar'
    DoubleBuffered = True
    EdgeInner = esNone
    EdgeOuter = esNone
    Menu = Menu
    ParentDoubleBuffered = False
    ShowCaptions = True
    TabOrder = 1
  end
  object Menu: TMainMenu
    Left = 896
    Top = 16
    object N1: TMenuItem
      Caption = #1055#1086#1089#1090#1072#1074#1082#1080' > '#1055#1088#1086#1076#1091#1082#1094#1080#1103' |'
      Enabled = False
    end
    object N2: TMenuItem
      Caption = #1053#1086#1074#1099#1081' '#1089#1087#1080#1089#1086#1082' '
      OnClick = N2Click
    end
    object AddButton: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = AddButtonClick
    end
    object EditButton: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = EditButtonClick
    end
    object DeleteButton: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = DeleteButtonClick
    end
    object FilterButton: TMenuItem
      Caption = #1060#1080#1083#1100#1090#1088#1072#1094#1080#1103
      RadioItem = True
      OnClick = FilterButtonClick
    end
    object SearchMenuButton: TMenuItem
      Caption = #1055#1086#1080#1089#1082
      RadioItem = True
      OnClick = SearchMenuButtonClick
    end
    object StatButton: TMenuItem
      Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
      RadioItem = True
      OnClick = StatButtonClick
    end
  end
  object PopupMenu: TPopupMenu
    Left = 1011
    Top = 46
    object MenuItem1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = AddButtonClick
    end
    object N4: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = EditButtonClick
    end
    object N5: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = DeleteButtonClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object ChangeRateButton: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1082#1091#1088#1089
      OnClick = ChangeRateButtonClick
    end
  end
  object PurchasePopupMenu: TPopupMenu
    Left = 953
    Top = 48
    object MenuItem2: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = PositionAddButtonClick
    end
    object MenuItem3: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = PositionEditButtonClick
    end
    object MenuItem4: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = PositionDeleteButtonClick
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object N8: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1082#1091#1088#1089
      OnClick = ChangeRateButtonClick
    end
  end
end
