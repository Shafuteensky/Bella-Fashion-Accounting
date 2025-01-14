unit DataModule;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, ADODB,
  Vcl.ComCtrls, Vcl.Menus, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Mask, Xml.XMLIntf,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, GraphUtil,
  Xml.xmldom, Xml.XMLDoc, StrUtils, Data.SqlExpr, DateUtils, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, VCLTee.Chart, VCLTee.DBChart, VCLTee.TeeProcs,
  VCLTee.TeeDBCrossTab, VCLTee.TeeFunci;

  function MyMessageDlg(CONST Msg: string; DlgTypt: TmsgDlgType; button: TMsgDlgButtons;
    Caption: ARRAY OF string; dlgcaption: string): Integer;
type
  TDataModule2 = class(TDataModule)
    Products_view_table: TADOTable;
    Products_view_source: TDataSource;
    Product_color_table: TADOTable;
    Product_color_source: TDataSource;
    Product_type_table_1: TADOTable;
    Product_type_source_1: TDataSource;
    Product_supply_view_table: TADOTable;
    Product_supply_view_source: TDataSource;
    Sales_view_table: TADOTable;
    Sales_view_source: TDataSource;
    Sales_buffer_view_table: TADOTable;
    Sales_buffer_view_source: TDataSource;
    Storage_source: TDataSource;
    Financial_report_source_1: TDataSource;
    DataBaseConnection: TADOConnection;
    Material_type_table_1: TADOTable;
    Rate_source: TDataSource;
    Employes_source: TDataSource;
    Employes_table: TADOTable;
    Storages_source: TDataSource;
    Storages_table: TADOTable;
    Customers_source: TDataSource;
    Customers_table: TADOTable;
    Material_supply_view_source: TDataSource;
    Material_supply_view_table: TADOTable;
    Material_type_source_1: TDataSource;
    Material_color_source: TDataSource;
    Material_color_table: TADOTable;
    Financial_report_source_2: TDataSource;
    Material_type_table_1id_mt: TAutoIncField;
    Material_type_table_1name_mt: TWideStringField;
    Product_type_source_2: TDataSource;
    Material_type_source_2: TDataSource;
    Material_type_table_2: TADOTable;
    AutoIncField1: TAutoIncField;
    Product_type_table_2: TADOTable;
    AutoIncField2: TAutoIncField;
    WideStringField2: TWideStringField;
    Products_table: TADOTable;
    Products_source: TDataSource;
    Product_supply_table: TADOTable;
    Product_supply_source: TDataSource;
    Sales_table: TADOTable;
    Sales_source: TDataSource;
    Sales_buffer_table: TADOTable;
    Sales_buffer_source: TDataSource;
    Materials_view_table: TADOTable;
    Matrials_view_source: TDataSource;
    Materials_table: TADOTable;
    Materials_source: TDataSource;
    Material_supply_table: TADOTable;
    Material_supply_source: TDataSource;
    Product_color_tableid_pc: TAutoIncField;
    Product_color_tablename_pc: TWideStringField;
    Customers_tableid_c: TAutoIncField;
    Customers_tablename_c: TWideStringField;
    Customers_tablephone_number_c: TWideStringField;
    Customers_tableaddress_c: TWideStringField;
    Customers_tableinfo_c: TWideStringField;
    Customers_tablepurchases_number_c: TIntegerField;
    Storages_tableid_sl: TAutoIncField;
    Storages_tablename_sl: TWideStringField;
    Storages_tableinfo_sl: TWideStringField;
    Storages_tabletype_sl: TWideStringField;
    Employes_tableid_e: TAutoIncField;
    Employes_tablename_e: TWideStringField;
    Employes_tablepass_e: TWideStringField;
    Employes_tableadmin_e: TBooleanField;
    Product_supply_buffer_view_table: TADOTable;
    Product_supply_buffer_view_source: TDataSource;
    Product_supply_buffer_table: TADOTable;
    Product_supply_buffer_source: TDataSource;
    Material_supply_buffer_view_table: TADOTable;
    Material_supply_buffer_view_source: TDataSource;
    Material_supply_buffer_table: TADOTable;
    Material_supply_buffer_source: TDataSource;
    Products_tableid_p: TAutoIncField;
    Products_tablename_p: TWideStringField;
    Products_tableid_pt: TIntegerField;
    Products_tableproceeds_p: TBCDField;
    Products_tablecost_price_p: TBCDField;
    Products_tableadded_value_p: TBCDField;
    Product_supply_tableid_ps: TAutoIncField;
    Product_supply_tabledate_ps: TDateField;
    Product_supply_tableid_pl: TIntegerField;
    Product_supply_tableid_pc: TIntegerField;
    Product_supply_tableamount_ps: TIntegerField;
    Product_supply_tableid_sl_from: TIntegerField;
    Product_supply_tableid_sl_to: TIntegerField;
    Product_supply_tablefictitious_ps: TBooleanField;
    Product_supply_tableid_e: TIntegerField;
    Products_view_tableid_p: TAutoIncField;
    Products_view_tablename_p: TWideStringField;
    Products_view_tablename_pt: TWideStringField;
    Products_view_tableproceeds_p: TBCDField;
    Products_view_tablecost_price_p: TBCDField;
    Products_view_tableadded_value_pl: TBCDField;
    Product_type_table_1id_pt: TAutoIncField;
    Product_type_table_1name_pt: TWideStringField;
    Product_supply_buffer_tableid_pb: TAutoIncField;
    Product_supply_buffer_tabledate_pb: TDateField;
    Product_supply_buffer_tableid_pl: TIntegerField;
    Product_supply_buffer_tableid_pc: TIntegerField;
    Product_supply_buffer_tableamount_ps: TIntegerField;
    Sales_tableid_s: TAutoIncField;
    Sales_tabledate_s: TDateField;
    Sales_tableid_pl: TIntegerField;
    Sales_tableid_pc: TIntegerField;
    Sales_tableamount_s: TIntegerField;
    Sales_tableid_cl: TIntegerField;
    Sales_tableid_sl_from: TIntegerField;
    Sales_tablefictitious_s: TBooleanField;
    Sales_tableid_e: TIntegerField;
    Sales_buffer_tableid_sb: TAutoIncField;
    Sales_buffer_tabledate_sb: TDateField;
    Sales_buffer_tableid_pl: TIntegerField;
    Sales_buffer_tableid_pc: TIntegerField;
    Sales_buffer_tableamount_s: TIntegerField;
    Materials_view_tableid_m: TAutoIncField;
    Materials_view_tablename_m: TWideStringField;
    Materials_view_tablename_mt: TWideStringField;
    Materials_view_tablecost_m: TBCDField;
    Material_supply_tableid_ms: TAutoIncField;
    Material_supply_tabledate_ms: TDateField;
    Material_supply_tableid_ml: TIntegerField;
    Material_supply_tableid_mc: TIntegerField;
    Material_supply_tableid_sl_to: TIntegerField;
    Material_supply_tableid_e: TIntegerField;
    Today_rate_table: TADOTable;
    Today_rate_source: TDataSource;
    Storages_tableaddress_sl: TStringField;
    Material_type_table_2name_mt: TWideStringField;
    Material_supply_tableamount_ms: TBCDField;
    Sales_tablereceipt_number_s: TWideStringField;
    Sales_source_2: TDataSource;
    Sales_table_2: TADOTable;
    AutoIncField3: TAutoIncField;
    DateField1: TDateField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    WideStringField1: TWideStringField;
    BooleanField1: TBooleanField;
    IntegerField6: TIntegerField;
    Storages_table_2: TADOTable;
    AutoIncField4: TAutoIncField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    StringField1: TStringField;
    Storages_source_2: TDataSource;
    Sales_view_tableid_s: TAutoIncField;
    Sales_view_tabledate: TDateField;
    Sales_view_tablename_p: TWideStringField;
    Sales_view_tablename_pt: TWideStringField;
    Sales_view_tablename_pc: TWideStringField;
    Sales_view_tableamount: TIntegerField;
    Sales_view_tablename_c: TWideStringField;
    Sales_view_tablename_sl: TWideStringField;
    Sales_view_tablereceipt_number: TWideStringField;
    Sales_view_tablefictitious: TBooleanField;
    Sales_view_tablename_e: TWideStringField;
    Sales_view_tableproceeds: TWideStringField;
    Sales_view_tablecost_price: TWideStringField;
    Sales_view_tableadded_value: TWideStringField;
    Sales_buffer_view_tableid_sb: TAutoIncField;
    Sales_buffer_view_tabledate: TDateField;
    Sales_buffer_view_tablename_p: TWideStringField;
    Sales_buffer_view_tablename_pt: TWideStringField;
    Sales_buffer_view_tablename_pc: TWideStringField;
    Sales_buffer_view_tableamount: TIntegerField;
    Sales_buffer_view_tableproceeds: TWideStringField;
    Sales_buffer_view_tablecost_price: TWideStringField;
    Sales_buffer_view_tableadded_value: TWideStringField;
    Material_supply_view_tableid_ms: TAutoIncField;
    Material_supply_view_tabledate: TDateField;
    Material_supply_view_tablename_m: TWideStringField;
    Material_supply_view_tablename_mt: TWideStringField;
    Material_supply_view_tablename_mc: TWideStringField;
    Material_supply_view_tableamount: TBCDField;
    Material_supply_view_tablename_sl: TWideStringField;
    Material_supply_view_tablecost: TWideStringField;
    Material_supply_view_tablename_e: TWideStringField;
    Product_supply_view_tableid_ps: TAutoIncField;
    Product_supply_view_tabledate: TDateField;
    Product_supply_view_tablename_p: TWideStringField;
    Product_supply_view_tablename_pt: TWideStringField;
    Product_supply_view_tablename_pc: TWideStringField;
    Product_supply_view_tableamount: TIntegerField;
    Product_supply_view_tablestorage_from: TWideStringField;
    Product_supply_view_tablestorage_to: TWideStringField;
    Product_supply_view_tableproceeds: TWideStringField;
    Product_supply_view_tablecost_price: TWideStringField;
    Product_supply_view_tableadded_value: TWideStringField;
    Product_supply_view_tablefictitious: TBooleanField;
    Product_supply_view_tablename_e: TWideStringField;
    Product_supply_view_tableproceeds_sort: TFMTBCDField;
    Product_supply_view_tablecost_price_sort: TFMTBCDField;
    Product_supply_view_tableadded_value_sort: TFMTBCDField;
    Sales_view_tableproceeds_sort: TFMTBCDField;
    Sales_view_tablecost_price_sort: TFMTBCDField;
    Sales_view_tableadded_value_sort: TFMTBCDField;
    Sales_buffer_view_tableproceeds_sort: TFMTBCDField;
    Sales_buffer_view_tablecost_price_sort: TFMTBCDField;
    Sales_buffer_view_tableadded_value_sort: TFMTBCDField;
    Material_supply_view_tablecost_sort: TFMTBCDField;
    Sales_view_table_search: TADOTable;
    AutoIncField5: TAutoIncField;
    DateField2: TDateField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    IntegerField7: TIntegerField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    BooleanField2: TBooleanField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    WideStringField15: TWideStringField;
    FMTBCDField1: TFMTBCDField;
    FMTBCDField2: TFMTBCDField;
    FMTBCDField3: TFMTBCDField;
    Product_supply_view_table_search: TADOTable;
    AutoIncField6: TAutoIncField;
    DateField3: TDateField;
    WideStringField16: TWideStringField;
    WideStringField17: TWideStringField;
    WideStringField18: TWideStringField;
    IntegerField8: TIntegerField;
    WideStringField19: TWideStringField;
    WideStringField20: TWideStringField;
    WideStringField21: TWideStringField;
    WideStringField22: TWideStringField;
    WideStringField23: TWideStringField;
    BooleanField3: TBooleanField;
    WideStringField24: TWideStringField;
    FMTBCDField4: TFMTBCDField;
    FMTBCDField5: TFMTBCDField;
    FMTBCDField6: TFMTBCDField;
    Material_supply_view_table_search: TADOTable;
    AutoIncField7: TAutoIncField;
    DateField4: TDateField;
    WideStringField25: TWideStringField;
    WideStringField26: TWideStringField;
    WideStringField27: TWideStringField;
    BCDField1: TBCDField;
    WideStringField28: TWideStringField;
    WideStringField29: TWideStringField;
    WideStringField30: TWideStringField;
    FMTBCDField7: TFMTBCDField;
    Today_rate_tableid_r: TAutoIncField;
    Today_rate_tabledate_r: TDateField;
    Today_rate_tableKGS: TBCDField;
    Today_rate_tableRUB: TBCDField;
    Product_supply_buffer_view_tableid_pb: TAutoIncField;
    Product_supply_buffer_view_tabledate_pb: TDateField;
    Product_supply_buffer_view_tablename_p: TWideStringField;
    Product_supply_buffer_view_tablename_pc: TWideStringField;
    Product_supply_buffer_view_tablename_pt: TWideStringField;
    Product_supply_buffer_view_tableamount: TIntegerField;
    Product_supply_buffer_view_tableproceeds: TWideStringField;
    Product_supply_buffer_view_tablecost_price: TWideStringField;
    Product_supply_buffer_view_tableadded_value: TWideStringField;
    Product_supply_buffer_view_tableproceeds_sort: TFMTBCDField;
    Product_supply_buffer_view_tablecost_price_sort: TFMTBCDField;
    Product_supply_buffer_view_tableadded_value_sort: TFMTBCDField;
    Materials_view_tablename_mm: TWideStringField;
    Material_supply_view_tablename_mm: TWideStringField;
    Material_measure_table_1: TADOTable;
    Material_measure_source_1: TDataSource;
    Material_measure_table_1id_mm: TAutoIncField;
    Material_measure_table_1name_mm: TWideStringField;
    Material_supply_view_table_searchname_mm: TWideStringField;
    Material_measure_source_2: TDataSource;
    Material_measure_table_2: TADOTable;
    AutoIncField8: TAutoIncField;
    WideStringField34: TWideStringField;
    Storages_view_source: TDataSource;
    Storages_manufactories_table: TADOTable;
    Storages_manufactories_source: TDataSource;
    Storages_manufactories_tableid_sl: TAutoIncField;
    Storages_manufactories_tablename_sl: TWideStringField;
    Storages_manufactories_tableinfo_sl: TWideStringField;
    Storages_manufactories_tabletype_sl: TWideStringField;
    Storages_manufactories_tableaddress_sl: TWideStringField;
    Storages_view_table: TADOTable;
    Storages_view_tableid_sl: TAutoIncField;
    Storages_view_tablename_sl: TWideStringField;
    Storages_view_tableinfo_sl: TWideStringField;
    Storages_view_tabletype_sl: TWideStringField;
    Storages_view_tableaddress_sl: TWideStringField;
    Storage_table_KGS: TADOQuery;
    Storage_table_KGSname_p: TWideStringField;
    Storage_table_KGSname_pt: TWideStringField;
    Storage_table_KGSname_pc: TWideStringField;
    Storage_table_KGSamount: TFMTBCDField;
    Storage_table_KGSproceeds: TWideStringField;
    Storage_table_KGScost_price: TWideStringField;
    Storage_table_KGSadded_value: TWideStringField;
    Storage_table_KGSproceeds_sort: TFMTBCDField;
    Storage_table_KGScost_price_sort: TFMTBCDField;
    Storage_table_KGSadded_value_sort: TFMTBCDField;
    Storage_table_search: TADOQuery;
    WideStringField31: TWideStringField;
    WideStringField32: TWideStringField;
    WideStringField33: TWideStringField;
    FMTBCDField8: TFMTBCDField;
    WideStringField35: TWideStringField;
    WideStringField36: TWideStringField;
    WideStringField37: TWideStringField;
    FMTBCDField9: TFMTBCDField;
    FMTBCDField10: TFMTBCDField;
    FMTBCDField11: TFMTBCDField;
    Storage_table_RUB: TADOQuery;
    WideStringField38: TWideStringField;
    WideStringField39: TWideStringField;
    WideStringField40: TWideStringField;
    FMTBCDField12: TFMTBCDField;
    WideStringField41: TWideStringField;
    WideStringField42: TWideStringField;
    WideStringField43: TWideStringField;
    FMTBCDField13: TFMTBCDField;
    FMTBCDField14: TFMTBCDField;
    FMTBCDField15: TFMTBCDField;
    Storage_table_USD: TADOQuery;
    WideStringField44: TWideStringField;
    WideStringField45: TWideStringField;
    WideStringField46: TWideStringField;
    FMTBCDField16: TFMTBCDField;
    WideStringField47: TWideStringField;
    WideStringField48: TWideStringField;
    WideStringField49: TWideStringField;
    FMTBCDField17: TFMTBCDField;
    FMTBCDField18: TFMTBCDField;
    FMTBCDField19: TFMTBCDField;
    Storage_table: TADOQuery;
    WideStringField50: TWideStringField;
    WideStringField51: TWideStringField;
    WideStringField52: TWideStringField;
    FMTBCDField20: TFMTBCDField;
    WideStringField53: TWideStringField;
    WideStringField54: TWideStringField;
    WideStringField55: TWideStringField;
    FMTBCDField21: TFMTBCDField;
    FMTBCDField22: TFMTBCDField;
    FMTBCDField23: TFMTBCDField;
    Storage_table_USDid_ps: TIntegerField;
    Storage_table_KGSid_ps: TIntegerField;
    Storage_table_RUBid_ps: TIntegerField;
    Storage_table_searchid_ps: TIntegerField;
    Storage_tableid_ps: TIntegerField;
    Sales_best_selling: TADOTable;
    Storage_buffer: TADOQuery;
    Rate_table: TADOTable;
    Rate_tableid_r: TAutoIncField;
    Rate_tabledate_r: TDateField;
    Rate_tableKGS: TBCDField;
    Rate_tableRUB: TBCDField;
    Rate_tableIsAuto: TBooleanField;
    Storages_storages_source: TDataSource;
    Storages_storages_table: TADOTable;
    AutoIncField9: TAutoIncField;
    WideStringField56: TWideStringField;
    WideStringField57: TWideStringField;
    WideStringField58: TWideStringField;
    WideStringField59: TWideStringField;
    Storage_chart: TADOQuery;
    Storage_chartname_p: TWideStringField;
    Storage_chartamount: TFMTBCDField;
    Financial_report_USD: TADOQuery;
    Financial_report_USDname_p: TWideStringField;
    Financial_report_USDname_pt: TWideStringField;
    Financial_report_USDname_pc: TWideStringField;
    Financial_report_USDamount: TFMTBCDField;
    Financial_report_USDproceeds: TWideStringField;
    Financial_report_USDcost_price: TWideStringField;
    Financial_report_USDadded_value: TWideStringField;
    Financial_report_USDproceeds_sort: TFMTBCDField;
    Financial_report_USDcost_price_sort: TFMTBCDField;
    Financial_report_USDadded_value_sort: TFMTBCDField;
    Financial_report_table_1: TADOQuery;
    WideStringField60: TWideStringField;
    WideStringField61: TWideStringField;
    WideStringField62: TWideStringField;
    FMTBCDField24: TFMTBCDField;
    WideStringField63: TWideStringField;
    WideStringField64: TWideStringField;
    WideStringField65: TWideStringField;
    FMTBCDField25: TFMTBCDField;
    FMTBCDField26: TFMTBCDField;
    FMTBCDField27: TFMTBCDField;
    Financial_report_table_2: TADOQuery;
    WideStringField66: TWideStringField;
    WideStringField67: TWideStringField;
    WideStringField68: TWideStringField;
    FMTBCDField28: TFMTBCDField;
    WideStringField69: TWideStringField;
    WideStringField70: TWideStringField;
    WideStringField71: TWideStringField;
    FMTBCDField29: TFMTBCDField;
    FMTBCDField30: TFMTBCDField;
    FMTBCDField31: TFMTBCDField;
    Financial_report_RUB: TADOQuery;
    WideStringField72: TWideStringField;
    WideStringField73: TWideStringField;
    WideStringField74: TWideStringField;
    FMTBCDField32: TFMTBCDField;
    WideStringField75: TWideStringField;
    WideStringField76: TWideStringField;
    WideStringField77: TWideStringField;
    FMTBCDField33: TFMTBCDField;
    FMTBCDField34: TFMTBCDField;
    FMTBCDField35: TFMTBCDField;
    Financial_report_KGS: TADOQuery;
    WideStringField78: TWideStringField;
    WideStringField79: TWideStringField;
    WideStringField80: TWideStringField;
    FMTBCDField36: TFMTBCDField;
    WideStringField81: TWideStringField;
    WideStringField82: TWideStringField;
    WideStringField83: TWideStringField;
    FMTBCDField37: TFMTBCDField;
    FMTBCDField38: TFMTBCDField;
    FMTBCDField39: TFMTBCDField;
    Financial_report_USDid_s: TIntegerField;
    Financial_report_RUBid_s: TIntegerField;
    Financial_report_KGSid_s: TIntegerField;
    Financial_report_table_2id_s: TIntegerField;
    Financial_report_table_1id_s: TIntegerField;
    Sales_sum_source: TDataSource;
    Sales_sum_table: TADOQuery;
    Sales_sum_tableid_s: TIntegerField;
    Sales_sum_tablename_p: TWideStringField;
    Sales_sum_tablename_pt: TWideStringField;
    Sales_sum_tableamount: TFMTBCDField;
    Sales_sum_tableproceeds: TWideStringField;
    Sales_sum_tablecost_price: TWideStringField;
    Sales_sum_tableadded_value: TWideStringField;
    Sales_sum_tableproceeds_sort: TFMTBCDField;
    Sales_sum_tablecost_price_sort: TFMTBCDField;
    Sales_sum_tableadded_value_sort: TFMTBCDField;
    Sales_sum_tablenumber_of_sales: TFMTBCDField;
    Sales_sum_tablecategory: TStringField;
    Sales_sum_tablepercent: TFloatField;
    Material_supply_buffer_tableid_mb: TAutoIncField;
    Material_supply_buffer_tabledate_mb: TDateField;
    Material_supply_buffer_tableid_ml: TIntegerField;
    Material_supply_buffer_tableid_mc: TIntegerField;
    Material_supply_buffer_tableamount_ms: TBCDField;
    Material_supply_buffer_view_tableid_mb: TAutoIncField;
    Material_supply_buffer_view_tabledate_mb: TDateField;
    Material_supply_buffer_view_tablename_m: TWideStringField;
    Material_supply_buffer_view_tablename_mt: TWideStringField;
    Material_supply_buffer_view_tablename_mc: TWideStringField;
    Material_supply_buffer_view_tableamount: TBCDField;
    Material_supply_buffer_view_tablename_mm: TWideStringField;
    Material_supply_buffer_view_tablecost: TWideStringField;
    Material_supply_buffer_view_tablecost_sort: TFMTBCDField;
    Materials_tableid_m: TAutoIncField;
    Materials_tablename_m: TWideStringField;
    Materials_tableid_mt: TIntegerField;
    Materials_tablecost_m: TBCDField;
    Materials_tableid_mm: TIntegerField;
    Material_color_tableid_mc: TAutoIncField;
    Material_color_tablename_mc: TWideStringField;
    Sales_best_sellingname_p: TWideStringField;
    Sales_best_sellingname_pc: TWideStringField;
    Sales_best_sellingamount: TFMTBCDField;
    Sales_best_sellingid_s: TIntegerField;
    Sales_best_sellingdate: TDateField;
    Sales_best_sellingname_pt: TWideStringField;
    Sales_best_sellingname_c: TWideStringField;
    Sales_best_sellingname_sl: TWideStringField;
    Sales_best_sellingreceipt_number: TWideStringField;
    Sales_best_sellingfictitious: TBooleanField;
    Sales_best_sellingname_e: TWideStringField;
    Sales_best_sellingproceeds: TWideStringField;
    Sales_best_sellingcost_price: TWideStringField;
    Sales_best_sellingadded_value: TWideStringField;
    Sales_best_sellingproceeds_sort: TFMTBCDField;
    Sales_best_sellingcost_price_sort: TFMTBCDField;
    Sales_best_sellingadded_value_sort: TFMTBCDField;
    procedure EditBlock(ToolBar: TToolBar; Bool: Boolean; Col: Integer);
    procedure ReactivateTable(Table: TADOTable);
    procedure ReactivateQuery(Table: TDataSet);
    procedure ShowForm(ThisForm: TForm);
    function BoxShow(ThisPanel: TPanel; ThisBox: TGroupBox; AnotherBox: TGroupBox;  ToolBar: TToolBar;
      ButtonNumber: Integer; MenuLabel: String; IsPanel: Boolean): Boolean;
    procedure FormOpenError();
    procedure SaveSettings();
    procedure LoadSettings();
    procedure ReConnectDB();
    procedure PanelHighlight(ThisBox: TGroupBox);
    procedure PanelHighlightDouble(Box1: TGroupBox; Box2: TGroupBox);
    procedure ComboBoxFromSQL(const DS: TDatasource; const FieldName: string; ComboBox: TComboBox);
    procedure Sales_view_tableCalcFields(DataSet: TDataSet);
    procedure CalculateCurrencyProduction(Table: TADOTable);
    procedure CalculateCurrencyMaterials(Table: TADOTable);
    procedure Sales_buffer_view_tableCalcFields(DataSet: TDataSet);
    procedure Material_supply_view_tableCalcFields(DataSet: TDataSet);
    procedure Product_supply_view_tableCalcFields(DataSet: TDataSet);
    procedure Product_supply_buffer_view_tableCalcFields(DataSet: TDataSet);
    procedure Material_supply_buffer_view_tableCalcFields(DataSet: TDataSet);
    procedure Sorting(Grid: TDBGrid; Column: TColumn);
    procedure Products_tableAfterDelete(DataSet: TDataSet);
    procedure Materials_tableAfterDelete(DataSet: TDataSet);
    procedure Materials_view_tableAfterScroll(DataSet: TDataSet);
    procedure Material_supply_tableAfterDelete(DataSet: TDataSet);
    procedure Material_supply_view_tableAfterScroll(DataSet: TDataSet);
    procedure Material_supply_buffer_view_tableAfterScroll(DataSet: TDataSet);
    procedure Products_view_tableAfterScroll(DataSet: TDataSet);
    procedure Product_supply_tableAfterDelete(DataSet: TDataSet);
    procedure Product_supply_view_tableAfterScroll(DataSet: TDataSet);
    procedure Product_supply_buffer_tableAfterDelete(DataSet: TDataSet);
    procedure Product_supply_buffer_view_tableAfterScroll(DataSet: TDataSet);
    procedure Sales_tableAfterDelete(DataSet: TDataSet);
    procedure Sales_view_tableAfterScroll(DataSet: TDataSet);
    procedure Sales_buffer_view_tableAfterScroll(DataSet: TDataSet);
    procedure Customers_tableAfterDelete(DataSet: TDataSet);
    procedure Storages_tableAfterDelete(DataSet: TDataSet);
    procedure Employes_tableAfterDelete(DataSet: TDataSet);
    procedure ClearTable(Table: TADOTable);
    procedure ChangeTableDate(Table: TADOTable; FieldName: string; DTP: TDateTimePicker);
    procedure DeleteRecord(Table: TADOTable);
    procedure ChangeTableCurrency();
    procedure Material_color_tableAfterDelete(DataSet: TDataSet);
    procedure Material_type_table_2AfterDelete(DataSet: TDataSet);
    procedure Product_color_tableAfterDelete(DataSet: TDataSet);
    procedure Product_type_table_2AfterDelete(DataSet: TDataSet);
    procedure DelimeterKey(ThisEdit: TEdit; var Key: Char);
    procedure DelimeterKeyDB(ThisEdit: TDBEdit; var Key: Char);
    procedure DateFilterTypeChange(ThisForm: TForm);
    procedure DelimeterKeyPoints(ThisEdit: TEdit; var Key: Char);
    procedure Rate_tableAfterDelete(DataSet: TDataSet);
    procedure SettingsReset();
    procedure Sales_buffer_tableAfterDelete(DataSet: TDataSet);
    procedure Material_supply_buffer_tableAfterDelete(DataSet: TDataSet);
    procedure StatUpdate(ThisForm: TForm);
    procedure PurchaseStatUpdate(ThisForm: TForm);
    procedure TextAppend(FormName: TForm; LabelName: string; Text: string);
    procedure Material_measure_table_1AfterDelete(DataSet: TDataSet);
    procedure Storages_view_tableAfterDelete(DataSet: TDataSet);
    procedure GridDrawColumnCell(const Rect: TRect; DataCol: Integer;
      Column: TColumn; State: TGridDrawState; ThisTable: TADOTable;
      ThisGrid: TDBGrid; TableName: string; FieldName: string);
    procedure StorageLoad();
    procedure FinancialReportLoad();
    procedure AmountMultiply(AmountEdit: TDBEdit);
    procedure Sales_sum_tableCalcFields(DataSet: TDataSet);
    procedure Sales_tableAfterPost(DataSet: TDataSet);
    procedure Sales_tableBeforeEdit(DataSet: TDataSet);
//    procedure LoadSetting(SettingString: string; SettingParam: string; SettingData: string);
//    procedure FilterButtonClick(Sender: TObject);
//    procedure Reactivate(Report: TADOTable);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;
  // Стандартные заголовки
  LabelFilter: String = 'Фильтрация';
  LabelSearch: String = 'Поиск';
  LabelStat: String = 'Статистика';
  LabelAdd: String = 'Добавить';
  LabelEdit: String = 'Изменить';
  LabelDelete: String = 'Удалить';
  LabelCheck: String = '✔ ';
  LabelDot: String = '• ';
  LabelDeleteConfirmation: String = 'Удалить текущую запись?';
  LabelList: String = 'Новый список';
  // Курс
  RateKGS_RUB: Double;
  RateRUB_KGS: Double;
  RateUSD_RUB: Double;
  RateRUB_USD: Double;
  RateUSD_KGS: Double;
  RateKGS_USD: Double;
  //
  RateConnection: Boolean = False;
  NoteFileLoaded: Boolean = False;
  // КОСТЫЛЬ: При первом запуске OnShow + при переактивации формы криво срабатывает;
  FirstActivation: Boolean = True;
  // Сортировка
  CSort: Integer = -1;
  // Проценты при ABC-анализе
  ABCPercentSum: Double;
  // Параметры настроек
  // Сервер базы данных
    // ip
  ServerParam: string;
    // Порт
  PortParam: Integer;
    // Пароль
  PassParam: Integer;
    // Подключаться по строке
  ConnectByStringParam: Boolean;
  ConnectionStringParam: string;
  // Программа
    // Сохранять состояния кнопок меню
  SaveButStateParam: Boolean;
    // Минимизировать окно
  WindowMinParam: Boolean;
    // Запомнить последнюю открытую форму
  RememWinParam: Boolean;
    // Последняя открытая форма
  CurrWinParam: string;
    // Поля по-умолчанию
  DefaultFieldsParam: Boolean;
    // Окрашивать строки при отсутствии курса
  PaintIfNoRateParam: Boolean;
  // Курс валют
    // Просить ввести курс при его отсутствии
  AskRateParam: Boolean;
    // Отображаемая валюта
  DispCurrParam: Integer;
    // Автоматический курс
  AutoRateParam: Boolean;
  // Блокнот
    // Закладка
  BookMarkParam: integer;
  // Состояния кнопок
    // Материалы
  MaterialFilterParam: Boolean;
  MaterialSearchParam: Boolean;
  MaterialStatParam: Boolean;
    // Продукция
  ProductionFilterParam: Boolean;
  ProductionSearchParam: Boolean;
  ProductionStatParam: Boolean;
    // Продажи
  SalesFilterParam: Boolean;
  SalesSearchParam: Boolean;
  SalesStatParam: Boolean;
  SalesReceiptPrintParam: Boolean;
    // Склад
  StorageFilterParam: Boolean;
  StorageSearchParam: Boolean;
  StorageStatParam: Boolean;
  StorageCurrentParam: Integer;
  ChartCurrentParam: Boolean;
  HighlPanelsParam: Boolean;
  AutoReportsParam: Boolean;
  RepIntensParam: Integer;
  // Аккаунт
    // Не выходить из аккаунта
  DoNotLogOutParam: Boolean;
    // Логин
  LoginIdParam: Integer;
    // Пароль
  LoginPassParam: string;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MainPage, ABCAnalysisUnit, FinancialReportUnit, MaterialEditUnit,
  MaterialSupplyUnit, ProductionEditUnit, ProductionSupplyUnit, SalesUnit,
  SettingsUnit, StorageUnit, RateUnit, inifiles, EnvironmentEditUnit,
  ProductionSupplySearchUnit, Math;

{$R *.dfm}

// Процедуры и функции =========================================================
// Общие -----------------------------------------------------------------------
// Сообщения
function MyMessageDlg(CONST Msg: string; DlgTypt: TmsgDlgType; button: TMsgDlgButtons;
  Caption: ARRAY OF string; dlgcaption: string): Integer;
var
  aMsgdlg: TForm;
  i: Integer;
  Dlgbutton: Tbutton;
  Captionindex: Integer;
begin
  aMsgdlg := createMessageDialog(Msg, DlgTypt, button);
  aMsgdlg.Caption := dlgcaption;
  aMsgdlg.BiDiMode := bdLeftToRight;
  Captionindex := 0;
  for i := 0 to aMsgdlg.componentcount - 1 Do
  begin
    if (aMsgdlg.components[i] is Tbutton) then
    Begin
      Dlgbutton := Tbutton(aMsgdlg.components[i]);
      if Captionindex <= High(Caption) then
        Dlgbutton.Caption := Caption[Captionindex];
      inc(Captionindex);
    end;
  end;
  Result := aMsgdlg.Showmodal;
end;

// Ошибка открытия формы: форма уже открыта
procedure TDataModule2.FormOpenError();
begin
  MessageBeep(MB_ICONWARNING);
end;

// Заполнение Combo Box из базы данных
procedure TDataModule2.ComboBoxFromSQL(const DS: TDatasource; const FieldName: string; ComboBox: TComboBox);
var
  IsActive: boolean;
  B: TBookmark;
begin
  ComboBox.Items.Clear;
  IsActive := DS.DataSet.Active;
  if not IsActive then
    DS.DataSet.Active := True
  else
     B := DS.DataSet.GetBookmark;
  DS.DataSet.DisableControls;
  try
    DS.DataSet.First;
    while not DS.DataSet.EOF do
    begin
      ComboBox.Items.Add(DS.DataSet.FieldByName(FieldName).AsString);
      DS.DataSet.Next
    end;
  finally
    begin
      if not IsActive then
        DS.DataSet.Active := False
       else
       begin
        DS.DataSet.GotoBookmark(B);
        DS.DataSet.FreeBookmark(B);
       end;
      DS.DataSet.EnableControls;
    end;
  end;
end;

// Показать/Скрыть панель/box меню
function TDataModule2.BoxShow(ThisPanel: TPanel; ThisBox: TGroupBox; AnotherBox: TGroupBox; ToolBar: TToolBar;
  ButtonNumber: Integer; MenuLabel: string; IsPanel: Boolean): Boolean;
begin
  if IsPanel = False then
  begin
    ThisBox.Visible := not ThisBox.Visible;
    if ThisBox.Visible = True then
    begin
      ThisPanel.Visible := True;
      AnotherBox.Left := 0;
      ToolBar.Buttons[ButtonNumber].Caption := LabelCheck + MenuLabel;
      result := True;
    end
    else
    begin
      if AnotherBox.Visible = False then
        ThisPanel.Visible := False;
      ToolBar.Buttons[ButtonNumber].Caption := MenuLabel;
      result := False;
    end;
  end
  else
  begin
    ThisPanel.Visible := not ThisPanel.Visible;
    if ThisPanel.Visible = True then
    begin
      ToolBar.Buttons[ButtonNumber].Caption := LabelCheck + MenuLabel;
      result := True;
    end
    else
    begin
      ToolBar.Buttons[ButtonNumber].Caption := MenuLabel;
      result := False;
    end;
  end;
end;

// Выделение новой показаной панели
procedure TDataModule2.PanelHighlight(ThisBox: TGroupBox);
var
  i: integer;
begin
  if HighlPanelsParam = True then
  begin
    try
    MainForm.ToolBarPanel.Enabled := False;
    for i := 13 to 23 do
    begin
      sleep(20);
      Application.ProcessMessages;
      ThisBox.Color := ColorHLStoRGB(29, i*10, 240);
    end;
    ThisBox.Color := ColorHLStoRGB(29, 233, 240);
    MainForm.ToolBarPanel.Enabled := True;
    except
    end;
  end;
end;
// 2
procedure TDataModule2.PanelHighlightDouble(Box1: TGroupBox; Box2: TGroupBox);
var
  i: integer;
begin
  if HighlPanelsParam = True then
  begin
    try
    MainForm.ToolBarPanel.Enabled := False;
    for i := 13 to 23 do
    begin
      sleep(20);
      Application.ProcessMessages;
      Box1.Color := ColorHLStoRGB(29, i*10, 240);
      Box2.Color := ColorHLStoRGB(29, i*10, 240);
    end;
    Box1.Color := ColorHLStoRGB(29, 233, 240);
    Box2.Color := ColorHLStoRGB(29, 233, 240);
    MainForm.ToolBarPanel.Enabled := True;
    except
    end;
  end;
end;

// Закрашивание ячеек без курса на дату
procedure TDataModule2.GridDrawColumnCell(const Rect: TRect; DataCol: Integer;
  Column: TColumn; State: TGridDrawState; ThisTable: TADOTable;
  ThisGrid: TDBGrid; TableName: string; FieldName: string);
begin
  if PaintIfNoRateParam = True then
  begin
    // Если не включено отображение в долларах, то подкрашивать строки
    if ThisTable.TableName <> TableName then
    begin
      with ThisGrid.Canvas do
      begin
        if not (gdSelected in State) then
        if ContainsText(ThisTable.FieldByName(FieldName).AsString, 'USD') then
        begin
          Font.Color := $000A7A96;
        end;
      end;
      ThisGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      ThisGrid.Enabled := True;
    end;
  end;
end;

// Показать форму
procedure TDataModule2.ShowForm(ThisForm: TForm);
begin
  ThisForm.Parent := MainForm.MainPanel;
  ThisForm.Visible := True;
end;

// Переактивация таблиц
procedure TDataModule2.ReactivateTable(Table: TADOTable);
var
  LeBookmark: TBookmark;
begin
  try LeBookmark := Table.GetBookmark except end;
  Table.Active := False;
  Table.Active := True;
  try Table.GotoBookmark(LeBookmark) except end;
end;
//
procedure TDataModule2.ReactivateQuery(Table: TDataSet);
begin
  Table.Active := False;
  Table.Active := True;
end;
// Отключение меню
//procedure MainMenuDisable();
//begin
//  MainForm.MenuShop
//  MenuSupply
//  MenuEdit
//  MenuReport
//  MenuSettings
//  MenuExit
//end;

// Унифицированный фильтр
procedure FilterButtonClick(Sender: TObject);
begin
  //
end;

// Блокировка/Разблокировка изменения
procedure TDataModule2.EditBlock(ToolBar: TToolBar; Bool: Boolean; Col: Integer);
begin
  if Col >= 1 then ToolBar.Buttons[1].Enabled := Bool;
  if Col >= 2 then ToolBar.Buttons[2].Enabled := Bool;
  if Col >= 3 then ToolBar.Buttons[3].Enabled := Bool;
  if Col >= 4 then ToolBar.Buttons[4].Enabled := Bool;
  if Col >= 5 then ToolBar.Buttons[5].Enabled := Bool;
  if Col >= 6 then ToolBar.Buttons[6].Enabled := Bool;
  if Col >= 7 then ToolBar.Buttons[7].Enabled := Bool
end;

// Изменение отображаемой таблицы
procedure TDataModule2.ChangeTableCurrency();
var
  i: Integer;
//  LeBookmark1: TBookmark;
//  LeBookmark2: TBookmark;
//  LeBookmark3: TBookmark;
  procedure ReactivateTables(Bool: Boolean);
  begin
    DataModule2.Product_supply_view_table.Active := Bool;
    DataModule2.Product_supply_buffer_view_table.Active := Bool;
    DataModule2.Product_supply_view_table_search.Active := Bool;
    DataModule2.Sales_view_table.Active := Bool;
    DataModule2.Sales_buffer_view_table.Active := Bool;
    DataModule2.Sales_view_table_search.Active := Bool;
    DataModule2.Material_supply_view_table.Active := Bool;
    DataModule2.Material_supply_buffer_view_table.Active := Bool;
    DataModule2.Material_supply_view_table_search.Active := Bool;
  end;
begin
//  LeBookmark1 := DataModule2.Product_supply_view_table.GetBookmark;
//  LeBookmark2 := DataModule2.Sales_view_table.GetBookmark;
//  LeBookmark2 := DataModule2.Material_supply_view_table.GetBookmark;
  ReactivateTables(False);
  case DispCurrParam of
    0:
    begin
      Product_supply_view_table.TableName := 'product_supply_view_usd';
      Product_supply_buffer_view_table.TableName := 'product_supply_buffer_view_usd';
      Product_supply_view_table_search.TableName := 'product_supply_view_usd';
      Sales_view_table.TableName := 'sales_view_usd';
      Sales_buffer_view_table.TableName := 'sales_buffer_view_usd';
      Sales_view_table_search.TableName := 'sales_view_usd';
      Material_supply_view_table.TableName := 'material_supply_view_usd';
      Material_supply_buffer_view_table.TableName := 'material_supply_buffer_view_usd';
      Material_supply_view_table_search.TableName := 'material_supply_view_usd';
      StorageLoad();
      FinancialReportLoad();
    end;
    1:
    begin
      Product_supply_view_table.TableName := 'product_supply_view_kgs';
      Product_supply_buffer_view_table.TableName := 'product_supply_buffer_view_kgs';
      Product_supply_view_table_search.TableName := 'product_supply_view_kgs';
      Sales_view_table.TableName := 'sales_view_kgs';
      Sales_buffer_view_table.TableName := 'sales_buffer_view_kgs';
      Sales_view_table_search.TableName := 'sales_view_kgs';
      Material_supply_view_table.TableName := 'material_supply_view_kgs';
      Material_supply_buffer_view_table.TableName := 'material_supply_buffer_view_kgs';
      Material_supply_view_table_search.TableName := 'material_supply_view_kgs';
      StorageLoad();
      FinancialReportLoad();
    end;
    2:
    begin
      Product_supply_view_table.TableName := 'product_supply_view_rub';
      Product_supply_buffer_view_table.TableName := 'product_supply_buffer_view_rub';
      Product_supply_view_table_search.TableName := 'product_supply_view_rub';
      Sales_view_table.TableName := 'sales_view_rub';
      Sales_buffer_view_table.TableName := 'sales_buffer_view_rub';
      Sales_view_table_search.TableName := 'sales_view_rub';
      Material_supply_view_table.TableName := 'material_supply_view_rub';
      Material_supply_buffer_view_table.TableName := 'material_supply_buffer_view_rub';
      Material_supply_view_table_search.TableName := 'material_supply_view_rub';
      StorageLoad();
      FinancialReportLoad();
    end;
  end;
  ReactivateTables(True);
  if SalesForm <> nil then
  begin
    DataModule2.StatUpdate(SalesForm);
    DataModule2.PurchaseStatUpdate(SalesForm);
  end;
  if ProductionSupplyForm <> nil then
  begin
    DataModule2.StatUpdate(ProductionSupplyForm);
    DataModule2.PurchaseStatUpdate(ProductionSupplyForm);
  end;
  if MaterialSupplyForm <> nil then
  begin
    DataModule2.StatUpdate(MaterialSupplyForm);
    DataModule2.PurchaseStatUpdate(MaterialSupplyForm);
  end;
//  try DataModule2.Product_supply_view_table.GotoBookmark(LeBookmark1) except end;
//  try DataModule2.Sales_view_table.GotoBookmark(LeBookmark2) except end;
//  try DataModule2.Material_supply_view_table.GotoBookmark(LeBookmark3) except end;
end;

// Разрешенные к вводу символы (цифры, один разделитель)
procedure TDataModule2.DelimeterKey(ThisEdit: TEdit; var Key: Char);
begin
  if not (Key in [#8, '0'..'9', ',', #13]) then Key := ',';
  if Key = '.' then Key := ',';
  if Key = ',' then
  begin
    if (LastDelimiter(',', ThisEdit.Text) <> 0) or (ThisEdit.SelStart = 0) then
      Key := #0;
  end;
end;
  // Точки вместо запятых - для Currency
procedure TDataModule2.DelimeterKeyPoints(ThisEdit: TEdit; var Key: Char);
begin
  if not (Key in [#8, '0'..'9', '.', #13]) then Key := '.';
  if Key = ',' then Key := '.';
  if Key = '.' then
  begin
    if (LastDelimiter('.', ThisEdit.Text) <> 0) or (ThisEdit.SelStart = 0) then
      Key := #0;
  end;
end;
  // Для TDBEdit
procedure TDataModule2.DelimeterKeyDB(ThisEdit: TDBEdit; var Key: Char);
begin
  if not (Key in [#8, '0'..'9', ',', #13]) then Key := ',';
  if Key = '.' then Key := ',';
  if Key = ',' then
  begin
    if (LastDelimiter(',', ThisEdit.Text) <> 0) or (ThisEdit.SelStart = 0) then
      Key := #0;
  end;
end;

// Показать как валюту
procedure TDataModule2.TextAppend(FormName: TForm; LabelName: string; Text: string);
var
  TemspStr: string;
begin
  (FormName.FindComponent(LabelName) as TLabel).Caption := Format('%n', [StrToFloat((FormName.FindComponent(LabelName) as TLabel).Caption)]);
  (FormName.FindComponent(LabelName) as TLabel).Hint := (FormName.FindComponent(LabelName) as TLabel).Caption+' '+Text;
  if Length((FormName.FindComponent(LabelName) as TLabel).Caption) <= 13 then
    (FormName.FindComponent(LabelName) as TLabel).Caption := ((FormName.FindComponent(LabelName) as TLabel).Caption)+' '+Text;
  if Length((FormName.FindComponent(LabelName) as TLabel).Caption) > 17 then
  begin
    TemspStr := (FormName.FindComponent(LabelName) as TLabel).Caption;
    Delete(TemspStr, 14, Length((FormName.FindComponent(LabelName) as TLabel).Caption)-13);
    (FormName.FindComponent(LabelName) as TLabel).Caption := TemspStr;
    (FormName.FindComponent(LabelName) as TLabel).Caption := (FormName.FindComponent(LabelName) as TLabel).Caption + '...';
  end;
end;

// Обновление статистики
procedure TDataModule2.StatUpdate(ThisForm: TForm);
var
  IsAllRate: Boolean;
  LeBookmark: TBookmark;
  CurrTableName: string;
  CurrTableSQL: TStrings;
  MaxValue: Double;
  MaxValueId: Integer;
  RateAll: Boolean;
    // Для сравнительного отчета
  procedure FinancialTextAppend(Text: string);
  begin
    TextAppend(FinancialReportForm, 'R1ProceedsLabel', Text);
    TextAppend(FinancialReportForm, 'R1CostPriceLabel', Text);
    TextAppend(FinancialReportForm, 'R1AddedValueLabel', Text);
    TextAppend(FinancialReportForm, 'R2ProceedsLabel', Text);
    TextAppend(FinancialReportForm, 'R2CostPriceLabel', Text);
    TextAppend(FinancialReportForm, 'R2AddedValueLabel', Text);
    TextAppend(FinancialReportForm, 'DiffProceedsLabel', Text);
    TextAppend(FinancialReportForm, 'DiffCostPriceLabel', Text);
    TextAppend(FinancialReportForm, 'DiffAddedValueLabel', Text);
  end;
  // Статистика на поля продукции
  procedure ProductStat(ProductForm: TForm; ThisTable: TADOTable; ThisTableView: TADOTable; DateFieldStr: string;
    ThisTableName: string);
  begin
    (ProductForm.FindComponent('AmountLabel') as TLabel).Caption := '0';
    (ProductForm.FindComponent('ProceedsLabel') as TLabel).Caption := '0';
    (ProductForm.FindComponent('CostPriceLabel') as TLabel).Caption := '0';
    (ProductForm.FindComponent('AddedValueLabel') as TLabel).Caption := '0';
    if ProductForm = SalesForm then
      SalesForm.BestSellingLabel.Caption := '-';
    // На каждую ли запись существует курс
    IsAllRate := True;
    LeBookmark := ThisTable.GetBookmark;
    ThisTable.First;
    While not (ThisTable.EOF) do
    begin
      if DataModule2.Rate_table.Locate('date_r', ThisTable.FieldByName(DateFieldStr).AsDateTime, []) = False then
        IsAllRate := False;
      ThisTable.Next;
    end;
    try ThisTable.GotoBookmark(LeBookmark) except end;
    LeBookmark := ThisTableView.GetBookmark;
    ThisTableView.DisableControls;
    ThisTableView.First;
    // Если нет, то считаем в долларах
    if IsAllRate = False then
    begin
      CurrTableName := ThisTableView.TableName;
      ThisTableView.Active := False;
      ThisTableView.TableName := ThisTableName;
      ThisTableView.Active := True;
      While not (ThisTableView.EOF) do
      begin
        (ProductForm.FindComponent('AmountLabel') as TLabel).Caption :=
          FloatToStr(StrToFloat((ProductForm.FindComponent('AmountLabel') as TLabel).Caption) +
          ThisTableView.FieldByName('amount').AsFloat);
        (ProductForm.FindComponent('ProceedsLabel') as TLabel).Caption :=
          FloatToStr(StrToFloat((ProductForm.FindComponent('ProceedsLabel') as TLabel).Caption) +
          ThisTableView.FieldByName('proceeds_sort').AsFloat);
        (ProductForm.FindComponent('CostPriceLabel') as TLabel).Caption :=
          FloatToStr(StrToFloat((ProductForm.FindComponent('CostPriceLabel') as TLabel).Caption) +
          ThisTableView.FieldByName('cost_price_sort').AsFloat);
        (ProductForm.FindComponent('AddedValueLabel') as TLabel).Caption :=
          FloatToStr(StrToFloat((ProductForm.FindComponent('AddedValueLabel') as TLabel).Caption) +
          ThisTableView.FieldByName('added_value_sort').AsFloat);
        ThisTableView.Next;
      end;
      (ProductForm.FindComponent('StatBox') as TGroupBox).Caption := 'Статистика (Курс отсутствует)';
      TextAppend(ProductForm, 'ProceedsLabel', 'USD');
      TextAppend(ProductForm, 'CostPriceLabel', 'USD');
      TextAppend(ProductForm, 'AddedValueLabel', 'USD');
      ThisTableView.Active := False;
      ThisTableView.TableName := CurrTableName;
      ThisTableView.Active := True;
    end
    // Если да, то считаем по текущей валюте
    else
    begin
      While not (ThisTableView.EOF) do
      begin
        (ProductForm.FindComponent('AmountLabel') as TLabel).Caption :=
          FloatToStr(StrToFloat((ProductForm.FindComponent('AmountLabel') as TLabel).Caption) +
          ThisTableView.FieldByName('amount').AsFloat);
        (ProductForm.FindComponent('ProceedsLabel') as TLabel).Caption :=
          FloatToStr(StrToFloat((ProductForm.FindComponent('ProceedsLabel') as TLabel).Caption) +
          ThisTableView.FieldByName('proceeds_sort').AsFloat);
        (ProductForm.FindComponent('CostPriceLabel') as TLabel).Caption :=
          FloatToStr(StrToFloat((ProductForm.FindComponent('CostPriceLabel') as TLabel).Caption) +
          ThisTableView.FieldByName('cost_price_sort').AsFloat);
        (ProductForm.FindComponent('AddedValueLabel') as TLabel).Caption :=
          FloatToStr(StrToFloat((ProductForm.FindComponent('AddedValueLabel') as TLabel).Caption) +
          ThisTableView.FieldByName('added_value_sort').AsFloat);
        ThisTableView.Next;
      end;
      (ProductForm.FindComponent('StatBox') as TGroupBox).Caption:= 'Статистика';
      case SettingsForm.DispCurrCB.ItemIndex of
        0:
        begin
          TextAppend(ProductForm, 'ProceedsLabel', 'USD');
          TextAppend(ProductForm, 'CostPriceLabel', 'USD');
          TextAppend(ProductForm, 'AddedValueLabel', 'USD');
        end;
        1:
        begin
          TextAppend(ProductForm, 'ProceedsLabel', 'KGS');
          TextAppend(ProductForm, 'CostPriceLabel', 'KGS');
          TextAppend(ProductForm, 'AddedValueLabel', 'KGS');
        end;
        2:
        begin
          TextAppend(ProductForm, 'ProceedsLabel', 'RUB');
          TextAppend(ProductForm, 'CostPriceLabel', 'RUB');
          TextAppend(ProductForm, 'AddedValueLabel', 'RUB');
        end;
      end;
    end;
    ThisTableView.EnableControls;
    try ThisTableView.GotoBookmark(LeBookmark) except end;
  end;
begin
  // Продажи ...................................................................
  if ThisForm = SalesForm then
  begin
    ProductStat(SalesForm, Sales_table, Sales_view_table, 'date_s', 'sales_view_usd');
    Sales_best_selling.Active := True;
    MaxValue := 0;
    Sales_best_selling.Filter := Sales_view_table.Filter;
    Sales_best_selling.First;
    try
      While not (Sales_best_selling.EOF) do
      begin
        if Sales_best_selling.FieldByName('amount').AsFloat > MaxValue then
        begin
          MaxValue := Sales_best_selling.FieldByName('amount').AsFloat;
          MaxValueId := Sales_best_selling.FieldByName('id_s').AsInteger;
        end;
        SalesForm.BestSellingLabel.Caption := Sales_best_selling.Lookup('id_s', MaxValueId, 'name_p') + ' (' +
          Sales_best_selling.Lookup('id_s', MaxValueId, 'name_pc') + ')';
        Sales_best_selling.Next;
      end;
    except
      SalesForm.BestSellingLabel.Caption := '-';
    end;
    Sales_best_selling.Active := False;
  end
  // Поставки продукции ........................................................
  else if ThisForm = ProductionSupplyForm then
  begin
    ProductStat(ProductionSupplyForm, Product_supply_table, Product_supply_view_table, 'date_ps', 'product_supply_view_usd');
  end
  // Поставки материала ........................................................
  else if ThisForm = MaterialSupplyForm then with MaterialSupplyForm do
  begin
    AmountLabel.Caption := '0';
    CostLabel.Caption := '0';
    // На каждую ли запись существует курс
    IsAllRate := True;
    LeBookmark := Material_supply_table.GetBookmark;
    Material_supply_table.First;
    While not (Material_supply_table.EOF) do
    begin
      if DataModule2.Rate_table.Locate('date_r', Material_supply_table.FieldByName('date_ms').AsDateTime, []) = False then
        IsAllRate := False;
      Material_supply_table.Next;
    end;
    try Material_supply_table.GotoBookmark(LeBookmark) except end;
    LeBookmark := Material_supply_view_table.GetBookmark;
    Material_supply_view_table.DisableControls;
    Material_supply_view_table.First;
    // Если нет, то считаем в долларах
    if IsAllRate = False then
    begin
      CurrTableName := Material_supply_view_table.TableName;
      Material_supply_view_table.Active := False;
      Material_supply_view_table.TableName := 'material_supply_view_usd';
      Material_supply_view_table.Active := True;
      While not (Material_supply_view_table.EOF) do
      begin
        AmountLabel.Caption := FloatToStr(StrToFloat((AmountLabel.Caption)) + Material_supply_view_table.FieldByName('amount').AsFloat);
        CostLabel.Caption := FloatToStr(StrToFloat((CostLabel.Caption)) + Material_supply_view_table.FieldByName('cost_sort').AsFloat);
        Material_supply_view_table.Next;
      end;
      StatBox.Caption := 'Статистика (Курс отсутствует)';
      TextAppend(MaterialSupplyForm, 'CostLabel', 'USD');
      Material_supply_view_table.Active := False;
      Material_supply_view_table.TableName := CurrTableName;
      Material_supply_view_table.Active := True;
    end
    // Если да, то считаем по текущей валюте
    else
    begin
      While not (Material_supply_view_table.EOF) do
      begin
        AmountLabel.Caption := FloatToStr(StrToFloat((AmountLabel.Caption)) + Material_supply_view_table.FieldByName('amount').AsFloat);
        CostLabel.Caption := FloatToStr(StrToFloat((CostLabel.Caption)) + Material_supply_view_table.FieldByName('cost_sort').AsFloat);
        Material_supply_view_table.Next;
      end;
      case SettingsForm.DispCurrCB.ItemIndex of
        0: TextAppend(MaterialSupplyForm, 'CostLabel', 'USD');
        1: TextAppend(MaterialSupplyForm, 'CostLabel', 'KGS');
        2: TextAppend(MaterialSupplyForm, 'CostLabel', 'RUB');
      end;
      StatBox.Caption:= 'Статистика';
    end;
    Material_supply_view_table.EnableControls;
    try Material_supply_view_table.GotoBookmark(LeBookmark) except end;
  end
  // Склад .....................................................................
  else if ThisForm = StorageForm then with StorageForm do
  begin
    AmountLabel.Caption := '0';
    ProceedsLabel.Caption := '0';
    CostPriceLabel.Caption := '0';
    AddedValueLabel.Caption := '0';
    MostVolumLabel.Caption := '-';
    Storage_table.DisableControls;
    Storage_table.First;
    // На каждую ли запись существует курс
    IsAllRate := True;
    // Если нет, то принудительно переключаем в доллары
    if DataModule2.Today_rate_table.Locate('date_r', date, []) = False then
    begin
      Storage_buffer.Active := True;
      Storage_buffer.SQL := Storage_table.SQL;
      Storage_table.Active := False;
      Storage_table.SQL := Storage_table_USD.SQL;
      Storage_table.Active := True;
    end;
    // Если да, то считаем по текущей валюте
    begin
      MaxValue := 0;
      While not (Storage_table.EOF) do
      begin
        AmountLabel.Caption := FloatToStr(StrToFloat((AmountLabel.Caption)) + Storage_table.FieldByName('amount').AsFloat);
        ProceedsLabel.Caption := FloatToStr(StrToFloat((ProceedsLabel.Caption)) + Storage_table.FieldByName('proceeds_sort').AsFloat);
        CostPriceLabel.Caption := FloatToStr(StrToFloat((CostPriceLabel.Caption)) + Storage_table.FieldByName('cost_price_sort').AsFloat);
        AddedValueLabel.Caption := FloatToStr(StrToFloat((AddedValueLabel.Caption)) + Storage_table.FieldByName('added_value_sort').AsFloat);
        if Storage_table.FieldByName('amount').AsInteger > MaxValue then
        begin
          MaxValue := Storage_table.FieldByName('amount').AsInteger;
          MaxValueId := Storage_table.FieldByName('id_ps').Value ;
        end;
        Storage_table.Next;
      end;
    end;
    // Графики
    Storage_table.Sort := 'amount ASC';
    with StorageForm.StorageChart do
    begin
      Series[0].Clear;
      Storage_table.First;
      while not Storage_table.Eof do
      begin
        Series[0].Add(Storage_table.FieldByName('amount').AsInteger, Storage_table.FieldByName('name_p').AsString+' ('+
          Storage_table.FieldByName('name_pc').AsString+')', clCream);
        Storage_table.Next;
      end;
    end;
    Storage_table.Sort := '';
    StorageChart.RefreshData;
    StorageChart.Refresh;
    StorageChart.Repaint;
    with StorageForm.StoragePieChart do
    begin
      Series[0].Clear;
      Storage_table.First;
      if Storage_table.RecordCount > 0 then
      while not Storage_table.Eof do
      begin
        Series[0].Add(Storage_table.FieldByName('amount').AsInteger, Storage_table.FieldByName('name_p').AsString+' ('+
          Storage_table.FieldByName('name_pc').AsString+')', clTeeColor);
        Storage_table.Next;
      end
      else Series[0].Add(0, '-', clWhite);
    end;
    StoragePieChart.RefreshData;
    StoragePieChart.Refresh;
    // Если есть элементы в таблице, считаем самый объемный из них
    if Storage_table.RecordCount > 0 then
    try
      MostVolumLabel.Caption := Storage_table.Lookup('id_ps', MaxValueId, 'name_p') + ' (' +
        Storage_table.Lookup('id_ps', MaxValueId, 'name_pc') + ')';
    except
      MostVolumLabel.Caption := '-';
    end;
    // Переключаем SQL обратно, если был принудительно переключен
    if DataModule2.Today_rate_table.Locate('date_r', date, []) = False then
    begin
      TextAppend(StorageForm, 'ProceedsLabel', 'USD');
      TextAppend(StorageForm, 'CostPriceLabel', 'USD');
      TextAppend(StorageForm, 'AddedValueLabel', 'USD');
      StatBox.Caption := 'Статистика (Курс отсутствует)';
      Storage_table.Active := False;
      Storage_table.SQL := Storage_buffer.SQL;
      Storage_table.Active := True;
      Storage_buffer.Active := False;
    end
    else
    begin
      case SettingsForm.DispCurrCB.ItemIndex of
        0:
        begin
          TextAppend(StorageForm, 'ProceedsLabel', 'USD');
          TextAppend(StorageForm, 'CostPriceLabel', 'USD');
          TextAppend(StorageForm, 'AddedValueLabel', 'USD');
        end;
        1:
        begin
          TextAppend(StorageForm, 'ProceedsLabel', 'KGS');
          TextAppend(StorageForm, 'CostPriceLabel', 'KGS');
          TextAppend(StorageForm, 'AddedValueLabel', 'KGS');
        end;
        2:
        begin
          TextAppend(StorageForm, 'ProceedsLabel', 'RUB');
          TextAppend(StorageForm, 'CostPriceLabel', 'RUB');
          TextAppend(StorageForm, 'AddedValueLabel', 'RUB');
        end;
      end;
      StatBox.Caption := 'Статистика';
    end;
    Storage_table.EnableControls;
  end
  // Сравнительный отчет .......................................................
  else if ThisForm = FinancialReportForm then with FinancialReportForm do
  begin
    R1AmountLabel.Caption := '0';
    R1ProceedsLabel.Caption := '0';
    R1CostPriceLabel.Caption := '0';
    R1AddedValueLabel.Caption := '0';
    R1BestSellingLabel.Caption := '-';
    R2AmountLabel.Caption := '0';
    R2ProceedsLabel.Caption := '0';
    R2CostPriceLabel.Caption := '0';
    R2AddedValueLabel.Caption := '0';
    R2BestSellingLabel.Caption := '-';
    DiffAmountLabel.Caption := '0';
    DiffProceedsLabel.Caption := '0';
    DiffCostPriceLabel.Caption := '0';
    DiffAddedValueLabel.Caption := '0';
    DiffTotalLabel.Caption := '?';
    Financial_report_table_1.First;
    Financial_report_table_2.First;
    MaxValue := 0;
    with Financial_report_table_1 do
    While not (Financial_report_table_1.EOF) do
    begin
      R1AmountLabel.Caption := FloatToStr(StrToFloat(R1AmountLabel.Caption) + FieldByName('amount').AsFloat);
      R1ProceedsLabel.Caption := FloatToStr(StrToFloat(R1ProceedsLabel.Caption) + FieldByName('proceeds_sort').AsFloat);
      R1CostPriceLabel.Caption := FloatToStr(StrToFloat(R1CostPriceLabel.Caption) + FieldByName('cost_price_sort').AsFloat);
      R1AddedValueLabel.Caption := FloatToStr(StrToFloat(R1AddedValueLabel.Caption) + FieldByName('added_value_sort').AsFloat);
      if FieldByName('amount').AsFloat > MaxValue then
      begin
        MaxValue := FieldByName('amount').AsFloat;
        MaxValueId := FieldByName('id_s').AsInteger;
        R1BestSellingLabel.Caption := Lookup('id_s', MaxValueId, 'name_p') + ' (' + Lookup('id_s', MaxValueId, 'name_pc') + ')';
      end;
      Next;
    end;              
    MaxValue := 0;
    with Financial_report_table_2 do
    While not (Financial_report_table_2.EOF) do
    begin
      R2AmountLabel.Caption := FloatToStr(StrToFloat(R2AmountLabel.Caption) + FieldByName('amount').AsFloat);
      R2ProceedsLabel.Caption := FloatToStr(StrToFloat(R2ProceedsLabel.Caption) + FieldByName('proceeds_sort').AsFloat);
      R2CostPriceLabel.Caption := FloatToStr(StrToFloat(R2CostPriceLabel.Caption) + FieldByName('cost_price_sort').AsFloat);
      R2AddedValueLabel.Caption := FloatToStr(StrToFloat(R2AddedValueLabel.Caption) + FieldByName('added_value_sort').AsFloat);
      if FieldByName('amount').AsFloat > MaxValue then
      begin
        MaxValue := FieldByName('amount').AsFloat;
        MaxValueId := FieldByName('id_s').AsInteger;
        R2BestSellingLabel.Caption := Lookup('id_s', MaxValueId, 'name_p') + ' (' + Lookup('id_s', MaxValueId, 'name_pc') + ')';
      end;
      Next;
    end;
    DiffAmountLabel.Caption := FloatToStr(StrToFloat(R1AmountLabel.Caption) - StrToFloat(R2AmountLabel.Caption));
    if StrToFloat(DiffAmountLabel.Caption) < 0 then DiffAmountLabel.Caption := FloatToStr(Abs(StrToFloat(DiffAmountLabel.Caption)));
    DiffProceedsLabel.Caption := FloatToStr(StrToFloat(R1ProceedsLabel.Caption) - StrToFloat(R2ProceedsLabel.Caption));   
    if StrToFloat(DiffProceedsLabel.Caption) < 0 then DiffProceedsLabel.Caption := FloatToStr(Abs(StrToFloat(DiffProceedsLabel.Caption)));
    DiffCostPriceLabel.Caption := FloatToStr(StrToFloat(R1CostPriceLabel.Caption) - StrToFloat(R2CostPriceLabel.Caption));  
    if StrToFloat(DiffCostPriceLabel.Caption) < 0 then DiffCostPriceLabel.Caption := FloatToStr(Abs(StrToFloat(DiffCostPriceLabel.Caption)));
    DiffAddedValueLabel.Caption := FloatToStr(StrToFloat(R1AddedValueLabel.Caption) - StrToFloat(R2AddedValueLabel.Caption));   
    if StrToFloat(DiffAddedValueLabel.Caption) < 0 then DiffAddedValueLabel.Caption := FloatToStr(Abs(StrToFloat(DiffAddedValueLabel.Caption)));
    // Итог
    if StrToFloat(R1ProceedsLabel.Caption) > StrToFloat(R2ProceedsLabel.Caption) then
      DiffTotalLabel.Caption := '№1 больше, чем №2, на:'
    else if StrToFloat(R1ProceedsLabel.Caption) < StrToFloat(R2ProceedsLabel.Caption) then
      DiffTotalLabel.Caption := '№1 меньше, чем №2, на:'
    else if StrToFloat(R1ProceedsLabel.Caption) = StrToFloat(R2ProceedsLabel.Caption) then
      DiffTotalLabel.Caption := '№1 равен №2.';
    //  Проверка на наличие курса
    RateAll := True;
    DataModule2.Sales_table.First;
    while not DataModule2.Sales_table.Eof do
    begin
      if DataModule2.Rate_table.Locate('date_r', DataModule2.Sales_table.FieldByName('date_s').AsDateTime, []) = False then
      begin
        RateAll := False;
        break;
      end;
      DataModule2.Sales_table.Next;
    end;
    // Графики
    with FinancialReport1Chart do
    begin
      Series[0].Clear;
      Series[0].Add(StrToFloat(R1AmountLabel.Caption), 'Количество', $00FFCDA9);
      Series[1].Clear;
      Series[1].Add(StrToFloat(R2AmountLabel.Caption), 'Количество', $00E5FFBA);
      Series[2].Clear;
      Series[2].Add(StrToFloat(DiffAmountLabel.Caption), 'Разница', clCream);
    end;
    with FinancialReport2Chart do
    begin
      Series[0].Clear;
      Series[0].Add(StrToFloat(R1ProceedsLabel.Caption), 'Цена', $00FFCDA9);
      Series[0].Add(StrToFloat(R1CostPriceLabel.Caption), 'Затраты', $00FFCDA9);
      Series[0].Add(StrToFloat(R1AddedvalueLabel.Caption), 'ДСТ', $00FFCDA9);
      Series[1].Clear;
      Series[1].Add(StrToFloat(R2ProceedsLabel.Caption), 'Цена', $00E5FFBA);
      Series[1].Add(StrToFloat(R2CostPriceLabel.Caption), 'Затраты', $00E5FFBA);
      Series[1].Add(StrToFloat(R2AddedvalueLabel.Caption), 'ДСТ', $00E5FFBA);
      Series[2].Clear;
      Series[2].Add(StrToFloat(DiffAmountLabel.Caption), 'Разница', clCream);
      Series[2].Add(StrToFloat(DiffCostPriceLabel.Caption), 'Разница', clCream);
      Series[2].Add(StrToFloat(DiffAddedvalueLabel.Caption), 'Разница', clCream);
    end;
    with FinancialReportPie1Chart do
    begin
      Series[0].Clear;
      Financial_report_table_1.First;
      if Financial_report_table_1.RecordCount > 0 then
      while not Financial_report_table_1.Eof do
      begin
        Series[0].Add(Financial_report_table_1.FieldByName('amount').AsInteger, Financial_report_table_1.FieldByName('name_p').AsString+' ('+
          Financial_report_table_1.FieldByName('name_pc').AsString+')', clTeeColor);
        Financial_report_table_1.Next;
      end
      else Series[0].Add(0, '-', clWhite);
    end;
    with FinancialReportPie2Chart do
    begin
      Series[0].Clear;
      Financial_report_table_2.First;
      if Financial_report_table_2.RecordCount > 0 then
      while not Financial_report_table_2.Eof do
      begin
        Series[0].Add(Financial_report_table_2.FieldByName('amount').AsInteger, Financial_report_table_2.FieldByName('name_p').AsString+' ('+
          Financial_report_table_2.FieldByName('name_pc').AsString+')', clTeeColor);
        Financial_report_table_2.Next;
      end
      else Series[0].Add(0, '-', clWhite);
    end;
    FinancialReport1Chart.RefreshData;
    FinancialReport1Chart.Refresh;
    FinancialReport2Chart.RefreshData;
    FinancialReport2Chart.Refresh;
    FinancialReportPie1Chart.RefreshData;
    FinancialReportPie1Chart.Refresh;
    FinancialReportPie2Chart.RefreshData;
    FinancialReportPie2Chart.Refresh;
    // Визуал
    if RateAll = False then
    begin
      FinancialTextAppend('USD');
      R1StatBox.Caption := 'Статистика (Курс отсутствует)';
      R2StatBox.Caption := R1StatBox.Caption;
      DiffStatBox.Caption := R1StatBox.Caption;
    end
    else
    begin
      case SettingsForm.DispCurrCB.ItemIndex of
        0: FinancialTextAppend('USD');
        1: FinancialTextAppend('KGS');
        2: FinancialTextAppend('RUB');
      end;
      R1StatBox.Caption := 'Статистика';
      R2StatBox.Caption := R1StatBox.Caption;
      DiffStatBox.Caption := R1StatBox.Caption;
    end; 
  end;
end;
// Статистика списков
procedure TDataModule2.PurchaseStatUpdate(ThisForm: TForm);
var
  CurrTableName: string;
  CurrTableSQL: TStrings;
  ThisTableName: string;
  // Статистика на поля продукции
  procedure ProductStat(ProductForm: TForm; ThisTable: TADOTable; ThisTableView: TADOTable; ThisTableName: string);
  begin
    (ProductForm.FindComponent('PurchaseAmountLabel') as TLabel).Caption := '0';
    (ProductForm.FindComponent('PurchaseSumLabel') as TLabel).Caption := '0';
    ThisTableView.DisableControls;
    ThisTableView.First;
    // Если нет, то считаем в долларах
    if DataModule2.Rate_table.Locate('date_r', (ProductForm.FindComponent('PurchaseEditDTP') as TDateTimePicker).DateTime, []) = False then
    begin
      CurrTableName := ThisTableView.TableName;
      ThisTableView.Active := False;
      ThisTableView.TableName := ThisTableName;
      ThisTableView.Active := True;
      While not (ThisTableView.EOF) do
      begin
        (ProductForm.FindComponent('PurchaseAmountLabel') as TLabel).Caption :=
          FloatToStr(StrToFloat((ProductForm.FindComponent('PurchaseAmountLabel') as TLabel).Caption) +
          ThisTableView.FieldByName('amount').AsFloat);
        (ProductForm.FindComponent('PurchaseSumLabel') as TLabel).Caption :=
          FloatToStr(StrToFloat((ProductForm.FindComponent('PurchaseSumLabel') as TLabel).Caption) +
          ThisTableView.FieldByName('proceeds_sort').AsFloat);
        ThisTableView.Next;
      end;
      (ProductForm.FindComponent('PurchaseBox') as TGroupBox).Caption := 'Список (Курс отсутствует)';
      TextAppend(ProductForm, 'PurchaseSumLabel', 'USD');
      ThisTableView.Active := False;
      ThisTableView.TableName := CurrTableName;
      ThisTableView.Active := True;
    end
    // Если да, то считаем по текущей валюте
    else
    begin
      While not (ThisTableView.EOF) do
      begin
        (ProductForm.FindComponent('PurchaseAmountLabel') as TLabel).Caption :=
          FloatToStr(StrToFloat((ProductForm.FindComponent('PurchaseAmountLabel') as TLabel).Caption) +
          ThisTableView.FieldByName('amount').AsFloat);
        (ProductForm.FindComponent('PurchaseSumLabel') as TLabel).Caption :=
          FloatToStr(StrToFloat((ProductForm.FindComponent('PurchaseSumLabel') as TLabel).Caption) +
          ThisTableView.FieldByName('proceeds_sort').AsFloat);
        ThisTableView.Next;
      end;
      (ProductForm.FindComponent('PurchaseBox') as TGroupBox).Caption := 'Список';
      case SettingsForm.DispCurrCB.ItemIndex of
        0: TextAppend(ProductForm, 'PurchaseSumLabel', 'USD');
        1: TextAppend(ProductForm, 'PurchaseSumLabel', 'KGS');
        2: TextAppend(ProductForm, 'PurchaseSumLabel', 'RUB');
      end;
    end;
    ThisTableView.EnableControls;
  end;
begin
  // Продажи ...................................................................
  if ThisForm = SalesForm then
  begin
    ProductStat(SalesForm, Sales_buffer_table, Sales_buffer_view_table, 'sales_buffer_view_usd');
  end
  // Поставки продукции ........................................................
  else if ThisForm = ProductionSupplyForm then
  begin
    ProductStat(ProductionSupplyForm, Product_supply_buffer_table, Product_supply_buffer_view_table, 'product_supply_buffer_view_usd');
  end
  // Поставки материала ........................................................
  else if ThisForm = MaterialSupplyForm then
  begin
    MaterialSupplyForm.PurchaseAmountLabel.Caption := '0';
    MaterialSupplyForm.PurchaseSumLabel.Caption := '0';
    Material_supply_buffer_table.DisableControls;
    Material_supply_buffer_view_table.First;
    // Если нет, то считаем в долларах
    if DataModule2.Today_rate_table.Locate('date_r', MaterialSupplyForm.PurchaseEditDTP.DateTime, []) = False then
    begin
      CurrTableName := Material_supply_buffer_view_table.TableName;
      Material_supply_buffer_view_table.Active := False;
      Material_supply_buffer_view_table.TableName := 'material_supply_buffer_view_usd';
      Material_supply_buffer_view_table.Active := True;
      While not (Material_supply_buffer_view_table.EOF) do
      begin
        MaterialSupplyForm.PurchaseAmountLabel.Caption :=
          FloatToStr(StrToFloat(MaterialSupplyForm.PurchaseAmountLabel.Caption) +
          Material_supply_buffer_view_table.FieldByName('amount').AsFloat);
        MaterialSupplyForm.PurchaseSumLabel.Caption :=
          FloatToStr(StrToFloat(MaterialSupplyForm.PurchaseSumLabel.Caption) +
          Material_supply_buffer_view_table.FieldByName('cost').AsFloat);
        Material_supply_buffer_view_table.Next;
      end;
      MaterialSupplyForm.PurchaseBox.Caption := 'Список (Курс отсутствует)';
      TextAppend(MaterialSupplyForm, 'PurchaseSumLabel', 'USD');
      Material_supply_buffer_view_table.Active := False;
      Material_supply_buffer_view_table.TableName := CurrTableName;
      Material_supply_buffer_view_table.Active := True;
    end
    // Если да, то считаем по текущей валюте
    else
    begin
      While not (Material_supply_buffer_view_table.EOF) do
      begin
        MaterialSupplyForm.PurchaseAmountLabel.Caption :=
          FloatToStr(StrToFloat(MaterialSupplyForm.PurchaseAmountLabel.Caption) +
          Material_supply_buffer_view_table.FieldByName('amount').AsFloat);
        MaterialSupplyForm.PurchaseSumLabel.Caption :=
          FloatToStr(StrToFloat(MaterialSupplyForm.PurchaseSumLabel.Caption) +
          Material_supply_buffer_view_table.FieldByName('cost').AsFloat);
        Material_supply_buffer_view_table.Next;
      end;
      MaterialSupplyForm.PurchaseBox.Caption := 'Список';
      case SettingsForm.DispCurrCB.ItemIndex of
        0: TextAppend(MaterialSupplyForm, 'PurchaseSumLabel', 'USD');
        1: TextAppend(MaterialSupplyForm, 'PurchaseSumLabel', 'KGS');
        2: TextAppend(MaterialSupplyForm, 'PurchaseSumLabel', 'RUB');
      end;
    end;
    Material_supply_buffer_view_table.EnableControls;
  end
end;

// Конвертация линеек в количество
procedure TDataModule2.AmountMultiply(AmountEdit: TDBEdit);
begin
  if Length(AmountEdit.Text) > 0 then
    if StrToFloat(AmountEdit.Text) > 0 then
    try AmountEdit.Text := FloatToStr(StrToFloat(AmountEdit.Text) * 6) except end;
end;

// Загрузка склада по валюте
procedure TDataModule2.StorageLoad();
var
  i: Integer;
begin
  DataModule2.Storage_table.Active := True;
  DataModule2.Storage_chart.Active := True;
  DataModule2.Storage_table.SQL.Clear;
  if DataModule2.Today_rate_table.Locate('date_r', DateToStr(Date), []) = False then
  begin
    DataModule2.Storage_table.SQL := DataModule2.Storage_table_USD.SQL;
  end
  else
  begin
    case DispCurrParam of
     0: DataModule2.Storage_table.SQL := DataModule2.Storage_table_USD.SQL;
     1: DataModule2.Storage_table.SQL := DataModule2.Storage_table_KGS.SQL;
     2: DataModule2.Storage_table.SQL := DataModule2.Storage_table_RUB.SQL;
    end;
  end;
  if StorageForm <> nil then
  begin
    for i := 0 to 2 do
    begin
      DataModule2.Storage_table.Parameters[i].Value := DataModule2.Storages_table.Lookup('name_sl', StorageForm.CurrentStorageCB.Text, 'id_sl');
      DataModule2.Storage_chart.Parameters[i].Value := DataModule2.Storages_table.Lookup('name_sl', StorageForm.CurrentStorageCB.Text, 'id_sl');
      DataModule2.Storage_table_search.Parameters[i].Value := DataModule2.Storages_table.Lookup('name_sl', StorageForm.CurrentStorageCB.Text, 'id_sl');
    end;
  end;
  Datamodule2.ReactivateQuery(Datamodule2.Storage_table);
  Datamodule2.ReactivateQuery(Datamodule2.Storage_chart);
  Datamodule2.ReactivateQuery(Datamodule2.Storage_table_search);
  DataModule2.Storage_source.DataSet := DataModule2.Storage_table;
end;

// Загрузить финансовые отчеты
procedure TDataModule2.FinancialReportLoad();
var
  RateAll: Boolean;
begin
  if FinancialReportForm <> nil then
  begin
    DataModule2.Financial_report_table_1.Active := True;
    DataModule2.Financial_report_table_2.Active := True;
    DataModule2.Financial_report_table_1.SQl.Clear;
    DataModule2.Financial_report_table_2.SQl.Clear;
    // На каждую ли запись продажи есть курс
    RateAll := True;
    DataModule2.Sales_table.First;
    while not DataModule2.Sales_table.Eof do
    begin
      if DataModule2.Rate_table.Locate('date_r', DataModule2.Sales_table.FieldByName('date_s').AsDateTime, []) = False then
      begin
        RateAll := False;
        break;
      end;
      DataModule2.Sales_table.Next;
    end;
    if RateAll = False then
    begin
      DataModule2.Financial_report_table_1.SQL := DataModule2.Financial_report_usd.SQL;
      DataModule2.Financial_report_table_2.SQL := DataModule2.Financial_report_usd.SQL;
    end
    else
    begin
      case DispCurrParam of
        0:
        begin
          DataModule2.Financial_report_table_1.SQL := DataModule2.Financial_report_usd.SQL;
          DataModule2.Financial_report_table_2.SQL := DataModule2.Financial_report_usd.SQL;
        end;
        1:
        begin
          DataModule2.Financial_report_table_1.SQL := DataModule2.Financial_report_kgs.SQL;
          DataModule2.Financial_report_table_2.SQL := DataModule2.Financial_report_kgs.SQL;
        end;
        2:
        begin
          DataModule2.Financial_report_table_1.SQL := DataModule2.Financial_report_rub.SQL;
          DataModule2.Financial_report_table_2.SQL := DataModule2.Financial_report_rub.SQL;
        end;
      end;
    end;
    with FinancialReportForm do
    begin
      DateFilter(Report1TodayRB, Report1MonthRB, Report1IntervalRB, R1DateFilterDTP1, R1DateFilterDTP2, DataModule2.Financial_report_table_1);
      DateFilter(Report2TodayRB, Report2MonthRB, Report2IntervalRB, R2DateFilterDTP1, R2DateFilterDTP2, DataModule2.Financial_report_table_2);
    end;
    Datamodule2.ReactivateQuery(Datamodule2.Financial_report_table_1);
    Datamodule2.ReactivateQuery(Datamodule2.Financial_report_table_2);
  end;
end;

// Переподключение к БД
procedure TDataModule2.ReConnectDB();
begin
  try
    DataModule2.DataBaseConnection.Connected := False;
////    Provider=MSDASQL.1;Password=1928;Persist Security Info=True;User ID=root;Extended Properties="Driver=MySQL ODBC 8.0 Unicode Driver;SERVER=localhost;UID=root;PWD=1928;DATABASE=bf_database;PORT=3306;COLUMN_SIZE_S32=1";Initial Catalog=bf_database
    if ConnectByStringParam = True then DataModule2.DataBaseConnection.ConnectionString := ConnectionStringParam
    else
      DataModule2.DataBaseConnection.ConnectionString := 'Provider=MSDASQL.1;Password='+IntToStr(PassParam)+';Persist Security Info=True;User ID=root;Extended Properties="DRIVER={MySQL ODBC 8.0 Unicode Driver};UID=root;PWD='+IntToStr(PassParam)+';SERVER='+ServerParam+';DATABASE=bf_database;PORT='+IntToStr(PortParam)+';COLUMN_SIZE_S32=1;";Initial Catalog=bf_database';
//    DataModule2.DataBaseConnection.ConnectionString := 'Provider=MSDASQL.1;Password=1928;Persist Security Info=True;User ID=root;Extended Properties="Driver=MySQL ODBC 8.0 Unicode Driver;SERVER=localhost;UID=root;PWD=1928;DATABASE=bf_database;PORT=3306;COLUMN_SIZE_S32=1";Initial Catalog=bf_database';
//    DataModule2.DataBaseConnection.ConnectionString := 'Provider=MSDASQL.1;Password=1928;Persist Security Info=True;User ID=root;Extended Properties="DRIVER={MySQL ODBC 8.0 Unicode Driver};UID=root;PWD=1928;SERVER=localhost;DATABASE=bf_database;PORT=3306;COLUMN_SIZE_S32=1;";Initial Catalog=bf_database';
    DataModule2.DataBaseConnection.Connected := True;
    // Курс
    DataModule2.Rate_table.Active := True;
    DataModule2.Today_rate_table.Active := True;
    // Склад
    DataModule2.Storage_table_KGS.Active := True;
    DataModule2.Storage_table_RUB.Active := True;
    DataModule2.Storage_table_USD.Active := True;
    DataModule2.Storage_table_search.Active := True;
    // Поставки продукции
    DataModule2.Products_table.Active := True;
    DataModule2.Products_view_table.Active := True;
    DataModule2.Product_color_table.Active := True;
    DataModule2.Product_type_table_1.Active := True;
    DataModule2.Product_type_table_2.Active := True;
    DataModule2.Product_supply_table.Active := True;
    DataModule2.Product_supply_view_table.Active := True;
    DataModule2.Product_supply_buffer_table.Active := True;
    DataModule2.Product_supply_buffer_view_table.Active := True;
    DataModule2.Product_supply_view_table_search.Active := True;
    // Продажи
    DataModule2.Sales_table.Active := True;
    DataModule2.Sales_table_2.Active := True;
    DataModule2.Sales_view_table.Active := True;
    DataModule2.Sales_buffer_table.Active := True;
    DataModule2.Sales_buffer_view_table.Active := True;
    DataModule2.Sales_view_table_search.Active := True;
    DataModule2.Sales_sum_table.Active := True;
    // Поставки материалов
    DataModule2.Materials_table.Active := True;
    DataModule2.Materials_view_table.Active := True;
    DataModule2.Material_color_table.Active := True;
    DataModule2.Material_type_table_1.Active := True;
    DataModule2.Material_type_table_2.Active := True;
    DataModule2.Material_measure_table_1.Active := True;
    DataModule2.Material_measure_table_2.Active := True;
    DataModule2.Material_supply_table.Active := True;
    DataModule2.Material_supply_view_table.Active := True;
    DataModule2.Material_supply_buffer_table.Active := True;
    DataModule2.Material_supply_buffer_view_table.Active := True;
    DataModule2.Material_supply_view_table_search.Active := True;
    // Окружение
    DataModule2.Employes_table.Active := True;
    DataModule2.Customers_table.Active := True;
    DataModule2.Storages_table.Active := True;
    DataModule2.Storages_table_2.Active := True;
    DataModule2.Storages_view_table.Active := True;
    DataModule2.Storages_manufactories_table.Active := True;
    DataModule2.Storages_storages_table.Active := True;
    //
    MainForm.ToolBar1.Buttons[0].Enabled := True;
    MainForm.ToolBar1.Buttons[1].Enabled := True;
    MainForm.ToolBar1.Buttons[2].Enabled := True;
    MainForm.ToolBar1.Buttons[3].Enabled := True;
    MainForm.MainPanel.Enabled := True;
    if IsReconnect = True then
    begin
      MyMessageDlg('Подключение успешно!', mtWarning, [mbYes], ['ОК'], 'База Данных');
//      SettingsForm.ReconnectButton.Enabled := False;
    end;
  except
    if MyMessageDlg('Невозможно подключиться к базе данных!'+#13#10+'Проверьте ваше интернет-соединение или'+#13#10+'доступность сервера базы данных.',
      mtError, [mbYes, mbNo], ['OK','Выход'], 'Ошибка подключения') = mrNo then Application.Terminate();
    MainForm.ToolBar1.Buttons[0].Enabled := False;
    MainForm.ToolBar1.Buttons[1].Enabled := False;
    MainForm.ToolBar1.Buttons[2].Enabled := False;
    MainForm.ToolBar1.Buttons[3].Enabled := False;
    MainForm.MainPanel.Enabled := False;
//    finally
  end;
end;

// Сохранение настроек
procedure TDataModule2.SaveSettings();
var
  text: TextFile;
  appINI : TIniFile;
begin
  appINI := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
  try
    with appINI do
    begin
      WriteInteger('WINDOW', 'Height', MainForm.Height);
      WriteInteger('WINDOW', 'Width', MainForm.Width);
      WriteString('DB_CONNECTION', 'Server', ServerParam);
      WriteInteger('DB_CONNECTION', 'Port', PortParam);
      WriteInteger('DB_CONNECTION', 'Pass', PassParam);
      WriteBool('DB_CONNECTION', 'ConnectByString',  ConnectByStringParam);
      WriteString('DB_CONNECTION', 'ConnectionString', ConnectionStringParam);
      WriteInteger('LOGIN', 'LoginId', LoginIdParam);
      WriteString('LOGIN', 'LoginPass', LoginPassParam);
      WriteBool('SETTINGS', 'SaveButState', SaveButStateParam);
      WriteBool('SETTINGS', 'WindowMin', WindowMinParam);
      WriteBool('SETTINGS', 'RememWin', RememWinParam);
      WriteString('SETTINGS', 'CurrWin', CurrWinParam);
      WriteBool('SETTINGS', 'AskRate', AskRateParam);
      WriteInteger('SETTINGS', 'DispCurr', DispCurrParam);
      WriteBool('SETTINGS', 'HighlPanels', HighlPanelsParam);
      WriteBool('SETTINGS', 'AutoReports', AutoReportsParam);
      WriteInteger('SETTINGS', 'RepIntens', RepIntensParam);
      WriteBool('SETTINGS', 'DoNotLogOut', DoNotLogOutParam);
      WriteBool('SETTINGS', 'DefaultFields', DefaultFieldsParam);
      WriteBool('SETTINGS', 'PaintIfNoRate', PaintIfNoRateParam);
      WriteBool('RATE', 'AutoRate', AutoRateParam);
      WriteInteger('NOTES', 'BookMark', BookMarkParam);
      WriteBool('MATERIAL_SUPPLY', 'MaterialFilter', MaterialFilterParam);
      WriteBool('MATERIAL_SUPPLY', 'MaterialSearch', MaterialSearchParam);
      WriteBool('MATERIAL_SUPPLY', 'MaterialStat', MaterialStatParam);
      WriteBool('PRODUCTION_SUPPLY', 'ProductionFilter', ProductionFilterParam);
      WriteBool('PRODUCTION_SUPPLY', 'ProductionSearch', ProductionSearchParam);
      WriteBool('PRODUCTION_SUPPLY', 'ProductionStat', ProductionStatParam);
      WriteBool('SALES', 'SalesFilter', SalesFilterParam);
      WriteBool('SALES', 'SalesSearch', SalesSearchParam);
      WriteBool('SALES', 'SalesStat', SalesStatParam);
      WriteBool('SALES', 'SalesReceiptPrint', SalesReceiptPrintParam);
      WriteBool('STORAGE', 'StorageFilter', StorageFilterParam);
      WriteBool('STORAGE', 'StorageSearch', StorageSearchParam);
      WriteBool('STORAGE', 'StorageStat', StorageStatParam);
      WriteInteger('STORAGE', 'StorageCurrent', StorageCurrentParam);
      WriteBool('STORAGE', 'ChartCurrent', ChartCurrentParam);
    end;
  finally
    appIni.Free;
  end;
end;

// Сброс настроек
procedure TDataModule2.SettingsReset();
begin
  ServerParam := 'localhost';
  PortParam := 3306;
  PassParam := 1928;
  ConnectByStringParam := False;
  ConnectionStringParam := '';
  SaveButStateParam := True;
  WindowMinParam := True;
  RememWinParam := False;
  CurrWinParam := 'Sales';
  AskRateParam := True;
  DispCurrParam := 1;
  HighlPanelsParam := True;
  AutoReportsParam := True;
  RepIntensParam := 0;
  DoNotLogOutParam := True;
  DefaultFieldsParam := True;
  PaintIfNoRateParam := True;
  AutoRateParam := False;
  BookMarkParam := 0;
  MaterialFilterParam := False;
  MaterialSearchParam := False;
  MaterialStatParam := False;
  ProductionFilterParam := False;
  ProductionSearchParam := False;
  ProductionStatParam := False;
  SalesFilterParam := False;
  SalesSearchParam := False;
  SalesStatParam := False;
  SalesReceiptPrintParam := False;
  StorageFilterParam := False;
  StorageSearchParam := False;
  StorageStatParam := False;
  StorageCurrentParam := 0;
  ChartCurrentParam := True;
end;

// Загрузка настроек
procedure TDataModule2.LoadSettings();
var
  appINI : TIniFile;
  LastUser : string;
  LastDate : TDateTime;
begin
  if FileExists(ChangeFileExt(Application.ExeName,'.ini')) then
  begin
    appINI := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
    with appINI do
    begin
      MainForm.Height := ReadInteger('WINDOW', 'Height', MainForm.Height);
      MainForm.Width := ReadInteger('WINDOW', 'Width', MainForm.Width);
      ServerParam := ReadString('DB_CONNECTION','Server', ServerParam);
      PortParam := ReadInteger('DB_CONNECTION','Port', PortParam);
      PassParam := ReadInteger('DB_CONNECTION','Pass', PassParam);
      ConnectByStringParam := ReadBool('DB_CONNECTION', 'ConnectByString',  ConnectByStringParam);
      ConnectionStringParam := ReadString('DB_CONNECTION', 'ConnectionString', ConnectionStringParam);
      LoginIdParam := ReadInteger('LOGIN', 'LoginId', LoginIdParam);
      LoginPassParam := ReadString('LOGIN', 'LoginPass', LoginPassParam);
      SaveButStateParam := ReadBool('SETTINGS', 'SaveButState', SaveButStateParam);
      WindowMinParam := ReadBool('SETTINGS', 'WindowMin', WindowMinParam);
      RememWinParam := ReadBool('SETTINGS', 'RememWin', RememWinParam);
      CurrWinParam := ReadString('SETTINGS', 'CurrWin', CurrWinParam);
      AskRateParam := ReadBool('SETTINGS', 'AskRate', AskRateParam);
      DispCurrParam := ReadInteger('SETTINGS', 'DispCurr', DispCurrParam);
      HighlPanelsParam := ReadBool('SETTINGS', 'HighlPanels', HighlPanelsParam);
      AutoReportsParam := ReadBool('SETTINGS', 'AutoReports', AutoReportsParam);
      RepIntensParam := ReadInteger('SETTINGS', 'RepIntens', RepIntensParam);
      DoNotLogOutParam := ReadBool('SETTINGS', 'DoNotLogOut', DoNotLogOutParam);
      DefaultFieldsParam := ReadBool('SETTINGS', 'DefaultFields', DefaultFieldsParam);
      PaintIfNoRateParam := ReadBool('SETTINGS', 'PaintIfNoRate', PaintIfNoRateParam);
      AutoRateParam := ReadBool('RATE', 'AutoRate', AutoRateParam);
      BookMarkParam := ReadInteger('NOTES', 'BookMark', BookMarkParam);
      MaterialFilterParam := ReadBool('MATERIAL_SUPPLY', 'MaterialFilter', MaterialFilterParam);
      MaterialSearchParam := ReadBool('MATERIAL_SUPPLY', 'MaterialSearch', MaterialSearchParam);
      MaterialStatParam := ReadBool('MATERIAL_SUPPLY', 'MaterialStat', MaterialStatParam);
      ProductionFilterParam := ReadBool('PRODUCTION_SUPPLY', 'ProductionFilter', ProductionFilterParam);
      ProductionSearchParam := ReadBool('PRODUCTION_SUPPLY', 'ProductionSearch', ProductionSearchParam);
      ProductionStatParam := ReadBool('PRODUCTION_SUPPLY', 'ProductionStat', ProductionStatParam);
      SalesFilterParam := ReadBool('SALES', 'SalesFilter', SalesFilterParam);
      SalesSearchParam := ReadBool('SALES', 'SalesSearch', SalesSearchParam);
      SalesStatParam := ReadBool('SALES', 'SalesStat', SalesStatParam);
      SalesReceiptPrintParam := ReadBool('SALES', 'SalesReceiptPrint', SalesReceiptPrintParam);
      StorageFilterParam := ReadBool('STORAGE', 'StorageFilter', StorageFilterParam);
      StorageSearchParam := ReadBool('STORAGE', 'StorageSearch', StorageSearchParam);
      StorageStatParam := ReadBool('STORAGE', 'StorageStat', StorageStatParam);
      StorageCurrentParam := ReadInteger('STORAGE', 'StorageCurrent', StorageCurrentParam);
      ChartCurrentParam := ReadBool('STORAGE', 'ChartCurrent', ChartCurrentParam);
      Free;
    end;
    if ConnectionStringParam = '' then
    ConnectionStringParam := DataBaseConnection.ConnectionString;
  end
  else
  begin
    MyMessageDlg('Файл настроек не найден: будут загружены стандартные настройки.',
    mtWarning, [mbYes], ['ОК'], 'Ошибка');
    SettingsReset();
  end;
end;

// ABC-анализ ------------------------------------------------------------------
// Рассчет значения вычисляемого поля
procedure TDataModule2.Sales_sum_tableCalcFields(DataSet: TDataSet);
var
  SeriesColor: TColor;
begin
  if SumAddedValue > 0 then
  begin
    with Sales_sum_table do
    if AutoCalcFields = True then
    begin
      if (FieldByName('number_of_sales').Value >= SetNumOSales) then
      begin
        FieldByName('percent').Value := SimpleRoundTo((FieldByName('added_value_sort').AsFloat * 100)/SumAddedValue, -2);
        ABCPercentSum := ABCPercentSum + FieldByName('percent').AsFloat;
      end
      else
      begin
        FieldByName('percent').Value := '0';
        FieldByName('category').Value := 'N';
      end;
      if ((FieldByName('percent').Value > 80) or (ABCPercentSum < 80)) and (FieldByName('number_of_sales').Value >= SetNumOSales) then
        FieldByName('category').Value := 'A'
      else if (((FieldByName('percent').Value < 20) and (FieldByName('percent').Value > 5)) or (ABCPercentSum < 95)) and (FieldByName('number_of_sales').Value >= SetNumOSales) then
        FieldByName('category').Value := 'B'
      else if ((FieldByName('percent').Value < 5) or (ABCPercentSum > 95)) and (FieldByName('number_of_sales').Value >= SetNumOSales) then
        FieldByName('category').Value := 'C';
      // Графики
      if Sales_sum_tablecategory.AsString = 'A' then SeriesColor := $000FC4F1
      else if Sales_sum_tablecategory.AsString = 'B' then SeriesColor := $00A8F336
      else if Sales_sum_tablecategory.AsString = 'C' then SeriesColor := $00FDC084
      else if Sales_sum_tablecategory.AsString = 'N' then SeriesColor := $00FF0080;
      if Sales_sum_tablecategory.AsString <> 'N' then
      begin
        ABCAnalysisForm.ABCPieChart1.Series[0].Add(Sales_sum_table.FieldByName('added_value_sort').AsInteger, Sales_sum_table.FieldByName('name_p').AsString+' ('+
          Sales_sum_table.FieldByName('added_value').AsString+')', SeriesColor);
        ABCAnalysisForm.ABCPieChart2.Series[0].Add(Sales_sum_table.FieldByName('amount').AsInteger, Sales_sum_table.FieldByName('name_p').AsString+' ('+
          Sales_sum_table.FieldByName('amount').AsString+')', SeriesColor);
      end;
    end;
  end
  else
  begin
    Sales_sum_table.FieldByName('category').Value := '-';
    Sales_sum_table.FieldByName('percent').Value := '100';
  end;
end;

// Таблицы ---------------------------------------------------------------------
// Удаление записи
procedure TDataModule2.DeleteRecord(Table: TADOTable);
begin
  try
    if Table.RecordCount > 0 then
      if MyMessageDlg(LabelDeleteConfirmation, mtConfirmation, [mbYes, mbNo], ['Да','Нет'], 'Подтверждение') = mrYes then
        Table.Delete;
  except
    MyMessageDlg('Невозможно удалить запись!'+#13#10+'Возможно запись присутствует в других таблицах.',
      mtError, [mbYes], ['ОК'], 'Ошибка');
  end;
end;

// Очистка таблицы
procedure TDataModule2.ClearTable(Table: TADOTable);
var
  i: Integer;
begin
  if Table.RecordCount > 0 then
  begin
    Table.First;
    for i := Table.RecordCount - 1 downto 0 do
    begin
      Table.Delete;
      Table.Next;
    end;
    Table.Refresh;
  end;
end;

// Изменить дату таблицы (списки)
procedure TDataModule2.ChangeTableDate(Table: TADOTable; FieldName: string; DTP: TDateTimePicker);
var
  i: Integer;
begin
//  if Table.State in [dsBrowse] then
    Table.Edit;
//  for i := Table.RecordCount - 1 downto 0 do
  while not Table.EOF do
  begin
    Table.FieldByName(FieldName).AsDateTime := DTP.Date;
    Table.Next;
  end;
//  if Table.State in [dsInsert, dsEdit] then
    Table.Post;
  Table.Refresh;
end;

// Фильтрация и сортировка -----------------------------------------------------
// Сортировка
procedure TDataModule2.Sorting(Grid: TDBGrid; Column: TColumn);
var
  sorttype: string;
  caption: string;
  Field: string;
  procedure ResetCaption();
  begin
    caption := Grid.Columns[CSort].Title.Caption;
    caption := StringReplace(caption, ' ▲', '', [rfReplaceAll]);
    caption := StringReplace(caption, ' ▼', '', [rfReplaceAll]);
    Grid.Columns[CSort].Title.Caption := caption;
  end;
begin
  if Grid.DataSource.DataSet is TCustomADODataSet then
  with TCustomADODataSet(Grid.DataSource.DataSet) do
  begin
    if Grid.DataSource.DataSet.FieldByName(Column.FieldName).FieldKind <> fkCalculated then
    begin
      if Column.FieldName = 'proceeds' then
        Field := 'proceeds_sort'
      else if Column.FieldName = 'cost_price' then
        Field := 'cost_price_sort'
      else if Column.FieldName = 'added_value' then
        Field := 'added_value_sort'
      else if Column.FieldName = 'cost' then
        Field := 'cost_sort'
      else
        Field := Column.FieldName;
      if CSort >= 0 then
      begin
        Grid.Columns[CSort].Title.Font.Style := Column.Title.Font.Style - [fsBold];
        ResetCaption();
      end;
      sorttype := '';
      CSort := Column.Index;
      if Sort <> Field + ' DESC' then
      begin
        if Sort = Field then sorttype := ' DESC';
        if sorttype = '' then Grid.Columns[CSort].Title.Caption := Grid.Columns[CSort].Title.Caption + ' ▲'
        else
        begin
          ResetCaption();
          Grid.Columns[CSort].Title.Caption := Grid.Columns[CSort].Title.Caption + ' ▼';
        end;
        Column.Title.Font.Style := Column.Title.Font.Style + [fsBold];
        Sort := Field;
        Sort := Sort + sorttype;
      end
    else
      Sort := '';
    end;
  end;
end;

// Фильтр по дате
  // Изменение типа фильтра - визуал
procedure TDataModule2.DateFilterTypeChange(ThisForm: TForm);
  procedure VisualControl(Bool: Boolean);
  begin
    (ThisForm.FindComponent('FindFilterDateLabel') as TLabel).Enabled := Bool;
    (ThisForm.FindComponent('DateFilterDTP1') as TDateTimePicker).Enabled := Bool;
    (ThisForm.FindComponent('DateFilterDTP2') as TDateTimePicker).Enabled := Bool;
  end;
begin
  case (ThisForm.FindComponent('DateFilterTypeCB') as TComboBox).ItemIndex of
    0:
    begin
      VisualControl(False);
    end;
    1:
    begin
      VisualControl(False);
    end;
    2:
    begin
      VisualControl(True);
    end;
  end;
end;

// Продажи ---------------------------------------------------------------------
// Вычисляемое поле - стоимость
// Продукция
procedure TDataModule2.CalculateCurrencyProduction(Table: TADOTable);
begin
  if DispCurrParam = 0 then // Доллары
  begin
    Table.FieldValues['proceeds_curr'] := CurrToStr(Table.FieldValues['proceeds'] * Table.FieldValues['amount']) + ' USD';
    Table.FieldValues['cost_price_curr'] := CurrToStr(Table.FieldValues['cost_price'] * Table.FieldValues['amount']) + ' USD';
    Table.FieldValues['added_value_curr'] := CurrToStr(Table.FieldValues['added_value'] * Table.FieldValues['amount']) + ' USD';
  end
  else if DispCurrParam = 1 then // Сомы
  begin
    if Table.FieldValues['KGS'] = 1 then
    begin
      Table.FieldValues['proceeds_curr'] := CurrToStr(Table.FieldValues['proceeds'] * Table.FieldValues['amount']) + ' USD';
      Table.FieldValues['cost_price_curr'] := CurrToStr(Table.FieldValues['cost_price'] * Table.FieldValues['amount']) + ' USD';
      Table.FieldValues['added_value_curr'] := CurrToStr(Table.FieldValues['added_value'] * Table.FieldValues['amount']) + ' USD';
    end
    else
    begin
      Table.FieldValues['proceeds_curr'] := CurrToStr(Table.FieldValues['proceeds'] *
        Table.FieldValues['KGS'] * Table.FieldValues['amount']) + ' KGS';
      Table.FieldValues['cost_price_curr'] := CurrToStr(Table.FieldValues['cost_price'] *
        Table.FieldValues['KGS'] * Table.FieldValues['amount']) + ' KGS';
      Table.FieldValues['added_value_curr'] := CurrToStr(Table.FieldValues['added_value'] *
        Table.FieldValues['KGS'] * Table.FieldValues['amount']) + ' KGS';
    end;
  end
  else if DispCurrParam = 2 then // Рубли
  begin
    if Table.FieldValues['RUB'] = 1 then
    begin
      Table.FieldValues['proceeds_curr'] := CurrToStr(Table.FieldValues['proceeds'] * Table.FieldValues['amount']) + ' USD';
      Table.FieldValues['cost_price_curr'] := CurrToStr(Table.FieldValues['cost_price'] * Table.FieldValues['amount']) + ' USD';
      Table.FieldValues['added_value_curr'] := CurrToStr(Table.FieldValues['added_value'] * Table.FieldValues['amount']) + ' USD';
    end
    else
    begin
      Table.FieldValues['proceeds_curr'] := CurrToStr(Table.FieldValues['proceeds'] *
        Table.FieldValues['RUB'] * Table.FieldValues['amount']) + ' RUB';
      Table.FieldValues['cost_price_curr'] := CurrToStr(Table.FieldValues['cost_price'] *
        Table.FieldValues['RUB'] * Table.FieldValues['amount']) + ' RUB';
      Table.FieldValues['added_value_curr'] := CurrToStr(Table.FieldValues['added_value'] *
        Table.FieldValues['RUB'] * Table.FieldValues['amount']) + ' RUB';
    end;
  end;
end;
//
procedure TDataModule2.Sales_view_tableCalcFields(DataSet: TDataSet);
begin
  CalculateCurrencyProduction(Sales_view_table);
end;
//
procedure TDataModule2.Sales_buffer_view_tableCalcFields(DataSet: TDataSet);
begin
  CalculateCurrencyProduction(Sales_buffer_view_table);
end;
//
procedure TDataModule2.Product_supply_view_tableCalcFields(DataSet: TDataSet);
begin
  CalculateCurrencyProduction(Product_supply_view_table);
end;
//
procedure TDataModule2.Product_supply_buffer_view_tableCalcFields(
  DataSet: TDataSet);
begin
  CalculateCurrencyProduction(Product_supply_buffer_view_table);
end;

// Материалы
procedure TDataModule2.CalculateCurrencyMaterials(Table: TADOTable);
begin
  if DispCurrParam = 0 then // Доллары
  begin
    Table.FieldValues['cost_curr'] := CurrToStr(Table.FieldValues['cost'] * Table.FieldValues['amount']) + ' USD';
  end
  else if DispCurrParam = 1 then // Сомы
  begin
    if Table.FieldValues['KGS'] = 1 then
    begin
      Table.FieldValues['cost_curr'] := CurrToStr(Table.FieldValues['cost'] * Table.FieldValues['amount']) + ' USD';
    end
    else
    begin
      Table.FieldValues['cost_curr'] := CurrToStr(Table.FieldValues['cost'] *
        Table.FieldValues['KGS'] * Table.FieldValues['amount']) + ' KGS';
    end;
  end
  else if DispCurrParam = 2 then // Рубли
  begin
    if Table.FieldValues['RUB'] = 1 then
    begin
      Table.FieldValues['cost_curr'] := CurrToStr(Table.FieldValues['cost'] * Table.FieldValues['amount']) + ' USD';
    end
    else
    begin
      Table.FieldValues['cost_curr'] := CurrToStr(Table.FieldValues['cost'] *
        Table.FieldValues['RUB'] * Table.FieldValues['amount']) + ' RUB';
    end;
  end;
end;
//
procedure TDataModule2.Material_supply_view_tableCalcFields(DataSet: TDataSet);
begin
  CalculateCurrencyMaterials(Material_supply_view_table);
end;
//
procedure TDataModule2.Material_supply_buffer_view_tableCalcFields(
  DataSet: TDataSet);
begin
  CalculateCurrencyMaterials(Material_supply_buffer_view_table);
end;

// Процедуры обновления таблиц =================================================
// Продукция -------------------------------------------------------------------
procedure TDataModule2.Products_tableAfterDelete(DataSet: TDataSet);
begin
  ReactivateTable(Products_table);
  ReactivateTable(Products_view_table);
//  ReactivateTable(Product_supply_table);
//  ReactivateTable(Product_supply_view_table);
//  ReactivateTable(Sales_view_table);
//  ReactivateTable(Storage_table);
//  ReactivateTable(Financial_report_table_1);
//  ReactivateTable(Financial_report_table_2);
//  ReactivateTable(Product_type_table_1);
//  ReactivateTable(Product_type_table_2);
//  ReactivateTable(Storage_table);
//  ReactivateTable(Sales_table);
//  ReactivateTable(Sales_view_table);
//  ReactivateTable(Sales_buffer_table);
//  ReactivateTable(Sales_buffer_view_table);
//  ReactivateTable(Sales_table_2);
end;
//
procedure TDataModule2.Products_view_tableAfterScroll(DataSet: TDataSet);
begin
  if Products_view_table.RecordCount > 0 then
    Products_table.Locate('id_p', Products_view_tableid_p.Value, []);
end;
//
procedure TDataModule2.Product_color_tableAfterDelete(DataSet: TDataSet);
begin
  ReactivateTable(Product_color_table);
  ReactivateTable(Products_table);
  ReactivateTable(Products_view_table);
//  ReactivateTable(Product_supply_table);
//  ReactivateTable(Product_supply_view_table);
//  ReactivateTable(Product_supply_buffer_table);
//  ReactivateTable(Product_supply_buffer_view_table);
//  ReactivateTable(Storage_table);
//  ReactivateTable(Sales_table);
//  ReactivateTable(Sales_view_table);
//  ReactivateTable(Sales_buffer_table);
//  ReactivateTable(Sales_buffer_view_table);
//  ReactivateTable(Sales_table_2);
end;
//
procedure TDataModule2.Product_type_table_2AfterDelete(DataSet: TDataSet);
begin
  ReactivateTable(Product_type_table_1);
  ReactivateTable(Product_type_table_2);
  ReactivateTable(Products_table);
  ReactivateTable(Products_view_table);
//  ReactivateTable(Product_supply_table);
//  ReactivateTable(Product_supply_view_table);
//  ReactivateTable(Product_supply_buffer_table);
//  ReactivateTable(Product_supply_buffer_view_table);
//  ReactivateTable(Storage_table);
//  ReactivateTable(Sales_table);
//  ReactivateTable(Sales_view_table);
//  ReactivateTable(Sales_buffer_table);
//  ReactivateTable(Sales_buffer_view_table);
//  ReactivateTable(Sales_table_2);
end;

// Поставки продукции ----------------------------------------------------------
procedure TDataModule2.Product_supply_tableAfterDelete(DataSet: TDataSet);
begin
  ReactivateTable(Product_supply_table);
  ReactivateTable(Product_supply_view_table);
  ReactivateTable(Product_supply_view_table_search);
  StatUpdate(ProductionSupplyForm);
  ReactivateQuery(Storage_table);
  ReactivateQuery(Storage_table_search);
  Datamodule2.ReactivateQuery(Datamodule2.Storage_table);
  Datamodule2.ReactivateQuery(Datamodule2.Storage_chart);
  Datamodule2.ReactivateQuery(Datamodule2.Storage_table_search);
end;
//
procedure TDataModule2.Product_supply_view_tableAfterScroll(DataSet: TDataSet);
begin
  if Product_supply_view_table.RecordCount > 0 then
    Product_supply_table.Locate('id_ps', Product_supply_view_tableid_ps.Value, []);
end;
// Корзина
procedure TDataModule2.Product_supply_buffer_tableAfterDelete(
  DataSet: TDataSet);
begin
  ReactivateTable(Product_supply_buffer_table);
  ReactivateTable(Product_supply_buffer_view_table);
  DataModule2.PurchaseStatUpdate(ProductionSupplyForm);
end;
//
procedure TDataModule2.Product_supply_buffer_view_tableAfterScroll(
  DataSet: TDataSet);
begin
  if Product_supply_buffer_view_table.RecordCount > 0 then
    Product_supply_buffer_table.Locate('id_pb', Product_supply_buffer_view_tableid_pb.Value, []);
end;

// Материалы -------------------------------------------------------------------
procedure TDataModule2.Materials_tableAfterDelete(DataSet: TDataSet);
begin
  ReactivateTable(Materials_table);
  ReactivateTable(Materials_view_table);
  ReactivateTable(Material_supply_table);
  ReactivateTable(Material_supply_view_table);
//  ReactivateTable(Material_supply_buffer_table);
//  ReactivateTable(Material_supply_buffer_view_table);
end;
//
procedure TDataModule2.Materials_view_tableAfterScroll(DataSet: TDataSet);
begin
  if Materials_view_table.RecordCount > 0 then
    Materials_table.Locate('id_m', Materials_view_tableid_m.Value, []);
end;
//
procedure TDataModule2.Material_type_table_2AfterDelete(DataSet: TDataSet);
begin
  ReactivateTable(Material_type_table_1);
  ReactivateTable(Material_type_table_2);
  ReactivateTable(Materials_table);
  ReactivateTable(Materials_view_table);
//  ReactivateTable(Material_supply_table);
//  ReactivateTable(Material_supply_view_table);
//  ReactivateTable(Material_supply_buffer_table);
//  ReactivateTable(Material_supply_buffer_view_table);
end;
//
procedure TDataModule2.Material_color_tableAfterDelete(DataSet: TDataSet);
begin
  ReactivateTable(Material_color_table);
  ReactivateTable(Materials_table);
  ReactivateTable(Materials_view_table);
//  ReactivateTable(Material_supply_table);
//  ReactivateTable(Material_supply_view_table);
//  ReactivateTable(Material_supply_buffer_table);
//  ReactivateTable(Material_supply_buffer_view_table);
end;
//
procedure TDataModule2.Material_supply_buffer_tableAfterDelete(
  DataSet: TDataSet);
begin
  ReactivateTable(Material_supply_buffer_table);
  ReactivateTable(Material_supply_buffer_view_table);
  DataModule2.PurchaseStatUpdate(MaterialSupplyForm);
end;
//
procedure TDataModule2.Material_measure_table_1AfterDelete(DataSet: TDataSet);
begin
  ReactivateTable(Material_measure_table_1);
  ReactivateTable(Material_measure_table_2);
  ReactivateTable(Materials_table);
  ReactivateTable(Materials_view_table);
end;

// Поставки материалов ---------------------------------------------------------
procedure TDataModule2.Material_supply_tableAfterDelete(DataSet: TDataSet);
begin
  ReactivateTable(Material_supply_table);
  ReactivateTable(Material_supply_view_table);
  ReactivateTable(Material_supply_view_table_search);
  ReactivateTable(Material_supply_view_table_search);
  StatUpdate(MaterialSupplyForm);
end;
//
procedure TDataModule2.Material_supply_view_tableAfterScroll(DataSet: TDataSet);
begin
  if Material_supply_view_table.RecordCount > 0 then
    Material_supply_table.Locate('id_ms', Material_supply_view_tableid_ms.Value, []);
end;
//
procedure TDataModule2.Material_supply_buffer_view_tableAfterScroll(
  DataSet: TDataSet);
begin
  if Material_supply_buffer_view_table.RecordCount > 0 then
    Material_supply_buffer_table.Locate('id_mb', Material_supply_buffer_view_tableid_mb.Value, []);
end;

// Продажи ---------------------------------------------------------------------
procedure TDataModule2.Sales_tableAfterDelete(DataSet: TDataSet);
var
  IsFound: Boolean;
begin
  ReactivateTable(Sales_table);
  ReactivateTable(Sales_view_table);
  ReactivateTable(Sales_view_table_search);
  ReactivateTable(Sales_table_2);
  StatUpdate(SalesForm);
  ReactivateQuery(Storage_table);
  ReactivateQuery(Storage_table_search);
  Datamodule2.ReactivateQuery(Datamodule2.Storage_table);
  Datamodule2.ReactivateQuery(Datamodule2.Storage_chart);
  Datamodule2.ReactivateQuery(Datamodule2.Storage_table_search);
  ReactivateTable(Product_supply_table);
  ReactivateTable(Product_supply_view_table);
//  ReactivateTable(Storage_table);
end;
// Удаление спаренной фиктивной 
procedure TDataModule2.Sales_tableBeforeEdit(DataSet: TDataSet);
begin  
  ReactivateTable(Product_supply_table);
  ReactivateTable(Product_supply_view_table);
  try
    Storage_table.First;
    while not Storage_table.Eof do
    begin
      if (Storage_table.FieldByName('name_p').AsString = Sales_view_table.FieldByName('name_p').AsString) and
        (Storage_table.FieldByName('name_pc').AsString = Sales_table.FieldByName('name_pc').AsString) then
      begin
        if (Storage_table.FieldByName('amount').AsString <= Sales_table.FieldByName('amount').AsString) then
        begin 
          Product_supply_table.Append;
          Product_supply_tabledate_ps.AsDateTime := Sales_tabledate_s.AsDateTime;
          Product_supply_tableid_pl.Value := Sales_tableid_pl.Value ;
          Product_supply_tableid_pc.Value := Sales_tableid_pc.Value ;
          Product_supply_tableamount_ps.Value := Sales_tableamount_s.Value - Storage_table.FieldByName('amount').Value;
          Product_supply_tableid_sl_from.Value := 2;
          Product_supply_tableid_sl_to.Value := Sales_tableid_sl_from.Value ;
          Product_supply_tablefictitious_ps.AsBoolean := True;
          Product_supply_tableid_e.Value := Sales_tableid_e.Value ;
          Product_supply_table.Post;
          ReactivateTable(Product_supply_table);
          ReactivateTable(Product_supply_view_table);
        end
        else 
        begin    //********************************************
          Product_supply_table.Delete;
        end;
        break;
      end;
      Product_supply_table.Next;
    end;
  except end;
end;
// После запоминания
procedure TDataModule2.Sales_tableAfterPost(DataSet: TDataSet);
var
  IsFound: Boolean;
  IsLess: Boolean;
  lessAmount: Integer;
begin
  ReactivateTable(Sales_table);
  ReactivateTable(Sales_view_table);
  ReactivateTable(Sales_view_table_search);
  ReactivateTable(Sales_table_2);
  StatUpdate(SalesForm);
  ReactivateQuery(Storage_table);
  ReactivateQuery(Storage_table_search);
  Datamodule2.ReactivateQuery(Datamodule2.Storage_table);
  Datamodule2.ReactivateQuery(Datamodule2.Storage_chart);
  Datamodule2.ReactivateQuery(Datamodule2.Storage_table_search);
  // Проверка на наличие в поставках до запоминания
  IsFound := False;          
  IsLess := False; 
  try
    Storage_table.First;
    while not Storage_table.Eof do
    begin
      if (Storage_table.FieldByName('name_pc').AsString = Sales_view_tablename_pc.AsString) and 
        (Storage_table.FieldByName('name_pl').AsString = Sales_view_tablename_p.AsString) then
      begin
        if (Storage_table.FieldByName('amount').Value < Sales_view_tableamount.Value) then 
        begin
          lessAmount := Storage_table.FieldByName('amount').Value;
          IsLess := True;
        end;
        IsFound := True;
        break;
      end;
      Storage_table.Next;
    end;
    // нету - создать спаренную
    if (IsFound = False) then
    begin
      Product_supply_table.Append;
      Product_supply_tabledate_ps.AsDateTime := Sales_tabledate_s.AsDateTime;
      Product_supply_tableid_pl.Value := Sales_tableid_pl.Value ;
      Product_supply_tableid_pc.Value := Sales_tableid_pc.Value ;
      Product_supply_tableamount_ps.Value := Sales_tableamount_s.Value ;
      Product_supply_tableid_sl_from.Value := 2;
      Product_supply_tableid_sl_to.Value := Sales_tableid_sl_from.Value ;
      Product_supply_tablefictitious_ps.AsBoolean := True;
      Product_supply_tableid_e.Value := Sales_tableid_e.Value ;
      Product_supply_table.Post;
      ReactivateTable(Product_supply_table);
      ReactivateTable(Product_supply_view_table);
    end 
    else if (IsFound = True) and (isLess = True) then
    begin
      Product_supply_table.Append;
      Product_supply_tabledate_ps.AsDateTime := Sales_tabledate_s.AsDateTime;
      Product_supply_tableid_pl.Value := Sales_tableid_pl.Value ;
      Product_supply_tableid_pc.Value := Sales_tableid_pc.Value ;
      Product_supply_tableamount_ps.Value := Sales_tableamount_s.Value - lessAmount;
      Product_supply_tableid_sl_from.Value := 2;
      Product_supply_tableid_sl_to.Value := Sales_tableid_sl_from.Value ;
      Product_supply_tablefictitious_ps.AsBoolean := True;
      Product_supply_tableid_e.Value := Sales_tableid_e.Value ;
      Product_supply_table.Post;
      ReactivateTable(Product_supply_table);
      ReactivateTable(Product_supply_view_table);
    end;
  except end;
end;
//
procedure TDataModule2.Sales_view_tableAfterScroll(DataSet: TDataSet);
begin
  if Sales_view_table.RecordCount > 0 then
    Sales_table.Locate('id_s', Sales_view_tableid_s.Value, []);
end;
//
procedure TDataModule2.Sales_buffer_view_tableAfterScroll(DataSet: TDataSet);
begin
  if Sales_buffer_view_table.RecordCount > 0 then
    Sales_buffer_table.Locate('id_sb', Sales_buffer_view_tableid_sb.Value, []);
end;
//
procedure TDataModule2.Sales_buffer_tableAfterDelete(DataSet: TDataSet);
begin
  ReactivateTable(Sales_buffer_table);
  ReactivateTable(Sales_buffer_view_table);
  DataModule2.PurchaseStatUpdate(SalesForm);
end;

// Окружение -------------------------------------------------------------------
procedure TDataModule2.Customers_tableAfterDelete(DataSet: TDataSet);
begin
  ReactivateTable(Customers_table);
end;
//
procedure TDataModule2.Storages_tableAfterDelete(DataSet: TDataSet);
begin
  ReactivateTable(Storages_table);
//  ReactivateTable(Sales_view_table);
//  ReactivateTable(Product_supply_view_table);
//  ReactivateTable(Storage_table);
end;
//
procedure TDataModule2.Employes_tableAfterDelete(DataSet: TDataSet);
begin
  ReactivateTable(Employes_table);
//  ReactivateTable(Sales_view_table);
//  ReactivateTable(Product_supply_view_table);
//  ReactivateTable(Material_supply_view_table);
end;
//
procedure TDataModule2.Storages_view_tableAfterDelete(DataSet: TDataSet);
begin
  if Storages_view_table.RecordCount > 0 then
    Storages_table.Locate('id_sl', Storages_view_tableid_sl.Value, []);
end;

// Курс ------------------------------------------------------------------------
procedure TDataModule2.Rate_tableAfterDelete(DataSet: TDataSet);
begin
  ReactivateTable(Rate_table);
  ReactivateTable(Today_rate_table);
  if SalesForm <> nil then
  begin
    ReactivateTable(Sales_view_table);
    ReactivateTable(Sales_view_table_search);
    ReactivateTable(Sales_buffer_table);
    ReactivateTable(Sales_buffer_view_table);
  end;
  if MaterialSupplyForm <> nil then
  begin
    ReactivateTable(Material_supply_buffer_table);
    ReactivateTable(Material_supply_buffer_view_table);
    ReactivateTable(Material_supply_table);
    ReactivateTable(Material_supply_view_table);
  end;
  if ProductionSupplyForm <> nil then
  begin
    ReactivateTable(Product_supply_table);
    ReactivateTable(Product_supply_view_table);
    ReactivateTable(Product_supply_buffer_table);
    ReactivateTable(Product_supply_buffer_view_table);
  end;
  if StorageForm <> nil then
  begin
    ReactivateQuery(Storage_table);
    ReactivateQuery(Storage_table_search);
    ReactivateQuery(Storage_chart);
  end;
  if FinancialReportForm <> nil then
  begin
    ReactivateQuery(Financial_report_table_1);
    ReactivateQuery(Financial_report_table_2);
  end;
end;
end.
