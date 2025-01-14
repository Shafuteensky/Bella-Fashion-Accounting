unit SalesUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, StrUtils, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ToolWin, FieldFilterFrameUnit, DateFilterFrameUnit, SearchFrameUnit, IBX.IBCustomDataSet, ADODB;

type
  TSalesForm = class(TForm)
    SalesMainPanel: TPanel;
    SalesGrid: TDBGrid;
    ToolsPanel: TPanel;
    FilterPanel: TPanel;
    Filler1: TGroupBox;
    EditPanel: TPanel;
    Filler3: TGroupBox;
    SearchPanel: TPanel;
    SearchBox: TGroupBox;
    Filler2: TGroupBox;
    Menu: TMainMenu;
    AddButton: TMenuItem;
    EditButton: TMenuItem;
    DeleteButton: TMenuItem;
    SearchMenuButton: TMenuItem;
    FilterButton: TMenuItem;
    StatButton: TMenuItem;
    ToolBar: TToolBar;
    StatBox: TGroupBox;
    N1: TMenuItem;
    DateFilterBox: TGroupBox;
    EditBox: TGroupBox;
    StatGridPanel: TGridPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    AmountLabel: TLabel;
    ProceedsLabel: TLabel;
    CostPriceLabel: TLabel;
    AddedValueLabel: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    EditGridPanel: TGridPanel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    EditDateDTP: TDateTimePicker;
    EditNameCB: TDBLookupComboBox;
    EditColorCB: TDBLookupComboBox;
    EditAmountEdit: TDBEdit;
    EditCustomerCB: TDBLookupComboBox;
    EditStorageOffCB: TDBLookupComboBox;
    PostButton: TButton;
    CancelButton: TButton;
    SearchGridPanel: TGridPanel;
    Label60: TLabel;
    Label31: TLabel;
    SearchCriterionEdit: TEdit;
    SearchButton: TButton;
    ExtendedSearchButton: TButton;
    DateFilterGridPanel: TGridPanel;
    Label14: TLabel;
    DateFilterTypeCB: TComboBox;
    FilterDateLabel: TLabel;
    DateFilterDTP1: TDateTimePicker;
    DateFilterDTP2: TDateTimePicker;
    Panel1: TPanel;
    BestSellingLabel: TLabel;
    Label15: TLabel;
    FieldFilterBox: TGroupBox;
    FieldFilterGridPanel: TGridPanel;
    Label6: TLabel;
    FilterCriterionLabel: TLabel;
    FieldFilterTypeCB: TComboBox;
    FilterAmountLabel: TLabel;
    FieldFilterAmountEdit: TEdit;
    FieldFilterSignCB: TComboBox;
    AddPurchaseButton: TMenuItem;
    PurchaseEditPanel: TPanel;
    PurchaseEditBox: TGroupBox;
    PurchaseGrid: TDBGrid;
    SearchFieldCB: TComboBox;
    Panel2: TPanel;
    PositionEditBox: TGroupBox;
    GridPanel2: TGridPanel;
    PositionAddButton: TButton;
    PositionEditButton: TButton;
    PositionDeleteButton: TButton;
    Bevel4: TBevel;
    PositionPostButton: TButton;
    PositionCancelButton: TButton;
    PurchaseEditGridPanel: TGridPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    PurchaseEditNameCB: TDBLookupComboBox;
    PurchaseEditColorCB: TDBLookupComboBox;
    PurchaseEditAmountEdit: TDBEdit;
    GroupBox2: TGroupBox;
    PopupMenu: TPopupMenu;
    MenuItem1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    FieldFilterCriterionCB: TEdit;
    PurchasePopupMenu: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    ChangeRateButton: TMenuItem;
    N3: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    Panel3: TPanel;
    DataConsumerGridPanel: TGridPanel;
    Label17: TLabel;
    Label21: TLabel;
    PurchaseEditDTP: TDateTimePicker;
    PurchaseEditCustomerCB: TDBLookupComboBox;
    Label12: TLabel;
    PurchaseEditStorageCB: TDBLookupComboBox;
    PurchaseBox: TGroupBox;
    GridPanel4: TGridPanel;
    Label23: TLabel;
    PurchaseSumLabel: TLabel;
    Label13: TLabel;
    PurchaseAmountLabel: TLabel;
    GridPanel1: TGridPanel;
    PurchasePostButton: TButton;
    PurchaseCancelButton: TButton;
    ReceiptPanel: TGridPanel;
    Label24: TLabel;
    ReceiptNumLabel: TLabel;
    ReceiptPrintCB: TCheckBox;
    GroupBox1: TGroupBox;
    procedure PostButtonClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure AddButtonClick(Sender: TObject);
    procedure EditButtonClick(Sender: TObject);
    procedure DeleteButtonClick(Sender: TObject);
    procedure FilterButtonClick(Sender: TObject);
    procedure SearchMenuButtonClick(Sender: TObject);
    procedure StatButtonClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ExtendedSearchButtonClick(Sender: TObject);
    procedure AddPurchaseButtonClick(Sender: TObject);
    procedure PurchasePostButtonClick(Sender: TObject);
    procedure PurchaseCancelButtonClick(Sender: TObject);
    procedure PositionAddButtonClick(Sender: TObject);
    procedure PositionEditButtonClick(Sender: TObject);
    procedure PositionDeleteButtonClick(Sender: TObject);
    procedure PositionPostButtonClick(Sender: TObject);
    procedure PositionCancelButtonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LoadButStates();
    procedure FieldFilterTypeCBChange(Sender: TObject);
    procedure DateFilterTypeCBChange(Sender: TObject);
    procedure EditDateDTPKeyPress(Sender: TObject; var Key: Char);
    procedure EditAmountEditKeyPress(Sender: TObject; var Key: Char);
    procedure EditNameCBKeyPress(Sender: TObject; var Key: Char);
    procedure EditColorCBKeyPress(Sender: TObject; var Key: Char);
    procedure EditCustomerCBKeyPress(Sender: TObject; var Key: Char);
    procedure EditStorageOffCBKeyPress(Sender: TObject; var Key: Char);
    function GetReceiptNumber(): string;
    procedure SalesGridTitleClick(Column: TColumn);
    procedure EditAmountEditChange(Sender: TObject);
    procedure PurchaseButtonsControl(Bool: Boolean);
    procedure PurchaseGridTitleClick(Column: TColumn);
    procedure PurchaseCheck();
    procedure PurchaseEditCustomerCBKeyPress(Sender: TObject; var Key: Char);
    procedure PurchaseEditDTPChange(Sender: TObject);
    procedure PurchaseEditNameCBKeyPress(Sender: TObject; var Key: Char);
    procedure PurchaseEditColorCBKeyPress(Sender: TObject; var Key: Char);
    procedure PurchaseEditAmountEditKeyPress(Sender: TObject; var Key: Char);
    procedure PurchaseEditNameCBCloseUp(Sender: TObject);
    procedure PurchaseEditCustomerCBCloseUp(Sender: TObject);
    procedure SearchButtonClick(Sender: TObject);
    procedure SearchCriterionEditChange(Sender: TObject);
    procedure FieldFilterCriterionCBChange(Sender: TObject);
    procedure FieldFilterAmountEditKeyPress(Sender: TObject; var Key: Char);
    procedure SetFilter();
    procedure SearchFieldCBChange(Sender: TObject);
    procedure SearchCriterionEditKeyPress(Sender: TObject; var Key: Char);
    procedure BoxColorActive(Bool: Boolean);
    procedure ChangeRateButtonClick(Sender: TObject);
    procedure SalesGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PurchaseGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SalesGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PurchaseGridMouseEnter(Sender: TObject);
    procedure SalesGridMouseEnter(Sender: TObject);
    procedure PurchaseGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Label9Click(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  SalesForm: TSalesForm;
    // Первый ли поиск
    FirstSearch: Boolean = True;
    IsPurchaseCanceled: Boolean = False;

implementation

{$R *.dfm}

uses MainPage, DataModule, SalesSearchUnit, RateUpdateUnit, RateUnit;

// Процедуры ===================================================================
// Закрашивание ячеек без курса на дату
procedure TSalesForm.SalesGridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  DataModule2.GridDrawColumnCell(Rect, DataCol, Column, State, DataModule2.Sales_view_table, SalesGrid, 'sales_view_usd', 'proceeds');
end;
//
procedure TSalesForm.PurchaseGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  DataModule2.GridDrawColumnCell(Rect, DataCol, Column, State, DataModule2.Sales_buffer_view_table, PurchaseGrid,
    'sales_buffer_view_usd', 'proceeds');
end;

// Фокус на таблицу при наведении
procedure TSalesForm.PurchaseGridMouseEnter(Sender: TObject);
begin
  PurchaseGrid.SetFocus;
end;
//
procedure TSalesForm.SalesGridMouseEnter(Sender: TObject);
begin
  SalesGrid.SetFocus;
end;

// Серые панели, пока неактивны
procedure TSalesForm.BoxColorActive(Bool: Boolean);
begin
  if Bool = False then
  begin
    FieldFilterBox.Color := clBtnFace;
    DateFilterBox.Color := clBtnFace;
    SearchBox.Color := clBtnFace;
//    StatBox.Color := clBtnFace;
  end
  else
  begin
    FieldFilterBox.Color := clCream;
    DateFilterBox.Color := clCream;
    SearchBox.Color := clCream;
//    StatBox.Color := clCream;
  end;
end;

// Сортировка
procedure TSalesForm.SalesGridTitleClick(Column: TColumn);
begin
//  DataModule2.Sales_view_table.IndexFieldNames := 'proceeds';
  DataModule2.Sorting(SalesGrid, Column);
end;

// Загрузить состояния кнопок
procedure TSalesForm.LoadButStates();
begin
  if SaveButStateParam = True then
  begin
    if SalesFilterParam = True then
    begin
      // Интерфейс {
      DataModule2.BoxShow(FilterPanel, nil, nil, ToolBar, 5, LabelFilter, True);
      FilterPanel.Top := 0;
      SearchPanel.Top := 69;
      // } Интерфейс
      DateFilterDTP1.Date := Date;
      DateFilterDTP2.Date := Date;
    end;
    if SalesSearchParam = True then
    begin
      // Интерфейс {
      DataModule2.BoxShow(SearchPanel, SearchBox, StatBox, ToolBar, 6, LabelSearch, False);
      // } Интерфейс
    end;
    if SalesStatParam = True then
    begin
      // Интерфейс {
      DataModule2.BoxShow(SearchPanel, StatBox, SearchBox, ToolBar, 7, LabelStat, False);
      FilterPanel.Top := 0;
      SearchPanel.Top := 69;
      // } Интерфейс
    end;
  end;
end;

// Получить новый номер чека
function TSalesForm.GetReceiptNumber(): string;
var
  max: Integer;
begin
  max := 0;    
  if DataModule2.Sales_table_2.RecordCount > 0 then
  begin                                           
    DataModule2.Sales_table_2.First;
    while not DataModule2.Sales_table_2.EOF do
    begin
      if StrToInt(DataModule2.Sales_table_2.FieldByName('receipt_number_s').AsString) > max then
        max := StrToInt(DataModule2.Sales_table_2.FieldByName('receipt_number_s').AsString);
      DataModule2.Sales_table_2.Next;
    end;           
    result := IntToStr(max+1);
    while length(result) < 6 do
      result := '0'+result;         
  end
  else result := '000001';
end;

// Закрытие формы
procedure TSalesForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  Action := caFree;
end;

// Создание формы
procedure TSalesForm.FormCreate(Sender: TObject);
begin
//  MainForm.MenuSalesButton.Click;
end;

// Изменение размеров формы
procedure TSalesForm.FormResize(Sender: TObject);
begin
//    SalesForm.BoundsRect := Monitor.WorkareaRect;
end;

// Показ формы
procedure TSalesForm.FormShow(Sender: TObject);
begin
  // Загрузка состояний
  LoadButStates();
  DataModule2.StatUpdate(SalesForm);
end;

// Активация формы
procedure TSalesForm.FormActivate(Sender: TObject);
begin
  // Загрузка состояний
  if FirstActivation = True then
  begin
    LoadButStates();
    FirstActivation := False;
  end;
end;

// Разрешенные к нажатию кнопки
  // Редактирование (количество)
procedure TSalesForm.EditAmountEditKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#8, '0'..'9', #13]) then Key := #0;
  // Переход на следующий элемент ввода
  if Key = #13 then
  begin
    EditCustomerCB.SetFocus;
    EditCustomerCB.DropDown;
  end;
end;
  // Фильтр (числовое поле)
procedure TSalesForm.FieldFilterAmountEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if FieldFilterTypeCB.ItemIndex <> 4 then
  begin
    DataModule2.DelimeterKey(FieldFilterAmountEdit, Key);
  end
  else if not (Key in [#8, '0'..'9', #13]) then Key := #0;
end;

// Запрет на запоминание при пустом поле       
procedure TSalesForm.EditAmountEditChange(Sender: TObject);
begin
  if (Length(EditNameCB.Text) <= 0) or (Length(EditColorCB.Text) <= 0) or (Length(EditAmountEdit.Text) <= 0)
    or (StrToFloat(EditAmountEdit.Text) = 0) or (Length(EditCustomerCB.Text) <= 0) or (Length(EditStorageOffCB.Text) <= 0)
    then PostButton.Enabled := False
  else PostButton.Enabled := True;
end;

// Переход на следующий элемент ввода
procedure TSalesForm.EditDateDTPKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    EditNameCB.SetFocus;
    EditNameCB.DropDown;
  end;
end;
//
procedure TSalesForm.EditNameCBKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    EditColorCB.SetFocus;
    EditColorCB.DropDown;
  end;
end;
//
procedure TSalesForm.EditColorCBKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then EditAmountEdit.SetFocus;
end;
//
procedure TSalesForm.EditCustomerCBKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    EditStorageOffCB.SetFocus;
    EditStorageOffCB.DropDown;
  end;
end;
//
procedure TSalesForm.EditStorageOffCBKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if PostButton.Enabled = True then
      PostButton.Click;
  end;
end;

// Фильтрация ------------------------------------------------------------------
// Установка фильтра
procedure TSalesForm.SetFilter();  
var
  FilterField: string;   
  FilterSign: string;
  LeBookmark: TBookmark;
  // Только фиьтр по дате
  procedure OnlyDateFilter();
  begin
    // Все время
    if DateFilterTypeCB.ItemIndex = 0 then
      DataModule2.Sales_view_table.Filter := '[fictitious] = False'
    // Сегодня
    else if DateFilterTypeCB.ItemIndex = 1 then                
      DataModule2.Sales_view_table.Filter := '[date] = ' + QuotedStr(DateToStr(Date)) + ' AND [fictitious] = False' 
    // Интервал по дате
    else if DateFilterTypeCB.ItemIndex = 2 then
      DataModule2.Sales_view_table.Filter := '[date] >= ' + QuotedStr(DateToStr(DateFilterDTP1.DateTime)) + ' AND [date] <= ' 
        + QuotedStr(DateToStr(DateFilterDTP2.DateTime)) + ' AND [fictitious] = False' ;
  end;
begin
  LeBookmark := DataModule2.Sales_view_table.GetBookmark;
  FirstSearch := True;
  DataModule2.Sales_view_table.First;
  // Установка строки фильтра
  case FieldFilterTypeCB.ItemIndex of   
    0: FilterField := '';
    // Текстовые
    1: FilterField := '[name_p]';
    2: FilterField := '[name_pt]';
    3: FilterField := '[name_pc]';
    5: FilterField := '[name_c]';
    6: FilterField := '[name_sl]';
    10: FilterField := '[receipt_number]';
    11: FilterField := '[name_e]';
    // Числовые
    4: FilterField := '[amount]';
    7: FilterField := '[proceeds_sort]';
    8: FilterField := '[cost_price_sort]';
    9: FilterField := '[added_value_sort]';
  end;
  // Установка типа числового фильтра
  case FieldFilterSignCB.ItemIndex of
    0: FilterSign := ' = ';
    1: FilterSign := ' > ';
    2: FilterSign := ' < ';
    3: FilterSign := ' >= ';
    4: FilterSign := ' <= ';
  end;
  // Если выбран фильтр по полю
  if (FieldFilterTypeCB.ItemIndex <> 0) then
  begin
    if (FieldFilterCriterionCB.Text <> '') then
    begin
      // Все время
      if DateFilterTypeCB.ItemIndex = 0 then
        DataModule2.Sales_view_table.Filter := FilterField + ' LIKE ' + QuotedStr('*' + FieldFilterCriterionCB.Text + '*')
        + ' AND [fictitious] = False' 
      // Сегодня
      else if DateFilterTypeCB.ItemIndex = 1 then                
        DataModule2.Sales_view_table.Filter := FilterField + ' LIKE ' + QuotedStr('*' + FieldFilterCriterionCB.Text + '*')
          + ' AND ' + '[date] = ' + QuotedStr(DateToStr(Date)) + ' AND [fictitious] = False'  
      // Интервал по дате
      else if DateFilterTypeCB.ItemIndex = 2 then
        DataModule2.Sales_view_table.Filter := FilterField + ' LIKE ' + QuotedStr('*' + FieldFilterCriterionCB.Text + '*')
          + ' AND ' + '[date] >= ' + QuotedStr(DateToStr(DateFilterDTP1.DateTime)) + ' AND [date] <= ' 
          + QuotedStr(DateToStr(DateFilterDTP2.DateTime)) + ' AND [fictitious] = False' ;
    end
    else if (FieldFilterAmountEdit.Text <> '') then
    begin
      // Все время
      if DateFilterTypeCB.ItemIndex = 0 then
        DataModule2.Sales_view_table.Filter := FilterField + FilterSign + QuotedStr(FieldFilterAmountEdit.Text)
        + ' AND [fictitious] = False'    
      // Сегодня
      else if DateFilterTypeCB.ItemIndex = 1 then                
        DataModule2.Sales_view_table.Filter := FilterField + FilterSign + QuotedStr(FieldFilterAmountEdit.Text)
          + ' AND ' + '[date] = ' + QuotedStr(DateToStr(Date)) + ' AND [fictitious] = False'  
      // Интервал по дате
      else if DateFilterTypeCB.ItemIndex = 2 then
        DataModule2.Sales_view_table.Filter := FilterField + FilterSign + QuotedStr(FieldFilterAmountEdit.Text)
          + ' AND ' + '[date] >= ' + QuotedStr(DateToStr(DateFilterDTP1.DateTime)) + ' AND [date] <= ' 
          + QuotedStr(DateToStr(DateFilterDTP2.DateTime)) + ' AND [fictitious] = False' ;
    end 
    else OnlyDateFilter();
  end    
  else OnlyDateFilter();
  try DataModule2.Sales_view_table.GotoBookmark(LeBookmark) except end;
  DataModule2.StatUpdate(SalesForm);
end;

// Фильтр по полю
  // Изменение типа фильтра - визуал
procedure TSalesForm.FieldFilterTypeCBChange(Sender: TObject);
  procedure VisualControl(Bool1, Bool2: Boolean);
  begin
    FilterCriterionLabel.Enabled := Bool1;
    FieldFilterCriterionCB.Enabled := Bool1;
    FilterAmountLabel.Enabled := Bool2;
    FieldFilterSignCB.Enabled := Bool2;
    FieldFilterAmountEdit.Enabled := Bool2;
  end;
begin
  // Очистка полей фильтров
  FieldFilterCriterionCB.Text := '';
  FieldFilterSignCB.ItemIndex := 0;
  FieldFilterAmountEdit.Text := '';
  // Без фильтра
  if (FieldFilterTypeCB.ItemIndex = 0) then VisualControl(False, False)
  // Численные
  else if (FieldFilterTypeCB.ItemIndex = 4) or (FieldFilterTypeCB.ItemIndex = 7) or
    (FieldFilterTypeCB.ItemIndex = 8) or (FieldFilterTypeCB.ItemIndex = 9) then VisualControl(False, True)
  // Текстовые
  else VisualControl(True, False);
end;
  // Изменение критерия фильтрации
procedure TSalesForm.FieldFilterCriterionCBChange(Sender: TObject);
begin
  SetFilter();
end;

// Фильтр по дате
  // Изменение типа фильтра - визуал
procedure TSalesForm.DateFilterTypeCBChange(Sender: TObject);
  procedure VisualControl(Bool: Boolean);
  begin
    FilterDateLabel.Enabled := Bool;
    DateFilterDTP1.Enabled := Bool;
    DateFilterDTP2.Enabled := Bool;
  end;
begin
  case DateFilterTypeCB.ItemIndex of
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
  SetFilter();
  SetFilter();
end;

// Список поставок -------------------------------------------------------------
// Сортировка
procedure TSalesForm.PurchaseGridTitleClick(Column: TColumn);
begin
  DataModule2.Sorting(PurchaseGrid, Column);
end;

// Вкл/выкл элементов списка поставок
procedure TSalesForm.PurchaseButtonsControl(Bool: Boolean);
begin
  PositionAddButton.Enabled := Bool;
  PositionEditButton.Enabled := Bool;
  PositionDeleteButton.Enabled := Bool;
  PositionCancelButton.Enabled := not Bool;
  PurchaseEditNameCB.Enabled := not Bool;
  PurchaseEditColorCB.Enabled := not Bool;
  PurchaseEditAmountEdit.Enabled := not Bool;
  PurchaseCancelButton.Enabled := Bool;
  PurchaseGrid.Enabled := Bool;
  Label2.Enabled := not Bool;
  Label19.Enabled := not Bool;
  Label20.Enabled := not Bool;
  Label1.Enabled := Bool;
  PurchaseEditDTP.Enabled := Bool;
  if Bool = True then PositionPostButton.Enabled := False
    else PurchasePostButton.Enabled := False;
end;

// Проверка - можно ли запомнить список
procedure TSalesForm.PurchaseCheck();
begin
  if (PositionAddButton.Enabled = True) and (Length(PurchaseEditCustomerCB.Text) > 0)
    and (Length(PurchaseEditStorageCB.Text) > 0)
    then PurchasePostButton.Enabled := True
  else PurchasePostButton.Enabled := False;
end;

// Запрет на запоминание при пустом поле
procedure TSalesForm.PurchaseEditNameCBCloseUp(Sender: TObject);
begin
  if (Length(PurchaseEditNameCB.Text) <= 0) or (Length(PurchaseEditColorCB.Text) <= 0) or (Length(PurchaseEditAmountEdit.Text) <= 0)
    or (StrToFloat(PurchaseEditAmountEdit.Text) = 0) or (PositionAddButton.Enabled = True) then PositionPostButton.Enabled := False
  else PositionPostButton.Enabled := True;
  PurchaseCheck();
end;
//
procedure TSalesForm.PurchaseEditCustomerCBCloseUp(Sender: TObject);
begin
  PurchaseCheck();
end;

// Изменение даты
procedure TSalesForm.PurchaseEditDTPChange(Sender: TObject);
begin
  if DataModule2.Sales_buffer_table.RecordCount > 0 then
  begin
    DataModule2.Sales_buffer_table.First;
    while not DataModule2.Sales_buffer_table.EOF do
    begin
      DataModule2.Sales_buffer_table.Edit;
      DataModule2.Sales_buffer_tabledate_sb.Value := PurchaseEditDTP.Date;
      try
        DataModule2.Sales_buffer_table.Post;
      except
        DataModule2.Sales_buffer_table.Cancel;
      end;
      DataModule2.Sales_buffer_table.Next;
    end;
  end;
  DataModule2.PurchaseStatUpdate(SalesForm);
end;

// Переход на следующий элемент ввода
procedure TSalesForm.PurchaseEditCustomerCBKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    PurchaseEditStorageCB.SetFocus;
    PurchaseEditStorageCB.DropDown;
  end;
end;
//
procedure TSalesForm.PurchaseEditNameCBKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    PurchaseEditColorCB.SetFocus;
    PurchaseEditColorCB.DropDown;
  end;
end;
//
procedure TSalesForm.PurchaseEditColorCBKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then PurchaseEditAmountEdit.SetFocus;
end;
//
procedure TSalesForm.PurchaseEditAmountEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in [#8, '0'..'9', ',', #13]) then Key := ',';
  if Key = '.' then Key := ',';
  if Key = ',' then
  begin
    if (LastDelimiter(',', PurchaseEditAmountEdit.Text) <> 0) or (PurchaseEditAmountEdit.SelStart = 0) then
      Key := #0;
  end;
  // Переход на следующий элемент ввода
  if Key = #13 then
  begin
    if PositionPostButton.Enabled = True then
      PositionPostButton.Click;
  end;
end;

// Изменение курса -------------------------------------------------------------
procedure TSalesForm.ChangeRateButtonClick(Sender: TObject);
begin
  RateUpdateForm.ShowModal;
end;

// Кнопки (Редактирование) =====================================================
// Линейки в количество
procedure TSalesForm.Label9Click(Sender: TObject);
begin
  DataModule2.AmountMultiply(EditAmountEdit);
end;

// Новый список продаж
procedure TSalesForm.AddPurchaseButtonClick(Sender: TObject);
begin
  PurchaseEditCustomerCB.KeyValue := NULL;
  PurchaseEditStorageCB.KeyValue := NULL;
  PurchaseEditDTP.Date := Date;
  if DefaultFieldsParam = True then
  begin
    PurchaseEditCustomerCB.KeyValue := 1;
    PurchaseEditStorageCB.KeyValue := 1;
  end;
  // Интерфейс {
  SalesMainPanel.Visible := False;
  DataModule2.EditBlock(ToolBar, False, 7);
  PurchaseEditPanel.Visible := True;
  ToolBar.Buttons[1].Caption := LabelDot + LabelList;
  ReceiptNumLabel.Caption := GetReceiptNumber();
  // } Интерфейс
  DataModule2.PurchaseStatUpdate(SalesForm);
  if DefaultFieldsParam = False then
    PurchaseEditCustomerCB.SetFocus;
end;

// Добавить новую запись
procedure TSalesForm.AddButtonClick(Sender: TObject);
begin
  // Интерфейс {
  BoxColorActive(False);
  SalesGrid.Enabled := False;
  FilterPanel.Enabled := False;
  SearchPanel.Enabled := False;
  DataModule2.EditBlock(ToolBar, False, 7);
  EditBox.Caption := 'Новая запись продажи';
  EditPanel.Visible := True;
  SearchPanel.Top := 0;
  FilterPanel.Top := 0;
  ToolBar.Buttons[2].Caption := LabelDot + LabelAdd;
  EditDateDTP.Date := Date;
  // } Интерфейс
  if DataModule2.Sales_table.State in [dsBrowse] then
  begin
    DataModule2.Sales_table.Append;
    if DefaultFieldsParam = True then
    begin
      DataModule2.Sales_tableid_cl.Value := 1;
      DataModule2.Sales_tableid_sl_from.Value := 1;
    end;
  end;
  // Интерфейс {
  EditNameCB.SetFocus;
  DataModule2.PanelHighlight(EditBox);
  // } Интерфейс
end;

// Изменить запись
procedure TSalesForm.EditButtonClick(Sender: TObject);
begin
//if DataModule2.Sales_table.State in [dsInsert, dsEdit] then
  if DataModule2.Sales_table.State in [dsBrowse] then
    if DataModule2.Sales_table.RecordCount > 0 then
    begin
      try
        EditDateDTP.Date := DataModule2.Sales_tabledate_s.Value;
        DataModule2.Sales_table.Edit;
      except
        DataModule2.Sales_table.Cancel;
      end;
      // Интерфейс {
      BoxColorActive(False);
//      PostButton.Enabled := True;
      SalesGrid.Enabled := False;
      FilterPanel.Enabled := False;
      SearchPanel.Enabled := False;
      PostButton.Enabled := True;
      DataModule2.EditBlock(ToolBar, False, 7);
      EditBox.Caption := 'Изменение записи продажи';
      EditPanel.Visible := True;
      EditPanel.Top := 138;
      ToolBar.Buttons[3].Caption := LabelDot + LabelEdit;
      DataModule2.PanelHighlight(EditBox);
      // } Интерфейс
    end
//  else
//    MyMessageDlg('ОШИБКА',
//      mtWarning, [mbYes], ['ОК'], 'Ошибка');
end;

// Удалить запись
procedure TSalesForm.DeleteButtonClick(Sender: TObject);
begin
  // Интерфейс {
  DataModule2.EditBlock(ToolBar, False, 7);
  ToolBar.Buttons[4].Caption := LabelDot + LabelDelete;
  // } Интерфейс
  DataModule2.DeleteRecord(DataModule2.Sales_table);
  // Интерфейс {
  DataModule2.EditBlock(ToolBar, True, 7);
  ToolBar.Buttons[4].Caption := LabelDelete;
  // } Интерфейс
end;
//
procedure TSalesForm.SalesGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
    DeleteButton.Click;
end;

// Запомнить запись ------------------------------------------------------------
procedure TSalesForm.PostButtonClick(Sender: TObject);
begin
  if DataModule2.Sales_table.State in [dsInsert, dsEdit] then
  begin
    try
      DataModule2.Sales_tabledate_s.Value := EditDateDTP.Date;
      DataModule2.Sales_tablefictitious_s.Value := False;
      DataModule2.Sales_tableid_e.Value := LoginIdParam;
      DataModule2.Sales_tablereceipt_number_s.Value := GetReceiptNumber();
      DataModule2.Sales_table.Post;
    except
      DataModule2.Sales_table.Cancel;
    end;
  end;
  // Интерфейс {
  BoxColorActive(True);
  SalesGrid.Enabled := True;   
  FilterPanel.Enabled := True;    
  SearchPanel.Enabled := True;
  DataModule2.EditBlock(ToolBar, True, 7);
  EditPanel.Visible := False;
  ToolBar.Buttons[2].Caption := LabelAdd;
  ToolBar.Buttons[3].Caption := LabelEdit;
  // } Интерфейс
end;

// Отменить запись -------------------------------------------------------------
procedure TSalesForm.CancelButtonClick(Sender: TObject);
begin
  if DataModule2.Sales_table.State in [dsInsert, dsEdit] then
    DataModule2.Sales_table.Cancel;
  // Интерфейс {
  BoxColorActive(True);
  SalesGrid.Enabled := True;  
  FilterPanel.Enabled := True;    
  SearchPanel.Enabled := True;
  DataModule2.EditBlock(ToolBar, True, 7);
  EditPanel.Visible := False;
  ToolBar.Buttons[2].Caption := LabelAdd;
  ToolBar.Buttons[3].Caption := LabelEdit;
  // } Интерфейс
end;

// Кнопки редактирования списка продаж =========================================
// Запомнить список
procedure TSalesForm.PurchasePostButtonClick(Sender: TObject);
var
  ReceiptNumber: string;
begin
  if MyMessageDlg('Запомнить список поставок?', mtConfirmation, [mbYes, mbNo], ['Да','Нет'], 'Подтверждение') = mrYes then
  begin
    if DataModule2.Sales_buffer_table.RecordCount > 0 then
    begin
      ReceiptNumber := GetReceiptNumber();
      DataModule2.Sales_buffer_table.First;
       DataModule2.Sales_buffer_table.DisableControls;
      while not DataModule2.Sales_buffer_table.EOF do
      begin
        DataModule2.Sales_table.Append;
        DataModule2.Sales_tabledate_s.Value := DataModule2.Sales_buffer_tabledate_sb.Value;
        DataModule2.Sales_tableid_pl.Value := DataModule2.Sales_buffer_tableid_pl.Value;
        DataModule2.Sales_tableid_pc.Value := DataModule2.Sales_buffer_tableid_pc.Value;
        DataModule2.Sales_tableamount_s.Value := DataModule2.Sales_buffer_tableamount_s.Value;
        DataModule2.Sales_tableid_cl.Value := PurchaseEditCustomerCB.KeyValue;
        DataModule2.Sales_tableid_sl_from.Value := PurchaseEditStorageCB.KeyValue;
        DataModule2.Sales_tablereceipt_number_s.Value := ReceiptNumber;
        DataModule2.Sales_tablefictitious_s.Value := False;
        DataModule2.Sales_tableid_e.Value := LoginIdParam;
        try
          DataModule2.Sales_table.Post;
        except
          DataModule2.Sales_table.Cancel;
        end;
        DataModule2.Sales_buffer_table.Next;
      end;
      DataModule2.Sales_buffer_table.EnableControls;
      DataModule2.ClearTable(DataModule2.Sales_buffer_table);
      DataModule2.StatUpdate(SalesForm);
    end;
    // Интерфейс {
    SalesMainPanel.Visible := True;
    DataModule2.EditBlock(ToolBar, True, 7);
    ToolBar.Buttons[4].Enabled := True;
    PurchaseEditPanel.Visible := False;
    ToolBar.Buttons[1].Caption := LabelList;
    Label2.Enabled := True;
    // } Интерфейс
  end;
end;

// Отменить список
procedure TSalesForm.PurchaseCancelButtonClick(Sender: TObject);
begin
  if MyMessageDlg('Отменить список продаж?', mtConfirmation, [mbYes, mbNo], ['Да','Нет'], 'Подтверждение') = mrYes then
  begin
    DataModule2.ClearTable(DataModule2.Sales_buffer_table);
    // Интерфейс {
    SalesMainPanel.Visible := True;
    DataModule2.EditBlock(ToolBar, True, 7);
    ToolBar.Buttons[4].Enabled := True;
    PurchaseEditPanel.Visible := False;
    ToolBar.Buttons[1].Caption := LabelList;
    // } Интерфейс
  end;
end;

// Новыя позиция
procedure TSalesForm.PositionAddButtonClick(Sender: TObject);
begin
  PurchaseButtonsControl(False);
  if DataModule2.Sales_buffer_table.State in [dsBrowse] then
    DataModule2.Sales_buffer_table.Append;
  PurchaseEditNameCB.DropDown;
  PurchaseEditNameCB.SetFocus;
end;

// Изменить позицию
procedure TSalesForm.PositionEditButtonClick(Sender: TObject);
begin
  if DataModule2.Sales_buffer_table.State in [dsBrowse] then
    if DataModule2.Sales_buffer_table.RecordCount > 0 then
    begin
      PurchaseButtonsControl(False);
      PurchaseButtonsControl(False);
      DataModule2.Sales_buffer_table.Edit;
    end;
end;

// Удалить позицию
procedure TSalesForm.PositionDeleteButtonClick(Sender: TObject);
begin
  DataModule2.DeleteRecord(DataModule2.Sales_buffer_table);
  PurchaseCheck();
end;
//
procedure TSalesForm.PurchaseGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
    PositionDeleteButton.Click;
end;

// Запомнить позицию
procedure TSalesForm.PositionPostButtonClick(Sender: TObject);
begin
  PurchaseButtonsControl(True);
  if DataModule2.Sales_buffer_table.State in [dsInsert, dsEdit] then
  begin
    try
      DataModule2.Sales_buffer_tabledate_sb.Value := PurchaseEditDTP.Date;
      DataModule2.Sales_buffer_table.Post;
    except
      DataModule2.Sales_buffer_table.Cancel;
    end;
  end;
  PurchaseCheck();
end;

// Отменить (позиция)
procedure TSalesForm.PositionCancelButtonClick(Sender: TObject);
begin
  PurchaseButtonsControl(True);
  if DataModule2.Sales_buffer_table.State in [dsInsert, dsEdit] then
    DataModule2.Sales_buffer_table.Cancel;
  PurchaseCheck();
end;

// Кнопки ======================================================================
// Фильтрация
procedure TSalesForm.FilterButtonClick(Sender: TObject);
begin
  // Сброс фильтра
    // Очистка фильтра
  DataModule2.Sales_view_table.Filter := '';
  FieldFilterTypeCB.ItemIndex := 0;
  FieldFilterTypeCB.OnChange(nil);
  DateFilterTypeCB.ItemIndex := 0;
  DateFilterTypeCB.OnChange(nil);
    // Установка текущей даты на интервалы фильтра
  DateFilterDTP1.Date := Date;
  DateFilterDTP2.Date := Date;
  // Интерфейс {
  SalesFilterParam := DataModule2.BoxShow(FilterPanel, nil, nil, ToolBar, 5, LabelFilter, True);
  FilterPanel.Top := 0;
  SearchPanel.Top := 69;
  DataModule2.PanelHighlightDouble(FieldFilterBox, DateFilterBox);
  // } Интерфейс
end;

// Поиск
procedure TSalesForm.SearchMenuButtonClick(Sender: TObject);
begin
  // Интерфейс {
  SearchFieldCB.ItemIndex := 0;
  SearchCriterionEdit.Text := '';
  SalesSearchParam := DataModule2.BoxShow(SearchPanel, SearchBox, StatBox, ToolBar, 6, LabelSearch, False);
  FilterPanel.Top := 0;
  SearchPanel.Top := 69;
  SearchBox.Left := 0;
  DataModule2.PanelHighlight(SearchBox);
  // } Интерфейс
end;
// Искать
procedure TSalesForm.SearchButtonClick(Sender: TObject);
var
  SearchField: string;
begin
  case SearchFieldCB.ItemIndex of
    0: SearchField := '[name_p]';
    1: SearchField := '[name_pt]';
    2: SearchField := '[name_pc]';
    3: SearchField := '[amount]';
    4: SearchField := '[name_c]';
    5: SearchField := '[name_sl]';
    6: SearchField := '[proceeds_sort]';
    7: SearchField := '[cost_price_sort]';
    8: SearchField := '[added_value_sort]';
    9: SearchField := '[receipt_number]';
    10: SearchField := '[name_e]';
  end;
  if SearchFieldCB.ItemIndex in [0,1,2,4,5,9,10] then
    DataModule2.Sales_view_table_search.Filter := DataModule2.Sales_view_table.Filter + ' AND ' + SearchField +
    ' LIKE ' + QuotedStr(SearchCriterionEdit.Text+'*')
  else
    DataModule2.Sales_view_table_search.Filter := DataModule2.Sales_view_table.Filter + ' AND ' + SearchField +
    ' = ' + QuotedStr(FloatToStr(StrToFloat(SearchCriterionEdit.Text)));
  if (FirstSearch = True) then
    DataModule2.Sales_view_table_search.First ;
  if not DataModule2.Sales_view_table.Locate('id_s', DataModule2.Sales_view_table_search.FieldByName('id_s').Value, []) then
    MyMessageDlg('Запись не найдена!', mtInformation, [mbYes], ['ОК'], 'Результаты поиска');
  DataModule2.Sales_view_table_search.Next;
  if DataModule2.Sales_view_table_search.EOF = True then FirstSearch := True
  else FirstSearch := False;
end;
// Запрет поиска при пустом поле
procedure TSalesForm.SearchCriterionEditChange(Sender: TObject);
begin
  if (Length(SearchCriterionEdit.Text) = 0) then SearchButton.Enabled := False
  else SearchButton.Enabled := True;
  FirstSearch := True;
end;
// Очистка поля поиска при переключени типа поиска
procedure TSalesForm.SearchFieldCBChange(Sender: TObject);
begin
  SearchCriterionEdit.Text := '';
end;
// Разрешенные к вводу символы
procedure TSalesForm.SearchCriterionEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if SearchFieldCB.ItemIndex in [6,7,8] then
    DataModule2.DelimeterKey(SearchCriterionEdit, Key)
  else if SearchFieldCB.ItemIndex in [3,9] then
    if not (Key in [#8, '0'..'9', #13]) then Key := #0;
end;

// Расришенный поиск
procedure TSalesForm.ExtendedSearchButtonClick(Sender: TObject);
begin
  Label60.Enabled := False;
  Label31.Enabled := False;
  SearchFieldCB.Enabled := False;
  SearchCriterionEdit.Enabled := False;
  SearchCriterionEdit.Text := '';
  SalesSearchForm := TSalesSearchForm.Create(Self);
  ExtendedSearchButton.Enabled := False;
  SalesSearchForm.Show;
end;

// Статистика
procedure TSalesForm.StatButtonClick(Sender: TObject);
begin
  // Интерфейс {
  SalesStatParam := DataModule2.BoxShow(SearchPanel, StatBox, SearchBox, ToolBar, 7, LabelStat, False);
  FilterPanel.Top := 0;
  SearchPanel.Top := 69;
  DataModule2.PanelHighlight(StatBox);
  // } Интерфейс
end;

end.
