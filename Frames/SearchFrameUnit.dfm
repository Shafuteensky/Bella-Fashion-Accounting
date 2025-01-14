object SearchFrame: TSearchFrame
  Left = 0
  Top = 0
  Width = 552
  Height = 47
  Align = alBottom
  Constraints.MaxHeight = 47
  Constraints.MaxWidth = 552
  Constraints.MinHeight = 47
  Constraints.MinWidth = 552
  TabOrder = 0
  object Label60: TLabel
    Left = 5
    Top = 0
    Width = 29
    Height = 16
    Caption = #1055#1086#1083#1077
  end
  object Label31: TLabel
    Left = 169
    Top = 0
    Width = 55
    Height = 16
    Caption = #1050#1088#1080#1090#1077#1088#1080#1081
  end
  object SearchNameCB: TDBLookupComboBox
    Left = 6
    Top = 17
    Width = 158
    Height = 24
    DataSource = DataModule2.G_ColorS
    DropDownRows = 10
    KeyField = 'id_gl'
    ListField = 'name_gl'
    ListSource = DataModule2.G_ListS
    TabOrder = 0
  end
  object SearchAmountEdit: TEdit
    Left = 168
    Top = 18
    Width = 158
    Height = 21
    NumbersOnly = True
    TabOrder = 1
  end
  object SearchButton: TButton
    Left = 332
    Top = 16
    Width = 66
    Height = 25
    Caption = #1048#1089#1082#1072#1090#1100
    TabOrder = 2
  end
  object Button1: TButton
    Left = 405
    Top = 16
    Width = 140
    Height = 25
    Caption = #1056#1072#1089#1096#1080#1088#1077#1085#1085#1099#1081' '#1087#1086#1080#1089#1082
    TabOrder = 3
    OnClick = Button1Click
  end
end
