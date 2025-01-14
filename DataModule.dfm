object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 1120
  Width = 1473
  object Products_view_table: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Products_view_tableAfterScroll
    AfterDelete = Products_view_tableAfterScroll
    AfterScroll = Products_view_tableAfterScroll
    TableName = 'products_view'
    Left = 64
    Top = 80
    object Products_view_tableid_p: TAutoIncField
      FieldName = 'id_p'
      ReadOnly = True
    end
    object Products_view_tablename_p: TWideStringField
      FieldName = 'name_p'
      Size = 50
    end
    object Products_view_tablename_pt: TWideStringField
      FieldName = 'name_pt'
      Size = 50
    end
    object Products_view_tableproceeds_p: TBCDField
      FieldName = 'proceeds_p'
      Precision = 19
      Size = 2
    end
    object Products_view_tablecost_price_p: TBCDField
      FieldName = 'cost_price_p'
      Precision = 19
      Size = 2
    end
    object Products_view_tableadded_value_pl: TBCDField
      FieldName = 'added_value_pl'
      Precision = 19
      Size = 2
    end
  end
  object Products_view_source: TDataSource
    DataSet = Products_view_table
    Left = 64
    Top = 144
  end
  object Product_color_table: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Product_color_tableAfterDelete
    AfterDelete = Product_color_tableAfterDelete
    TableName = 'product_color'
    Left = 160
    Top = 64
    object Product_color_tableid_pc: TAutoIncField
      FieldName = 'id_pc'
      ReadOnly = True
    end
    object Product_color_tablename_pc: TWideStringField
      FieldName = 'name_pc'
      Size = 50
    end
  end
  object Product_color_source: TDataSource
    DataSet = Product_color_table
    Left = 160
    Top = 128
  end
  object Product_type_table_1: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Product_type_table_2AfterDelete
    AfterDelete = Product_type_table_2AfterDelete
    TableName = 'product_type'
    Left = 256
    Top = 80
    object Product_type_table_1id_pt: TAutoIncField
      FieldName = 'id_pt'
      ReadOnly = True
    end
    object Product_type_table_1name_pt: TWideStringField
      FieldName = 'name_pt'
      Size = 50
    end
  end
  object Product_type_source_1: TDataSource
    DataSet = Product_type_table_1
    Left = 256
    Top = 144
  end
  object Product_supply_view_table: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    Filter = '[fictitious] = False'
    Filtered = True
    AfterPost = Product_supply_view_tableAfterScroll
    AfterScroll = Product_supply_view_tableAfterScroll
    OnCalcFields = Product_supply_view_tableCalcFields
    TableName = 'product_supply_view_usd'
    Left = 352
    Top = 64
    object Product_supply_view_tableid_ps: TAutoIncField
      FieldName = 'id_ps'
      ReadOnly = True
    end
    object Product_supply_view_tabledate: TDateField
      FieldName = 'date'
    end
    object Product_supply_view_tablename_p: TWideStringField
      FieldName = 'name_p'
      Size = 50
    end
    object Product_supply_view_tablename_pt: TWideStringField
      FieldName = 'name_pt'
      Size = 50
    end
    object Product_supply_view_tablename_pc: TWideStringField
      FieldName = 'name_pc'
      Size = 50
    end
    object Product_supply_view_tableamount: TIntegerField
      FieldName = 'amount'
    end
    object Product_supply_view_tablestorage_from: TWideStringField
      FieldName = 'storage_from'
      Size = 50
    end
    object Product_supply_view_tablestorage_to: TWideStringField
      FieldName = 'storage_to'
      Size = 50
    end
    object Product_supply_view_tableproceeds: TWideStringField
      FieldName = 'proceeds'
      Size = 25
    end
    object Product_supply_view_tablecost_price: TWideStringField
      FieldName = 'cost_price'
      Size = 25
    end
    object Product_supply_view_tableadded_value: TWideStringField
      FieldName = 'added_value'
      Size = 25
    end
    object Product_supply_view_tablefictitious: TBooleanField
      FieldName = 'fictitious'
    end
    object Product_supply_view_tablename_e: TWideStringField
      FieldName = 'name_e'
    end
    object Product_supply_view_tableproceeds_sort: TFMTBCDField
      FieldName = 'proceeds_sort'
      Precision = 29
      Size = 2
    end
    object Product_supply_view_tablecost_price_sort: TFMTBCDField
      FieldName = 'cost_price_sort'
      Precision = 29
      Size = 2
    end
    object Product_supply_view_tableadded_value_sort: TFMTBCDField
      FieldName = 'added_value_sort'
      Precision = 29
      Size = 2
    end
  end
  object Product_supply_view_source: TDataSource
    DataSet = Product_supply_view_table
    Left = 352
    Top = 128
  end
  object Sales_view_table: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    Filter = '[fictitious] = False'
    Filtered = True
    AfterPost = Sales_view_tableAfterScroll
    AfterDelete = Sales_view_tableAfterScroll
    AfterScroll = Sales_view_tableAfterScroll
    OnCalcFields = Sales_view_tableCalcFields
    TableName = 'sales_view_kgs'
    Left = 544
    Top = 64
    object Sales_view_tableid_s: TAutoIncField
      FieldName = 'id_s'
      ReadOnly = True
    end
    object Sales_view_tabledate: TDateField
      FieldName = 'date'
    end
    object Sales_view_tablename_p: TWideStringField
      FieldName = 'name_p'
      Size = 50
    end
    object Sales_view_tablename_pt: TWideStringField
      FieldName = 'name_pt'
      Size = 50
    end
    object Sales_view_tablename_pc: TWideStringField
      FieldName = 'name_pc'
      Size = 50
    end
    object Sales_view_tableamount: TIntegerField
      FieldName = 'amount'
    end
    object Sales_view_tablename_c: TWideStringField
      FieldName = 'name_c'
      Size = 50
    end
    object Sales_view_tablename_sl: TWideStringField
      FieldName = 'name_sl'
      Size = 50
    end
    object Sales_view_tablereceipt_number: TWideStringField
      FieldName = 'receipt_number'
      Size = 6
    end
    object Sales_view_tablefictitious: TBooleanField
      FieldName = 'fictitious'
    end
    object Sales_view_tablename_e: TWideStringField
      FieldName = 'name_e'
    end
    object Sales_view_tableproceeds: TWideStringField
      FieldName = 'proceeds'
      Size = 25
    end
    object Sales_view_tablecost_price: TWideStringField
      FieldName = 'cost_price'
      Size = 25
    end
    object Sales_view_tableadded_value: TWideStringField
      FieldName = 'added_value'
      Size = 25
    end
    object Sales_view_tableproceeds_sort: TFMTBCDField
      FieldName = 'proceeds_sort'
      Precision = 29
      Size = 2
    end
    object Sales_view_tablecost_price_sort: TFMTBCDField
      FieldName = 'cost_price_sort'
      Precision = 29
      Size = 2
    end
    object Sales_view_tableadded_value_sort: TFMTBCDField
      FieldName = 'added_value_sort'
      Precision = 29
      Size = 2
    end
  end
  object Sales_view_source: TDataSource
    DataSet = Sales_view_table
    Left = 544
    Top = 128
  end
  object Sales_buffer_view_table: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Sales_buffer_view_tableAfterScroll
    AfterDelete = Sales_buffer_view_tableAfterScroll
    AfterScroll = Sales_buffer_view_tableAfterScroll
    OnCalcFields = Sales_buffer_view_tableCalcFields
    TableName = 'sales_buffer_view_usd'
    Left = 640
    Top = 80
    object Sales_buffer_view_tableid_sb: TAutoIncField
      FieldName = 'id_sb'
      ReadOnly = True
    end
    object Sales_buffer_view_tabledate: TDateField
      FieldName = 'date'
    end
    object Sales_buffer_view_tablename_p: TWideStringField
      FieldName = 'name_p'
      Size = 50
    end
    object Sales_buffer_view_tablename_pt: TWideStringField
      FieldName = 'name_pt'
      Size = 50
    end
    object Sales_buffer_view_tablename_pc: TWideStringField
      FieldName = 'name_pc'
      Size = 50
    end
    object Sales_buffer_view_tableamount: TIntegerField
      FieldName = 'amount'
    end
    object Sales_buffer_view_tableproceeds: TWideStringField
      FieldName = 'proceeds'
      Size = 25
    end
    object Sales_buffer_view_tablecost_price: TWideStringField
      FieldName = 'cost_price'
      Size = 25
    end
    object Sales_buffer_view_tableadded_value: TWideStringField
      FieldName = 'added_value'
      Size = 25
    end
    object Sales_buffer_view_tableproceeds_sort: TFMTBCDField
      FieldName = 'proceeds_sort'
      Precision = 29
      Size = 2
    end
    object Sales_buffer_view_tablecost_price_sort: TFMTBCDField
      FieldName = 'cost_price_sort'
      Precision = 29
      Size = 2
    end
    object Sales_buffer_view_tableadded_value_sort: TFMTBCDField
      FieldName = 'added_value_sort'
      Precision = 29
      Size = 2
    end
  end
  object Sales_buffer_view_source: TDataSource
    DataSet = Sales_buffer_view_table
    Left = 640
    Top = 144
  end
  object Storage_source: TDataSource
    DataSet = Storage_table
    Left = 1216
    Top = 680
  end
  object Financial_report_source_1: TDataSource
    DataSet = Financial_report_table_1
    Left = 1312
    Top = 448
  end
  object DataBaseConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=1928;Persist Security Info=True;User' +
      ' ID=root;Extended Properties="Driver=MySQL ODBC 8.0 Unicode Driv' +
      'er;SERVER=localhost;UID=root;PWD=1928;DATABASE=bf_database;PORT=' +
      '3306;COLUMN_SIZE_S32=1";Initial Catalog=bf_database'
    LoginPrompt = False
    Left = 736
    Top = 424
  end
  object Material_type_table_1: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Material_type_table_2AfterDelete
    AfterDelete = Material_type_table_2AfterDelete
    TableName = 'material_type'
    Left = 352
    Top = 568
    object Material_type_table_1id_mt: TAutoIncField
      FieldName = 'id_mt'
      ReadOnly = True
    end
    object Material_type_table_1name_mt: TWideStringField
      FieldName = 'name_mt'
      Size = 50
    end
  end
  object Rate_source: TDataSource
    Left = 1120
    Top = 128
  end
  object Employes_source: TDataSource
    DataSet = Employes_table
    Left = 1032
    Top = 144
  end
  object Employes_table: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterDelete = Employes_tableAfterDelete
    TableName = 'employes'
    Left = 1032
    Top = 80
    object Employes_tableid_e: TAutoIncField
      FieldName = 'id_e'
      ReadOnly = True
    end
    object Employes_tablename_e: TWideStringField
      FieldName = 'name_e'
    end
    object Employes_tablepass_e: TWideStringField
      FieldName = 'pass_e'
      Size = 8
    end
    object Employes_tableadmin_e: TBooleanField
      FieldName = 'admin_e'
    end
  end
  object Storages_source: TDataSource
    DataSet = Storages_table
    Left = 936
    Top = 128
  end
  object Storages_table: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Storages_tableAfterDelete
    AfterDelete = Storages_tableAfterDelete
    TableName = 'storages'
    Left = 936
    Top = 64
    object Storages_tableid_sl: TAutoIncField
      FieldName = 'id_sl'
      ReadOnly = True
    end
    object Storages_tablename_sl: TWideStringField
      FieldName = 'name_sl'
      Size = 50
    end
    object Storages_tableinfo_sl: TWideStringField
      FieldName = 'info_sl'
      Size = 510
    end
    object Storages_tabletype_sl: TWideStringField
      FieldName = 'type_sl'
      Size = 5
    end
    object Storages_tableaddress_sl: TStringField
      FieldName = 'address_sl'
      Size = 100
    end
  end
  object Customers_source: TDataSource
    DataSet = Customers_table
    Left = 840
    Top = 144
  end
  object Customers_table: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Customers_tableAfterDelete
    AfterDelete = Customers_tableAfterDelete
    TableName = 'customers'
    Left = 840
    Top = 80
    object Customers_tableid_c: TAutoIncField
      FieldName = 'id_c'
      ReadOnly = True
    end
    object Customers_tablename_c: TWideStringField
      FieldName = 'name_c'
      Size = 50
    end
    object Customers_tablephone_number_c: TWideStringField
      FieldName = 'phone_number_c'
      Size = 50
    end
    object Customers_tableaddress_c: TWideStringField
      FieldName = 'address_c'
      Size = 100
    end
    object Customers_tableinfo_c: TWideStringField
      FieldName = 'info_c'
      Size = 510
    end
    object Customers_tablepurchases_number_c: TIntegerField
      FieldName = 'purchases_number_c'
    end
  end
  object Material_supply_view_source: TDataSource
    DataSet = Material_supply_view_table
    Left = 448
    Top = 712
  end
  object Material_supply_view_table: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    Filtered = True
    AfterPost = Material_supply_view_tableAfterScroll
    AfterScroll = Material_supply_view_tableAfterScroll
    OnCalcFields = Material_supply_view_tableCalcFields
    TableName = 'material_supply_view_usd'
    Left = 448
    Top = 648
    object Material_supply_view_tableid_ms: TAutoIncField
      FieldName = 'id_ms'
      ReadOnly = True
    end
    object Material_supply_view_tabledate: TDateField
      FieldName = 'date'
    end
    object Material_supply_view_tablename_m: TWideStringField
      FieldName = 'name_m'
      Size = 50
    end
    object Material_supply_view_tablename_mt: TWideStringField
      FieldName = 'name_mt'
      Size = 50
    end
    object Material_supply_view_tablename_mc: TWideStringField
      FieldName = 'name_mc'
      Size = 50
    end
    object Material_supply_view_tableamount: TBCDField
      FieldName = 'amount'
      Precision = 19
      Size = 2
    end
    object Material_supply_view_tablename_sl: TWideStringField
      FieldName = 'name_sl'
      Size = 50
    end
    object Material_supply_view_tablecost: TWideStringField
      FieldName = 'cost'
      Size = 25
    end
    object Material_supply_view_tablename_e: TWideStringField
      FieldName = 'name_e'
    end
    object Material_supply_view_tablecost_sort: TFMTBCDField
      FieldName = 'cost_sort'
      Precision = 38
      Size = 4
    end
    object Material_supply_view_tablename_mm: TWideStringField
      FieldName = 'name_mm'
      Size = 50
    end
  end
  object Material_type_source_1: TDataSource
    DataSet = Material_type_table_1
    Left = 352
    Top = 632
  end
  object Material_color_source: TDataSource
    DataSet = Material_color_table
    Left = 160
    Top = 632
  end
  object Material_color_table: TADOTable
    Active = True
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Material_color_tableAfterDelete
    AfterDelete = Material_color_tableAfterDelete
    TableName = 'material_color'
    Left = 160
    Top = 568
    object Material_color_tableid_mc: TAutoIncField
      FieldName = 'id_mc'
      ReadOnly = True
    end
    object Material_color_tablename_mc: TWideStringField
      FieldName = 'name_mc'
      Size = 50
    end
  end
  object Financial_report_source_2: TDataSource
    DataSet = Financial_report_table_2
    Left = 1312
    Top = 576
  end
  object Product_type_source_2: TDataSource
    DataSet = Product_type_table_2
    Left = 256
    Top = 264
  end
  object Material_type_source_2: TDataSource
    DataSet = Material_type_table_2
    Left = 352
    Top = 760
  end
  object Material_type_table_2: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Material_type_table_2AfterDelete
    AfterDelete = Material_type_table_2AfterDelete
    TableName = 'material_type'
    Left = 352
    Top = 696
    object AutoIncField1: TAutoIncField
      FieldName = 'id_mt'
      ReadOnly = True
    end
    object Material_type_table_2name_mt: TWideStringField
      FieldName = 'name_mt'
      Size = 50
    end
  end
  object Product_type_table_2: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Product_type_table_2AfterDelete
    AfterDelete = Product_type_table_2AfterDelete
    TableName = 'product_type'
    Left = 256
    Top = 208
    object AutoIncField2: TAutoIncField
      FieldName = 'id_pt'
      ReadOnly = True
    end
    object WideStringField2: TWideStringField
      FieldName = 'name_pt'
      Size = 50
    end
  end
  object Products_table: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Products_tableAfterDelete
    AfterDelete = Products_tableAfterDelete
    TableName = 'products'
    Left = 64
    Top = 208
    object Products_tableid_p: TAutoIncField
      FieldName = 'id_p'
      ReadOnly = True
    end
    object Products_tablename_p: TWideStringField
      FieldName = 'name_p'
      Size = 50
    end
    object Products_tableid_pt: TIntegerField
      FieldName = 'id_pt'
    end
    object Products_tableproceeds_p: TBCDField
      FieldName = 'proceeds_p'
      Precision = 19
      Size = 2
    end
    object Products_tablecost_price_p: TBCDField
      FieldName = 'cost_price_p'
      Precision = 19
      Size = 2
    end
    object Products_tableadded_value_p: TBCDField
      FieldName = 'added_value_p'
      Precision = 19
      Size = 2
    end
  end
  object Products_source: TDataSource
    DataSet = Products_table
    Left = 64
    Top = 272
  end
  object Product_supply_table: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Product_supply_tableAfterDelete
    AfterDelete = Product_supply_tableAfterDelete
    TableName = 'product_supply'
    Left = 352
    Top = 192
    object Product_supply_tableid_ps: TAutoIncField
      FieldName = 'id_ps'
      ReadOnly = True
    end
    object Product_supply_tabledate_ps: TDateField
      FieldName = 'date_ps'
    end
    object Product_supply_tableid_pl: TIntegerField
      FieldName = 'id_pl'
    end
    object Product_supply_tableid_pc: TIntegerField
      FieldName = 'id_pc'
    end
    object Product_supply_tableamount_ps: TIntegerField
      FieldName = 'amount_ps'
    end
    object Product_supply_tableid_sl_from: TIntegerField
      FieldName = 'id_sl_from'
    end
    object Product_supply_tableid_sl_to: TIntegerField
      FieldName = 'id_sl_to'
    end
    object Product_supply_tablefictitious_ps: TBooleanField
      FieldName = 'fictitious_ps'
    end
    object Product_supply_tableid_e: TIntegerField
      FieldName = 'id_e'
    end
  end
  object Product_supply_source: TDataSource
    DataSet = Product_supply_table
    Left = 352
    Top = 256
  end
  object Sales_table: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    BeforeEdit = Sales_tableBeforeEdit
    AfterPost = Sales_tableAfterPost
    AfterCancel = Sales_tableAfterPost
    BeforeDelete = Sales_tableBeforeEdit
    AfterDelete = Sales_tableAfterDelete
    TableName = 'sales'
    Left = 544
    Top = 192
    object Sales_tableid_s: TAutoIncField
      FieldName = 'id_s'
      ReadOnly = True
    end
    object Sales_tabledate_s: TDateField
      FieldName = 'date_s'
    end
    object Sales_tableid_pl: TIntegerField
      FieldName = 'id_pl'
    end
    object Sales_tableid_pc: TIntegerField
      FieldName = 'id_pc'
    end
    object Sales_tableamount_s: TIntegerField
      FieldName = 'amount_s'
    end
    object Sales_tableid_cl: TIntegerField
      FieldName = 'id_cl'
    end
    object Sales_tableid_sl_from: TIntegerField
      FieldName = 'id_sl_from'
    end
    object Sales_tablereceipt_number_s: TWideStringField
      FieldName = 'receipt_number_s'
      Size = 6
    end
    object Sales_tablefictitious_s: TBooleanField
      FieldName = 'fictitious_s'
    end
    object Sales_tableid_e: TIntegerField
      FieldName = 'id_e'
    end
  end
  object Sales_source: TDataSource
    DataSet = Sales_table
    Left = 544
    Top = 256
  end
  object Sales_buffer_table: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Sales_buffer_tableAfterDelete
    AfterDelete = Sales_buffer_tableAfterDelete
    TableName = 'sales_buffer'
    Left = 640
    Top = 208
    object Sales_buffer_tableid_sb: TAutoIncField
      FieldName = 'id_sb'
      ReadOnly = True
    end
    object Sales_buffer_tabledate_sb: TDateField
      FieldName = 'date_sb'
    end
    object Sales_buffer_tableid_pl: TIntegerField
      FieldName = 'id_pl'
    end
    object Sales_buffer_tableid_pc: TIntegerField
      FieldName = 'id_pc'
    end
    object Sales_buffer_tableamount_s: TIntegerField
      FieldName = 'amount_s'
    end
  end
  object Sales_buffer_source: TDataSource
    DataSet = Sales_buffer_table
    Left = 640
    Top = 272
  end
  object Materials_view_table: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Materials_view_tableAfterScroll
    AfterDelete = Materials_view_tableAfterScroll
    AfterScroll = Materials_view_tableAfterScroll
    TableName = 'materials_view'
    Left = 56
    Top = 584
    object Materials_view_tableid_m: TAutoIncField
      FieldName = 'id_m'
      ReadOnly = True
    end
    object Materials_view_tablename_m: TWideStringField
      FieldName = 'name_m'
      Size = 50
    end
    object Materials_view_tablename_mt: TWideStringField
      FieldName = 'name_mt'
      Size = 50
    end
    object Materials_view_tablecost_m: TBCDField
      FieldName = 'cost_m'
      Precision = 19
      Size = 2
    end
    object Materials_view_tablename_mm: TWideStringField
      FieldName = 'name_mm'
      Size = 50
    end
  end
  object Matrials_view_source: TDataSource
    DataSet = Materials_view_table
    Left = 56
    Top = 648
  end
  object Materials_table: TADOTable
    Active = True
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Materials_tableAfterDelete
    AfterDelete = Materials_tableAfterDelete
    TableName = 'materials'
    Left = 56
    Top = 712
    object Materials_tableid_m: TAutoIncField
      FieldName = 'id_m'
      ReadOnly = True
    end
    object Materials_tablename_m: TWideStringField
      FieldName = 'name_m'
      Size = 50
    end
    object Materials_tableid_mt: TIntegerField
      FieldName = 'id_mt'
    end
    object Materials_tablecost_m: TBCDField
      FieldName = 'cost_m'
      Precision = 19
      Size = 2
    end
    object Materials_tableid_mm: TIntegerField
      FieldName = 'id_mm'
    end
  end
  object Materials_source: TDataSource
    DataSet = Materials_table
    Left = 56
    Top = 776
  end
  object Material_supply_table: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Material_supply_tableAfterDelete
    AfterDelete = Material_supply_tableAfterDelete
    TableName = 'material_supply'
    Left = 448
    Top = 768
    object Material_supply_tableid_ms: TAutoIncField
      FieldName = 'id_ms'
      ReadOnly = True
    end
    object Material_supply_tabledate_ms: TDateField
      FieldName = 'date_ms'
    end
    object Material_supply_tableid_ml: TIntegerField
      FieldName = 'id_ml'
    end
    object Material_supply_tableid_mc: TIntegerField
      FieldName = 'id_mc'
    end
    object Material_supply_tableamount_ms: TBCDField
      FieldName = 'amount_ms'
      Precision = 19
      Size = 2
    end
    object Material_supply_tableid_sl_to: TIntegerField
      FieldName = 'id_sl_to'
    end
    object Material_supply_tableid_e: TIntegerField
      FieldName = 'id_e'
    end
  end
  object Material_supply_source: TDataSource
    DataSet = Material_supply_table
    Left = 448
    Top = 824
  end
  object Product_supply_buffer_view_table: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Product_supply_buffer_view_tableAfterScroll
    AfterDelete = Product_supply_buffer_view_tableAfterScroll
    AfterScroll = Product_supply_buffer_view_tableAfterScroll
    OnCalcFields = Product_supply_buffer_view_tableCalcFields
    TableName = 'product_supply_buffer_view_usd'
    Left = 448
    Top = 80
    object Product_supply_buffer_view_tableid_pb: TAutoIncField
      FieldName = 'id_pb'
      ReadOnly = True
    end
    object Product_supply_buffer_view_tabledate_pb: TDateField
      FieldName = 'date_pb'
    end
    object Product_supply_buffer_view_tablename_p: TWideStringField
      FieldName = 'name_p'
      Size = 50
    end
    object Product_supply_buffer_view_tablename_pc: TWideStringField
      FieldName = 'name_pc'
      Size = 50
    end
    object Product_supply_buffer_view_tablename_pt: TWideStringField
      FieldName = 'name_pt'
      Size = 50
    end
    object Product_supply_buffer_view_tableamount: TIntegerField
      FieldName = 'amount'
    end
    object Product_supply_buffer_view_tableproceeds: TWideStringField
      FieldName = 'proceeds'
      Size = 35
    end
    object Product_supply_buffer_view_tablecost_price: TWideStringField
      FieldName = 'cost_price'
      Size = 35
    end
    object Product_supply_buffer_view_tableadded_value: TWideStringField
      FieldName = 'added_value'
      Size = 35
    end
    object Product_supply_buffer_view_tableproceeds_sort: TFMTBCDField
      FieldName = 'proceeds_sort'
      Precision = 29
      Size = 2
    end
    object Product_supply_buffer_view_tablecost_price_sort: TFMTBCDField
      FieldName = 'cost_price_sort'
      Precision = 29
      Size = 2
    end
    object Product_supply_buffer_view_tableadded_value_sort: TFMTBCDField
      FieldName = 'added_value_sort'
      Precision = 29
      Size = 2
    end
  end
  object Product_supply_buffer_view_source: TDataSource
    DataSet = Product_supply_buffer_view_table
    Left = 448
    Top = 144
  end
  object Product_supply_buffer_table: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Product_supply_buffer_tableAfterDelete
    AfterDelete = Product_supply_buffer_tableAfterDelete
    TableName = 'product_supply_buffer'
    Left = 448
    Top = 208
    object Product_supply_buffer_tableid_pb: TAutoIncField
      FieldName = 'id_pb'
      ReadOnly = True
    end
    object Product_supply_buffer_tabledate_pb: TDateField
      FieldName = 'date_pb'
    end
    object Product_supply_buffer_tableid_pl: TIntegerField
      FieldName = 'id_pl'
    end
    object Product_supply_buffer_tableid_pc: TIntegerField
      FieldName = 'id_pc'
    end
    object Product_supply_buffer_tableamount_ps: TIntegerField
      FieldName = 'amount_ps'
    end
  end
  object Product_supply_buffer_source: TDataSource
    DataSet = Product_supply_buffer_table
    Left = 448
    Top = 272
  end
  object Material_supply_buffer_view_table: TADOTable
    Active = True
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Material_supply_buffer_view_tableAfterScroll
    AfterDelete = Material_supply_buffer_view_tableAfterScroll
    AfterScroll = Material_supply_buffer_view_tableAfterScroll
    OnCalcFields = Material_supply_buffer_view_tableCalcFields
    TableName = 'material_supply_buffer_view_usd'
    Left = 544
    Top = 568
    object Material_supply_buffer_view_tableid_mb: TAutoIncField
      FieldName = 'id_mb'
      ReadOnly = True
    end
    object Material_supply_buffer_view_tabledate_mb: TDateField
      FieldName = 'date_mb'
    end
    object Material_supply_buffer_view_tablename_m: TWideStringField
      FieldName = 'name_m'
      Size = 50
    end
    object Material_supply_buffer_view_tablename_mt: TWideStringField
      FieldName = 'name_mt'
      Size = 50
    end
    object Material_supply_buffer_view_tablename_mc: TWideStringField
      FieldName = 'name_mc'
      Size = 50
    end
    object Material_supply_buffer_view_tableamount: TBCDField
      FieldName = 'amount'
      Precision = 19
      Size = 2
    end
    object Material_supply_buffer_view_tablename_mm: TWideStringField
      FieldName = 'name_mm'
      Size = 50
    end
    object Material_supply_buffer_view_tablecost: TWideStringField
      FieldName = 'cost'
      Size = 43
    end
    object Material_supply_buffer_view_tablecost_sort: TFMTBCDField
      FieldName = 'cost_sort'
      Precision = 38
      Size = 4
    end
  end
  object Material_supply_buffer_view_source: TDataSource
    DataSet = Material_supply_buffer_view_table
    Left = 544
    Top = 624
  end
  object Material_supply_buffer_table: TADOTable
    Active = True
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Material_supply_buffer_tableAfterDelete
    AfterDelete = Material_supply_buffer_tableAfterDelete
    TableName = 'material_supply_buffer'
    Left = 544
    Top = 696
    object Material_supply_buffer_tableid_mb: TAutoIncField
      FieldName = 'id_mb'
      ReadOnly = True
    end
    object Material_supply_buffer_tabledate_mb: TDateField
      FieldName = 'date_mb'
    end
    object Material_supply_buffer_tableid_ml: TIntegerField
      FieldName = 'id_ml'
    end
    object Material_supply_buffer_tableid_mc: TIntegerField
      FieldName = 'id_mc'
    end
    object Material_supply_buffer_tableamount_ms: TBCDField
      FieldName = 'amount_ms'
      Precision = 19
      Size = 2
    end
  end
  object Material_supply_buffer_source: TDataSource
    DataSet = Material_supply_buffer_table
    Left = 544
    Top = 760
  end
  object Today_rate_table: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    TableName = 'today_rate'
    Left = 1208
    Top = 80
    object Today_rate_tableid_r: TAutoIncField
      FieldName = 'id_r'
      ReadOnly = True
    end
    object Today_rate_tabledate_r: TDateField
      FieldName = 'date_r'
    end
    object Today_rate_tableKGS: TBCDField
      FieldName = 'KGS'
      Precision = 19
      Size = 2
    end
    object Today_rate_tableRUB: TBCDField
      FieldName = 'RUB'
      Precision = 19
      Size = 2
    end
  end
  object Today_rate_source: TDataSource
    DataSet = Today_rate_table
    Left = 1208
    Top = 144
  end
  object Sales_source_2: TDataSource
    DataSet = Sales_table_2
    Left = 544
    Top = 384
  end
  object Sales_table_2: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Sales_tableAfterDelete
    AfterDelete = Sales_tableAfterDelete
    TableName = 'sales'
    Left = 544
    Top = 320
    object AutoIncField3: TAutoIncField
      FieldName = 'id_s'
      ReadOnly = True
    end
    object DateField1: TDateField
      FieldName = 'date_s'
    end
    object IntegerField1: TIntegerField
      FieldName = 'id_pl'
    end
    object IntegerField2: TIntegerField
      FieldName = 'id_pc'
    end
    object IntegerField3: TIntegerField
      FieldName = 'amount_s'
    end
    object IntegerField4: TIntegerField
      FieldName = 'id_cl'
    end
    object IntegerField5: TIntegerField
      FieldName = 'id_sl_from'
    end
    object WideStringField1: TWideStringField
      FieldName = 'receipt_number_s'
      Size = 6
    end
    object BooleanField1: TBooleanField
      FieldName = 'fictitious_s'
    end
    object IntegerField6: TIntegerField
      FieldName = 'id_e'
    end
  end
  object Storages_table_2: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Storages_tableAfterDelete
    AfterDelete = Storages_tableAfterDelete
    TableName = 'storages'
    Left = 936
    Top = 192
    object AutoIncField4: TAutoIncField
      FieldName = 'id_sl'
      ReadOnly = True
    end
    object WideStringField3: TWideStringField
      FieldName = 'name_sl'
      Size = 50
    end
    object WideStringField4: TWideStringField
      FieldName = 'info_sl'
      Size = 510
    end
    object WideStringField5: TWideStringField
      FieldName = 'type_sl'
      Size = 5
    end
    object StringField1: TStringField
      FieldName = 'address_sl'
      Size = 100
    end
  end
  object Storages_source_2: TDataSource
    DataSet = Storages_table_2
    Left = 936
    Top = 256
  end
  object Sales_view_table_search: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    Filtered = True
    AfterPost = Sales_view_tableAfterScroll
    AfterDelete = Sales_view_tableAfterScroll
    AfterScroll = Sales_view_tableAfterScroll
    OnCalcFields = Sales_view_tableCalcFields
    TableName = 'sales_view_kgs'
    Left = 544
    Top = 16
    object AutoIncField5: TAutoIncField
      FieldName = 'id_s'
      ReadOnly = True
    end
    object DateField2: TDateField
      FieldName = 'date'
    end
    object WideStringField6: TWideStringField
      FieldName = 'name_p'
      Size = 50
    end
    object WideStringField7: TWideStringField
      FieldName = 'name_pt'
      Size = 50
    end
    object WideStringField8: TWideStringField
      FieldName = 'name_pc'
      Size = 50
    end
    object IntegerField7: TIntegerField
      FieldName = 'amount'
    end
    object WideStringField9: TWideStringField
      FieldName = 'name_c'
      Size = 50
    end
    object WideStringField10: TWideStringField
      FieldName = 'name_sl'
      Size = 50
    end
    object WideStringField11: TWideStringField
      FieldName = 'receipt_number'
      Size = 6
    end
    object BooleanField2: TBooleanField
      FieldName = 'fictitious'
    end
    object WideStringField12: TWideStringField
      FieldName = 'name_e'
    end
    object WideStringField13: TWideStringField
      FieldName = 'proceeds'
      Size = 25
    end
    object WideStringField14: TWideStringField
      FieldName = 'cost_price'
      Size = 25
    end
    object WideStringField15: TWideStringField
      FieldName = 'added_value'
      Size = 25
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'proceeds_sort'
      Precision = 29
      Size = 2
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'cost_price_sort'
      Precision = 29
      Size = 2
    end
    object FMTBCDField3: TFMTBCDField
      FieldName = 'added_value_sort'
      Precision = 29
      Size = 2
    end
  end
  object Product_supply_view_table_search: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    Filtered = True
    AfterPost = Product_supply_view_tableAfterScroll
    AfterDelete = Product_supply_view_tableAfterScroll
    AfterScroll = Product_supply_view_tableAfterScroll
    OnCalcFields = Product_supply_view_tableCalcFields
    TableName = 'product_supply_view_usd'
    Left = 352
    Top = 16
    object AutoIncField6: TAutoIncField
      FieldName = 'id_ps'
      ReadOnly = True
    end
    object DateField3: TDateField
      FieldName = 'date'
    end
    object WideStringField16: TWideStringField
      FieldName = 'name_p'
      Size = 50
    end
    object WideStringField17: TWideStringField
      FieldName = 'name_pt'
      Size = 50
    end
    object WideStringField18: TWideStringField
      FieldName = 'name_pc'
      Size = 50
    end
    object IntegerField8: TIntegerField
      FieldName = 'amount'
    end
    object WideStringField19: TWideStringField
      FieldName = 'storage_from'
      Size = 50
    end
    object WideStringField20: TWideStringField
      FieldName = 'storage_to'
      Size = 50
    end
    object WideStringField21: TWideStringField
      FieldName = 'proceeds'
      Size = 25
    end
    object WideStringField22: TWideStringField
      FieldName = 'cost_price'
      Size = 25
    end
    object WideStringField23: TWideStringField
      FieldName = 'added_value'
      Size = 25
    end
    object BooleanField3: TBooleanField
      FieldName = 'fictitious'
    end
    object WideStringField24: TWideStringField
      FieldName = 'name_e'
    end
    object FMTBCDField4: TFMTBCDField
      FieldName = 'proceeds_sort'
      Precision = 29
      Size = 2
    end
    object FMTBCDField5: TFMTBCDField
      FieldName = 'cost_price_sort'
      Precision = 29
      Size = 2
    end
    object FMTBCDField6: TFMTBCDField
      FieldName = 'added_value_sort'
      Precision = 29
      Size = 2
    end
  end
  object Material_supply_view_table_search: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    Filtered = True
    AfterPost = Material_supply_view_tableAfterScroll
    AfterDelete = Material_supply_view_tableAfterScroll
    AfterScroll = Material_supply_view_tableAfterScroll
    OnCalcFields = Material_supply_view_tableCalcFields
    TableName = 'material_supply_view_usd'
    Left = 448
    Top = 584
    object AutoIncField7: TAutoIncField
      FieldName = 'id_ms'
      ReadOnly = True
    end
    object DateField4: TDateField
      FieldName = 'date'
    end
    object WideStringField25: TWideStringField
      FieldName = 'name_m'
      Size = 50
    end
    object WideStringField26: TWideStringField
      FieldName = 'name_mt'
      Size = 50
    end
    object WideStringField27: TWideStringField
      FieldName = 'name_mc'
      Size = 50
    end
    object BCDField1: TBCDField
      FieldName = 'amount'
      Precision = 19
      Size = 2
    end
    object WideStringField28: TWideStringField
      FieldName = 'name_sl'
      Size = 50
    end
    object WideStringField29: TWideStringField
      FieldName = 'cost'
      Size = 25
    end
    object WideStringField30: TWideStringField
      FieldName = 'name_e'
    end
    object FMTBCDField7: TFMTBCDField
      FieldName = 'cost_sort'
      Precision = 38
      Size = 4
    end
    object Material_supply_view_table_searchname_mm: TWideStringField
      FieldName = 'name_mm'
      Size = 50
    end
  end
  object Material_measure_table_1: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Material_measure_table_1AfterDelete
    AfterDelete = Material_measure_table_1AfterDelete
    TableName = 'material_measure'
    Left = 256
    Top = 584
    object Material_measure_table_1id_mm: TAutoIncField
      FieldName = 'id_mm'
      ReadOnly = True
    end
    object Material_measure_table_1name_mm: TWideStringField
      FieldName = 'name_mm'
      Size = 50
    end
  end
  object Material_measure_source_1: TDataSource
    DataSet = Material_measure_table_1
    Left = 256
    Top = 648
  end
  object Material_measure_source_2: TDataSource
    DataSet = Material_measure_table_2
    Left = 256
    Top = 776
  end
  object Material_measure_table_2: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Material_measure_table_1AfterDelete
    AfterDelete = Material_measure_table_1AfterDelete
    TableName = 'material_measure'
    Left = 256
    Top = 712
    object AutoIncField8: TAutoIncField
      FieldName = 'id_mm'
      ReadOnly = True
    end
    object WideStringField34: TWideStringField
      FieldName = 'name_mm'
      Size = 50
    end
  end
  object Storages_view_source: TDataSource
    DataSet = Storages_view_table
    Left = 936
    Top = 384
  end
  object Storages_manufactories_table: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    TableName = 'storages_manufactories'
    Left = 936
    Top = 448
    object Storages_manufactories_tableid_sl: TAutoIncField
      FieldName = 'id_sl'
      ReadOnly = True
    end
    object Storages_manufactories_tablename_sl: TWideStringField
      FieldName = 'name_sl'
      Size = 50
    end
    object Storages_manufactories_tableinfo_sl: TWideStringField
      FieldName = 'info_sl'
      Size = 510
    end
    object Storages_manufactories_tabletype_sl: TWideStringField
      FieldName = 'type_sl'
      Size = 5
    end
    object Storages_manufactories_tableaddress_sl: TWideStringField
      FieldName = 'address_sl'
      Size = 100
    end
  end
  object Storages_manufactories_source: TDataSource
    DataSet = Storages_manufactories_table
    Left = 936
    Top = 512
  end
  object Storages_view_table: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Storages_view_tableAfterDelete
    AfterDelete = Storages_view_tableAfterDelete
    AfterScroll = Storages_view_tableAfterDelete
    TableName = 'storages_view'
    Left = 936
    Top = 328
    object Storages_view_tableid_sl: TAutoIncField
      FieldName = 'id_sl'
      ReadOnly = True
    end
    object Storages_view_tablename_sl: TWideStringField
      FieldName = 'name_sl'
      Size = 50
    end
    object Storages_view_tableinfo_sl: TWideStringField
      FieldName = 'info_sl'
      Size = 510
    end
    object Storages_view_tabletype_sl: TWideStringField
      FieldName = 'type_sl'
      Size = 5
    end
    object Storages_view_tableaddress_sl: TWideStringField
      FieldName = 'address_sl'
      Size = 100
    end
  end
  object Storage_table_KGS: TADOQuery
    Connection = DataBaseConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'id_sl'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = '1'
      end
      item
        Name = 'id_sl'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = '1'
      end
      item
        Name = 'id_sl'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT'
      '  storage.id_ps AS id_ps,'
      '  storage.name_p AS name_p,'
      '  storage.name_pt AS name_pt,'
      '  storage.name_pc AS name_pc,'
      '  storage.amount AS amount,'
      
        '  IFNULL(CONCAT(ROUND(storage.amount * products.proceeds_p * tod' +
        'ay_rate.KGS, 2), '#39' KGS'#39'), CONCAT(ROUND(storage.amount * products' +
        '.proceeds_p, 2), '#39' USD'#39')) AS proceeds,'
      
        '  IFNULL(CONCAT(ROUND(storage.amount * products.cost_price_p * t' +
        'oday_rate.KGS, 2), '#39' KGS'#39'), CONCAT(ROUND(storage.amount * produc' +
        'ts.cost_price_p, 2), '#39' USD'#39')) AS cost_price,'
      
        '  IFNULL(CONCAT(ROUND(storage.amount * products.added_value_p * ' +
        'today_rate.KGS, 2), '#39' KGS'#39'), CONCAT(ROUND(storage.amount * produ' +
        'cts.added_value_p, 2), '#39' USD'#39')) AS added_value,'
      
        '  IFNULL(ROUND(storage.amount * products.proceeds_p * today_rate' +
        '.KGS, 2), ROUND(storage.amount * products.proceeds_p, 2)) AS pro' +
        'ceeds_sort,'
      
        '  IFNULL(ROUND(storage.amount * products.cost_price_p * today_ra' +
        'te.KGS, 2), ROUND(storage.amount * products.cost_price_p, 2)) AS' +
        ' cost_price_sort,'
      
        '  IFNULL(ROUND(storage.amount * products.added_value_p * today_r' +
        'ate.KGS, 2), ROUND(storage.amount * products.added_value_p, 2)) ' +
        'AS added_value_sort'
      'FROM (SELECT'
      '    allcolorproducts.id_p AS id_p,'
      '    allcolorproducts.name_p AS name_p,'
      '    product_type.name_pt AS name_pt,'
      '    product_color.name_pc AS name_pc,'
      
        '    IFNULL(IFNULL(IFNULL((productsupply.amount - productdepart.a' +
        'mount) - productsales.amount, productsupply.amount - productdepa' +
        'rt.amount), productsupply.amount - productsales.amount), product' +
        'supply.amount) AS amount,'
      '    productsales.id_sl_from AS id_sl_from_s,'
      '    productsupply.id_sl_to AS id_sl_to_ps,'
      '    productdepart.id_sl_from AS id_sl_from_ps,'
      '    productsupply.id_ps AS id_ps'
      '  FROM (SELECT'
      '      products.id_p AS id_p,'
      '      products.name_p AS name_p,'
      '      products.id_pt AS id_pt,'
      '      products.proceeds_p AS proceeds_p,'
      '      products.cost_price_p AS cost_price_p,'
      '      products.added_value_p AS added_value_p,'
      '      product_color.id_pc AS id_pc,'
      '      product_color.name_pc AS name_pc'
      '    FROM products'
      '      INNER JOIN product_color) allcolorproducts'
      '    INNER JOIN product_color'
      '      ON allcolorproducts.id_pc = product_color.id_pc'
      '    INNER JOIN product_type'
      '      ON allcolorproducts.id_pt = product_type.id_pt'
      '    LEFT OUTER JOIN (SELECT'
      '        sales.id_pl AS id_pl,'
      '        sales.id_pc AS id_pc,'
      '        SUM(sales.amount_s) AS amount,'
      '        sales.id_sl_from AS id_sl_from'
      '      FROM sales'
      '      WHERE sales.id_sl_from = :id_sl'
      '      GROUP BY sales.id_pl,'
      '               sales.id_pc) productsales'
      '      ON allcolorproducts.id_p = productsales.id_pl'
      '      AND allcolorproducts.id_pc = productsales.id_pc'
      '    LEFT OUTER JOIN (SELECT'
      '        product_supply.id_pl AS id_pl,'
      '        product_supply.id_pc AS id_pc,'
      '        SUM(product_supply.amount_ps) AS amount,'
      '        product_supply.id_sl_from AS id_sl_from'
      '      FROM product_supply'
      '      WHERE product_supply.id_sl_from = :id_sl'
      '      GROUP BY product_supply.id_pl,'
      '               product_supply.id_pc) productdepart'
      '      ON allcolorproducts.id_p = productdepart.id_pl'
      '      AND allcolorproducts.id_pc = productdepart.id_pc'
      '    LEFT OUTER JOIN (SELECT'
      '        product_supply.id_pl AS id_pl,'
      '        product_supply.id_pc AS id_pc,'
      '        SUM(product_supply.amount_ps) AS amount,'
      '        product_supply.id_sl_to AS id_sl_to,'
      '        product_supply.id_ps AS id_ps'
      '      FROM product_supply'
      '      WHERE product_supply.id_sl_to = :id_sl'
      '      GROUP BY product_supply.id_pl,'
      '               product_supply.id_pc) productsupply'
      '      ON allcolorproducts.id_p = productsupply.id_pl'
      '      AND allcolorproducts.id_pc = productsupply.id_pc) storage'
      '  LEFT OUTER JOIN products'
      '    ON storage.id_p = products.id_p'
      '  INNER JOIN (SELECT'
      '      rate.date_r AS date_r,'
      '      rate.KGS AS KGS,'
      '      rate.RUB AS RUB'
      '    FROM rate'
      '    WHERE rate.date_r = CURDATE()) today_rate'
      'WHERE storage.amount >= 1'
      'ORDER BY storage.name_p, storage.amount DESC')
    Left = 1216
    Top = 424
    object Storage_table_KGSid_ps: TIntegerField
      FieldName = 'id_ps'
    end
    object Storage_table_KGSname_p: TWideStringField
      FieldName = 'name_p'
      Size = 50
    end
    object Storage_table_KGSname_pt: TWideStringField
      FieldName = 'name_pt'
      Size = 50
    end
    object Storage_table_KGSname_pc: TWideStringField
      FieldName = 'name_pc'
      Size = 50
    end
    object Storage_table_KGSamount: TFMTBCDField
      FieldName = 'amount'
      Precision = 34
      Size = 0
    end
    object Storage_table_KGSproceeds: TWideStringField
      FieldName = 'proceeds'
      ReadOnly = True
      Size = 70
    end
    object Storage_table_KGScost_price: TWideStringField
      FieldName = 'cost_price'
      ReadOnly = True
      Size = 70
    end
    object Storage_table_KGSadded_value: TWideStringField
      FieldName = 'added_value'
      ReadOnly = True
      Size = 70
    end
    object Storage_table_KGSproceeds_sort: TFMTBCDField
      FieldName = 'proceeds_sort'
      ReadOnly = True
      Precision = 64
      Size = 2
    end
    object Storage_table_KGScost_price_sort: TFMTBCDField
      FieldName = 'cost_price_sort'
      ReadOnly = True
      Precision = 64
      Size = 2
    end
    object Storage_table_KGSadded_value_sort: TFMTBCDField
      FieldName = 'added_value_sort'
      ReadOnly = True
      Precision = 64
      Size = 2
    end
  end
  object Storage_table_search: TADOQuery
    Connection = DataBaseConnection
    CursorType = ctStatic
    Filtered = True
    Parameters = <
      item
        Name = 'id_sl'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = '1'
      end
      item
        Name = 'id_sl'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'id_sl'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      '  storage.id_ps AS id_ps,'
      '  storage.name_p AS name_p,'
      '  storage.name_pt AS name_pt,'
      '  storage.name_pc AS name_pc,'
      '  storage.amount AS amount,'
      
        '  CONCAT(ROUND(storage.amount * products.proceeds_p, 2), '#39' USD'#39')' +
        ' AS proceeds,'
      
        '  CONCAT(ROUND(storage.amount * products.cost_price_p, 2), '#39' USD' +
        #39') AS cost_price,'
      
        '  CONCAT(ROUND(storage.amount * products.added_value_p, 2), '#39' US' +
        'D'#39') AS added_value,'
      
        '  ROUND(storage.amount * products.proceeds_p, 2) AS proceeds_sor' +
        't,'
      
        '  ROUND(storage.amount * products.cost_price_p, 2) AS cost_price' +
        '_sort,'
      
        '  ROUND(storage.amount * products.added_value_p, 2) AS added_val' +
        'ue_sort'
      'FROM (SELECT'
      '    allcolorproducts.id_p AS id_p,'
      '    allcolorproducts.name_p AS name_p,'
      '    product_type.name_pt AS name_pt,'
      '    product_color.name_pc AS name_pc,'
      
        '    IFNULL(IFNULL(IFNULL((productsupply.amount - productdepart.a' +
        'mount) - productsales.amount, productsupply.amount - productdepa' +
        'rt.amount), productsupply.amount - productsales.amount), product' +
        'supply.amount) AS amount,'
      '    productsales.id_sl_from AS id_sl_from_s,'
      '    productsupply.id_sl_to AS id_sl_to_ps,'
      '    productdepart.id_sl_from AS id_sl_from_ps,'
      '    productsupply.id_ps AS id_ps'
      '  FROM (SELECT'
      '      products.id_p AS id_p,'
      '      products.name_p AS name_p,'
      '      products.id_pt AS id_pt,'
      '      products.proceeds_p AS proceeds_p,'
      '      products.cost_price_p AS cost_price_p,'
      '      products.added_value_p AS added_value_p,'
      '      product_color.id_pc AS id_pc,'
      '      product_color.name_pc AS name_pc'
      '    FROM products'
      '      INNER JOIN product_color) allcolorproducts'
      '    INNER JOIN product_color'
      '      ON allcolorproducts.id_pc = product_color.id_pc'
      '    INNER JOIN product_type'
      '      ON allcolorproducts.id_pt = product_type.id_pt'
      '    LEFT OUTER JOIN (SELECT'
      '        sales.id_pl AS id_pl,'
      '        sales.id_pc AS id_pc,'
      '        SUM(sales.amount_s) AS amount,'
      '        sales.id_sl_from AS id_sl_from'
      '      FROM sales'
      '      WHERE sales.id_sl_from = :id_sl'
      '      GROUP BY sales.id_pl,'
      '               sales.id_pc) productsales'
      '      ON allcolorproducts.id_p = productsales.id_pl'
      '      AND allcolorproducts.id_pc = productsales.id_pc'
      '    LEFT OUTER JOIN (SELECT'
      '        product_supply.id_pl AS id_pl,'
      '        product_supply.id_pc AS id_pc,'
      '        SUM(product_supply.amount_ps) AS amount,'
      '        product_supply.id_sl_from AS id_sl_from'
      '      FROM product_supply'
      '      WHERE product_supply.id_sl_from = :id_sl'
      '      GROUP BY product_supply.id_pl,'
      '               product_supply.id_pc) productdepart'
      '      ON allcolorproducts.id_p = productdepart.id_pl'
      '      AND allcolorproducts.id_pc = productdepart.id_pc'
      '    LEFT OUTER JOIN (SELECT'
      '        product_supply.id_pl AS id_pl,'
      '        product_supply.id_pc AS id_pc,'
      '        SUM(product_supply.amount_ps) AS amount,'
      '        product_supply.id_sl_to AS id_sl_to,'
      '        product_supply.id_ps AS id_ps'
      '      FROM product_supply'
      '      WHERE product_supply.id_sl_to = :id_sl'
      '      GROUP BY product_supply.id_pl,'
      '               product_supply.id_pc) productsupply'
      '      ON allcolorproducts.id_p = productsupply.id_pl'
      '      AND allcolorproducts.id_pc = productsupply.id_pc) storage'
      '  LEFT OUTER JOIN products'
      '    ON storage.id_p = products.id_p'
      '  INNER JOIN (SELECT'
      '      rate.date_r AS date_r,'
      '      rate.KGS AS KGS,'
      '      rate.RUB AS RUB'
      '    FROM rate'
      '    WHERE rate.date_r = CURDATE()) today_rate'
      'WHERE storage.amount >= 1'
      '')
    Left = 1216
    Top = 360
    object Storage_table_searchid_ps: TIntegerField
      FieldName = 'id_ps'
    end
    object WideStringField31: TWideStringField
      FieldName = 'name_p'
      Size = 50
    end
    object WideStringField32: TWideStringField
      FieldName = 'name_pt'
      Size = 50
    end
    object WideStringField33: TWideStringField
      FieldName = 'name_pc'
      Size = 50
    end
    object FMTBCDField8: TFMTBCDField
      FieldName = 'amount'
      Precision = 34
      Size = 0
    end
    object WideStringField35: TWideStringField
      FieldName = 'proceeds'
      ReadOnly = True
      Size = 70
    end
    object WideStringField36: TWideStringField
      FieldName = 'cost_price'
      ReadOnly = True
      Size = 70
    end
    object WideStringField37: TWideStringField
      FieldName = 'added_value'
      ReadOnly = True
      Size = 70
    end
    object FMTBCDField9: TFMTBCDField
      FieldName = 'proceeds_sort'
      ReadOnly = True
      Precision = 64
      Size = 2
    end
    object FMTBCDField10: TFMTBCDField
      FieldName = 'cost_price_sort'
      ReadOnly = True
      Precision = 64
      Size = 2
    end
    object FMTBCDField11: TFMTBCDField
      FieldName = 'added_value_sort'
      ReadOnly = True
      Precision = 64
      Size = 2
    end
  end
  object Storage_table_RUB: TADOQuery
    Connection = DataBaseConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'id_sl'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = '1'
      end
      item
        Name = 'id_sl'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = '1'
      end
      item
        Name = 'id_sl'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT'
      '  storage.id_ps AS id_ps,'
      '  storage.name_p AS name_p,'
      '  storage.name_pt AS name_pt,'
      '  storage.name_pc AS name_pc,'
      '  storage.amount AS amount,'
      
        '  IFNULL(CONCAT(ROUND(storage.amount * products.proceeds_p * tod' +
        'ay_rate.RUB, 2), '#39' RUB'#39'), CONCAT(ROUND(storage.amount * products' +
        '.proceeds_p, 2), '#39' USD'#39')) AS proceeds,'
      
        '  IFNULL(CONCAT(ROUND(storage.amount * products.cost_price_p * t' +
        'oday_rate.RUB, 2), '#39' RUB'#39'), CONCAT(ROUND(storage.amount * produc' +
        'ts.cost_price_p, 2), '#39' USD'#39')) AS cost_price,'
      
        '  IFNULL(CONCAT(ROUND(storage.amount * products.added_value_p * ' +
        'today_rate.RUB, 2), '#39' RUB'#39'), CONCAT(ROUND(storage.amount * produ' +
        'cts.added_value_p, 2), '#39' USD'#39')) AS added_value,'
      
        '  IFNULL(ROUND(storage.amount * products.proceeds_p * today_rate' +
        '.RUB, 2), ROUND(storage.amount * products.proceeds_p, 2)) AS pro' +
        'ceeds_sort,'
      
        '  IFNULL(ROUND(storage.amount * products.cost_price_p * today_ra' +
        'te.RUB, 2), ROUND(storage.amount * products.cost_price_p, 2)) AS' +
        ' cost_price_sort,'
      
        '  IFNULL(ROUND(storage.amount * products.added_value_p * today_r' +
        'ate.RUB, 2), ROUND(storage.amount * products.added_value_p, 2)) ' +
        'AS added_value_sort'
      'FROM (SELECT'
      '    allcolorproducts.id_p AS id_p,'
      '    allcolorproducts.name_p AS name_p,'
      '    product_type.name_pt AS name_pt,'
      '    product_color.name_pc AS name_pc,'
      
        '    IFNULL(IFNULL(IFNULL((productsupply.amount - productdepart.a' +
        'mount) - productsales.amount, productsupply.amount - productdepa' +
        'rt.amount), productsupply.amount - productsales.amount), product' +
        'supply.amount) AS amount,'
      '    productsales.id_sl_from AS id_sl_from_s,'
      '    productsupply.id_sl_to AS id_sl_to_ps,'
      '    productdepart.id_sl_from AS id_sl_from_ps,'
      '    productsupply.id_ps AS id_ps'
      '  FROM (SELECT'
      '      products.id_p AS id_p,'
      '      products.name_p AS name_p,'
      '      products.id_pt AS id_pt,'
      '      products.proceeds_p AS proceeds_p,'
      '      products.cost_price_p AS cost_price_p,'
      '      products.added_value_p AS added_value_p,'
      '      product_color.id_pc AS id_pc,'
      '      product_color.name_pc AS name_pc'
      '    FROM products'
      '      INNER JOIN product_color) allcolorproducts'
      '    INNER JOIN product_color'
      '      ON allcolorproducts.id_pc = product_color.id_pc'
      '    INNER JOIN product_type'
      '      ON allcolorproducts.id_pt = product_type.id_pt'
      '    LEFT OUTER JOIN (SELECT'
      '        sales.id_pl AS id_pl,'
      '        sales.id_pc AS id_pc,'
      '        SUM(sales.amount_s) AS amount,'
      '        sales.id_sl_from AS id_sl_from'
      '      FROM sales'
      '      WHERE sales.id_sl_from = :id_sl'
      '      GROUP BY sales.id_pl,'
      '               sales.id_pc) productsales'
      '      ON allcolorproducts.id_p = productsales.id_pl'
      '      AND allcolorproducts.id_pc = productsales.id_pc'
      '    LEFT OUTER JOIN (SELECT'
      '        product_supply.id_pl AS id_pl,'
      '        product_supply.id_pc AS id_pc,'
      '        SUM(product_supply.amount_ps) AS amount,'
      '        product_supply.id_sl_from AS id_sl_from'
      '      FROM product_supply'
      '      WHERE product_supply.id_sl_from = :id_sl'
      '      GROUP BY product_supply.id_pl,'
      '               product_supply.id_pc) productdepart'
      '      ON allcolorproducts.id_p = productdepart.id_pl'
      '      AND allcolorproducts.id_pc = productdepart.id_pc'
      '    LEFT OUTER JOIN (SELECT'
      '        product_supply.id_pl AS id_pl,'
      '        product_supply.id_pc AS id_pc,'
      '        SUM(product_supply.amount_ps) AS amount,'
      '        product_supply.id_sl_to AS id_sl_to,'
      '        product_supply.id_ps AS id_ps'
      '      FROM product_supply'
      '      WHERE product_supply.id_sl_to = :id_sl'
      '      GROUP BY product_supply.id_pl,'
      '               product_supply.id_pc) productsupply'
      '      ON allcolorproducts.id_p = productsupply.id_pl'
      '      AND allcolorproducts.id_pc = productsupply.id_pc) storage'
      '  LEFT OUTER JOIN products'
      '    ON storage.id_p = products.id_p'
      '  INNER JOIN (SELECT'
      '      rate.date_r AS date_r,'
      '      rate.KGS AS KGS,'
      '      rate.RUB AS RUB'
      '    FROM rate'
      '    WHERE rate.date_r = CURDATE()) today_rate'
      'WHERE storage.amount >= 1'
      'ORDER BY storage.name_p, storage.amount DESC')
    Left = 1216
    Top = 488
    object Storage_table_RUBid_ps: TIntegerField
      FieldName = 'id_ps'
    end
    object WideStringField38: TWideStringField
      FieldName = 'name_p'
      Size = 50
    end
    object WideStringField39: TWideStringField
      FieldName = 'name_pt'
      Size = 50
    end
    object WideStringField40: TWideStringField
      FieldName = 'name_pc'
      Size = 50
    end
    object FMTBCDField12: TFMTBCDField
      FieldName = 'amount'
      Precision = 34
      Size = 0
    end
    object WideStringField41: TWideStringField
      FieldName = 'proceeds'
      ReadOnly = True
      Size = 70
    end
    object WideStringField42: TWideStringField
      FieldName = 'cost_price'
      ReadOnly = True
      Size = 70
    end
    object WideStringField43: TWideStringField
      FieldName = 'added_value'
      ReadOnly = True
      Size = 70
    end
    object FMTBCDField13: TFMTBCDField
      FieldName = 'proceeds_sort'
      ReadOnly = True
      Precision = 64
      Size = 2
    end
    object FMTBCDField14: TFMTBCDField
      FieldName = 'cost_price_sort'
      ReadOnly = True
      Precision = 64
      Size = 2
    end
    object FMTBCDField15: TFMTBCDField
      FieldName = 'added_value_sort'
      ReadOnly = True
      Precision = 64
      Size = 2
    end
  end
  object Storage_table_USD: TADOQuery
    Connection = DataBaseConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'id_sl'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = '1'
      end
      item
        Name = 'id_sl'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'id_sl'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      '  storage.id_ps AS id_ps,'
      '  storage.name_p AS name_p,'
      '  storage.name_pt AS name_pt,'
      '  storage.name_pc AS name_pc,'
      '  storage.amount AS amount,'
      
        '  CONCAT(ROUND(storage.amount * products.proceeds_p, 2), '#39' USD'#39')' +
        ' AS proceeds,'
      
        '  CONCAT(ROUND(storage.amount * products.cost_price_p, 2), '#39' USD' +
        #39') AS cost_price,'
      
        '  CONCAT(ROUND(storage.amount * products.added_value_p, 2), '#39' US' +
        'D'#39') AS added_value,'
      
        '  ROUND(storage.amount * products.proceeds_p, 2) AS proceeds_sor' +
        't,'
      
        '  ROUND(storage.amount * products.cost_price_p, 2) AS cost_price' +
        '_sort,'
      
        '  ROUND(storage.amount * products.added_value_p, 2) AS added_val' +
        'ue_sort'
      'FROM (SELECT'
      '    allcolorproducts.id_p AS id_p,'
      '    allcolorproducts.name_p AS name_p,'
      '    product_type.name_pt AS name_pt,'
      '    product_color.name_pc AS name_pc,'
      
        '    IFNULL(IFNULL(IFNULL((productsupply.amount - productdepart.a' +
        'mount) - productsales.amount, productsupply.amount - productdepa' +
        'rt.amount), productsupply.amount - productsales.amount), product' +
        'supply.amount) AS amount,'
      '    productsales.id_sl_from AS id_sl_from_s,'
      '    productsupply.id_sl_to AS id_sl_to_ps,'
      '    productdepart.id_sl_from AS id_sl_from_ps,'
      '    productsupply.id_ps AS id_ps'
      '  FROM (SELECT'
      '      products.id_p AS id_p,'
      '      products.name_p AS name_p,'
      '      products.id_pt AS id_pt,'
      '      products.proceeds_p AS proceeds_p,'
      '      products.cost_price_p AS cost_price_p,'
      '      products.added_value_p AS added_value_p,'
      '      product_color.id_pc AS id_pc,'
      '      product_color.name_pc AS name_pc'
      '    FROM products'
      '      INNER JOIN product_color) allcolorproducts'
      '    INNER JOIN product_color'
      '      ON allcolorproducts.id_pc = product_color.id_pc'
      '    INNER JOIN product_type'
      '      ON allcolorproducts.id_pt = product_type.id_pt'
      '    LEFT OUTER JOIN (SELECT'
      '        sales.id_pl AS id_pl,'
      '        sales.id_pc AS id_pc,'
      '        SUM(sales.amount_s) AS amount,'
      '        sales.id_sl_from AS id_sl_from'
      '      FROM sales'
      '      WHERE sales.id_sl_from = :id_sl'
      '      GROUP BY sales.id_pl,'
      '               sales.id_pc) productsales'
      '      ON allcolorproducts.id_p = productsales.id_pl'
      '      AND allcolorproducts.id_pc = productsales.id_pc'
      '    LEFT OUTER JOIN (SELECT'
      '        product_supply.id_pl AS id_pl,'
      '        product_supply.id_pc AS id_pc,'
      '        SUM(product_supply.amount_ps) AS amount,'
      '        product_supply.id_sl_from AS id_sl_from'
      '      FROM product_supply'
      '      WHERE product_supply.id_sl_from = :id_sl'
      '      GROUP BY product_supply.id_pl,'
      '               product_supply.id_pc) productdepart'
      '      ON allcolorproducts.id_p = productdepart.id_pl'
      '      AND allcolorproducts.id_pc = productdepart.id_pc'
      '    LEFT OUTER JOIN (SELECT'
      '        product_supply.id_pl AS id_pl,'
      '        product_supply.id_pc AS id_pc,'
      '        SUM(product_supply.amount_ps) AS amount,'
      '        product_supply.id_sl_to AS id_sl_to,'
      '        product_supply.id_ps AS id_ps'
      '      FROM product_supply'
      '      WHERE product_supply.id_sl_to = :id_sl'
      '      GROUP BY product_supply.id_pl,'
      '               product_supply.id_pc) productsupply'
      '      ON allcolorproducts.id_p = productsupply.id_pl'
      '      AND allcolorproducts.id_pc = productsupply.id_pc) storage'
      '  LEFT OUTER JOIN products'
      '    ON storage.id_p = products.id_p'
      'WHERE storage.amount >= 1'
      ''
      '')
    Left = 1216
    Top = 552
    object Storage_table_USDid_ps: TIntegerField
      FieldName = 'id_ps'
    end
    object WideStringField44: TWideStringField
      FieldName = 'name_p'
      Size = 50
    end
    object WideStringField45: TWideStringField
      FieldName = 'name_pt'
      Size = 50
    end
    object WideStringField46: TWideStringField
      FieldName = 'name_pc'
      Size = 50
    end
    object FMTBCDField16: TFMTBCDField
      FieldName = 'amount'
      Precision = 34
      Size = 0
    end
    object WideStringField47: TWideStringField
      FieldName = 'proceeds'
      ReadOnly = True
      Size = 70
    end
    object WideStringField48: TWideStringField
      FieldName = 'cost_price'
      ReadOnly = True
      Size = 70
    end
    object WideStringField49: TWideStringField
      FieldName = 'added_value'
      ReadOnly = True
      Size = 70
    end
    object FMTBCDField17: TFMTBCDField
      FieldName = 'proceeds_sort'
      ReadOnly = True
      Precision = 64
      Size = 2
    end
    object FMTBCDField18: TFMTBCDField
      FieldName = 'cost_price_sort'
      ReadOnly = True
      Precision = 64
      Size = 2
    end
    object FMTBCDField19: TFMTBCDField
      FieldName = 'added_value_sort'
      ReadOnly = True
      Precision = 64
      Size = 2
    end
  end
  object Storage_table: TADOQuery
    Connection = DataBaseConnection
    CursorType = ctStatic
    Filtered = True
    Parameters = <
      item
        Name = 'id_sl'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = '1'
      end
      item
        Name = 'id_sl'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = '1'
      end
      item
        Name = 'id_sl'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT'
      '  storage.id_ps AS id_ps,'
      '  storage.name_p AS name_p,'
      '  storage.name_pt AS name_pt,'
      '  storage.name_pc AS name_pc,'
      '  storage.amount AS amount,'
      
        '  CONCAT(ROUND(storage.amount * products.proceeds_p, 2), '#39' USD'#39')' +
        ' AS proceeds,'
      
        '  CONCAT(ROUND(storage.amount * products.cost_price_p, 2), '#39' USD' +
        #39') AS cost_price,'
      
        '  CONCAT(ROUND(storage.amount * products.added_value_p, 2), '#39' US' +
        'D'#39') AS added_value,'
      
        '  ROUND(storage.amount * products.proceeds_p, 2) AS proceeds_sor' +
        't,'
      
        '  ROUND(storage.amount * products.cost_price_p, 2) AS cost_price' +
        '_sort,'
      
        '  ROUND(storage.amount * products.added_value_p, 2) AS added_val' +
        'ue_sort'
      'FROM (SELECT'
      '    allcolorproducts.id_p AS id_p,'
      '    allcolorproducts.name_p AS name_p,'
      '    product_type.name_pt AS name_pt,'
      '    product_color.name_pc AS name_pc,'
      
        '    IFNULL(IFNULL(IFNULL((productsupply.amount - productdepart.a' +
        'mount) - productsales.amount, productsupply.amount - productdepa' +
        'rt.amount), productsupply.amount - productsales.amount), product' +
        'supply.amount) AS amount,'
      '    productsales.id_sl_from AS id_sl_from_s,'
      '    productsupply.id_sl_to AS id_sl_to_ps,'
      '    productdepart.id_sl_from AS id_sl_from_ps,'
      '    productsupply.id_ps AS id_ps'
      '  FROM (SELECT'
      '      products.id_p AS id_p,'
      '      products.name_p AS name_p,'
      '      products.id_pt AS id_pt,'
      '      products.proceeds_p AS proceeds_p,'
      '      products.cost_price_p AS cost_price_p,'
      '      products.added_value_p AS added_value_p,'
      '      product_color.id_pc AS id_pc,'
      '      product_color.name_pc AS name_pc'
      '    FROM products'
      '      INNER JOIN product_color) allcolorproducts'
      '    INNER JOIN product_color'
      '      ON allcolorproducts.id_pc = product_color.id_pc'
      '    INNER JOIN product_type'
      '      ON allcolorproducts.id_pt = product_type.id_pt'
      '    LEFT OUTER JOIN (SELECT'
      '        sales.id_pl AS id_pl,'
      '        sales.id_pc AS id_pc,'
      '        SUM(sales.amount_s) AS amount,'
      '        sales.id_sl_from AS id_sl_from'
      '      FROM sales'
      '      WHERE sales.id_sl_from = :id_sl'
      '      GROUP BY sales.id_pl,'
      '               sales.id_pc) productsales'
      '      ON allcolorproducts.id_p = productsales.id_pl'
      '      AND allcolorproducts.id_pc = productsales.id_pc'
      '    LEFT OUTER JOIN (SELECT'
      '        product_supply.id_pl AS id_pl,'
      '        product_supply.id_pc AS id_pc,'
      '        SUM(product_supply.amount_ps) AS amount,'
      '        product_supply.id_sl_from AS id_sl_from'
      '      FROM product_supply'
      '      WHERE product_supply.id_sl_from = :id_sl'
      '      GROUP BY product_supply.id_pl,'
      '               product_supply.id_pc) productdepart'
      '      ON allcolorproducts.id_p = productdepart.id_pl'
      '      AND allcolorproducts.id_pc = productdepart.id_pc'
      '    LEFT OUTER JOIN (SELECT'
      '        product_supply.id_pl AS id_pl,'
      '        product_supply.id_pc AS id_pc,'
      '        SUM(product_supply.amount_ps) AS amount,'
      '        product_supply.id_sl_to AS id_sl_to,'
      '        product_supply.id_ps AS id_ps'
      '      FROM product_supply'
      '      WHERE product_supply.id_sl_to = :id_sl'
      '      GROUP BY product_supply.id_pl,'
      '               product_supply.id_pc,'
      '               product_supply.id_ps) productsupply'
      '      ON allcolorproducts.id_p = productsupply.id_pl'
      '      AND allcolorproducts.id_pc = productsupply.id_pc) storage'
      '  LEFT OUTER JOIN products'
      '    ON storage.id_p = products.id_p'
      '  INNER JOIN (SELECT'
      '      rate.date_r AS date_r,'
      '      rate.KGS AS KGS,'
      '      rate.RUB AS RUB'
      '    FROM rate'
      '    WHERE rate.date_r = CURDATE()) today_rate'
      'WHERE storage.amount >= 1'
      'ORDER BY storage.name_p, storage.amount DESC')
    Left = 1216
    Top = 616
    object Storage_tableid_ps: TIntegerField
      FieldName = 'id_ps'
    end
    object WideStringField50: TWideStringField
      FieldName = 'name_p'
      Size = 50
    end
    object WideStringField51: TWideStringField
      FieldName = 'name_pt'
      Size = 50
    end
    object WideStringField52: TWideStringField
      FieldName = 'name_pc'
      Size = 50
    end
    object FMTBCDField20: TFMTBCDField
      FieldName = 'amount'
      Precision = 34
      Size = 0
    end
    object WideStringField53: TWideStringField
      FieldName = 'proceeds'
      ReadOnly = True
      Size = 70
    end
    object WideStringField54: TWideStringField
      FieldName = 'cost_price'
      ReadOnly = True
      Size = 70
    end
    object WideStringField55: TWideStringField
      FieldName = 'added_value'
      ReadOnly = True
      Size = 70
    end
    object FMTBCDField21: TFMTBCDField
      FieldName = 'proceeds_sort'
      ReadOnly = True
      Precision = 64
      Size = 2
    end
    object FMTBCDField22: TFMTBCDField
      FieldName = 'cost_price_sort'
      ReadOnly = True
      Precision = 64
      Size = 2
    end
    object FMTBCDField23: TFMTBCDField
      FieldName = 'added_value_sort'
      ReadOnly = True
      Precision = 64
      Size = 2
    end
  end
  object Sales_best_selling: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    Filtered = True
    TableName = 'sales_best_selling'
    Left = 544
    Top = 448
    object Sales_best_sellingname_p: TWideStringField
      FieldName = 'name_p'
      Size = 50
    end
    object Sales_best_sellingname_pc: TWideStringField
      FieldName = 'name_pc'
      Size = 50
    end
    object Sales_best_sellingamount: TFMTBCDField
      FieldName = 'amount'
      Precision = 32
      Size = 0
    end
    object Sales_best_sellingid_s: TIntegerField
      FieldName = 'id_s'
    end
    object Sales_best_sellingdate: TDateField
      FieldName = 'date'
    end
    object Sales_best_sellingname_pt: TWideStringField
      FieldName = 'name_pt'
      Size = 50
    end
    object Sales_best_sellingname_c: TWideStringField
      FieldName = 'name_c'
      Size = 50
    end
    object Sales_best_sellingname_sl: TWideStringField
      FieldName = 'name_sl'
      Size = 50
    end
    object Sales_best_sellingreceipt_number: TWideStringField
      FieldName = 'receipt_number'
      Size = 6
    end
    object Sales_best_sellingfictitious: TBooleanField
      FieldName = 'fictitious'
    end
    object Sales_best_sellingname_e: TWideStringField
      FieldName = 'name_e'
    end
    object Sales_best_sellingproceeds: TWideStringField
      FieldName = 'proceeds'
      Size = 35
    end
    object Sales_best_sellingcost_price: TWideStringField
      FieldName = 'cost_price'
      Size = 35
    end
    object Sales_best_sellingadded_value: TWideStringField
      FieldName = 'added_value'
      Size = 35
    end
    object Sales_best_sellingproceeds_sort: TFMTBCDField
      FieldName = 'proceeds_sort'
      Precision = 29
      Size = 2
    end
    object Sales_best_sellingcost_price_sort: TFMTBCDField
      FieldName = 'cost_price_sort'
      Precision = 29
      Size = 2
    end
    object Sales_best_sellingadded_value_sort: TFMTBCDField
      FieldName = 'added_value_sort'
      Precision = 29
      Size = 2
    end
  end
  object Storage_buffer: TADOQuery
    Connection = DataBaseConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'id_sl'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'id_sl'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'id_sl'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      '  storage.id_ps AS id_ps,'
      '  storage.name_p AS name_p,'
      '  storage.name_pt AS name_pt,'
      '  storage.name_pc AS name_pc,'
      '  storage.amount AS amount,'
      
        '  CONCAT(ROUND(storage.amount * products.proceeds_p, 2), '#39' USD'#39')' +
        ' AS proceeds,'
      
        '  CONCAT(ROUND(storage.amount * products.cost_price_p, 2), '#39' USD' +
        #39') AS cost_price,'
      
        '  CONCAT(ROUND(storage.amount * products.added_value_p, 2), '#39' US' +
        'D'#39') AS added_value,'
      
        '  ROUND(storage.amount * products.proceeds_p, 2) AS proceeds_sor' +
        't,'
      
        '  ROUND(storage.amount * products.cost_price_p, 2) AS cost_price' +
        '_sort,'
      
        '  ROUND(storage.amount * products.added_value_p, 2) AS added_val' +
        'ue_sort'
      'FROM (SELECT'
      '    allcolorproducts.id_p AS id_p,'
      '    allcolorproducts.name_p AS name_p,'
      '    product_type.name_pt AS name_pt,'
      '    product_color.name_pc AS name_pc,'
      
        '    IFNULL(IFNULL(IFNULL((productsupply.amount - productdepart.a' +
        'mount) - productsales.amount, productsupply.amount - productdepa' +
        'rt.amount), productsupply.amount - productsales.amount), product' +
        'supply.amount) AS amount,'
      '    productsales.id_sl_from AS id_sl_from_s,'
      '    productsupply.id_sl_to AS id_sl_to_ps,'
      '    productdepart.id_sl_from AS id_sl_from_ps,'
      '    productsupply.id_ps AS id_ps'
      '  FROM (SELECT'
      '      products.id_p AS id_p,'
      '      products.name_p AS name_p,'
      '      products.id_pt AS id_pt,'
      '      products.proceeds_p AS proceeds_p,'
      '      products.cost_price_p AS cost_price_p,'
      '      products.added_value_p AS added_value_p,'
      '      product_color.id_pc AS id_pc,'
      '      product_color.name_pc AS name_pc'
      '    FROM products'
      '      INNER JOIN product_color) allcolorproducts'
      '    INNER JOIN product_color'
      '      ON allcolorproducts.id_pc = product_color.id_pc'
      '    INNER JOIN product_type'
      '      ON allcolorproducts.id_pt = product_type.id_pt'
      '    LEFT OUTER JOIN (SELECT'
      '        sales.id_pl AS id_pl,'
      '        sales.id_pc AS id_pc,'
      '        SUM(sales.amount_s) AS amount,'
      '        sales.id_sl_from AS id_sl_from'
      '      FROM sales'
      '      WHERE sales.id_sl_from = :id_sl'
      '      GROUP BY sales.id_pl,'
      '               sales.id_pc) productsales'
      '      ON allcolorproducts.id_p = productsales.id_pl'
      '      AND allcolorproducts.id_pc = productsales.id_pc'
      '    LEFT OUTER JOIN (SELECT'
      '        product_supply.id_pl AS id_pl,'
      '        product_supply.id_pc AS id_pc,'
      '        SUM(product_supply.amount_ps) AS amount,'
      '        product_supply.id_sl_from AS id_sl_from'
      '      FROM product_supply'
      '      WHERE product_supply.id_sl_from = :id_sl'
      '      GROUP BY product_supply.id_pl,'
      '               product_supply.id_pc) productdepart'
      '      ON allcolorproducts.id_p = productdepart.id_pl'
      '      AND allcolorproducts.id_pc = productdepart.id_pc'
      '    LEFT OUTER JOIN (SELECT'
      '        product_supply.id_pl AS id_pl,'
      '        product_supply.id_pc AS id_pc,'
      '        SUM(product_supply.amount_ps) AS amount,'
      '        product_supply.id_sl_to AS id_sl_to,'
      '        product_supply.id_ps AS id_ps'
      '      FROM product_supply'
      '      WHERE product_supply.id_sl_to = :id_sl'
      '      GROUP BY product_supply.id_pl,'
      '               product_supply.id_pc,'
      '               product_supply.id_ps) productsupply'
      '      ON allcolorproducts.id_p = productsupply.id_pl'
      '      AND allcolorproducts.id_pc = productsupply.id_pc) storage'
      '  LEFT OUTER JOIN products'
      '    ON storage.id_p = products.id_p'
      '  INNER JOIN (SELECT'
      '      rate.date_r AS date_r,'
      '      rate.KGS AS KGS,'
      '      rate.RUB AS RUB'
      '    FROM rate'
      '    WHERE rate.date_r = CURDATE()) today_rate'
      'WHERE storage.amount >= 1'
      ''
      '')
    Left = 1216
    Top = 800
  end
  object Rate_table: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    AfterPost = Rate_tableAfterDelete
    AfterDelete = Rate_tableAfterDelete
    TableName = 'rate'
    Left = 1120
    Top = 64
    object Rate_tableid_r: TAutoIncField
      FieldName = 'id_r'
      ReadOnly = True
    end
    object Rate_tabledate_r: TDateField
      FieldName = 'date_r'
    end
    object Rate_tableKGS: TBCDField
      FieldName = 'KGS'
      Precision = 19
      Size = 2
    end
    object Rate_tableRUB: TBCDField
      FieldName = 'RUB'
      Precision = 19
      Size = 2
    end
    object Rate_tableIsAuto: TBooleanField
      FieldName = 'IsAuto'
    end
  end
  object Storages_storages_source: TDataSource
    DataSet = Storages_storages_table
    Left = 936
    Top = 640
  end
  object Storages_storages_table: TADOTable
    Connection = DataBaseConnection
    CursorType = ctStatic
    TableName = 'storages_storages'
    Left = 936
    Top = 576
    object AutoIncField9: TAutoIncField
      FieldName = 'id_sl'
      ReadOnly = True
    end
    object WideStringField56: TWideStringField
      FieldName = 'name_sl'
      Size = 50
    end
    object WideStringField57: TWideStringField
      FieldName = 'info_sl'
      Size = 510
    end
    object WideStringField58: TWideStringField
      FieldName = 'type_sl'
      Size = 5
    end
    object WideStringField59: TWideStringField
      FieldName = 'address_sl'
      Size = 100
    end
  end
  object Storage_chart: TADOQuery
    Connection = DataBaseConnection
    CursorType = ctStatic
    Filtered = True
    Parameters = <
      item
        Name = 'id_sl'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = '1'
      end
      item
        Name = 'id_sl'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = '1'
      end
      item
        Name = 'id_sl'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT'
      '  storage.name_p AS name_p,'
      '  SUM(storage.amount) AS amount'
      'FROM (SELECT'
      '    allcolorproducts.id_p AS id_p,'
      '    allcolorproducts.name_p AS name_p,'
      '    product_type.name_pt AS name_pt,'
      '    product_color.name_pc AS name_pc,'
      
        '    IFNULL(IFNULL(IFNULL((productsupply.amount - productdepart.a' +
        'mount) - productsales.amount, productsupply.amount - productdepa' +
        'rt.amount), productsupply.amount - productsales.amount), product' +
        'supply.amount) AS amount,'
      '    productsales.id_sl_from AS id_sl_from_s,'
      '    productsupply.id_sl_to AS id_sl_to_ps,'
      '    productdepart.id_sl_from AS id_sl_from_ps,'
      '    productsupply.id_ps AS id_ps'
      '  FROM (SELECT'
      '      products.id_p AS id_p,'
      '      products.name_p AS name_p,'
      '      products.id_pt AS id_pt,'
      '      products.proceeds_p AS proceeds_p,'
      '      products.cost_price_p AS cost_price_p,'
      '      products.added_value_p AS added_value_p,'
      '      product_color.id_pc AS id_pc,'
      '      product_color.name_pc AS name_pc'
      '    FROM products'
      '      INNER JOIN product_color) allcolorproducts'
      '    INNER JOIN product_color'
      '      ON allcolorproducts.id_pc = product_color.id_pc'
      '    INNER JOIN product_type'
      '      ON allcolorproducts.id_pt = product_type.id_pt'
      '    LEFT OUTER JOIN (SELECT'
      '        sales.id_pl AS id_pl,'
      '        sales.id_pc AS id_pc,'
      '        SUM(sales.amount_s) AS amount,'
      '        sales.id_sl_from AS id_sl_from'
      '      FROM sales'
      '      WHERE sales.id_sl_from = :id_sl'
      '      GROUP BY sales.id_pl,'
      '               sales.id_pc) productsales'
      '      ON allcolorproducts.id_p = productsales.id_pl'
      '      AND allcolorproducts.id_pc = productsales.id_pc'
      '    LEFT OUTER JOIN (SELECT'
      '        product_supply.id_pl AS id_pl,'
      '        product_supply.id_pc AS id_pc,'
      '        SUM(product_supply.amount_ps) AS amount,'
      '        product_supply.id_sl_from AS id_sl_from'
      '      FROM product_supply'
      '      WHERE product_supply.id_sl_from = :id_sl'
      '      GROUP BY product_supply.id_pl,'
      '               product_supply.id_pc) productdepart'
      '      ON allcolorproducts.id_p = productdepart.id_pl'
      '      AND allcolorproducts.id_pc = productdepart.id_pc'
      '    LEFT OUTER JOIN (SELECT'
      '        product_supply.id_pl AS id_pl,'
      '        product_supply.id_pc AS id_pc,'
      '        SUM(product_supply.amount_ps) AS amount,'
      '        product_supply.id_sl_to AS id_sl_to,'
      '        product_supply.id_ps AS id_ps'
      '      FROM product_supply'
      '      WHERE product_supply.id_sl_to = :id_sl'
      '      GROUP BY product_supply.id_pl,'
      '               product_supply.id_pc,'
      '               product_supply.id_ps) productsupply'
      '      ON allcolorproducts.id_p = productsupply.id_pl'
      '      AND allcolorproducts.id_pc = productsupply.id_pc) storage'
      '  LEFT OUTER JOIN products'
      '    ON storage.id_p = products.id_p'
      'GROUP BY storage.name_p'
      'HAVING SUM(storage.amount) >= 1'
      'ORDER BY storage.name_p, storage.amount DESC')
    Left = 1216
    Top = 744
    object Storage_chartname_p: TWideStringField
      FieldName = 'name_p'
      Size = 50
    end
    object Storage_chartamount: TFMTBCDField
      FieldName = 'amount'
      ReadOnly = True
      Precision = 56
      Size = 0
    end
  end
  object Financial_report_USD: TADOQuery
    Connection = DataBaseConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'date1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = '01.01.1000'
      end
      item
        Name = 'date2'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = '01.01.3000'
      end>
    SQL.Strings = (
      'SELECT'
      '  sales_sum.id_s AS id_s,'
      '  sales_sum.name_p AS name_p,'
      '  sales_sum.name_pc AS name_pc,'
      '  sales_sum.name_pt AS name_pt,'
      '  sales_sum.amount AS amount,'
      '  CONCAT(ROUND(sales_sum.proceeds_sort, 2), '#39' USD'#39') AS proceeds,'
      
        '  CONCAT(ROUND(sales_sum.cost_price_sort, 2), '#39' USD'#39') AS cost_pr' +
        'ice,'
      
        '  CONCAT(ROUND(sales_sum.added_value_sort, 2), '#39' USD'#39') AS added_' +
        'value,'
      '  sales_sum.proceeds_sort AS proceeds_sort,'
      '  sales_sum.cost_price_sort AS cost_price_sort,'
      '  sales_sum.added_value_sort AS added_value_sort'
      'FROM (SELECT'
      '    products.name_p AS name_p,'
      '    product_color.name_pc AS name_pc,'
      '    product_type.name_pt AS name_pt,'
      '    SUM(sales.amount_s) AS amount,'
      '    SUM(products.proceeds_p * sales.amount_s) AS proceeds_sort,'
      
        '    SUM(products.cost_price_p * sales.amount_s) AS cost_price_so' +
        'rt,'
      
        '    SUM(products.added_value_p * sales.amount_s) AS added_value_' +
        'sort,'
      '    sales.id_s AS id_s'
      '  FROM sales'
      '    INNER JOIN product_color'
      '      ON product_color.id_pc = sales.id_pc'
      '    INNER JOIN products'
      '      ON products.id_p = sales.id_pl'
      '    INNER JOIN product_type'
      '      ON product_type.id_pt = products.id_pt'
      '    INNER JOIN storages'
      '      ON storages.id_sl = sales.id_sl_from'
      '    INNER JOIN customers'
      '      ON customers.id_c = sales.id_cl'
      '    INNER JOIN employes'
      '      ON employes.id_e = sales.id_e'
      '  WHERE sales.date_s >= :date1'
      '  AND sales.date_s <= :date2'
      '  AND sales.fictitious_s = FALSE'
      '  GROUP BY product_color.name_pc,'
      '           products.name_p) sales_sum'
      'ORDER BY sales_sum.amount DESC')
    Left = 1312
    Top = 640
    object Financial_report_USDname_p: TWideStringField
      FieldName = 'name_p'
      Size = 50
    end
    object Financial_report_USDname_pt: TWideStringField
      FieldName = 'name_pt'
      Size = 50
    end
    object Financial_report_USDname_pc: TWideStringField
      FieldName = 'name_pc'
      Size = 50
    end
    object Financial_report_USDamount: TFMTBCDField
      FieldName = 'amount'
      Precision = 32
      Size = 0
    end
    object Financial_report_USDproceeds: TWideStringField
      FieldName = 'proceeds'
      ReadOnly = True
      Size = 57
    end
    object Financial_report_USDcost_price: TWideStringField
      FieldName = 'cost_price'
      ReadOnly = True
      Size = 57
    end
    object Financial_report_USDadded_value: TWideStringField
      FieldName = 'added_value'
      ReadOnly = True
      Size = 35
    end
    object Financial_report_USDproceeds_sort: TFMTBCDField
      FieldName = 'proceeds_sort'
      Precision = 51
      Size = 2
    end
    object Financial_report_USDcost_price_sort: TFMTBCDField
      FieldName = 'cost_price_sort'
      Precision = 51
      Size = 2
    end
    object Financial_report_USDadded_value_sort: TFMTBCDField
      FieldName = 'added_value_sort'
      Precision = 29
      Size = 2
    end
    object Financial_report_USDid_s: TIntegerField
      FieldName = 'id_s'
    end
  end
  object Financial_report_table_1: TADOQuery
    Connection = DataBaseConnection
    CursorType = ctStatic
    Filtered = True
    Parameters = <
      item
        Name = 'date1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = '01.01.1000'
      end
      item
        Name = 'date2'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = '01.01.3000'
      end>
    SQL.Strings = (
      'SELECT'
      '  sales_sum.id_s AS id_s,'
      '  sales_sum.name_p AS name_p,'
      '  sales_sum.name_pc AS name_pc,'
      '  sales_sum.name_pt AS name_pt,'
      '  sales_sum.amount AS amount,'
      '  CONCAT(ROUND(sales_sum.proceeds_sort, 2), '#39' USD'#39') AS proceeds,'
      
        '  CONCAT(ROUND(sales_sum.cost_price_sort, 2), '#39' USD'#39') AS cost_pr' +
        'ice,'
      
        '  CONCAT(ROUND(sales_sum.added_value_sort, 2), '#39' USD'#39') AS added_' +
        'value,'
      '  sales_sum.proceeds_sort AS proceeds_sort,'
      '  sales_sum.cost_price_sort AS cost_price_sort,'
      '  sales_sum.added_value_sort AS added_value_sort'
      'FROM (SELECT'
      '    products.name_p AS name_p,'
      '    product_color.name_pc AS name_pc,'
      '    product_type.name_pt AS name_pt,'
      '    SUM(sales.amount_s) AS amount,'
      '    SUM(products.proceeds_p * sales.amount_s) AS proceeds_sort,'
      
        '    SUM(products.cost_price_p * sales.amount_s) AS cost_price_so' +
        'rt,'
      
        '    SUM(products.added_value_p * sales.amount_s) AS added_value_' +
        'sort,'
      '    sales.id_s AS id_s'
      '  FROM sales'
      '    INNER JOIN product_color'
      '      ON product_color.id_pc = sales.id_pc'
      '    INNER JOIN products'
      '      ON products.id_p = sales.id_pl'
      '    INNER JOIN product_type'
      '      ON product_type.id_pt = products.id_pt'
      '    INNER JOIN storages'
      '      ON storages.id_sl = sales.id_sl_from'
      '    INNER JOIN customers'
      '      ON customers.id_c = sales.id_cl'
      '    INNER JOIN employes'
      '      ON employes.id_e = sales.id_e'
      '  WHERE sales.date_s >= :date1'
      '  AND sales.date_s <= :date2'
      '  AND sales.fictitious_s = FALSE'
      '  GROUP BY product_color.name_pc,'
      '           products.name_p) sales_sum'
      'ORDER BY sales_sum.amount DESC'
      '')
    Left = 1312
    Top = 384
    object WideStringField60: TWideStringField
      FieldName = 'name_p'
      Size = 50
    end
    object WideStringField61: TWideStringField
      FieldName = 'name_pt'
      Size = 50
    end
    object WideStringField62: TWideStringField
      FieldName = 'name_pc'
      Size = 50
    end
    object FMTBCDField24: TFMTBCDField
      FieldName = 'amount'
      Precision = 32
      Size = 0
    end
    object WideStringField63: TWideStringField
      FieldName = 'proceeds'
      ReadOnly = True
      Size = 57
    end
    object WideStringField64: TWideStringField
      FieldName = 'cost_price'
      ReadOnly = True
      Size = 57
    end
    object WideStringField65: TWideStringField
      FieldName = 'added_value'
      ReadOnly = True
      Size = 35
    end
    object FMTBCDField25: TFMTBCDField
      FieldName = 'proceeds_sort'
      Precision = 51
      Size = 2
    end
    object FMTBCDField26: TFMTBCDField
      FieldName = 'cost_price_sort'
      Precision = 51
      Size = 2
    end
    object FMTBCDField27: TFMTBCDField
      FieldName = 'added_value_sort'
      Precision = 29
      Size = 2
    end
    object Financial_report_table_1id_s: TIntegerField
      FieldName = 'id_s'
    end
  end
  object Financial_report_table_2: TADOQuery
    Connection = DataBaseConnection
    CursorType = ctStatic
    Filtered = True
    Parameters = <
      item
        Name = 'date1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = '01.01.1000'
      end
      item
        Name = 'date2'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = '01.01.3000'
      end>
    SQL.Strings = (
      'SELECT'
      '  sales_sum.id_s AS id_s,'
      '  sales_sum.name_p AS name_p,'
      '  sales_sum.name_pc AS name_pc,'
      '  sales_sum.name_pt AS name_pt,'
      '  sales_sum.amount AS amount,'
      '  CONCAT(ROUND(sales_sum.proceeds_sort, 2), '#39' USD'#39') AS proceeds,'
      
        '  CONCAT(ROUND(sales_sum.cost_price_sort, 2), '#39' USD'#39') AS cost_pr' +
        'ice,'
      
        '  CONCAT(ROUND(sales_sum.added_value_sort, 2), '#39' USD'#39') AS added_' +
        'value,'
      '  sales_sum.proceeds_sort AS proceeds_sort,'
      '  sales_sum.cost_price_sort AS cost_price_sort,'
      '  sales_sum.added_value_sort AS added_value_sort'
      'FROM (SELECT'
      '    products.name_p AS name_p,'
      '    product_color.name_pc AS name_pc,'
      '    product_type.name_pt AS name_pt,'
      '    SUM(sales.amount_s) AS amount,'
      '    SUM(products.proceeds_p * sales.amount_s) AS proceeds_sort,'
      
        '    SUM(products.cost_price_p * sales.amount_s) AS cost_price_so' +
        'rt,'
      
        '    SUM(products.added_value_p * sales.amount_s) AS added_value_' +
        'sort,'
      '    sales.id_s AS id_s'
      '  FROM sales'
      '    INNER JOIN product_color'
      '      ON product_color.id_pc = sales.id_pc'
      '    INNER JOIN products'
      '      ON products.id_p = sales.id_pl'
      '    INNER JOIN product_type'
      '      ON product_type.id_pt = products.id_pt'
      '    INNER JOIN storages'
      '      ON storages.id_sl = sales.id_sl_from'
      '    INNER JOIN customers'
      '      ON customers.id_c = sales.id_cl'
      '    INNER JOIN employes'
      '      ON employes.id_e = sales.id_e'
      '  WHERE sales.date_s >= :date1'
      '  AND sales.date_s <= :date2'
      '  AND sales.fictitious_s = FALSE'
      '  GROUP BY product_color.name_pc,'
      '           products.name_p) sales_sum'
      'ORDER BY sales_sum.amount DESC'
      '')
    Left = 1312
    Top = 512
    object WideStringField66: TWideStringField
      FieldName = 'name_p'
      Size = 50
    end
    object WideStringField67: TWideStringField
      FieldName = 'name_pt'
      Size = 50
    end
    object WideStringField68: TWideStringField
      FieldName = 'name_pc'
      Size = 50
    end
    object FMTBCDField28: TFMTBCDField
      FieldName = 'amount'
      Precision = 32
      Size = 0
    end
    object WideStringField69: TWideStringField
      FieldName = 'proceeds'
      ReadOnly = True
      Size = 57
    end
    object WideStringField70: TWideStringField
      FieldName = 'cost_price'
      ReadOnly = True
      Size = 57
    end
    object WideStringField71: TWideStringField
      FieldName = 'added_value'
      ReadOnly = True
      Size = 35
    end
    object FMTBCDField29: TFMTBCDField
      FieldName = 'proceeds_sort'
      Precision = 51
      Size = 2
    end
    object FMTBCDField30: TFMTBCDField
      FieldName = 'cost_price_sort'
      Precision = 51
      Size = 2
    end
    object FMTBCDField31: TFMTBCDField
      FieldName = 'added_value_sort'
      Precision = 29
      Size = 2
    end
    object Financial_report_table_2id_s: TIntegerField
      FieldName = 'id_s'
    end
  end
  object Financial_report_RUB: TADOQuery
    Connection = DataBaseConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'date1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = '01.01.1000'
      end
      item
        Name = 'date2'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = '01.01.3000'
      end>
    SQL.Strings = (
      'SELECT'
      '  sales_sum.name_p AS name_p,'
      '  sales_sum.name_pc AS name_pc,'
      '  sales_sum.name_pt AS name_pt,'
      '  sales_sum.amount AS amount,'
      '  CONCAT(sales_sum.proceeds_sort, '#39' RUB'#39') AS proceeds,'
      '  CONCAT(sales_sum.cost_price_sort, '#39' RUB'#39') AS cost_price,'
      '  CONCAT(sales_sum.added_value_sort, '#39' RUB'#39') AS added_value,'
      '  sales_sum.proceeds_sort AS proceeds_sort,'
      '  sales_sum.cost_price_sort AS cost_price_sort,'
      '  sales_sum.added_value_sort AS added_value_sort,'
      '  sales_sum.id_s AS id_s'
      'FROM (SELECT'
      '    sales.id_s AS id_s,'
      '    products.name_p AS name_p,'
      '    product_color.name_pc AS name_pc,'
      '    product_type.name_pt AS name_pt,'
      '    SUM(sales.amount_s) AS amount,'
      
        '    SUM(ROUND(products.proceeds_p * rate.RUB * sales.amount_s, 2' +
        ')) AS proceeds_sort,'
      
        '    SUM(ROUND(products.cost_price_p * rate.RUB * sales.amount_s,' +
        ' 2)) AS cost_price_sort,'
      
        '    SUM(ROUND(products.added_value_p * rate.RUB * sales.amount_s' +
        ', 2)) AS added_value_sort'
      '  FROM sales'
      '    INNER JOIN product_color'
      '      ON product_color.id_pc = sales.id_pc'
      '    INNER JOIN products'
      '      ON products.id_p = sales.id_pl'
      '    INNER JOIN product_type'
      '      ON product_type.id_pt = products.id_pt'
      '    INNER JOIN storages'
      '      ON storages.id_sl = sales.id_sl_from'
      '    INNER JOIN customers'
      '      ON customers.id_c = sales.id_cl'
      '    INNER JOIN employes'
      '      ON employes.id_e = sales.id_e'
      '    LEFT OUTER JOIN rate'
      '      ON rate.date_r = sales.date_s'
      '  WHERE sales.date_s >= :date1'
      '  AND sales.date_s <= :date2'
      '  AND sales.fictitious_s = FALSE'
      '  GROUP BY product_color.name_pc,'
      '           products.name_p) sales_sum'
      'ORDER BY sales_sum.amount DESC')
    Left = 1312
    Top = 704
    object WideStringField72: TWideStringField
      FieldName = 'name_p'
      Size = 50
    end
    object WideStringField73: TWideStringField
      FieldName = 'name_pt'
      Size = 50
    end
    object WideStringField74: TWideStringField
      FieldName = 'name_pc'
      Size = 50
    end
    object FMTBCDField32: TFMTBCDField
      FieldName = 'amount'
      Precision = 32
      Size = 0
    end
    object WideStringField75: TWideStringField
      FieldName = 'proceeds'
      ReadOnly = True
      Size = 57
    end
    object WideStringField76: TWideStringField
      FieldName = 'cost_price'
      ReadOnly = True
      Size = 57
    end
    object WideStringField77: TWideStringField
      FieldName = 'added_value'
      ReadOnly = True
      Size = 35
    end
    object FMTBCDField33: TFMTBCDField
      FieldName = 'proceeds_sort'
      Precision = 51
      Size = 2
    end
    object FMTBCDField34: TFMTBCDField
      FieldName = 'cost_price_sort'
      Precision = 51
      Size = 2
    end
    object FMTBCDField35: TFMTBCDField
      FieldName = 'added_value_sort'
      Precision = 29
      Size = 2
    end
    object Financial_report_RUBid_s: TIntegerField
      FieldName = 'id_s'
    end
  end
  object Financial_report_KGS: TADOQuery
    Connection = DataBaseConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'date1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = '01.01.1000'
      end
      item
        Name = 'date2'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 180
        Precision = 255
        Size = 255
        Value = '01.01.3000'
      end>
    SQL.Strings = (
      'SELECT'
      '  sales_sum.name_p AS name_p,'
      '  sales_sum.name_pc AS name_pc,'
      '  sales_sum.name_pt AS name_pt,'
      '  sales_sum.amount AS amount,'
      '  CONCAT(sales_sum.proceeds_sort, '#39' KGS'#39') AS proceeds,'
      '  CONCAT(sales_sum.cost_price_sort, '#39' KGS'#39') AS cost_price,'
      '  CONCAT(sales_sum.added_value_sort, '#39' KGS'#39') AS added_value,'
      '  sales_sum.proceeds_sort AS proceeds_sort,'
      '  sales_sum.cost_price_sort AS cost_price_sort,'
      '  sales_sum.added_value_sort AS added_value_sort,'
      '  sales_sum.id_s AS id_s'
      'FROM (SELECT'
      '    sales.id_s AS id_s,'
      '    products.name_p AS name_p,'
      '    product_color.name_pc AS name_pc,'
      '    product_type.name_pt AS name_pt,'
      '    SUM(sales.amount_s) AS amount,'
      
        '    SUM(ROUND(products.proceeds_p * rate.KGS * sales.amount_s, 2' +
        ')) AS proceeds_sort,'
      
        '    SUM(ROUND(products.cost_price_p * rate.KGS * sales.amount_s,' +
        ' 2)) AS cost_price_sort,'
      
        '    SUM(ROUND(products.added_value_p * rate.KGS * sales.amount_s' +
        ', 2)) AS added_value_sort'
      '  FROM sales'
      '    INNER JOIN product_color'
      '      ON product_color.id_pc = sales.id_pc'
      '    INNER JOIN products'
      '      ON products.id_p = sales.id_pl'
      '    INNER JOIN product_type'
      '      ON product_type.id_pt = products.id_pt'
      '    INNER JOIN storages'
      '      ON storages.id_sl = sales.id_sl_from'
      '    INNER JOIN customers'
      '      ON customers.id_c = sales.id_cl'
      '    INNER JOIN employes'
      '      ON employes.id_e = sales.id_e'
      '    LEFT OUTER JOIN rate'
      '      ON rate.date_r = sales.date_s'
      '  WHERE sales.fictitious_s = FALSE'
      '  AND rate.date_r >= :date1'
      '  AND rate.date_r <= :date2'
      '  GROUP BY product_color.name_pc,'
      '           products.name_p) sales_sum'
      'ORDER BY sales_sum.amount DESC')
    Left = 1312
    Top = 768
    object WideStringField78: TWideStringField
      FieldName = 'name_p'
      Size = 50
    end
    object WideStringField79: TWideStringField
      FieldName = 'name_pt'
      Size = 50
    end
    object WideStringField80: TWideStringField
      FieldName = 'name_pc'
      Size = 50
    end
    object FMTBCDField36: TFMTBCDField
      FieldName = 'amount'
      Precision = 32
      Size = 0
    end
    object WideStringField81: TWideStringField
      FieldName = 'proceeds'
      ReadOnly = True
      Size = 57
    end
    object WideStringField82: TWideStringField
      FieldName = 'cost_price'
      ReadOnly = True
      Size = 57
    end
    object WideStringField83: TWideStringField
      FieldName = 'added_value'
      ReadOnly = True
      Size = 35
    end
    object FMTBCDField37: TFMTBCDField
      FieldName = 'proceeds_sort'
      Precision = 51
      Size = 2
    end
    object FMTBCDField38: TFMTBCDField
      FieldName = 'cost_price_sort'
      Precision = 51
      Size = 2
    end
    object FMTBCDField39: TFMTBCDField
      FieldName = 'added_value_sort'
      Precision = 29
      Size = 2
    end
    object Financial_report_KGSid_s: TIntegerField
      FieldName = 'id_s'
    end
  end
  object Sales_sum_source: TDataSource
    DataSet = Sales_sum_table
    Left = 448
    Top = 464
  end
  object Sales_sum_table: TADOQuery
    AutoCalcFields = False
    Connection = DataBaseConnection
    CursorType = ctStatic
    OnCalcFields = Sales_sum_tableCalcFields
    Parameters = <
      item
        Name = 'Param1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 96
        Precision = 255
        Size = 255
        Value = 36161d
      end
      item
        Name = 'Param2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 96
        Precision = 255
        Size = 255
        Value = 401769d
      end>
    SQL.Strings = (
      'SELECT'
      '  sales_sum.id_s AS id_s,'
      '  sales_sum.name_p AS name_p,'
      '  sales_sum.name_pt AS name_pt,'
      '  sales_sum.amount AS amount,'
      '  CONCAT(ROUND(sales_sum.proceeds_sort, 2), '#39' USD'#39') AS proceeds,'
      
        '  CONCAT(ROUND(sales_sum.cost_price_sort, 2), '#39' USD'#39') AS cost_pr' +
        'ice,'
      
        '  CONCAT(ROUND(sales_sum.added_value_sort, 2), '#39' USD'#39') AS added_' +
        'value,'
      '  sales_sum.proceeds_sort AS proceeds_sort,'
      '  sales_sum.cost_price_sort AS cost_price_sort,'
      '  sales_sum.added_value_sort AS added_value_sort,'
      '  sales_sum.number_of_sales AS number_of_sales'
      'FROM (SELECT'
      '    products.name_p AS name_p,'
      '    product_type.name_pt AS name_pt,'
      '    SUM(sales.amount_s) AS amount,'
      '    SUM(products.proceeds_p * sales.amount_s) AS proceeds_sort,'
      
        '    SUM(products.cost_price_p * sales.amount_s) AS cost_price_so' +
        'rt,'
      
        '    SUM(products.added_value_p * sales.amount_s) AS added_value_' +
        'sort,'
      '    sales.id_s AS id_s,'
      '    SUM(sales.amount_s / sales.amount_s) AS number_of_sales'
      '  FROM sales'
      '    INNER JOIN product_color'
      '      ON product_color.id_pc = sales.id_pc'
      '    INNER JOIN products'
      '      ON products.id_p = sales.id_pl'
      '    INNER JOIN product_type'
      '      ON product_type.id_pt = products.id_pt'
      '    INNER JOIN storages'
      '      ON storages.id_sl = sales.id_sl_from'
      '    INNER JOIN customers'
      '      ON customers.id_c = sales.id_cl'
      '    INNER JOIN employes'
      '      ON employes.id_e = sales.id_e'
      '  WHERE sales.fictitious_s = FALSE'
      '  AND sales.date_s >= :date1'
      '  AND sales.date_s <= :date2'
      '  GROUP BY products.name_p) sales_sum'
      'ORDER BY sales_sum.added_value_sort DESC')
    Left = 448
    Top = 408
    object Sales_sum_tableid_s: TIntegerField
      FieldName = 'id_s'
    end
    object Sales_sum_tablename_p: TWideStringField
      FieldName = 'name_p'
      Size = 50
    end
    object Sales_sum_tablename_pt: TWideStringField
      FieldName = 'name_pt'
      Size = 50
    end
    object Sales_sum_tableamount: TFMTBCDField
      FieldName = 'amount'
      Precision = 32
      Size = 0
    end
    object Sales_sum_tableproceeds: TWideStringField
      FieldName = 'proceeds'
      ReadOnly = True
      Size = 57
    end
    object Sales_sum_tablecost_price: TWideStringField
      FieldName = 'cost_price'
      ReadOnly = True
      Size = 57
    end
    object Sales_sum_tableadded_value: TWideStringField
      FieldName = 'added_value'
      ReadOnly = True
      Size = 57
    end
    object Sales_sum_tableproceeds_sort: TFMTBCDField
      FieldName = 'proceeds_sort'
      Precision = 51
      Size = 2
    end
    object Sales_sum_tablecost_price_sort: TFMTBCDField
      FieldName = 'cost_price_sort'
      Precision = 51
      Size = 2
    end
    object Sales_sum_tableadded_value_sort: TFMTBCDField
      FieldName = 'added_value_sort'
      Precision = 51
      Size = 2
    end
    object Sales_sum_tablenumber_of_sales: TFMTBCDField
      FieldName = 'number_of_sales'
      Precision = 36
      Size = 4
    end
    object Sales_sum_tablecategory: TStringField
      FieldKind = fkCalculated
      FieldName = 'category'
      Size = 3
      Calculated = True
    end
    object Sales_sum_tablepercent: TFloatField
      FieldKind = fkCalculated
      FieldName = 'percent'
      DisplayFormat = '#0.#%'
      Calculated = True
    end
  end
end
