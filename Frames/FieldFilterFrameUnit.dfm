object FieldFilterFrame: TFieldFilterFrame
  Left = 0
  Top = 0
  Width = 329
  Height = 47
  Align = alBottom
  Constraints.MaxHeight = 47
  Constraints.MaxWidth = 329
  Constraints.MinHeight = 47
  Constraints.MinWidth = 329
  TabOrder = 0
  object Label1: TLabel
    Left = 3
    Top = -1
    Width = 22
    Height = 16
    Caption = #1058#1080#1087
  end
  object Label4: TLabel
    Left = 167
    Top = -1
    Width = 55
    Height = 16
    Caption = #1050#1088#1080#1090#1077#1088#1080#1081
  end
  object FieldFilterTypeCB: TDBLookupComboBox
    Left = 3
    Top = 18
    Width = 158
    Height = 24
    DropDownRows = 10
    KeyField = 'id_gl'
    ListField = 'name_gl'
    ListSource = DataModule2.G_ListS
    TabOrder = 0
  end
  object FieldFilterFieldCB: TDBLookupComboBox
    Left = 167
    Top = 18
    Width = 158
    Height = 24
    DropDownRows = 10
    Enabled = False
    KeyField = 'id_gl'
    ListField = 'name_gl'
    ListSource = DataModule2.G_ListS
    TabOrder = 1
  end
end
