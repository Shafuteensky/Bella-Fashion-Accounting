object StorageForm: TStorageForm
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'StorageForm'
  ClientHeight = 559
  ClientWidth = 1234
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StorageMainPanel: TPanel
    Left = 0
    Top = 19
    Width = 1234
    Height = 540
    Align = alClient
    BevelOuter = bvNone
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    object StorageChart: TDBChart
      AlignWithMargins = True
      Left = 824
      Top = 279
      Width = 407
      Height = 258
      Cursor = crArrow
      AllowPanning = pmVertical
      Border.Color = 7895160
      Border.EndStyle = esFlat
      Border.Visible = True
      LeftWall.Color = 14671839
      MarginBottom = 2
      MarginLeft = 1
      MarginTop = 3
      Title.Font.Charset = RUSSIAN_CHARSET
      Title.Font.Color = clBlack
      Title.Font.Height = -18
      Title.Font.Name = 'Segoe UI'
      Title.Margins.Top = 16
      Title.Text.Strings = (
        #1057#1082#1083#1072#1076)
      Title.Visible = False
      Title.VertMargin = 4
      LeftAxis.Axis.Fill.Gradient.StartColor = clRed
      LeftAxis.Grid.Visible = False
      LeftAxis.LabelsFormat.Font.Name = 'Segoe UI'
      LeftAxis.LabelsFormat.Margins.Top = 0
      LeftAxis.LabelsFormat.Margins.Bottom = 3
      LeftAxis.LabelStyle = talText
      LeftAxis.Title.Font.Height = -1
      Legend.Visible = False
      Panning.InsideBounds = True
      RightAxis.LabelsFormat.Font.Height = -1
      View3D = False
      View3DOptions.FontZoom = 262
      View3DOptions.Perspective = 0
      View3DOptions.ZoomText = ztNo
      Zoom.Allow = False
      Align = alClient
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWindow
      TabOrder = 1
      Visible = False
      OnClick = StorageChartOpenClick
      OnMouseMove = StorageChartMouseMove
      DefaultCanvas = 'TGDIPlusCanvas'
      PrintMargins = (
        15
        18
        15
        18)
      ColorPaletteIndex = 13
      object Series1: THorizBarSeries
        Legend.Visible = False
        BarBrush.Gradient.Direction = gdLeftRight
        Depth = 0
        Marks.Brush.Color = clBlack
        Marks.Emboss.Clip = True
        Marks.Shadow.Clip = True
        Marks.Transparent = True
        Marks.Margins.Left = 0
        Marks.Margins.Top = 0
        Marks.Margins.Right = 2
        Marks.Margins.Bottom = 0
        Marks.TextAlignment = taRightJustify
        Marks.Style = smsValue
        Marks.Arrow.Visible = False
        Marks.Callout.Transparency = 60
        Marks.Callout.Arrow.Visible = False
        Marks.Clip = True
        Marks.TextAlign = taRightJustify
        SeriesColor = clCream
        ShowInLegend = False
        Transparency = 21
        XLabelsSource = 'name_p'
        Gradient.Direction = gdLeftRight
        XValues.Name = 'Bar'
        XValues.Order = loDescending
        XValues.ValueSource = 'amount'
        YValues.Name = 'Y'
        YValues.Order = loNone
        Data = {
          00060000000000000000C08C400000000000308B400000000000648940000000
          0000AC87400000000000A084400000000000708240}
        Detail = {0000000000}
      end
    end
    object StorageGrid: TDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 279
      Width = 815
      Height = 258
      Align = alLeft
      Constraints.MaxWidth = 815
      Constraints.MinWidth = 815
      DataSource = DataModule2.Storage_source
      DrawingStyle = gdsGradient
      GradientEndColor = 1033457
      GradientStartColor = 1033457
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick]
      PopupMenu = StoragePopupMenu
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnTitleClick = StorageGridTitleClick
      Columns = <
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
          FieldName = 'proceeds'
          Title.Caption = #1062#1077#1085#1072
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cost_price'
          Title.Caption = #1047#1072#1090#1088#1072#1090#1099
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'added_value'
          Title.Caption = #1044#1057#1058
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'proceeds_sort'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'cost_price_sort'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'added_value_sort'
          Visible = False
        end>
    end
    object ToolsPanel: TPanel
      Left = 0
      Top = 69
      Width = 1234
      Height = 69
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 2
      Visible = False
      object Filler1: TGroupBox
        AlignWithMargins = True
        Left = 952
        Top = 3
        Width = 279
        Height = 63
        Align = alClient
        Constraints.MaxHeight = 63
        Constraints.MinHeight = 63
        TabOrder = 0
      end
      object SearchBox: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 525
        Height = 63
        Align = alLeft
        BiDiMode = bdRightToLeftNoAlign
        Caption = #1055#1086#1080#1089#1082
        Color = clCream
        Constraints.MaxHeight = 63
        Constraints.MinHeight = 63
        ParentBackground = False
        ParentBiDiMode = False
        ParentColor = False
        TabOrder = 1
        Visible = False
        object SearchGridPanel: TGridPanel
          Left = 4
          Top = 13
          Width = 516
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
              Column = 0
              Control = SearchFieldCB
              Row = 1
            end
            item
              Column = 3
              Control = ExtendedSearchButton
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
            TabOrder = 2
            Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            OnChange = SearchFieldCBChange
            Items.Strings = (
              #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              #1058#1080#1087
              #1062#1074#1077#1090
              #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
              #1062#1077#1085#1072
              #1047#1072#1090#1088#1072#1090#1099
              #1044#1057#1058)
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
            TabOrder = 3
            OnClick = ExtendedSearchButtonClick
          end
        end
      end
      object StatBox: TGroupBox
        AlignWithMargins = True
        Left = 534
        Top = 3
        Width = 412
        Height = 63
        Align = alLeft
        Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072' '#1089#1082#1083#1072#1076#1072
        Color = clCream
        Constraints.MaxHeight = 71
        Constraints.MinWidth = 191
        ParentBackground = False
        ParentColor = False
        TabOrder = 2
        Visible = False
        object StatGridPanel: TGridPanel
          Left = 4
          Top = 14
          Width = 403
          Height = 47
          BevelOuter = bvNone
          ColumnCollection = <
            item
              Value = 17.942923275045530000
            end
            item
              SizeStyle = ssAbsolute
              Value = 4.000000000000000000
            end
            item
              Value = 27.547394467457260000
            end
            item
              SizeStyle = ssAbsolute
              Value = 4.000000000000000000
            end
            item
              Value = 27.345759414437650000
            end
            item
              SizeStyle = ssAbsolute
              Value = 4.000000000000000000
            end
            item
              Value = 27.163922843059560000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = Label4
              Row = 0
            end
            item
              Column = 2
              Control = Label5
              Row = 0
            end
            item
              Column = 4
              Control = Label6
              Row = 0
            end
            item
              Column = 6
              Control = Label7
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
            end
            item
              Column = 0
              ColumnSpan = 7
              Control = Panel1
              Row = 2
            end>
          RowCollection = <
            item
              SizeStyle = ssAbsolute
              Value = 14.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 15.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 16.000000000000000000
            end>
          TabOrder = 0
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 0
            Width = 64
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
          object Label5: TLabel
            AlignWithMargins = True
            Left = 77
            Top = 0
            Width = 101
            Height = 14
            Margins.Top = 0
            Margins.Bottom = 0
            Align = alClient
            AutoSize = False
            Caption = #1062#1077#1085#1072
            ExplicitLeft = 182
            ExplicitTop = 2
            ExplicitWidth = 44
            ExplicitHeight = 13
          end
          object Label6: TLabel
            AlignWithMargins = True
            Left = 188
            Top = 0
            Width = 100
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
          object Label7: TLabel
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
            Width = 64
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
            Left = 77
            Top = 16
            Width = 101
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
            Left = 188
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
            ExplicitLeft = 164
            ExplicitWidth = 86
          end
          object AddedValueLabel: TLabel
            AlignWithMargins = True
            Left = 298
            Top = 16
            Width = 102
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
            Left = 70
            Top = 0
            Width = 4
            Height = 29
            Align = alClient
            Shape = bsLeftLine
            ExplicitLeft = 78
            ExplicitHeight = 14
          end
          object Bevel2: TBevel
            Left = 181
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
          object Panel1: TPanel
            Left = 0
            Top = 29
            Width = 403
            Height = 16
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object MostVolumLabel: TLabel
              AlignWithMargins = True
              Left = 103
              Top = 2
              Width = 297
              Height = 14
              Margins.Top = 2
              Margins.Bottom = 0
              Align = alClient
              AutoSize = False
              BiDiMode = bdLeftToRight
              Caption = '-'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 686742
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentBiDiMode = False
              ParentFont = False
              ExplicitLeft = 143
              ExplicitTop = 6
              ExplicitWidth = 215
              ExplicitHeight = 13
            end
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 2
              Width = 94
              Height = 14
              Margins.Top = 2
              Margins.Bottom = 0
              Align = alLeft
              AutoSize = False
              Caption = #1057#1072#1084#1099#1081' '#1086#1073#1098#1077#1084#1085#1099#1081':'
              ExplicitTop = 3
              ExplicitHeight = 13
            end
          end
        end
      end
    end
    object ManagePanel: TPanel
      Left = 0
      Top = 0
      Width = 1234
      Height = 69
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 855
        Top = 3
        Width = 376
        Height = 63
        Align = alClient
        Constraints.MaxHeight = 63
        TabOrder = 0
      end
      object StoragePickGB: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 178
        Height = 63
        Align = alLeft
        Caption = #1042#1099#1073#1086#1088' '#1089#1082#1083#1072#1076#1072
        Color = clCream
        Constraints.MaxHeight = 63
        Constraints.MinHeight = 63
        ParentBackground = False
        ParentColor = False
        TabOrder = 1
        object GridPanel2: TGridPanel
          Left = 3
          Top = 15
          Width = 171
          Height = 46
          BevelOuter = bvNone
          ColumnCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              ColumnSpan = 2
              Control = CurrentStorageCB
              Row = 0
            end
            item
              Column = 0
              Control = LastButton
              Row = 1
            end
            item
              Column = 1
              Control = NextButton
              Row = 1
            end>
          RowCollection = <
            item
              SizeStyle = ssAbsolute
              Value = 21.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 22.000000000000000000
            end>
          TabOrder = 0
          object CurrentStorageCB: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 0
            Width = 165
            Height = 21
            Margins.Top = 0
            Margins.Bottom = 0
            Style = csDropDownList
            Color = cl3DLight
            TabOrder = 0
            OnChange = CurrentStorageCBChange
          end
          object LastButton: TButton
            AlignWithMargins = True
            Left = 2
            Top = 24
            Width = 82
            Height = 16
            Margins.Left = 2
            Margins.Right = 1
            Caption = '<'
            Constraints.MaxHeight = 19
            Constraints.MinHeight = 16
            TabOrder = 1
            OnClick = LastButtonClick
          end
          object NextButton: TButton
            AlignWithMargins = True
            Left = 86
            Top = 24
            Width = 82
            Height = 16
            Margins.Left = 1
            Margins.Right = 0
            Caption = '>'
            Constraints.MaxHeight = 19
            Constraints.MinHeight = 16
            TabOrder = 2
            OnClick = NextButtonClick
          end
        end
      end
      object FilterBox: TGroupBox
        AlignWithMargins = True
        Left = 321
        Top = 3
        Width = 528
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
        Visible = False
        object FieldFilterGridPanel: TGridPanel
          Left = 7
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
              Control = Label1
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
          object Label1: TLabel
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
              #1062#1077#1085#1072
              #1047#1072#1090#1088#1072#1090#1099
              #1044#1057#1058)
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
            Constraints.MaxHeight = 21
            Enabled = False
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
      object ChartPickGB: TGroupBox
        AlignWithMargins = True
        Left = 187
        Top = 3
        Width = 128
        Height = 63
        Align = alLeft
        Caption = #1058#1080#1087' '#1076#1080#1072#1075#1088#1072#1084#1084#1099
        Color = clCream
        Constraints.MaxHeight = 63
        Constraints.MinHeight = 63
        ParentBackground = False
        ParentColor = False
        TabOrder = 3
        object GridPanel3: TGridPanel
          Left = 4
          Top = 14
          Width = 120
          Height = 46
          BevelOuter = bvNone
          ColumnCollection = <
            item
              Value = 100.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = ChartKind2RB
              Row = 1
            end
            item
              Column = 0
              Control = ChartKind1RB
              Row = 0
            end>
          RowCollection = <
            item
              SizeStyle = ssAbsolute
              Value = 21.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 22.000000000000000000
            end>
          TabOrder = 0
          object ChartKind2RB: TRadioButton
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 114
            Height = 19
            Margins.Bottom = 0
            Align = alClient
            Caption = #1050#1088#1091#1075#1086#1074#1072#1103
            TabOrder = 0
            OnClick = ChartKind1RBClick
          end
          object ChartKind1RB: TRadioButton
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 114
            Height = 18
            Margins.Bottom = 0
            Align = alClient
            Caption = #1055#1088#1103#1084#1086#1091#1075#1086#1083#1100#1085#1080#1082#1080
            Checked = True
            TabOrder = 1
            TabStop = True
            OnClick = ChartKind1RBClick
          end
        end
      end
    end
    object FictSuppPanel: TPanel
      Left = 0
      Top = 207
      Width = 1234
      Height = 69
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 4
      Visible = False
      object FictSuppBox: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 878
        Height = 63
        Align = alLeft
        BiDiMode = bdRightToLeftNoAlign
        Caption = #1047#1072#1087#1080#1089#1100' '#1092#1080#1082#1090#1080#1074#1085#1086#1081' '#1087#1086#1089#1090#1072#1074#1082#1080
        Color = clCream
        Constraints.MaxHeight = 63
        Constraints.MinHeight = 63
        DoubleBuffered = True
        ParentBackground = False
        ParentBiDiMode = False
        ParentColor = False
        ParentDoubleBuffered = False
        TabOrder = 0
        object EditGridPanel: TGridPanel
          Left = 3
          Top = 12
          Width = 870
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
              Control = Label2
              Row = 0
            end
            item
              Column = 1
              Control = Label3
              Row = 0
            end
            item
              Column = 2
              Control = Label9
              Row = 0
            end
            item
              Column = 3
              Control = Label10
              Row = 0
            end
            item
              Column = 4
              Control = Label11
              Row = 0
            end
            item
              Column = 5
              Control = Label12
              Row = 0
            end
            item
              Column = 5
              Control = FictSuppStorageFillCB
              Row = 1
            end
            item
              Column = 4
              Control = FictSuppStorageOffCB
              Row = 1
            end
            item
              Column = 6
              Control = FictSuppPostButton
              Row = 1
            end
            item
              Column = 7
              Control = FictSuppCancelButton
              Row = 1
            end
            item
              Column = 0
              Control = FictSuppDateDTP
              Row = 1
            end
            item
              Column = 1
              Control = FictSuppNameCB
              Row = 1
            end
            item
              Column = 2
              Control = FictSuppColorCB
              Row = 1
            end
            item
              Column = 3
              Control = FictSuppAmountEdit
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
            Width = 79
            Height = 14
            Margins.Bottom = 0
            Align = alClient
            Caption = #1044#1072#1090#1072
            ExplicitWidth = 25
            ExplicitHeight = 13
          end
          object Label3: TLabel
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
          object Label9: TLabel
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
          object Label10: TLabel
            AlignWithMargins = True
            Left = 376
            Top = 3
            Width = 66
            Height = 14
            Margins.Bottom = 0
            Align = alClient
            Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            OnClick = Label10Click
            ExplicitWidth = 62
            ExplicitHeight = 13
          end
          object Label11: TLabel
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
          object Label12: TLabel
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
          object FictSuppStorageFillCB: TDBLookupComboBox
            AlignWithMargins = True
            Left = 590
            Top = 20
            Width = 136
            Height = 21
            Align = alClient
            DataField = 'id_sl_to'
            DataSource = DataModule2.Product_supply_source
            DropDownRows = 15
            DropDownWidth = 250
            KeyField = 'id_sl'
            ListField = 'name_sl'
            ListSource = DataModule2.Storages_view_source
            TabOrder = 0
            OnCloseUp = FictSuppAmountEditChange
            OnKeyPress = FictSuppStorageFillCBKeyPress
          end
          object FictSuppStorageOffCB: TDBLookupComboBox
            AlignWithMargins = True
            Left = 448
            Top = 20
            Width = 136
            Height = 21
            Align = alClient
            DataField = 'id_sl_from'
            DataSource = DataModule2.Product_supply_source
            DropDownRows = 15
            DropDownWidth = 250
            KeyField = 'id_sl'
            ListField = 'name_sl'
            ListSource = DataModule2.Storages_view_source
            TabOrder = 1
            OnCloseUp = FictSuppAmountEditChange
            OnKeyPress = FictSuppStorageOffCBKeyPress
          end
          object FictSuppPostButton: TButton
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
            OnClick = FictSuppPostButtonClick
          end
          object FictSuppCancelButton: TButton
            AlignWithMargins = True
            Left = 804
            Top = 17
            Width = 66
            Height = 25
            Margins.Top = 0
            Align = alClient
            Caption = #1054#1090#1084#1077#1085#1080#1090#1100
            TabOrder = 3
            OnClick = FictSuppCancelButtonClick
          end
          object FictSuppDateDTP: TDateTimePicker
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 79
            Height = 22
            Align = alClient
            Date = 43817.000000000000000000
            Time = 43817.000000000000000000
            TabOrder = 4
            OnKeyPress = FictSuppDateDTPKeyPress
          end
          object FictSuppNameCB: TDBLookupComboBox
            AlignWithMargins = True
            Left = 88
            Top = 20
            Width = 174
            Height = 21
            Align = alClient
            DataField = 'id_pl'
            DataSource = DataModule2.Product_supply_source
            DropDownRows = 15
            DropDownWidth = 250
            KeyField = 'id_p'
            ListField = 'name_p'
            ListSource = DataModule2.Products_view_source
            TabOrder = 5
            OnCloseUp = FictSuppAmountEditChange
            OnKeyPress = FictSuppNameCBKeyPress
          end
          object FictSuppColorCB: TDBLookupComboBox
            AlignWithMargins = True
            Left = 268
            Top = 20
            Width = 102
            Height = 21
            Align = alClient
            DataField = 'id_pc'
            DataSource = DataModule2.Product_supply_source
            DropDownRows = 15
            DropDownWidth = 250
            KeyField = 'id_pc'
            ListField = 'name_pc'
            ListSource = DataModule2.Product_color_source
            TabOrder = 6
            OnCloseUp = FictSuppAmountEditChange
            OnKeyPress = FictSuppColorCBKeyPress
          end
          object FictSuppAmountEdit: TDBEdit
            AlignWithMargins = True
            Left = 376
            Top = 20
            Width = 66
            Height = 21
            Align = alClient
            Constraints.MaxHeight = 21
            DataField = 'amount_ps'
            DataSource = DataModule2.Product_supply_source
            TabOrder = 7
            OnChange = FictSuppAmountEditChange
            OnKeyPress = FictSuppAmountEditKeyPress
          end
        end
      end
      object Filler2: TGroupBox
        AlignWithMargins = True
        Left = 887
        Top = 3
        Width = 344
        Height = 63
        Align = alClient
        Constraints.MaxHeight = 63
        Constraints.MinHeight = 63
        TabOrder = 1
      end
    end
    object FictSalePanel: TPanel
      Left = 0
      Top = 138
      Width = 1234
      Height = 69
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 5
      Visible = False
      object Filler3: TGroupBox
        AlignWithMargins = True
        Left = 887
        Top = 3
        Width = 344
        Height = 63
        Align = alClient
        Constraints.MaxHeight = 63
        Constraints.MinHeight = 63
        TabOrder = 0
      end
      object FictSaleBox: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 878
        Height = 63
        Align = alLeft
        BiDiMode = bdRightToLeftNoAlign
        Caption = #1047#1072#1087#1080#1089#1100' '#1092#1080#1082#1090#1080#1074#1085#1086#1081' '#1087#1088#1086#1076#1072#1078#1080
        Color = clCream
        Constraints.MaxHeight = 63
        Constraints.MinHeight = 63
        Constraints.MinWidth = 878
        DoubleBuffered = True
        ParentBackground = False
        ParentBiDiMode = False
        ParentColor = False
        ParentDoubleBuffered = False
        TabOrder = 1
        object GridPanel1: TGridPanel
          Left = 3
          Top = 13
          Width = 872
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
              Control = Label13
              Row = 0
            end
            item
              Column = 1
              Control = Label14
              Row = 0
            end
            item
              Column = 2
              Control = Label15
              Row = 0
            end
            item
              Column = 3
              Control = Label16
              Row = 0
            end
            item
              Column = 4
              Control = Label17
              Row = 0
            end
            item
              Column = 5
              Control = Label18
              Row = 0
            end
            item
              Column = 0
              Control = FictSaleDateDTP
              Row = 1
            end
            item
              Column = 1
              Control = FictSaleNameCB
              Row = 1
            end
            item
              Column = 2
              Control = FictSaleColorCB
              Row = 1
            end
            item
              Column = 3
              Control = FictSaleAmountEdit
              Row = 1
            end
            item
              Column = 4
              Control = FictSaleCustomerCB
              Row = 1
            end
            item
              Column = 5
              Control = FictSaleStorageOffCB
              Row = 1
            end
            item
              Column = 6
              Control = FictSalePostButton
              Row = 1
            end
            item
              Column = 7
              Control = FictSaleCancelButton
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
          object Label13: TLabel
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
          object Label14: TLabel
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
          object Label15: TLabel
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
          object Label16: TLabel
            AlignWithMargins = True
            Left = 376
            Top = 3
            Width = 66
            Height = 14
            Margins.Bottom = 0
            Align = alClient
            Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            OnClick = Label16Click
            ExplicitWidth = 62
            ExplicitHeight = 13
          end
          object Label17: TLabel
            AlignWithMargins = True
            Left = 448
            Top = 3
            Width = 136
            Height = 14
            Margins.Bottom = 0
            Align = alClient
            Caption = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100
            ExplicitWidth = 62
            ExplicitHeight = 13
          end
          object Label18: TLabel
            AlignWithMargins = True
            Left = 590
            Top = 3
            Width = 136
            Height = 14
            Margins.Bottom = 0
            Align = alClient
            Caption = #1057#1082#1083#1072#1076' '#1089#1087#1080#1089#1072#1085#1080#1103
            ExplicitWidth = 84
            ExplicitHeight = 13
          end
          object FictSaleDateDTP: TDateTimePicker
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 79
            Height = 22
            Align = alClient
            Constraints.MaxHeight = 22
            Date = 43817.000000000000000000
            Time = 43817.000000000000000000
            TabOrder = 0
            OnKeyPress = FictSaleDateDTPKeyPress
          end
          object FictSaleNameCB: TDBLookupComboBox
            AlignWithMargins = True
            Left = 88
            Top = 20
            Width = 174
            Height = 21
            Align = alClient
            DataField = 'id_pl'
            DataSource = DataModule2.Sales_source
            DropDownRows = 15
            DropDownWidth = 250
            KeyField = 'id_p'
            ListField = 'name_p'
            ListSource = DataModule2.Products_source
            TabOrder = 1
            OnCloseUp = FictSaleAmountEditChange
            OnKeyPress = FictSaleNameCBKeyPress
          end
          object FictSaleColorCB: TDBLookupComboBox
            AlignWithMargins = True
            Left = 268
            Top = 20
            Width = 102
            Height = 21
            Align = alClient
            DataField = 'id_pc'
            DataSource = DataModule2.Sales_source
            DropDownRows = 15
            DropDownWidth = 250
            KeyField = 'id_pc'
            ListField = 'name_pc'
            ListSource = DataModule2.Product_color_source
            TabOrder = 2
            OnCloseUp = FictSaleAmountEditChange
            OnKeyPress = FictSaleColorCBKeyPress
          end
          object FictSaleAmountEdit: TDBEdit
            AlignWithMargins = True
            Left = 376
            Top = 20
            Width = 66
            Height = 21
            Align = alClient
            Constraints.MaxHeight = 21
            DataField = 'amount_s'
            DataSource = DataModule2.Sales_source
            TabOrder = 3
            OnChange = FictSaleAmountEditChange
            OnKeyPress = FictSaleAmountEditKeyPress
          end
          object FictSaleCustomerCB: TDBLookupComboBox
            AlignWithMargins = True
            Left = 448
            Top = 20
            Width = 136
            Height = 21
            Align = alClient
            DataField = 'id_cl'
            DataSource = DataModule2.Sales_source
            DropDownRows = 15
            DropDownWidth = 250
            KeyField = 'id_c'
            ListField = 'name_c'
            ListSource = DataModule2.Customers_source
            TabOrder = 4
            OnCloseUp = FictSaleAmountEditChange
            OnKeyPress = FictSaleCustomerCBKeyPress
          end
          object FictSaleStorageOffCB: TDBLookupComboBox
            AlignWithMargins = True
            Left = 590
            Top = 20
            Width = 136
            Height = 21
            Align = alClient
            DataField = 'id_sl_from'
            DataSource = DataModule2.Sales_source
            DropDownRows = 15
            DropDownWidth = 250
            KeyField = 'id_sl'
            ListField = 'name_sl'
            ListSource = DataModule2.Storages_view_source
            TabOrder = 5
            OnCloseUp = FictSaleAmountEditChange
            OnKeyPress = FictSaleStorageOffCBKeyPress
          end
          object FictSalePostButton: TButton
            AlignWithMargins = True
            Left = 732
            Top = 17
            Width = 66
            Height = 25
            Margins.Top = 0
            Align = alClient
            Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100
            Constraints.MaxHeight = 25
            Enabled = False
            TabOrder = 6
            OnClick = FictSalePostButtonClick
          end
          object FictSaleCancelButton: TButton
            AlignWithMargins = True
            Left = 804
            Top = 17
            Width = 66
            Height = 25
            Margins.Top = 0
            Align = alClient
            Caption = #1054#1090#1084#1077#1085#1080#1090#1100
            Constraints.MaxHeight = 25
            TabOrder = 7
            OnClick = FictSaleCancelButtonClick
          end
        end
      end
    end
    object StoragePieChart: TDBChart
      AlignWithMargins = True
      Left = 824
      Top = 279
      Width = 407
      Height = 258
      Cursor = crArrow
      AllowPanning = pmVertical
      Border.Color = 7895160
      Border.EndStyle = esFlat
      Border.Visible = True
      LeftWall.Color = 14671839
      MarginBottom = 2
      MarginLeft = 1
      MarginTop = 3
      Title.Font.Charset = RUSSIAN_CHARSET
      Title.Font.Color = clBlack
      Title.Font.Height = -18
      Title.Font.Name = 'Segoe UI'
      Title.Margins.Top = 16
      Title.Text.Strings = (
        #1057#1082#1083#1072#1076)
      Title.Visible = False
      Title.VertMargin = 4
      LeftAxis.Axis.Fill.Gradient.StartColor = clRed
      LeftAxis.Grid.Visible = False
      LeftAxis.LabelsFormat.Font.Name = 'Segoe UI'
      LeftAxis.LabelsFormat.Margins.Top = 0
      LeftAxis.LabelsFormat.Margins.Bottom = 3
      LeftAxis.LabelStyle = talText
      LeftAxis.Title.Font.Height = -1
      Legend.Visible = False
      Panning.InsideBounds = True
      RightAxis.LabelsFormat.Font.Height = -1
      View3DOptions.Elevation = 315
      View3DOptions.FontZoom = 262
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 0
      View3DOptions.Rotation = 360
      View3DOptions.ZoomText = ztNo
      Zoom.Allow = False
      Align = alClient
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWindow
      TabOrder = 6
      Visible = False
      OnClick = StoragePieChartClick
      OnMouseMove = StoragePieChartMouseMove
      ExplicitLeft = 520
      ExplicitTop = 133
      DefaultCanvas = 'TGDIPlusCanvas'
      PrintMargins = (
        15
        18
        15
        18)
      ColorPaletteIndex = -2
      ColorPalette = (
        15332856
        14086131
        12772588
        11131365
        9555934
        7980246
        6339023
        4763335
        3710903
        3181215
        2716806
        2187118
        1722966
        1259069
        729125)
      object Series2: TPieSeries
        Marks.Frame.Visible = False
        Marks.Shadow.Visible = False
        Marks.Style = smsLabelPercent
        Marks.Arrow.Color = clBlack
        Marks.BackColor = clWhite
        Marks.Callout.Arrow.Color = clBlack
        Marks.Symbol.Shadow.Visible = False
        Marks.Color = clWhite
        ValueFormat = '##0.## %'
        XLabelsSource = 'name_p'
        XValues.Order = loAscending
        YValues.Name = 'Pie'
        YValues.Order = loDescending
        YValues.ValueSource = 'amount'
        Frame.InnerBrush.BackColor = clRed
        Frame.InnerBrush.Gradient.EndColor = clGray
        Frame.InnerBrush.Gradient.MidColor = clWhite
        Frame.InnerBrush.Gradient.StartColor = 4210752
        Frame.InnerBrush.Gradient.Visible = True
        Frame.MiddleBrush.BackColor = clYellow
        Frame.MiddleBrush.Gradient.EndColor = 8553090
        Frame.MiddleBrush.Gradient.MidColor = clWhite
        Frame.MiddleBrush.Gradient.StartColor = clGray
        Frame.MiddleBrush.Gradient.Visible = True
        Frame.OuterBrush.BackColor = clGreen
        Frame.OuterBrush.Gradient.EndColor = 4210752
        Frame.OuterBrush.Gradient.MidColor = clWhite
        Frame.OuterBrush.Gradient.StartColor = clSilver
        Frame.OuterBrush.Gradient.Visible = True
        Frame.Width = 4
        OtherSlice.Legend.Visible = False
        OtherSlice.Style = poBelowPercent
        OtherSlice.Text = #1054#1089#1090#1072#1083#1100#1085#1086#1077' (<1%)'
        OtherSlice.Value = 1.000000000000000000
        RotationAngle = 45
        Transparency = 14
      end
    end
  end
  object ToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 1234
    Height = 19
    AutoSize = True
    ButtonHeight = 19
    ButtonWidth = 120
    Caption = 'ToolBar'
    DoubleBuffered = True
    EdgeInner = esNone
    EdgeOuter = esNone
    List = True
    Menu = Menu
    ParentDoubleBuffered = False
    ShowCaptions = True
    TabOrder = 1
  end
  object Menu: TMainMenu
    Left = 736
    Top = 32
    object N1: TMenuItem
      Caption = #1052#1072#1075#1072#1079#1080#1085' > '#1057#1082#1083#1072#1076' |'
      Enabled = False
      GroupIndex = 1
    end
    object FictSaleButton: TMenuItem
      Caption = #1060#1080#1082#1090#1080#1074#1085#1072#1103' '#1087#1088#1086#1076#1072#1078#1072
      GroupIndex = 1
      OnClick = FictSaleButtonClick
    end
    object FictSuppButton: TMenuItem
      Caption = #1060#1080#1082#1090#1080#1074#1085#1072#1103' '#1087#1086#1089#1090#1072#1074#1082#1072
      GroupIndex = 1
      OnClick = FictSuppButtonClick
    end
    object FilterButton: TMenuItem
      Caption = #1060#1080#1083#1100#1090#1088#1072#1094#1080#1103
      GroupIndex = 1
      ImageIndex = 0
      OnClick = FilterButtonClick
    end
    object SearchMenuButton: TMenuItem
      Caption = #1055#1086#1080#1089#1082
      GroupIndex = 1
      OnClick = SearchMenuButtonClick
    end
    object StatButton: TMenuItem
      Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
      GroupIndex = 1
      OnClick = StatButtonClick
    end
  end
  object StoragePopupMenu: TPopupMenu
    Left = 800
    Top = 35
    object SellButton: TMenuItem
      Caption = #1055#1088#1086#1076#1072#1090#1100
      OnClick = SellButtonClick
    end
  end
end
