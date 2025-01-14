object DateFilterFrame: TDateFilterFrame
  Left = 0
  Top = 0
  Width = 375
  Height = 47
  Align = alBottom
  Constraints.MaxHeight = 47
  TabOrder = 0
  object Label7: TLabel
    Left = 3
    Top = 0
    Width = 22
    Height = 16
    Caption = #1058#1080#1087
  end
  object DateFilterTypeCB: TDBLookupComboBox
    Left = 3
    Top = 19
    Width = 158
    Height = 24
    DropDownRows = 10
    KeyField = 'id_gl'
    ListField = 'name_gl'
    ListSource = DataModule2.G_ListS
    TabOrder = 0
  end
  object GroupBox3: TGroupBox
    Left = 167
    Top = -2
    Width = 202
    Height = 46
    Caption = #1048#1085#1090#1077#1088#1074#1072#1083
    TabOrder = 1
    object DateFilterDTP2: TDateTimePicker
      Left = 9
      Top = 17
      Width = 88
      Height = 21
      Date = 43820.000000000000000000
      Time = 43820.000000000000000000
      Enabled = False
      TabOrder = 0
    end
    object DateFilterDTP1: TDateTimePicker
      Left = 103
      Top = 17
      Width = 88
      Height = 21
      Date = 43820.000000000000000000
      Time = 43820.000000000000000000
      Enabled = False
      TabOrder = 1
    end
  end
end
