object FinancialReportForm: TFinancialReportForm
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'FinancialReportForm'
  ClientHeight = 1007
  ClientWidth = 1400
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
  object FinancialReportMainPanel: TPanel
    Left = 0
    Top = 0
    Width = 1400
    Height = 1007
    Align = alClient
    BevelOuter = bvNone
    Caption = 'FinancialReportMainPanel'
    TabOrder = 0
    object ChartsPanel: TScrollBox
      AlignWithMargins = True
      Left = 856
      Top = 21
      Width = 538
      Height = 980
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 6
      HorzScrollBar.Smooth = True
      HorzScrollBar.Tracking = True
      VertScrollBar.Position = 334
      VertScrollBar.Smooth = True
      VertScrollBar.Tracking = True
      Align = alClient
      BevelInner = bvNone
      BevelKind = bkTile
      BorderStyle = bsNone
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnMouseWheel = ChartsPanelMouseWheel
      object FinancialReport1Chart: TDBChart
        AlignWithMargins = True
        Left = 6
        Top = -328
        Width = 503
        Height = 397
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        AllowPanning = pmNone
        Border.Visible = True
        Foot.Font.Name = 'Segoe UI'
        LeftWall.Color = 14671839
        MarginBottom = 9
        MarginRight = 9
        MarginTop = 6
        MarginUnits = muPixels
        SubFoot.Font.Name = 'Segoe UI'
        SubTitle.Font.Name = 'Segoe UI'
        Title.Font.Color = clBlack
        Title.Font.Name = 'Segoe UI'
        Title.Text.Strings = (
          #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086)
        BottomAxis.Grid.Visible = False
        BottomAxis.LabelsFormat.Font.Name = 'Segoe UI'
        BottomAxis.Ticks.Visible = False
        BottomAxis.Title.Font.Name = 'Segoe UI'
        BottomAxis.Visible = False
        DepthAxis.LabelsFormat.Font.Name = 'Segoe UI'
        DepthAxis.Title.Font.Name = 'Segoe UI'
        DepthTopAxis.LabelsFormat.Font.Name = 'Segoe UI'
        DepthTopAxis.Title.Font.Name = 'Segoe UI'
        LeftAxis.LabelsFormat.Font.Name = 'Segoe UI'
        LeftAxis.Title.Font.Name = 'Segoe UI'
        Legend.Alignment = laBottom
        Legend.Font.Name = 'Segoe UI'
        Legend.LegendStyle = lsSeries
        Legend.Title.Font.Name = 'Segoe UI'
        Legend.Title.Text.Strings = (
          #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086)
        RightAxis.LabelsFormat.Font.Name = 'Segoe UI'
        RightAxis.Title.Font.Name = 'Segoe UI'
        TopAxis.LabelsFormat.Font.Name = 'Segoe UI'
        TopAxis.Title.Font.Name = 'Segoe UI'
        Zoom.Allow = False
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        PrintMargins = (
          15
          21
          15
          21)
        ColorPaletteIndex = 13
        object Series1: TBarSeries
          Legend.Visible = False
          Marks.Font.Name = 'Segoe UI'
          Marks.Transparent = True
          Marks.Margins.Left = 24
          Marks.Margins.Right = 100
          Marks.Margins.Bottom = 0
          Marks.Margins.Units = maPixels
          Marks.Style = smsValue
          Marks.Angle = 46
          Marks.Symbol.Frame.Visible = False
          Marks.Symbol.Pen.Visible = False
          Marks.TextAlign = taLeftJustify
          ShowInLegend = False
          Transparency = 15
          Shadow.Visible = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
          Data = {0000000000}
          Detail = {0000000000}
        end
        object Series2: TBarSeries
          Legend.Visible = False
          Marks.Font.Name = 'Segoe UI'
          Marks.Transparent = True
          Marks.Margins.Left = 100
          Marks.Margins.Bottom = 2
          Marks.Margins.Units = maPixels
          Marks.Style = smsValue
          Marks.Angle = 46
          Marks.Arrow.Visible = False
          Marks.Callout.Arrow.Visible = False
          ShowInLegend = False
          Transparency = 15
          Shadow.Visible = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
          Data = {0000000000}
        end
        object Series5: TBarSeries
          Legend.Visible = False
          Marks.Font.Name = 'Segoe UI'
          Marks.Transparent = True
          Marks.Margins.Bottom = 0
          Marks.Style = smsValue
          Marks.Angle = 46
          ShowInLegend = False
          Title = 'Series3'
          Transparency = 20
          Shadow.Visible = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
          Data = {0000000000}
        end
      end
      object Filler2: TGroupBox
        AlignWithMargins = True
        Left = 6
        Top = 1514
        Width = 503
        Height = 0
        Margins.Left = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alClient
        TabOrder = 1
      end
      object FinancialReport2Chart: TDBChart
        AlignWithMargins = True
        Left = 6
        Top = 75
        Width = 503
        Height = 397
        Margins.Left = 6
        Margins.Right = 6
        AllowPanning = pmNone
        Border.Visible = True
        Foot.Font.Name = 'Segoe UI'
        LeftWall.Color = 14671839
        MarginRight = 9
        MarginTop = 6
        MarginUnits = muPixels
        SubFoot.Font.Name = 'Segoe UI'
        SubTitle.Font.Name = 'Segoe UI'
        Title.Font.Color = clBlack
        Title.Font.Name = 'Segoe UI'
        Title.Text.Strings = (
          #1060#1080#1085#1072#1085#1089#1099)
        BottomAxis.Grid.Visible = False
        BottomAxis.LabelsFormat.Font.Name = 'Segoe UI'
        BottomAxis.Ticks.Visible = False
        BottomAxis.Title.Font.Name = 'Segoe UI'
        DepthAxis.LabelsFormat.Font.Name = 'Segoe UI'
        DepthAxis.Title.Font.Name = 'Segoe UI'
        DepthTopAxis.LabelsFormat.Font.Name = 'Segoe UI'
        DepthTopAxis.Title.Font.Name = 'Segoe UI'
        LeftAxis.LabelsFormat.Font.Name = 'Segoe UI'
        LeftAxis.Title.Font.Name = 'Segoe UI'
        Legend.Alignment = laBottom
        Legend.Font.Name = 'Segoe UI'
        Legend.LegendStyle = lsSeries
        Legend.Title.Font.Name = 'Segoe UI'
        RightAxis.LabelsFormat.Font.Name = 'Segoe UI'
        RightAxis.Title.Font.Name = 'Segoe UI'
        TopAxis.LabelsFormat.Font.Name = 'Segoe UI'
        TopAxis.Title.Font.Name = 'Segoe UI'
        Zoom.Allow = False
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 2
        DefaultCanvas = 'TGDIPlusCanvas'
        PrintMargins = (
          15
          21
          15
          21)
        ColorPaletteIndex = 13
        object BarSeries1: TBarSeries
          Legend.Visible = False
          Marks.Font.Name = 'Segoe UI'
          Marks.Transparent = True
          Marks.Style = smsValue
          Marks.Angle = 46
          ShowInLegend = False
          Transparency = 21
          Shadow.Visible = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
          Data = {0000000000}
          Detail = {0000000000}
        end
        object BarSeries2: TBarSeries
          Legend.Visible = False
          Marks.Font.Name = 'Segoe UI'
          Marks.Transparent = True
          Marks.Style = smsValue
          Marks.Angle = 46
          ShowInLegend = False
          Transparency = 19
          Shadow.Visible = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
          Data = {0000000000}
        end
        object BarSeries3: TBarSeries
          Legend.Visible = False
          Marks.Font.Name = 'Segoe UI'
          Marks.Transparent = True
          Marks.Style = smsValue
          Marks.Angle = 46
          ShowInLegend = False
          Title = 'Series3'
          Transparency = 19
          Shadow.Visible = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
          Data = {0000000000}
        end
      end
      object FinancialReportPie1Chart: TDBChart
        AlignWithMargins = True
        Left = 6
        Top = 481
        Width = 503
        Height = 501
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Border.Visible = True
        Foot.Font.Name = 'Segoe UI'
        LeftWall.Color = 14671839
        LeftWall.Visible = False
        MarginBottom = 0
        MarginLeft = 0
        MarginRight = 0
        MarginTop = 6
        MarginUnits = muPixels
        SubFoot.Font.Name = 'Segoe UI'
        SubTitle.Font.Name = 'Segoe UI'
        Title.Font.Color = clBlack
        Title.Font.Name = 'Segoe UI'
        Title.Margins.Left = 0
        Title.Margins.Bottom = 0
        Title.Text.Strings = (
          #1057#1086#1089#1090#1072#1074' ('#1086#1090#1095#1077#1090' '#8470'1)')
        BottomAxis.Grid.Visible = False
        BottomAxis.LabelsFormat.Font.Name = 'Segoe UI'
        BottomAxis.Ticks.Visible = False
        BottomAxis.Title.Font.Name = 'Segoe UI'
        DepthAxis.LabelsFormat.Font.Name = 'Segoe UI'
        DepthAxis.Title.Font.Name = 'Segoe UI'
        DepthTopAxis.LabelsFormat.Font.Name = 'Segoe UI'
        DepthTopAxis.Title.Font.Name = 'Segoe UI'
        LeftAxis.LabelsFormat.Font.Name = 'Segoe UI'
        LeftAxis.Title.Font.Name = 'Segoe UI'
        Legend.Alignment = laBottom
        Legend.Font.Name = 'Segoe UI'
        Legend.LegendStyle = lsValues
        Legend.Title.Font.Name = 'Segoe UI'
        Legend.Visible = False
        RightAxis.LabelsFormat.Font.Name = 'Segoe UI'
        RightAxis.Title.Font.Name = 'Segoe UI'
        TopAxis.LabelsFormat.Font.Name = 'Segoe UI'
        TopAxis.Title.Font.Name = 'Segoe UI'
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        Zoom.Allow = False
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 3
        DefaultCanvas = 'TGDIPlusCanvas'
        PrintMargins = (
          15
          21
          15
          21)
        ColorPaletteIndex = -2
        ColorPalette = (
          16314857
          15852241
          15323576
          14860960
          14332295
          13869679
          13341015
          12878398
          11432245
          9789997
          8212774
          6570526
          4993303
          3416591
          1774088)
        object Series3: TPieSeries
          Legend.Visible = False
          Marks.Emboss.Color = clWhite
          Marks.Emboss.HorizSize = 21
          Marks.Emboss.Transparency = 0
          Marks.Emboss.VertSize = 21
          Marks.Font.Name = 'Segoe UI'
          Marks.Frame.Width = 0
          Marks.Frame.Visible = False
          Marks.Shadow.Color = clWhite
          Marks.Shadow.HorizSize = 30
          Marks.Shadow.Transparency = 0
          Marks.Shadow.VertSize = 30
          Marks.Shadow.Visible = False
          Marks.Margins.Left = 0
          Marks.Margins.Top = 0
          Marks.Margins.Right = 0
          Marks.Margins.Bottom = 0
          Marks.Style = smsLabelPercent
          Marks.Arrow.Color = clDefault
          Marks.BackColor = clWhite
          Marks.Callout.Arrow.Color = clDefault
          Marks.Symbol.Shadow.Visible = False
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
          OtherSlice.Style = poBelowPercent
          OtherSlice.Text = #1054#1089#1090#1072#1083#1100#1085#1086#1077' (<1%)'
          OtherSlice.Value = 1.000000000000000000
          RotationAngle = 45
          Transparency = 13
        end
      end
      object FinancialReportPie2Chart: TDBChart
        AlignWithMargins = True
        Left = 6
        Top = 991
        Width = 503
        Height = 514
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        AllowPanning = pmHorizontal
        Border.Visible = True
        Foot.Font.Name = 'Segoe UI'
        LeftWall.Color = 14671839
        MarginBottom = 0
        MarginLeft = 0
        MarginRight = 0
        MarginTop = 1
        SubFoot.Font.Name = 'Segoe UI'
        SubTitle.Font.Name = 'Segoe UI'
        Title.Font.Color = clBlack
        Title.Font.Name = 'Segoe UI'
        Title.Margins.Left = 0
        Title.Margins.Top = 0
        Title.Margins.Right = 74
        Title.Margins.Bottom = 0
        Title.Margins.Units = maPixels
        Title.Text.Strings = (
          #1057#1086#1089#1090#1072#1074' ('#1086#1090#1095#1077#1090' '#8470'2)')
        BottomAxis.Grid.Visible = False
        BottomAxis.LabelsFormat.Font.Name = 'Segoe UI'
        BottomAxis.Ticks.Visible = False
        BottomAxis.Title.Font.Name = 'Segoe UI'
        DepthAxis.LabelsFormat.Font.Name = 'Segoe UI'
        DepthAxis.Title.Font.Name = 'Segoe UI'
        DepthTopAxis.LabelsFormat.Font.Name = 'Segoe UI'
        DepthTopAxis.Title.Font.Name = 'Segoe UI'
        LeftAxis.LabelsFormat.Font.Name = 'Segoe UI'
        LeftAxis.Title.Font.Name = 'Segoe UI'
        Legend.Alignment = laBottom
        Legend.Font.Name = 'Segoe UI'
        Legend.LegendStyle = lsSeries
        Legend.Title.Font.Name = 'Segoe UI'
        Legend.Visible = False
        RightAxis.LabelsFormat.Font.Name = 'Segoe UI'
        RightAxis.Title.Font.Name = 'Segoe UI'
        TopAxis.LabelsFormat.Font.Name = 'Segoe UI'
        TopAxis.Title.Font.Name = 'Segoe UI'
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        Zoom.Allow = False
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 4
        DefaultCanvas = 'TGDIPlusCanvas'
        PrintMargins = (
          15
          21
          15
          21)
        ColorPaletteIndex = -2
        ColorPalette = (
          15857897
          14807505
          13691320
          12640928
          11590279
          10474351
          9423703
          8307774
          7319093
          6264109
          5209382
          4219934
          3165207
          2176015
          1186568)
        object PieSeries1: TPieSeries
          Legend.Visible = False
          Marks.Frame.Visible = False
          Marks.Shadow.Visible = False
          Marks.Style = smsLabelPercent
          Marks.Arrow.Color = clDefault
          Marks.BackColor = clWhite
          Marks.Callout.Arrow.Color = clDefault
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
          Gradient.EndColor = 10132224
          Gradient.StartColor = 10132224
          OtherSlice.Legend.Visible = False
          OtherSlice.Style = poBelowPercent
          OtherSlice.Text = #1054#1089#1090#1072#1083#1100#1085#1086#1077' (<1%)'
          OtherSlice.Value = 1.000000000000000000
          RotationAngle = 45
          Transparency = 13
        end
      end
    end
    object GridsPanel: TScrollBox
      AlignWithMargins = True
      Left = 3
      Top = 21
      Width = 850
      Height = 983
      Margins.Top = 0
      HorzScrollBar.Smooth = True
      VertScrollBar.Smooth = True
      VertScrollBar.Tracking = True
      Align = alLeft
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnMouseWheel = ChartsPanelMouseWheel
      object Filler3: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 911
        Width = 820
        Height = 69
        Margins.Right = 27
        Align = alClient
        TabOrder = 0
      end
      object Report1Panel: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 0
        Width = 820
        Height = 400
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        AutoSize = True
        BevelKind = bkTile
        BevelOuter = bvNone
        Constraints.MaxHeight = 400
        Constraints.MaxWidth = 820
        Constraints.MinHeight = 400
        Constraints.MinWidth = 808
        TabOrder = 1
        object Report1Grid: TDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 158
          Width = 807
          Height = 235
          Constraints.MaxHeight = 235
          Constraints.MaxWidth = 807
          Constraints.MinHeight = 235
          Constraints.MinWidth = 807
          DataSource = DataModule2.Financial_report_source_1
          DrawingStyle = gdsGradient
          GradientEndColor = 15514003
          GradientStartColor = 15514003
          Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnTitleClick = Report1GridTitleClick
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
              FieldName = 'proceeds_p'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'cost_price_p'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'added_value_p'
              Visible = False
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
            end>
        end
        object Report1ToolsBox: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 807
          Height = 150
          Caption = #1054#1090#1095#1077#1090' '#8470'1'
          Color = 16764329
          Constraints.MaxHeight = 150
          Constraints.MaxWidth = 807
          Constraints.MinHeight = 144
          Constraints.MinWidth = 798
          ParentBackground = False
          ParentColor = False
          TabOrder = 1
          object Report1PeriodBox: TGroupBox
            AlignWithMargins = True
            Left = 8
            Top = 15
            Width = 257
            Height = 65
            Margins.Left = 6
            Margins.Top = 0
            Align = alLeft
            Caption = #1055#1077#1088#1080#1086#1076
            Constraints.MaxHeight = 68
            Constraints.MaxWidth = 257
            Constraints.MinHeight = 65
            Constraints.MinWidth = 257
            TabOrder = 0
            object GridPanel2: TGridPanel
              AlignWithMargins = True
              Left = 2
              Top = 15
              Width = 253
              Height = 45
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Align = alBottom
              BevelOuter = bvNone
              ColumnCollection = <
                item
                  SizeStyle = ssAbsolute
                  Value = 80.000000000000000000
                end
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
                  Control = Report1AllTimeRB
                  Row = 0
                end
                item
                  Column = 0
                  Control = Report1IntervalRB
                  Row = 1
                end
                item
                  Column = 1
                  Control = R1DateFilterDTP1
                  Row = 1
                end
                item
                  Column = 2
                  Control = R1DateFilterDTP2
                  Row = 1
                end
                item
                  Column = 1
                  Control = Report1TodayRB
                  Row = 0
                end
                item
                  Column = 2
                  Control = Report1MonthRB
                  Row = 0
                end>
              RowCollection = <
                item
                  SizeStyle = ssAbsolute
                  Value = 21.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 24.000000000000000000
                end>
              TabOrder = 0
              ExplicitTop = 14
              object Report1AllTimeRB: TRadioButton
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 74
                Height = 15
                Align = alClient
                Caption = #1042#1089#1077' '#1074#1088#1077#1084#1103
                Checked = True
                TabOrder = 0
                TabStop = True
                OnClick = Report1AllTimeRBClick
              end
              object Report1IntervalRB: TRadioButton
                AlignWithMargins = True
                Left = 3
                Top = 27
                Width = 74
                Height = 15
                Margins.Top = 6
                Align = alClient
                Caption = #1048#1085#1090#1077#1088#1074#1072#1083':'
                TabOrder = 1
                OnClick = Report1AllTimeRBClick
              end
              object R1DateFilterDTP1: TDateTimePicker
                AlignWithMargins = True
                Left = 80
                Top = 24
                Width = 82
                Height = 21
                Margins.Left = 0
                Margins.Bottom = 0
                Align = alClient
                Date = 43820.000000000000000000
                Time = 43820.000000000000000000
                Enabled = False
                TabOrder = 2
                OnChange = Report1AllTimeRBClick
              end
              object R1DateFilterDTP2: TDateTimePicker
                AlignWithMargins = True
                Left = 165
                Top = 24
                Width = 82
                Height = 21
                Margins.Left = 0
                Margins.Bottom = 0
                Align = alClient
                Date = 43823.000000000000000000
                Time = 43823.000000000000000000
                Enabled = False
                TabOrder = 3
                OnChange = Report1AllTimeRBClick
              end
              object Report1TodayRB: TRadioButton
                AlignWithMargins = True
                Left = 83
                Top = 3
                Width = 79
                Height = 15
                Align = alClient
                Caption = #1057#1077#1075#1086#1076#1085#1103
                TabOrder = 4
                OnClick = Report1AllTimeRBClick
              end
              object Report1MonthRB: TRadioButton
                AlignWithMargins = True
                Left = 168
                Top = 3
                Width = 79
                Height = 15
                Align = alClient
                Caption = #1052#1077#1089#1103#1094
                TabOrder = 5
                OnClick = Report1AllTimeRBClick
              end
            end
          end
          object FieldFilterBox: TGroupBox
            AlignWithMargins = True
            Left = 273
            Top = 15
            Width = 526
            Height = 65
            Margins.Top = 0
            Margins.Right = 6
            Align = alRight
            BiDiMode = bdRightToLeftNoAlign
            Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1087#1086#1083#1102
            Color = 16764329
            Constraints.MaxHeight = 68
            Constraints.MaxWidth = 526
            Constraints.MinHeight = 65
            Constraints.MinWidth = 526
            ParentBackground = False
            ParentBiDiMode = False
            ParentColor = False
            TabOrder = 1
            object FieldFilterGridPanel: TGridPanel
              AlignWithMargins = True
              Left = 2
              Top = 15
              Width = 522
              Height = 45
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Align = alBottom
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
                  Control = R1FilterTypeLabel
                  Row = 0
                end
                item
                  Column = 1
                  Control = R1FilterCriterionLabel
                  Row = 0
                end
                item
                  Column = 0
                  Control = R1FilterTypeCB
                  Row = 1
                end
                item
                  Column = 2
                  Control = R1FilterAmountLabel
                  Row = 0
                end
                item
                  Column = 3
                  Control = R1FilterAmountEdit
                  Row = 1
                end
                item
                  Column = 2
                  Control = R1FilterSignCB
                  Row = 1
                end
                item
                  Column = 1
                  Control = R1FilterCriterionEdit
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
              ExplicitTop = 18
              object R1FilterTypeLabel: TLabel
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
              object R1FilterCriterionLabel: TLabel
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
              object R1FilterTypeCB: TComboBox
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
                OnChange = R1FilterTypeCBChange
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
              object R1FilterAmountLabel: TLabel
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
              object R1FilterAmountEdit: TEdit
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
                OnChange = R1FilterCriterionEditChange
                OnKeyPress = R1FilterAmountEditKeyPress
              end
              object R1FilterSignCB: TComboBox
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
                Text = #1041#1086#1083#1100#1096#1077
                OnChange = R1FilterCriterionEditChange
                Items.Strings = (
                  #1041#1086#1083#1100#1096#1077
                  #1052#1077#1085#1100#1096#1077
                  #1056#1072#1074#1085#1086)
              end
              object R1FilterCriterionEdit: TEdit
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
                OnChange = R1FilterCriterionEditChange
              end
            end
          end
          object R1StatBox: TGroupBox
            AlignWithMargins = True
            Left = 8
            Top = 86
            Width = 791
            Height = 56
            Margins.Left = 6
            Margins.Right = 6
            Margins.Bottom = 6
            Align = alBottom
            Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
            TabOrder = 2
            object GridPanel4: TGridPanel
              Left = 2
              Top = 15
              Width = 787
              Height = 32
              Align = alTop
              BevelOuter = bvNone
              ColumnCollection = <
                item
                  SizeStyle = ssAbsolute
                  Value = 152.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 4.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 152.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 4.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 152.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 4.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 152.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 4.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 152.000000000000000000
                end>
              ControlCollection = <
                item
                  Column = 2
                  Control = Label3
                  Row = 0
                end
                item
                  Column = 4
                  Control = Label1
                  Row = 0
                end
                item
                  Column = 8
                  Control = Label4
                  Row = 0
                end
                item
                  Column = 6
                  Control = Label6
                  Row = 0
                end
                item
                  Column = 2
                  Control = R1AmountLabel
                  Row = 1
                end
                item
                  Column = 4
                  Control = R1ProceedsLabel
                  Row = 1
                end
                item
                  Column = 1
                  Control = Bevel2
                  Row = 0
                  RowSpan = 2
                end
                item
                  Column = 3
                  Control = Bevel1
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
                  Column = 7
                  Control = Bevel4
                  Row = 0
                  RowSpan = 2
                end
                item
                  Column = 0
                  Control = Label7
                  Row = 0
                end
                item
                  Column = 0
                  Control = R1BestSellingLabel
                  Row = 1
                end
                item
                  Column = 6
                  Control = R1CostPriceLabel
                  Row = 1
                end
                item
                  Column = 8
                  Control = R1AddedValueLabel
                  Row = 1
                end>
              RowCollection = <
                item
                  SizeStyle = ssAbsolute
                  Value = 17.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 17.000000000000000000
                end>
              TabOrder = 0
              ExplicitLeft = 5
              ExplicitWidth = 781
              object Label3: TLabel
                AlignWithMargins = True
                Left = 159
                Top = 0
                Width = 146
                Height = 14
                Margins.Top = 0
                Align = alClient
                Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
                ExplicitWidth = 65
                ExplicitHeight = 13
              end
              object Label1: TLabel
                AlignWithMargins = True
                Left = 315
                Top = 0
                Width = 146
                Height = 14
                Margins.Top = 0
                Align = alClient
                BiDiMode = bdLeftToRight
                Caption = #1062#1077#1085#1072':'
                ParentBiDiMode = False
                ExplicitWidth = 30
                ExplicitHeight = 13
              end
              object Label4: TLabel
                AlignWithMargins = True
                Left = 627
                Top = 0
                Width = 146
                Height = 14
                Margins.Top = 0
                Align = alClient
                Caption = #1044#1086#1073#1072#1074#1086#1095#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100':'
                ExplicitWidth = 128
                ExplicitHeight = 13
              end
              object Label6: TLabel
                AlignWithMargins = True
                Left = 471
                Top = 0
                Width = 146
                Height = 14
                Margins.Top = 0
                Align = alClient
                Caption = #1047#1072#1090#1088#1072#1090#1099':'
                ExplicitWidth = 46
                ExplicitHeight = 13
              end
              object R1AmountLabel: TLabel
                AlignWithMargins = True
                Left = 159
                Top = 19
                Width = 146
                Height = 14
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
                ExplicitLeft = 3
                ExplicitWidth = 144
              end
              object R1ProceedsLabel: TLabel
                AlignWithMargins = True
                Left = 315
                Top = 19
                Width = 146
                Height = 14
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
                ExplicitLeft = 312
              end
              object Bevel2: TBevel
                Left = 152
                Top = 0
                Width = 4
                Height = 34
                Align = alClient
                Shape = bsLeftLine
                ExplicitLeft = 160
                ExplicitHeight = 14
              end
              object Bevel1: TBevel
                Left = 308
                Top = 0
                Width = 4
                Height = 34
                Align = alClient
                Shape = bsLeftLine
                ExplicitLeft = 160
                ExplicitHeight = 14
              end
              object Bevel3: TBevel
                Left = 464
                Top = 0
                Width = 4
                Height = 34
                Align = alClient
                Shape = bsLeftLine
                ExplicitLeft = 160
                ExplicitHeight = 14
              end
              object Bevel4: TBevel
                Left = 620
                Top = 0
                Width = 4
                Height = 34
                Align = alClient
                Shape = bsLeftLine
                ExplicitLeft = 160
                ExplicitHeight = 14
              end
              object Label7: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 0
                Width = 146
                Height = 14
                Margins.Top = 0
                Align = alClient
                Caption = #1057#1072#1084#1099#1081' '#1087#1088#1086#1076#1072#1074#1072#1077#1084#1099#1081':'
                ExplicitWidth = 116
                ExplicitHeight = 13
              end
              object R1BestSellingLabel: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 19
                Width = 146
                Height = 15
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
                ParentShowHint = False
                ShowHint = True
                ExplicitTop = 17
              end
              object R1CostPriceLabel: TLabel
                AlignWithMargins = True
                Left = 471
                Top = 19
                Width = 146
                Height = 14
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
                ExplicitTop = 17
              end
              object R1AddedValueLabel: TLabel
                AlignWithMargins = True
                Left = 627
                Top = 19
                Width = 146
                Height = 14
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
                ExplicitTop = 17
              end
            end
          end
        end
      end
      object Report2Panel: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 403
        Width = 820
        Height = 400
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        AutoSize = True
        BevelKind = bkTile
        BevelOuter = bvNone
        Constraints.MaxHeight = 400
        Constraints.MaxWidth = 820
        Constraints.MinHeight = 400
        Constraints.MinWidth = 808
        TabOrder = 2
        object Report2ToolsBox: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 807
          Height = 150
          Caption = #1054#1090#1095#1077#1090' '#8470'2'
          Color = 15073210
          Constraints.MaxHeight = 150
          Constraints.MaxWidth = 810
          Constraints.MinHeight = 150
          Constraints.MinWidth = 807
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          object Report2PeriodBox: TGroupBox
            AlignWithMargins = True
            Left = 8
            Top = 15
            Width = 257
            Height = 65
            Margins.Left = 6
            Margins.Top = 0
            Align = alLeft
            Caption = #1055#1077#1088#1080#1086#1076
            Constraints.MaxHeight = 68
            Constraints.MaxWidth = 257
            Constraints.MinHeight = 65
            Constraints.MinWidth = 257
            TabOrder = 0
            object GridPanel3: TGridPanel
              AlignWithMargins = True
              Left = 2
              Top = 15
              Width = 253
              Height = 45
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Align = alBottom
              BevelOuter = bvNone
              ColumnCollection = <
                item
                  SizeStyle = ssAbsolute
                  Value = 80.000000000000000000
                end
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
                  Control = Report2AllTimeRB
                  Row = 0
                end
                item
                  Column = 0
                  Control = Report2IntervalRB
                  Row = 1
                end
                item
                  Column = 1
                  Control = R2DateFilterDTP1
                  Row = 1
                end
                item
                  Column = 2
                  Control = R2DateFilterDTP2
                  Row = 1
                end
                item
                  Column = 1
                  Control = Report2TodayRB
                  Row = 0
                end
                item
                  Column = 2
                  Control = Report2MonthRB
                  Row = 0
                end>
              RowCollection = <
                item
                  SizeStyle = ssAbsolute
                  Value = 21.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 24.000000000000000000
                end>
              TabOrder = 0
              ExplicitLeft = 6
              ExplicitTop = 18
              ExplicitHeight = 47
              object Report2AllTimeRB: TRadioButton
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 74
                Height = 15
                Align = alClient
                Caption = #1042#1089#1077' '#1074#1088#1077#1084#1103
                Checked = True
                TabOrder = 0
                TabStop = True
                OnClick = Report2AllTimeRBClick
              end
              object Report2IntervalRB: TRadioButton
                AlignWithMargins = True
                Left = 3
                Top = 27
                Width = 74
                Height = 15
                Margins.Top = 6
                Align = alClient
                Caption = #1048#1085#1090#1077#1088#1074#1072#1083':'
                TabOrder = 1
                OnClick = Report2AllTimeRBClick
              end
              object R2DateFilterDTP1: TDateTimePicker
                AlignWithMargins = True
                Left = 80
                Top = 24
                Width = 82
                Height = 21
                Margins.Left = 0
                Margins.Bottom = 0
                Align = alClient
                Date = 43820.000000000000000000
                Time = 43820.000000000000000000
                Enabled = False
                TabOrder = 2
                OnChange = Report2AllTimeRBClick
              end
              object R2DateFilterDTP2: TDateTimePicker
                AlignWithMargins = True
                Left = 165
                Top = 24
                Width = 82
                Height = 21
                Margins.Left = 0
                Margins.Bottom = 0
                Align = alClient
                Date = 43823.000000000000000000
                Time = 43823.000000000000000000
                Enabled = False
                TabOrder = 3
                OnChange = Report2AllTimeRBClick
              end
              object Report2TodayRB: TRadioButton
                AlignWithMargins = True
                Left = 83
                Top = 3
                Width = 79
                Height = 15
                Align = alClient
                Caption = #1057#1077#1075#1086#1076#1085#1103
                TabOrder = 4
                OnClick = Report2AllTimeRBClick
              end
              object Report2MonthRB: TRadioButton
                AlignWithMargins = True
                Left = 168
                Top = 3
                Width = 79
                Height = 15
                Align = alClient
                Caption = #1052#1077#1089#1103#1094
                TabOrder = 5
                OnClick = Report2AllTimeRBClick
              end
            end
          end
          object GroupBox1: TGroupBox
            AlignWithMargins = True
            Left = 273
            Top = 15
            Width = 526
            Height = 65
            Margins.Top = 0
            Margins.Right = 6
            Align = alRight
            BiDiMode = bdRightToLeftNoAlign
            Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1087#1086#1083#1102
            Color = 15073210
            Constraints.MaxHeight = 68
            Constraints.MaxWidth = 526
            Constraints.MinHeight = 65
            Constraints.MinWidth = 526
            ParentBackground = False
            ParentBiDiMode = False
            ParentColor = False
            TabOrder = 1
            ExplicitLeft = 271
            object GridPanel1: TGridPanel
              AlignWithMargins = True
              Left = 2
              Top = 15
              Width = 522
              Height = 45
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Align = alBottom
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
                  Control = R2FilterTypeLabel
                  Row = 0
                end
                item
                  Column = 1
                  Control = R2FilterCriterionLabel
                  Row = 0
                end
                item
                  Column = 0
                  Control = R2FilterTypeCB
                  Row = 1
                end
                item
                  Column = 2
                  Control = R2FilterAmountLabel
                  Row = 0
                end
                item
                  Column = 3
                  Control = R2FilterAmountEdit
                  Row = 1
                end
                item
                  Column = 2
                  Control = R2FilterSignCB
                  Row = 1
                end
                item
                  Column = 1
                  Control = R2FilterCriterionEdit
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
              ExplicitLeft = 3
              ExplicitWidth = 518
              object R2FilterTypeLabel: TLabel
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
              object R2FilterCriterionLabel: TLabel
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
              object R2FilterTypeCB: TComboBox
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
                OnChange = R2FilterTypeCBChange
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
              object R2FilterAmountLabel: TLabel
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
              object R2FilterAmountEdit: TEdit
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
                OnChange = R2FilterCriterionEditChange
                OnKeyPress = R2FilterAmountEditKeyPress
              end
              object R2FilterSignCB: TComboBox
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
                Text = #1041#1086#1083#1100#1096#1077
                OnChange = R2FilterCriterionEditChange
                Items.Strings = (
                  #1041#1086#1083#1100#1096#1077
                  #1052#1077#1085#1100#1096#1077
                  #1056#1072#1074#1085#1086)
              end
              object R2FilterCriterionEdit: TEdit
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
                OnChange = R2FilterCriterionEditChange
              end
            end
          end
          object R2StatBox: TGroupBox
            AlignWithMargins = True
            Left = 8
            Top = 86
            Width = 791
            Height = 56
            Margins.Left = 6
            Margins.Right = 6
            Margins.Bottom = 6
            Align = alBottom
            Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
            TabOrder = 2
            object GridPanel5: TGridPanel
              Left = 2
              Top = 15
              Width = 787
              Height = 35
              Align = alTop
              BevelOuter = bvNone
              ColumnCollection = <
                item
                  SizeStyle = ssAbsolute
                  Value = 152.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 4.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 152.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 4.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 152.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 4.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 152.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 4.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 152.000000000000000000
                end>
              ControlCollection = <
                item
                  Column = 2
                  Control = Label8
                  Row = 0
                end
                item
                  Column = 4
                  Control = Label9
                  Row = 0
                end
                item
                  Column = 8
                  Control = Label10
                  Row = 0
                end
                item
                  Column = 6
                  Control = Label11
                  Row = 0
                end
                item
                  Column = 2
                  Control = R2AmountLabel
                  Row = 1
                end
                item
                  Column = 6
                  Control = R2CostPriceLabel
                  Row = 1
                end
                item
                  Column = 8
                  Control = R2AddedValueLabel
                  Row = 1
                end
                item
                  Column = 4
                  Control = R2ProceedsLabel
                  Row = 1
                end
                item
                  Column = 1
                  Control = Bevel5
                  Row = 0
                  RowSpan = 2
                end
                item
                  Column = 3
                  Control = Bevel6
                  Row = 0
                  RowSpan = 2
                end
                item
                  Column = 5
                  Control = Bevel7
                  Row = 0
                  RowSpan = 2
                end
                item
                  Column = 7
                  Control = Bevel8
                  Row = 0
                  RowSpan = 2
                end
                item
                  Column = 0
                  Control = Label12
                  Row = 0
                end
                item
                  Column = 0
                  Control = R2BestSellingLabel
                  Row = 1
                end>
              RowCollection = <
                item
                  SizeStyle = ssAbsolute
                  Value = 17.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 17.000000000000000000
                end>
              TabOrder = 0
              ExplicitLeft = 7
              ExplicitTop = 18
              ExplicitWidth = 781
              object Label8: TLabel
                AlignWithMargins = True
                Left = 159
                Top = 0
                Width = 146
                Height = 14
                Margins.Top = 0
                Align = alClient
                Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
                ExplicitWidth = 65
                ExplicitHeight = 13
              end
              object Label9: TLabel
                AlignWithMargins = True
                Left = 315
                Top = 0
                Width = 146
                Height = 14
                Margins.Top = 0
                Align = alClient
                BiDiMode = bdLeftToRight
                Caption = #1062#1077#1085#1072':'
                ParentBiDiMode = False
                ExplicitWidth = 30
                ExplicitHeight = 13
              end
              object Label10: TLabel
                AlignWithMargins = True
                Left = 627
                Top = 0
                Width = 146
                Height = 14
                Margins.Top = 0
                Align = alClient
                Caption = #1044#1086#1073#1072#1074#1086#1095#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100':'
                ExplicitWidth = 128
                ExplicitHeight = 13
              end
              object Label11: TLabel
                AlignWithMargins = True
                Left = 471
                Top = 0
                Width = 146
                Height = 14
                Margins.Top = 0
                Align = alClient
                Caption = #1047#1072#1090#1088#1072#1090#1099':'
                ExplicitWidth = 46
                ExplicitHeight = 13
              end
              object R2AmountLabel: TLabel
                AlignWithMargins = True
                Left = 159
                Top = 19
                Width = 146
                Height = 14
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
                ExplicitLeft = 3
                ExplicitWidth = 144
              end
              object R2CostPriceLabel: TLabel
                AlignWithMargins = True
                Left = 471
                Top = 19
                Width = 146
                Height = 14
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
                ExplicitLeft = 303
                ExplicitWidth = 144
              end
              object R2AddedValueLabel: TLabel
                AlignWithMargins = True
                Left = 627
                Top = 19
                Width = 146
                Height = 14
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
                ExplicitLeft = 312
              end
              object R2ProceedsLabel: TLabel
                AlignWithMargins = True
                Left = 315
                Top = 19
                Width = 146
                Height = 14
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
                ExplicitLeft = 223
                ExplicitTop = 3
                ExplicitWidth = 3
                ExplicitHeight = 11
              end
              object Bevel5: TBevel
                Left = 152
                Top = 0
                Width = 4
                Height = 34
                Align = alClient
                Shape = bsLeftLine
                ExplicitLeft = 160
                ExplicitHeight = 14
              end
              object Bevel6: TBevel
                Left = 308
                Top = 0
                Width = 4
                Height = 34
                Align = alClient
                Shape = bsLeftLine
                ExplicitLeft = 160
                ExplicitHeight = 14
              end
              object Bevel7: TBevel
                Left = 464
                Top = 0
                Width = 4
                Height = 34
                Align = alClient
                Shape = bsLeftLine
                ExplicitLeft = 160
                ExplicitHeight = 14
              end
              object Bevel8: TBevel
                Left = 620
                Top = 0
                Width = 4
                Height = 34
                Align = alClient
                Shape = bsLeftLine
                ExplicitLeft = 160
                ExplicitHeight = 14
              end
              object Label12: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 0
                Width = 146
                Height = 14
                Margins.Top = 0
                Align = alClient
                Caption = #1057#1072#1084#1099#1081' '#1087#1088#1086#1076#1072#1074#1072#1077#1084#1099#1081':'
                ExplicitWidth = 116
                ExplicitHeight = 13
              end
              object R2BestSellingLabel: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 19
                Width = 146
                Height = 15
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
                ParentShowHint = False
                ShowHint = True
                ExplicitLeft = 11
                ExplicitTop = 20
              end
            end
          end
        end
        object Report2Grid: TDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 159
          Width = 807
          Height = 235
          Constraints.MaxHeight = 235
          Constraints.MaxWidth = 807
          Constraints.MinHeight = 235
          Constraints.MinWidth = 807
          DataSource = DataModule2.Financial_report_source_2
          DrawingStyle = gdsGradient
          GradientEndColor = 11592284
          GradientStartColor = 11592284
          Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnTitleClick = Report2GridTitleClick
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
              FieldName = 'proceeds_p'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'cost_price_p'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'added_value_p'
              Visible = False
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
            end>
        end
      end
      object ReportSumPanel: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 806
        Width = 820
        Height = 99
        Margins.Right = 0
        Align = alTop
        AutoSize = True
        BevelKind = bkTile
        BevelOuter = bvNone
        Constraints.MaxWidth = 820
        Constraints.MinWidth = 820
        TabOrder = 3
        object DifferenceBox: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 6
          Width = 804
          Height = 83
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Caption = #1056#1072#1079#1085#1080#1094#1072' '#8470'1 '#8722' '#8470'2'
          Color = clCream
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          object DiffStatBox: TGroupBox
            AlignWithMargins = True
            Left = 8
            Top = 18
            Width = 788
            Height = 56
            Margins.Left = 6
            Margins.Right = 6
            Margins.Bottom = 6
            Align = alTop
            Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
            TabOrder = 0
            object GridPanel6: TGridPanel
              Left = 2
              Top = 15
              Width = 784
              Height = 35
              Align = alTop
              BevelOuter = bvNone
              ColumnCollection = <
                item
                  SizeStyle = ssAbsolute
                  Value = 152.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 4.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 152.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 4.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 152.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 4.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 152.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 4.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 152.000000000000000000
                end>
              ControlCollection = <
                item
                  Column = 2
                  Control = Label13
                  Row = 0
                end
                item
                  Column = 4
                  Control = Label14
                  Row = 0
                end
                item
                  Column = 8
                  Control = Label15
                  Row = 0
                end
                item
                  Column = 6
                  Control = Label16
                  Row = 0
                end
                item
                  Column = 2
                  Control = DiffAmountLabel
                  Row = 1
                end
                item
                  Column = 4
                  Control = DiffProceedsLabel
                  Row = 1
                end
                item
                  Column = 1
                  Control = Bevel9
                  Row = 0
                  RowSpan = 2
                end
                item
                  Column = 3
                  Control = Bevel10
                  Row = 0
                  RowSpan = 2
                end
                item
                  Column = 5
                  Control = Bevel11
                  Row = 0
                  RowSpan = 2
                end
                item
                  Column = 7
                  Control = Bevel12
                  Row = 0
                  RowSpan = 2
                end
                item
                  Column = 0
                  Control = Label17
                  Row = 0
                end
                item
                  Column = 0
                  Control = DiffTotalLabel
                  Row = 1
                end
                item
                  Column = 6
                  Control = DiffCostPriceLabel
                  Row = 1
                end
                item
                  Column = 8
                  Control = DiffAddedValueLabel
                  Row = 1
                end>
              RowCollection = <
                item
                  SizeStyle = ssAbsolute
                  Value = 17.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 17.000000000000000000
                end>
              TabOrder = 0
              ExplicitLeft = 3
              ExplicitTop = 18
              ExplicitWidth = 781
              object Label13: TLabel
                AlignWithMargins = True
                Left = 159
                Top = 0
                Width = 146
                Height = 14
                Margins.Top = 0
                Align = alClient
                Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
                ExplicitWidth = 65
                ExplicitHeight = 13
              end
              object Label14: TLabel
                AlignWithMargins = True
                Left = 315
                Top = 0
                Width = 146
                Height = 14
                Margins.Top = 0
                Align = alClient
                BiDiMode = bdLeftToRight
                Caption = #1062#1077#1085#1072':'
                ParentBiDiMode = False
                ExplicitWidth = 30
                ExplicitHeight = 13
              end
              object Label15: TLabel
                AlignWithMargins = True
                Left = 627
                Top = 0
                Width = 146
                Height = 14
                Margins.Top = 0
                Align = alClient
                Caption = #1044#1086#1073#1072#1074#1086#1095#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100':'
                ExplicitWidth = 128
                ExplicitHeight = 13
              end
              object Label16: TLabel
                AlignWithMargins = True
                Left = 471
                Top = 0
                Width = 146
                Height = 14
                Margins.Top = 0
                Align = alClient
                Caption = #1047#1072#1090#1088#1072#1090#1099':'
                ExplicitWidth = 46
                ExplicitHeight = 13
              end
              object DiffAmountLabel: TLabel
                AlignWithMargins = True
                Left = 159
                Top = 19
                Width = 146
                Height = 14
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
                ExplicitLeft = 0
              end
              object DiffProceedsLabel: TLabel
                AlignWithMargins = True
                Left = 315
                Top = 19
                Width = 146
                Height = 14
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
                ExplicitLeft = 223
                ExplicitTop = 3
                ExplicitWidth = 3
                ExplicitHeight = 11
              end
              object Bevel9: TBevel
                Left = 152
                Top = 0
                Width = 4
                Height = 34
                Align = alClient
                Shape = bsLeftLine
                ExplicitLeft = 160
                ExplicitHeight = 14
              end
              object Bevel10: TBevel
                Left = 308
                Top = 0
                Width = 4
                Height = 34
                Align = alClient
                Shape = bsLeftLine
                ExplicitLeft = 160
                ExplicitHeight = 14
              end
              object Bevel11: TBevel
                Left = 464
                Top = 0
                Width = 4
                Height = 34
                Align = alClient
                Shape = bsLeftLine
                ExplicitLeft = 160
                ExplicitHeight = 14
              end
              object Bevel12: TBevel
                Left = 620
                Top = 0
                Width = 4
                Height = 34
                Align = alClient
                Shape = bsLeftLine
                ExplicitLeft = 160
                ExplicitHeight = 14
              end
              object Label17: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 0
                Width = 146
                Height = 14
                Margins.Top = 0
                Align = alClient
                Caption = #1048#1090#1086#1075':'
                ExplicitWidth = 28
                ExplicitHeight = 13
              end
              object DiffTotalLabel: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 19
                Width = 146
                Height = 14
                Margins.Top = 2
                Margins.Bottom = 0
                Align = alClient
                AutoSize = False
                Caption = '?'
                Constraints.MaxHeight = 14
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 686742
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                ExplicitLeft = 11
                ExplicitTop = 20
              end
              object DiffCostPriceLabel: TLabel
                AlignWithMargins = True
                Left = 471
                Top = 19
                Width = 146
                Height = 14
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
                ExplicitLeft = 479
                ExplicitTop = 20
              end
              object DiffAddedValueLabel: TLabel
                AlignWithMargins = True
                Left = 627
                Top = 19
                Width = 146
                Height = 14
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
                ExplicitLeft = 635
                ExplicitTop = 20
              end
            end
          end
        end
      end
    end
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 1400
      Height = 21
      AutoSize = True
      ButtonHeight = 21
      ButtonWidth = 185
      Caption = 'ToolBar'
      DoubleBuffered = True
      EdgeInner = esNone
      EdgeOuter = esNone
      Menu = Menu
      ParentDoubleBuffered = False
      ShowCaptions = True
      TabOrder = 2
    end
  end
  object Menu: TMainMenu
    Left = 713
    Top = 249
    object N4: TMenuItem
      Caption = #1054#1090#1095#1077#1090#1099' > '#1057#1088#1072#1074#1085#1080#1090#1077#1083#1100#1085#1099#1081' '#1086#1090#1095#1077#1090' |'
      Enabled = False
    end
    object ResetButton: TMenuItem
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100
      OnClick = ResetButtonClick
    end
    object SaveButton: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '
      Visible = False
    end
  end
end
