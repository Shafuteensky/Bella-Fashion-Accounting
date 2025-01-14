object MaterialSupplyForm: TMaterialSupplyForm
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'MaterialSupplyForm'
  ClientHeight = 705
  ClientWidth = 1095
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MaterialSupplyPanel: TPanel
    Left = 0
    Top = 21
    Width = 1095
    Height = 684
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object ToolsPanel: TPanel
      Left = 0
      Top = 0
      Width = 1095
      Height = 207
      Align = alTop
      Alignment = taLeftJustify
      AutoSize = True
      BevelOuter = bvNone
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      VerticalAlignment = taAlignTop
      object FilterPanel: TPanel
        Left = 0
        Top = 0
        Width = 1095
        Height = 69
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alTop
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        Visible = False
        object Filler2: TGroupBox
          AlignWithMargins = True
          Left = 919
          Top = 3
          Width = 173
          Height = 63
          Align = alClient
          Constraints.MaxHeight = 63
          Constraints.MinHeight = 63
          TabOrder = 0
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
          TabOrder = 1
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
                #1062#1077#1093' '#1087#1086#1089#1090#1072#1074#1082#1080
                #1062#1077#1085#1072
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
          TabOrder = 2
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
      end
      object EditPanel: TPanel
        Left = 0
        Top = 138
        Width = 1095
        Height = 69
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        Visible = False
        object EditBox: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 864
          Height = 63
          Align = alLeft
          BiDiMode = bdRightToLeftNoAlign
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1087#1080#1089#1077#1081' '#1087#1086#1089#1090#1072#1074#1086#1082' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
          Color = clCream
          Constraints.MaxHeight = 63
          Constraints.MinHeight = 63
          Constraints.MinWidth = 750
          ParentBackground = False
          ParentBiDiMode = False
          ParentColor = False
          TabOrder = 0
          object EditGridPanel: TGridPanel
            Left = 3
            Top = 13
            Width = 859
            Height = 47
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
                Value = 180.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 90.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 180.000000000000000000
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
                Control = Label8
                Row = 0
              end
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
                Control = Label15
                Row = 0
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
              end
              item
                Column = 4
                Control = EditManufactoryCB
                Row = 1
              end
              item
                Column = 5
                Control = PostButton
                Row = 1
              end
              item
                Column = 6
                Control = CancelButton
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
            object Label8: TLabel
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
            object Label10: TLabel
              AlignWithMargins = True
              Left = 268
              Top = 3
              Width = 174
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1062#1074#1077#1090
              ExplicitWidth = 25
              ExplicitHeight = 13
            end
            object Label11: TLabel
              AlignWithMargins = True
              Left = 448
              Top = 3
              Width = 84
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
              ExplicitWidth = 62
              ExplicitHeight = 13
            end
            object Label15: TLabel
              AlignWithMargins = True
              Left = 538
              Top = 3
              Width = 174
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1062#1077#1093' '#1087#1086#1089#1090#1072#1074#1082#1080
              ExplicitWidth = 71
              ExplicitHeight = 13
            end
            object EditDateDTP: TDateTimePicker
              AlignWithMargins = True
              Left = 3
              Top = 20
              Width = 79
              Height = 22
              Align = alClient
              BiDiMode = bdLeftToRight
              Constraints.MaxHeight = 22
              Date = 43817.000000000000000000
              Time = 43817.000000000000000000
              ParentBiDiMode = False
              TabOrder = 0
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
              DataField = 'id_ml'
              DataSource = DataModule2.Material_supply_source
              DropDownRows = 15
              DropDownWidth = 250
              KeyField = 'id_m'
              ListField = 'name_m'
              ListSource = DataModule2.Materials_source
              ParentBiDiMode = False
              TabOrder = 1
              OnCloseUp = EditAmountEditChange
              OnKeyPress = EditNameCBKeyPress
            end
            object EditColorCB: TDBLookupComboBox
              AlignWithMargins = True
              Left = 268
              Top = 20
              Width = 174
              Height = 21
              Align = alClient
              BiDiMode = bdLeftToRight
              DataField = 'id_mc'
              DataSource = DataModule2.Material_supply_source
              DropDownRows = 15
              DropDownWidth = 250
              KeyField = 'id_mc'
              ListField = 'name_mc'
              ListSource = DataModule2.Material_color_source
              ParentBiDiMode = False
              TabOrder = 2
              OnCloseUp = EditAmountEditChange
              OnKeyPress = EditColorCBKeyPress
            end
            object EditAmountEdit: TDBEdit
              AlignWithMargins = True
              Left = 448
              Top = 20
              Width = 84
              Height = 21
              Align = alClient
              BiDiMode = bdLeftToRight
              Constraints.MaxHeight = 21
              DataField = 'amount_ms'
              DataSource = DataModule2.Material_supply_source
              ParentBiDiMode = False
              TabOrder = 3
              OnChange = EditAmountEditChange
              OnKeyPress = EditAmountEditKeyPress
            end
            object EditManufactoryCB: TDBLookupComboBox
              AlignWithMargins = True
              Left = 538
              Top = 20
              Width = 174
              Height = 21
              Align = alClient
              BiDiMode = bdLeftToRight
              DataField = 'id_sl_to'
              DataSource = DataModule2.Material_supply_source
              DropDownRows = 15
              DropDownWidth = 250
              KeyField = 'id_sl'
              ListField = 'name_sl'
              ListSource = DataModule2.Storages_manufactories_source
              ParentBiDiMode = False
              TabOrder = 4
              OnCloseUp = EditAmountEditChange
              OnKeyPress = EditManufactoryCBKeyPress
            end
            object PostButton: TButton
              AlignWithMargins = True
              Left = 718
              Top = 17
              Width = 66
              Height = 25
              Margins.Top = 0
              Align = alClient
              Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100
              Constraints.MaxHeight = 25
              TabOrder = 5
              OnClick = PostButtonClick
            end
            object CancelButton: TButton
              AlignWithMargins = True
              Left = 790
              Top = 17
              Width = 66
              Height = 25
              Margins.Top = 0
              Align = alClient
              Caption = #1054#1090#1084#1077#1085#1080#1090#1100
              TabOrder = 6
              OnClick = CancelButtonClick
            end
          end
        end
        object Filler1: TGroupBox
          AlignWithMargins = True
          Left = 873
          Top = 3
          Width = 219
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
        Width = 1095
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
          Left = 724
          Top = 3
          Width = 368
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
          Width = 183
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
            Left = 5
            Top = 15
            Width = 171
            Height = 41
            BevelOuter = bvNone
            ColumnCollection = <
              item
                Value = 42.744712841809880000
              end
              item
                Value = 57.255287158190120000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Label7
                Row = 0
              end
              item
                Column = 1
                Control = CostLabel
                Row = 0
              end
              item
                Column = 0
                Control = Label9
                Row = 1
              end
              item
                Column = 1
                Control = AmountLabel
                Row = 1
              end>
            RowCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 20.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 20.000000000000000000
              end>
            TabOrder = 0
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 67
              Height = 17
              Margins.Bottom = 0
              Align = alClient
              Alignment = taRightJustify
              Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100':'
              ExplicitLeft = 10
              ExplicitWidth = 60
              ExplicitHeight = 13
            end
            object CostLabel: TLabel
              AlignWithMargins = True
              Left = 76
              Top = 3
              Width = 92
              Height = 17
              Margins.Bottom = 0
              Align = alClient
              Caption = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 686742
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              ExplicitWidth = 6
              ExplicitHeight = 13
            end
            object Label9: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 23
              Width = 67
              Height = 17
              Margins.Bottom = 0
              Align = alClient
              Alignment = taRightJustify
              Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
              ExplicitLeft = 5
              ExplicitWidth = 65
              ExplicitHeight = 13
            end
            object AmountLabel: TLabel
              AlignWithMargins = True
              Left = 76
              Top = 23
              Width = 92
              Height = 17
              Margins.Bottom = 0
              Align = alClient
              Caption = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 686742
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              ExplicitWidth = 6
              ExplicitHeight = 13
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
                #1062#1077#1093' '#1087#1086#1089#1090#1072#1074#1082#1080
                #1062#1077#1085#1072
                #1057#1086#1090#1088#1091#1076#1085#1080#1082)
            end
          end
        end
      end
    end
    object MaterialSupplyGrid: TDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 210
      Width = 1089
      Height = 471
      Align = alClient
      DataSource = DataModule2.Material_supply_view_source
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
      OnDrawColumnCell = MaterialSupplyGridDrawColumnCell
      OnKeyDown = MaterialSupplyGridKeyDown
      OnMouseEnter = MaterialSupplyGridMouseEnter
      OnTitleClick = MaterialSupplyGridTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'id_ms'
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
          FieldName = 'name_m'
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name_mt'
          Title.Caption = #1058#1080#1087
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name_mc'
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
          Expanded = False
          FieldName = 'name_mm'
          Title.Caption = #1052#1077#1088#1072
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name_sl'
          Title.Caption = #1062#1077#1093' '#1087#1086#1089#1090#1072#1074#1082#1080
          Width = 130
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'cost'
          Title.Caption = #1062#1077#1085#1072
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name_e'
          Title.Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cost_sort'
          Title.Caption = #1062#1077#1085#1072
          Visible = False
        end>
    end
  end
  object PurchaseEditPanel: TPanel
    Left = 0
    Top = 21
    Width = 1095
    Height = 684
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
      Width = 1089
      Height = 678
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
        Width = 1079
        Height = 562
        Margins.Bottom = 0
        Align = alClient
        BiDiMode = bdLeftToRight
        DataSource = DataModule2.Material_supply_buffer_view_source
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
            FieldName = 'id_mb'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'date'
            Title.Caption = #1044#1072#1090#1072
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'name_m'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'name_mt'
            Title.Caption = #1058#1080#1087
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'name_mc'
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
            Expanded = False
            FieldName = 'name_mm'
            Title.Caption = #1052#1077#1088#1072
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'name_sl'
            Title.Caption = #1062#1077#1093' '#1087#1086#1089#1090#1072#1074#1082#1080
            Visible = False
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'cost'
            Title.Caption = #1062#1077#1085#1072
            Width = 90
            Visible = True
          end>
      end
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 5
        Top = 15
        Width = 1079
        Height = 96
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object PositionEditBox: TGroupBox
          AlignWithMargins = True
          Left = 1
          Top = 0
          Width = 370
          Height = 93
          Margins.Left = 1
          Margins.Top = 0
          Align = alLeft
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1087#1080#1089#1082#1072' '#1087#1086#1079#1080#1094#1080#1081
          TabOrder = 0
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
                Column = 4
                Control = PositionPostButton
                Row = 0
              end
              item
                Column = 5
                Control = PositionCancelButton
                Row = 0
              end>
            RowCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 28.000000000000000000
              end>
            TabOrder = 0
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
            object PositionPostButton: TButton
              AlignWithMargins = True
              Left = 226
              Top = 0
              Width = 66
              Height = 25
              Margins.Top = 0
              Align = alClient
              Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100
              Enabled = False
              TabOrder = 3
              OnClick = PositionPostButtonClick
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
              TabOrder = 4
              OnClick = PositionCancelButtonClick
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
            ExplicitLeft = 4
            ExplicitTop = 23
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
              DataField = 'id_ml'
              DataSource = DataModule2.Material_supply_buffer_source
              DropDownRows = 15
              DropDownWidth = 250
              Enabled = False
              KeyField = 'id_m'
              ListField = 'name_m'
              ListSource = DataModule2.Materials_source
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
              DataField = 'id_mc'
              DataSource = DataModule2.Material_supply_buffer_source
              DropDownRows = 15
              DropDownWidth = 250
              Enabled = False
              KeyField = 'id_mc'
              ListField = 'name_mc'
              ListSource = DataModule2.Material_color_source
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
              DataField = 'amount_ms'
              DataSource = DataModule2.Material_supply_buffer_source
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
          Left = 713
          Top = 3
          Width = 363
          Height = 90
          Align = alClient
          Constraints.MaxHeight = 94
          TabOrder = 1
        end
        object Panel2: TPanel
          Left = 374
          Top = 0
          Width = 336
          Height = 96
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object DataConsumerGridPanel: TGridPanel
            Left = 0
            Top = 0
            Width = 336
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
                Value = 205.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 42.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Label17
                Row = 0
              end
              item
                Column = 1
                Control = Label21
                Row = 0
              end
              item
                Column = 0
                Control = PurchaseEditDTP
                Row = 1
              end
              item
                Column = 1
                Control = PurchaseEditStorageCB
                Row = 1
              end
              item
                Column = 2
                Control = GroupBox1
                Row = 0
                RowSpan = 2
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
            object Label17: TLabel
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
            object Label21: TLabel
              AlignWithMargins = True
              Left = 88
              Top = 3
              Width = 70
              Height = 14
              Margins.Bottom = 0
              Align = alClient
              Caption = #1062#1077#1093' '#1087#1086#1089#1090#1072#1074#1082#1080
              Constraints.MaxWidth = 70
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
            object PurchaseEditStorageCB: TDBLookupComboBox
              AlignWithMargins = True
              Left = 88
              Top = 20
              Width = 199
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
              OnCloseUp = PurchaseEditStorageCBCloseUp
            end
            object GroupBox1: TGroupBox
              AlignWithMargins = True
              Left = 293
              Top = 3
              Width = 39
              Height = 39
              Margins.Right = 0
              Align = alClient
              TabOrder = 2
            end
          end
          object PurchaseBox: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 45
            Width = 330
            Height = 48
            Margins.Top = 0
            Align = alLeft
            BiDiMode = bdLeftToRight
            Caption = #1057#1087#1080#1089#1086#1082
            ParentBiDiMode = False
            TabOrder = 1
            object GridPanel4: TGridPanel
              Left = 2
              Top = 15
              Width = 187
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
                Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100':'
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
              Left = 188
              Top = 15
              Width = 140
              Height = 31
              Align = alRight
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
    Width = 1095
    Height = 21
    AutoSize = True
    ButtonHeight = 21
    ButtonWidth = 130
    DoubleBuffered = True
    EdgeInner = esNone
    EdgeOuter = esNone
    Menu = Menu
    ParentDoubleBuffered = False
    ShowCaptions = True
    TabOrder = 1
  end
  object Menu: TMainMenu
    Left = 736
    Top = 96
    object N1: TMenuItem
      Caption = #1055#1086#1089#1090#1072#1074#1082#1080' > '#1052#1072#1090#1077#1088#1080#1072#1083' |'
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
      OnClick = FilterButtonClick
    end
    object SearchMenuButton: TMenuItem
      Caption = #1055#1086#1080#1089#1082
      OnClick = SearchMenuButtonClick
    end
    object StatButton: TMenuItem
      Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
      OnClick = StatButtonClick
    end
  end
  object PopupMenu: TPopupMenu
    Left = 787
    Top = 94
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
    Left = 899
    Top = 96
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
