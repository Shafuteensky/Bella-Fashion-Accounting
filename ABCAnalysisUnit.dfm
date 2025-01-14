object ABCAnalysisForm: TABCAnalysisForm
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'ABCAnalysisForm'
  ClientHeight = 799
  ClientWidth = 1232
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ABCAnalysisMainPanel: TPanel
    Left = 0
    Top = 0
    Width = 1232
    Height = 799
    Align = alClient
    BevelOuter = bvNone
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    object ChartsPanel: TScrollBox
      AlignWithMargins = True
      Left = 832
      Top = 24
      Width = 397
      Height = 772
      Margins.Left = 0
      HorzScrollBar.Smooth = True
      HorzScrollBar.Tracking = True
      VertScrollBar.Smooth = True
      VertScrollBar.Tracking = True
      Align = alClient
      BevelInner = bvNone
      BevelKind = bkTile
      BorderStyle = bsNone
      TabOrder = 0
      OnMouseWheel = ChartsPanelMouseWheel
      object ABCPieChart1: TDBChart
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 389
        Height = 286
        LeftWall.Color = 14671839
        MarginBottom = 0
        MarginLeft = 0
        MarginRight = 0
        MarginTop = 3
        MarginUnits = muPixels
        Title.Color = clBlack
        Title.Font.Color = clBlack
        Title.Font.Name = 'Segoe UI'
        Title.Margins.Left = 0
        Title.Margins.Top = 0
        Title.Margins.Right = 0
        Title.Margins.Bottom = 0
        Title.Margins.Units = maPixels
        Title.Text.Strings = (
          #1044#1086#1083#1080' '#1086#1090' '#1086#1073#1097#1077#1081' '#1044#1057#1058)
        Legend.Alignment = laBottom
        Legend.LegendStyle = lsSeries
        Legend.Title.Visible = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        Align = alTop
        Color = clWhite
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        PrintMargins = (
          15
          21
          15
          21)
        ColorPaletteIndex = 13
        object Series1: TPieSeries
          Legend.Visible = False
          Marks.Font.Name = 'Segoe UI'
          Marks.Frame.Visible = False
          Marks.Shadow.Visible = False
          Marks.Style = smsLabel
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          ShowInLegend = False
          XValues.Order = loAscending
          YValues.Name = 'Pie'
          YValues.Order = loNone
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
          RotationAngle = 45
          Transparency = 16
        end
      end
      object ABCPieChart2: TDBChart
        AlignWithMargins = True
        Left = 3
        Top = 295
        Width = 389
        Height = 286
        LeftWall.Color = 14671839
        MarginBottom = 0
        MarginLeft = 0
        MarginRight = 0
        MarginTop = 3
        MarginUnits = muPixels
        Title.Color = clBlack
        Title.Font.Color = clBlack
        Title.Font.Name = 'Segoe UI'
        Title.Margins.Left = 0
        Title.Margins.Top = 0
        Title.Margins.Right = 0
        Title.Margins.Bottom = 0
        Title.Margins.Units = maPixels
        Title.Text.Strings = (
          #1044#1086#1083#1080' '#1086#1090' '#1086#1073#1097#1077#1075#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072)
        Legend.Alignment = laBottom
        Legend.LegendStyle = lsSeries
        Legend.Title.Visible = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        Align = alTop
        Color = clWhite
        TabOrder = 1
        DefaultCanvas = 'TGDIPlusCanvas'
        PrintMargins = (
          15
          21
          15
          21)
        ColorPaletteIndex = 13
        object PieSeries1: TPieSeries
          Legend.Visible = False
          Marks.Font.Name = 'Segoe UI'
          Marks.Frame.Visible = False
          Marks.Shadow.Visible = False
          Marks.Style = smsLabel
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          ShowInLegend = False
          XValues.Order = loAscending
          YValues.Name = 'Pie'
          YValues.Order = loNone
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
          RotationAngle = 45
          Transparency = 16
        end
      end
      object Filler2: TGroupBox
        AlignWithMargins = True
        Left = 6
        Top = 587
        Width = 383
        Height = 177
        Margins.Left = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alClient
        TabOrder = 2
      end
    end
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 1232
      Height = 21
      AutoSize = True
      ButtonHeight = 21
      ButtonWidth = 150
      Caption = 'ToolBar'
      EdgeInner = esNone
      EdgeOuter = esNone
      Menu = Menu
      ShowCaptions = True
      TabOrder = 1
    end
    object Panel2: TPanel
      Left = 0
      Top = 21
      Width = 832
      Height = 778
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 0
        Width = 826
        Height = 92
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Report1PeriodBox: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 179
          Height = 86
          Align = alLeft
          Caption = #1055#1077#1088#1080#1086#1076
          Color = clCream
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          object GridPanel3: TGridPanel
            Left = 5
            Top = 18
            Width = 168
            Height = 61
            BevelOuter = bvNone
            ColumnCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 85.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 85.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = DateFilterAllTimeRB
                Row = 0
              end
              item
                Column = 0
                Control = DateFilterIntervalRB
                Row = 1
              end
              item
                Column = 0
                Control = DateFilterDTP1
                Row = 2
              end
              item
                Column = 1
                Control = DateFilterDTP2
                Row = 2
              end>
            RowCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 16.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 20.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 24.000000000000000000
              end>
            TabOrder = 0
            object DateFilterAllTimeRB: TRadioButton
              AlignWithMargins = True
              Left = 3
              Top = 0
              Width = 79
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alClient
              Caption = #1042#1089#1077' '#1074#1088#1077#1084#1103
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = DateFilterAllTimeRBClick
            end
            object DateFilterIntervalRB: TRadioButton
              AlignWithMargins = True
              Left = 3
              Top = 19
              Width = 79
              Height = 17
              Margins.Bottom = 0
              Align = alClient
              Caption = #1048#1085#1090#1077#1088#1074#1072#1083':'
              TabOrder = 1
              OnClick = DateFilterAllTimeRBClick
            end
            object DateFilterDTP1: TDateTimePicker
              AlignWithMargins = True
              Left = 0
              Top = 39
              Width = 82
              Height = 21
              Margins.Left = 0
              Margins.Bottom = 0
              Align = alClient
              Date = 43820.000000000000000000
              Time = 43820.000000000000000000
              Enabled = False
              TabOrder = 2
              OnChange = DateFilterAllTimeRBClick
            end
            object DateFilterDTP2: TDateTimePicker
              AlignWithMargins = True
              Left = 85
              Top = 39
              Width = 82
              Height = 21
              Margins.Left = 0
              Margins.Bottom = 0
              Align = alClient
              Date = 43823.000000000000000000
              Time = 43823.000000000000000000
              Enabled = False
              TabOrder = 3
              OnChange = DateFilterAllTimeRBClick
            end
          end
        end
        object Filler1: TGroupBox
          AlignWithMargins = True
          Left = 651
          Top = 3
          Width = 172
          Height = 86
          Align = alClient
          BiDiMode = bdRightToLeftNoAlign
          Color = clBtnFace
          ParentBackground = False
          ParentBiDiMode = False
          ParentColor = False
          TabOrder = 1
        end
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 188
          Top = 3
          Width = 85
          Height = 86
          Align = alLeft
          Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072
          Color = clCream
          ParentBackground = False
          ParentColor = False
          TabOrder = 2
          object Label1: TLabel
            AlignWithMargins = True
            Left = 6
            Top = 18
            Width = 73
            Height = 39
            Hint = 
              #1055#1088#1086#1076#1091#1082#1090#1099' '#1089' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1099#1084' '#1079#1085#1072#1095#1077#1085#1080#1077#1084' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072' '#1087#1088#1086#1076#1072#1078' ('#1050#1055') '#1085#1077' '#1073#1091#1076 +
              #1091#1090' '#1091#1095#1090#1077#1085#1099' '#1087#1088#1080' '#1072#1085#1072#1083#1080#1079#1077' '#1080' '#1073#1091#1076#1091#1090' '#1087#1086#1084#1077#1095#1077#1085#1099' '#1082#1072#1082' '#1090#1086#1074#1072#1088#1099' '#1082#1072#1090#1077#1075#1086#1088#1080#1080' '#39'N'#39'.'
            Margins.Left = 4
            Margins.Right = 4
            Margins.Bottom = 0
            Align = alClient
            Caption = #1043#1088#1072#1085#1080#1094#1072' '#1091#1095#1077#1090#1072' '#1087#1086' '#1050#1055':'
            ParentShowHint = False
            ShowHint = True
            WordWrap = True
            ExplicitWidth = 66
            ExplicitHeight = 26
          end
          object SetNSEdit: TEdit
            AlignWithMargins = True
            Left = 6
            Top = 57
            Width = 73
            Height = 21
            Margins.Left = 4
            Margins.Top = 0
            Margins.Right = 4
            Margins.Bottom = 6
            Align = alBottom
            Alignment = taRightJustify
            Constraints.MaxHeight = 21
            NumbersOnly = True
            TabOrder = 0
            TextHint = '1'
            OnChange = SetNSEditChange
          end
        end
        object GroupBox2: TGroupBox
          AlignWithMargins = True
          Left = 279
          Top = 3
          Width = 366
          Height = 86
          Align = alLeft
          Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
          Color = clCream
          ParentBackground = False
          ParentColor = False
          TabOrder = 3
          object GridPanel4: TGridPanel
            Left = 5
            Top = 14
            Width = 357
            Height = 65
            BevelOuter = bvNone
            ColumnCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 15.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 350.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Label5
                Row = 0
              end
              item
                Column = 1
                Control = Label4
                Row = 0
              end
              item
                Column = 0
                Control = Label7
                Row = 1
              end
              item
                Column = 1
                Control = Label3
                Row = 1
              end
              item
                Column = 0
                Control = Label9
                Row = 2
              end
              item
                Column = 1
                Control = Label2
                Row = 2
              end
              item
                Column = 1
                Control = Label8
                Row = 3
              end
              item
                Column = 0
                Control = Label6
                Row = 3
              end>
            RowCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 17.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 17.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 17.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 17.000000000000000000
              end>
            TabOrder = 0
            DesignSize = (
              357
              65)
            object Label5: TLabel
              Left = 3
              Top = 2
              Width = 8
              Height = 13
              Anchors = []
              Caption = 'A'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 1033457
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 6
              ExplicitTop = 6
            end
            object Label4: TLabel
              AlignWithMargins = True
              Left = 19
              Top = 0
              Width = 342
              Height = 15
              Margins.Left = 4
              Margins.Top = 0
              Margins.Right = 4
              Margins.Bottom = 2
              Align = alClient
              Caption = #8212' '#1085#1072#1080#1073#1086#1083#1077#1077' '#1094#1077#1085#1085#1099#1077', 20 % '#8212' '#1072#1089#1089#1086#1088#1090#1080#1084#1077#1085#1090#1072'; 80 % '#8212' '#1087#1088#1086#1076#1072#1078'.'
              ParentShowHint = False
              ShowHint = True
              WordWrap = True
              ExplicitWidth = 323
              ExplicitHeight = 13
            end
            object Label7: TLabel
              Left = 4
              Top = 19
              Width = 7
              Height = 13
              Anchors = []
              Caption = 'B'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 11072310
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 6
              ExplicitTop = 23
            end
            object Label3: TLabel
              AlignWithMargins = True
              Left = 19
              Top = 17
              Width = 342
              Height = 15
              Margins.Left = 4
              Margins.Top = 0
              Margins.Right = 4
              Margins.Bottom = 2
              Align = alClient
              Caption = #8212' '#1087#1088#1086#1084#1077#1078#1091#1090#1086#1095#1085#1099#1077', 30 % '#8212' '#1072#1089#1089#1086#1088#1090#1080#1084#1077#1085#1090#1072'; 15 % '#8212' '#1087#1088#1086#1076#1072#1078'.'
              ParentShowHint = False
              ShowHint = True
              WordWrap = True
              ExplicitWidth = 316
              ExplicitHeight = 13
            end
            object Label9: TLabel
              Left = 4
              Top = 36
              Width = 7
              Height = 13
              Anchors = []
              Caption = 'C'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 16629892
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 6
              ExplicitTop = 39
            end
            object Label2: TLabel
              AlignWithMargins = True
              Left = 19
              Top = 34
              Width = 342
              Height = 15
              Margins.Left = 4
              Margins.Top = 0
              Margins.Right = 4
              Margins.Bottom = 2
              Align = alClient
              Caption = #8212' '#1085#1072#1080#1084#1077#1085#1077#1077' '#1094#1077#1085#1085#1099#1077', 50 % '#8212' '#1072#1089#1089#1086#1088#1090#1080#1084#1077#1085#1090#1072'; 5 % '#8212' '#1087#1088#1086#1076#1072#1078'.'
              ParentShowHint = False
              ShowHint = True
              WordWrap = True
              ExplicitWidth = 318
              ExplicitHeight = 13
            end
            object Label8: TLabel
              AlignWithMargins = True
              Left = 19
              Top = 51
              Width = 342
              Height = 15
              Margins.Left = 4
              Margins.Top = 0
              Margins.Right = 4
              Margins.Bottom = 2
              Align = alClient
              Caption = #8212' '#1085#1086#1074#1080#1085#1082#1080', '#1087#1086' '#1082#1086#1090#1086#1088#1099#1084' '#1087#1086#1082#1072' '#1085#1077' '#1089#1092#1086#1088#1084#1080#1088#1086#1074#1072#1083#1072#1089#1100' '#1089#1090#1072#1090#1080#1089#1090#1080#1082#1072'.'
              ParentShowHint = False
              ShowHint = True
              ExplicitWidth = 335
              ExplicitHeight = 13
            end
            object Label6: TLabel
              Left = 3
              Top = 53
              Width = 9
              Height = 13
              Anchors = []
              Caption = 'N'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 16711808
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 4
            end
          end
        end
      end
      object ABCGrid: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 95
        Width = 826
        Height = 680
        Align = alClient
        DataSource = DataModule2.Sales_sum_source
        DrawingStyle = gdsGradient
        GradientEndColor = 1033457
        GradientStartColor = 1033457
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = ABCGridDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'id_s'
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
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'amount'
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Width = 70
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
          end
          item
            Expanded = False
            FieldName = 'number_of_sales'
            Title.Caption = #1050#1055
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'percent'
            Title.Caption = #1044#1086#1083#1103
            Width = 50
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'category'
            Title.Caption = #1043#1088#1091#1087#1087#1072
            Width = 60
            Visible = True
          end>
      end
    end
  end
  object Menu: TMainMenu
    Left = 601
    Top = 377
    object N4: TMenuItem
      Caption = #1054#1090#1095#1077#1090#1099' > '#1040#1085#1072#1083#1080#1079' '#1087#1088#1086#1076#1072#1078' |'
      Enabled = False
    end
    object ResetButton: TMenuItem
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100
    end
    object SaveButton: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '
      Visible = False
    end
    object PrintButton: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      Visible = False
    end
  end
end
