unit ProductionSupplyUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.ToolWin, Vcl.Buttons;

type
  TProductionSupplyForm = class(TForm)
    ProductionSupplyMainPanel: TPanel;
    PanelSalesControl: TPanel;
    FilterPanel: TPanel;
    Filler1: TGroupBox;
    EditPanel: TPanel;
    EditBox: TGroupBox;
    Filler2: TGroupBox;
    ProductSupplyGrid: TDBGrid;
    Menu: TMainMenu;
    AddButton: TMenuItem;
    EditButton: TMenuItem;
    DeleteButton: TMenuItem;
    SearchMenuButton: TMenuItem;
    FilterButton: TMenuItem;
    StatButton: TMenuItem;
    ToolBar: TToolBar;
    N1: TMenuItem;
    EditGridPanel: TGridPanel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    EditStorageFillCB: TDBLookupComboBox;
    EditStorageOffCB: TDBLookupComboBox;
    PostButton: TButton;
    CancelButton: TButton;
    EditDateDTP: TDateTimePicker;
    EditNameCB: TDBLookupComboBox;
    EditColorCB: TDBLookupComboBox;
    EditAmountEdit: TDBEdit;
    DateFilterBox: TGroupBox;
    DateFilterGridPanel: TGridPanel;
    Label14: TLabel;
    DateFilterTypeCB: TComboBox;
    FilterDateLabel: TLabel;
    DateFilterDTP1: TDateTimePicker;
    DateFilterDTP2: TDateTimePicker;
    FieldFilterBox: TGroupBox;
    FieldFilterGridPanel: TGridPanel;
    Label6: TLabel;
    FilterCriterionLabel: TLabel;
    FieldFilterTypeCB: TComboBox;
    FilterAmountLabel: TLabel;
    FieldFilterAmountEdit: TEdit;
    FieldFilterSignCB: TComboBox;
    SearchPanel: TPanel;
    Filler3: TGroupBox;
    StatBox: TGroupBox;
    StatGridPanel: TGridPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    AmountLabel: TLabel;
    ProceedsLabel: TLabel;
    CostPriceLabel: TLabel;
    AddedValueLabel: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    SearchBox: TGroupBox;
    SearchGridPanel: TGridPanel;
    Label60: TLabel;
    Label31: TLabel;
    SearchCriterionEdit: TEdit;
    SearchButton: TButton;
    ExtendedSearchButton: TButton;
    SearchFieldCB: TComboBox;
    PurchaseEditPanel: TPanel;
    PurchaseEditBox: TGroupBox;
    PurchaseGrid: TDBGrid;
    Panel1: TPanel;
    PositionEditBox: TGroupBox;
    GridPanel2: TGridPanel;
    PositionAddButton: TButton;
    PositionEditButton: TButton;
    PositionDeleteButton: TButton;
    Bevel4: TBevel;
    PositionCancelButton: TButton;
    PurchaseEditGridPanel: TGridPanel;
    Label2: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    PurchaseEditNameCB: TDBLookupComboBox;
    PurchaseEditColorCB: TDBLookupComboBox;
    PurchaseEditAmountEdit: TDBEdit;
    GroupBox2: TGroupBox;
    N2: TMenuItem;
    PopupMenu: TPopupMenu;
    MenuItem1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    PositionPostButton: TSpeedButton;
    FieldFilterCriterionCB: TEdit;
    PurchasePopupMenu: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    N3: TMenuItem;
    ChangeRateButton: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    Panel2: TPanel;
    DataConsumerGridPanel: TGridPanel;
    Label1: TLabel;
    PurchaseEditDTP: TDateTimePicker;
    PurchaseEditStorageFromCB: TDBLookupComboBox;
    Label12: TLabel;
    PurchaseEditStorageToCB: TDBLookupComboBox;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    PurchaseBox: TGroupBox;
    GridPanel4: TGridPanel;
    Label23: TLabel;
    PurchaseSumLabel: TLabel;
    Label13: TLabel;
    PurchaseAmountLabel: TLabel;
    GridPanel1: TGridPanel;
    PurchasePostButton: TButton;
    PurchaseCancelButton: TButton;
    procedure PostButtonClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure AddButtonClick(Sender: TObject);
    procedure EditButtonClick(Sender: TObject);
    procedure DeleteButtonClick(Sender: TObject);
    procedure FilterButtonClick(Sender: TObject);
    procedure SearchMenuButtonClick(Sender: TObject);
    procedure StatButtonClick(Sender: TObject);
    procedure ExtendedSearchButtonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure LoadButStates();
    procedure FormShow(Sender: TObject);
    procedure FieldFilterTypeCBChange(Sender: TObject);
    procedure DateFilterTypeCBChange(Sender: TObject);
    procedure EditDateDTPKeyPress(Sender: TObject; var Key: Char);
    procedure EditNameCBKeyPress(Sender: TObject; var Key: Char);
    procedure EditColorCBKeyPress(Sender: TObject; var Key: Char);
    procedure EditAmountEditKeyPress(Sender: TObject; var Key: Char);
    procedure EditStorageOffCBKeyPress(Sender: TObject; var Key: Char);
    procedure EditStorageFillCBKeyPress(Sender: TObject; var Key: Char);
    procedure ProductSupplyGridTitleClick(Column: TColumn);
    procedure EditAmountEditChange(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure PurchasePostButtonClick(Sender: TObject);
    procedure PurchaseCancelButtonClick(Sender: TObject);
    procedure PositionAddButtonClick(Sender: TObject);
    procedure PositionEditButtonClick(Sender: TObject);
    procedure PositionDeleteButtonClick(Sender: TObject);
    procedure PositionCancelButtonClick(Sender: TObject);
    procedure PurchaseButtonsControl(Bool: Boolean);
    procedure PurchaseEditStorageFromCBCloseUp(Sender: TObject);
    procedure PurchaseEditNameCBCloseUp(Sender: TObject);
    procedure PurchaseCheck();
    procedure PurchaseGridTitleClick(Column: TColumn);
    procedure PositionPostButtonClick(Sender: TObject);
    procedure PositionPostButtonDblClick(Sender: TObject);
    procedure PurchaseEditDTPChange(Sender: TObject);
    procedure PurchaseEditStorageFromCBKeyPress(Sender: TObject; var Key: Char);
    procedure PurchaseEditNameCBKeyPress(Sender: TObject; var Key: Char);
    procedure PurchaseEditColorCBKeyPress(Sender: TObject; var Key: Char);
    procedure PurchaseEditAmountEditKeyPress(Sender: TObject; var Key: Char);
    procedure SearchFieldCBChange(Sender: TObject);
    procedure SearchButtonClick(Sender: TObject);
    procedure SearchCriterionEditChange(Sender: TObject);
    procedure SearchCriterionEditKeyPress(Sender: TObject; var Key: Char);
    procedure BoxColorActive(Bool: Boolean);
    procedure SetFilter();
    procedure FieldFilterCriterionCBChange(Sender: TObject);
    procedure FieldFilterAmountEditKeyPress(Sender: TObject; var Key: Char);
    procedure ChangeRateButtonClick(Sender: TObject);
    procedure ProductSupplyGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PurchaseGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PurchaseGridMouseEnter(Sender: TObject);
    procedure ProductSupplyGridMouseEnter(Sender: TObject);
    procedure ProductSupplyGridDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure PurchaseGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Label9Click(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  ProductionSupplyForm: TProductionSupplyForm;
      // Первый ли поиск
      FirstSearch: Boolean = True;

implementation

{$R *.dfm}

uses DataModule, ProductionSupplySearchUnit, MainPage, RateUpdateUnit;

// Процедуры ===================================================================
// Фокус на таблицу при наведении мышкой
procedure TProductionSupplyForm.PurchaseGridMouseEnter(Sender: TObject);
begin
  PurchaseGrid.SetFocus;
end;
//
procedure TProductionSupplyForm.ProductSupplyGridMouseEnter(Sender: TObject);
begin
  ProductSupplyGrid.SetFocus;
end;

// Закрашивание ячеек без курса на дату
procedure TProductionSupplyForm.PurchaseGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  DataModule2.GridDrawColumnCell(Rect, DataCol, Column, State, DataModule2.Product_supply_buffer_view_table, PurchaseGrid,
    'product_supply_buffer_view_usd', 'proceeds');
end;
procedure TProductionSupplyForm.ProductSupplyGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  DataModule2.GridDrawColumnCell(Rect, DataCol, Column, State, DataModule2.Product_supply_view_table, ProductSupplyGrid,
    'product_supply_view_usd', 'proceeds');
end;

// Серые панели, пока неактивны
procedure TProductionSupplyForm.BoxColorActive(Bool: Boolean);
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
procedure TProductionSupplyForm.ProductSupplyGridTitleClick(Column: TColumn);
begin
  DataModule2.Sorting(ProductSupplyGrid, Column);
end;

// Загрузить состояния кнопок
procedure TProductionSupplyForm.LoadButStates();
begin
  if SaveButStateParam = True then
  begin
    if ProductionFilterParam = True then
    begin
      // Интерфейс {
      DataModule2.BoxShow(FilterPanel, nil, nil, ToolBar, 5, LabelFilter, True);
      FilterPanel.Top := 0;
      SearchPanel.Top := 69;
      // } Интерфейс
      DateFilterDTP1.Date := Date;
      DateFilterDTP2.Date := Date;
    end;
    if ProductionSearchParam = True then
    begin
      // Интерфейс {
      DataModule2.BoxShow(SearchPanel, SearchBox, StatBox, ToolBar, 6, LabelSearch, False);
      // } Интерфейс
    end;
    if ProductionStatParam = True then
    begin
      // Интерфейс {
      DataModule2.BoxShow(SearchPanel, StatBox, SearchBox, ToolBar, 7, LabelStat, False);
      FilterPanel.Top := 0;
      SearchPanel.Top := 69;
      // } Интерфейс
    end;
  end;
end;

// Активация формы
procedure TProductionSupplyForm.FormActivate(Sender: TObject);
begin
  // Загрузка состояний
  if FirstActivation = True then
  begin
    LoadButStates();
    FirstActivation := False;
  end;
end;

// Показ формы
procedure TProductionSupplyForm.FormShow(Sender: TObject);
begin
  // Загрузка состояний
  LoadButStates();
  DataModule2.StatUpdate(ProductionSupplyForm);
end;

// Разрешенные к нажатию кнопки
  // Фильтр (числовое поле)
procedure TProductionSupplyForm.FieldFilterAmountEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if FieldFilterTypeCB.ItemIndex <> 4 then
  begin
    DataModule2.DelimeterKey(FieldFilterAmountEdit, Key);
  end
  else if not (Key in [#8, '0'..'9', #13]) then Key := #0;
end;

// Фильтрация ------------------------------------------------------------------
// Установка фильтра
procedure TProductionSupplyForm.SetFilter();
var
  FilterField: string;
  FilterSign: string;
  LeBookmark: TBookmark;
  // Только фиьтр по дате
  procedure OnlyDateFilter();
  begin
    // Все время
    if DateFilterTypeCB.ItemIndex = 0 then
      DataModule2.Product_supply_view_table.Filter := '[fictitious] = False'
    // Сегодня
    else if DateFilterTypeCB.ItemIndex = 1 then
      DataModule2.Product_supply_view_table.Filter := '[date] = ' + QuotedStr(DateToStr(Date)) + ' AND [fictitious] = False'
    // Интервал по дате
    else if DateFilterTypeCB.ItemIndex = 2 then
      DataModule2.Product_supply_view_table.Filter := '[date] >= ' + QuotedStr(DateToStr(DateFilterDTP1.DateTime)) + ' AND [date] <= '
        + QuotedStr(DateToStr(DateFilterDTP2.DateTime)) + ' AND [fictitious] = False' ;
  end;
begin
  LeBookmark := DataModule2.Product_supply_view_table.GetBookmark;
  FirstSearch := True;
  DataModule2.Product_supply_view_table.First;
  // Установка строки фильтра
  case FieldFilterTypeCB.ItemIndex of
    0: FilterField := '';
    // Текстовые
    1: FilterField := '[name_p]';
    2: FilterField := '[name_pt]';
    3: FilterField := '[name_pc]';
    5: FilterField := '[storage_from]';
    6: FilterField := '[storage_to]';
    10: FilterField := '[name_e]';
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
        DataModule2.Product_supply_view_table.Filter := FilterField + ' LIKE ' + QuotedStr('*' + FieldFilterCriterionCB.Text + '*')
        + ' AND [fictitious] = False'
      // Сегодня
      else if DateFilterTypeCB.ItemIndex = 1 then
        DataModule2.Product_supply_view_table.Filter := FilterField + ' LIKE ' + QuotedStr('*' + FieldFilterCriterionCB.Text + '*')
          + ' AND ' + '[date] = ' + QuotedStr(DateToStr(Date)) + ' AND [fictitious] = False'
      // Интервал по дате
      else if DateFilterTypeCB.ItemIndex = 2 then
        DataModule2.Product_supply_view_table.Filter := FilterField + ' LIKE ' + QuotedStr('*' + FieldFilterCriterionCB.Text + '*')
          + ' AND ' + '[date] >= ' + QuotedStr(DateToStr(DateFilterDTP1.DateTime)) + ' AND [date] <= '
          + QuotedStr(DateToStr(DateFilterDTP2.DateTime)) + ' AND [fictitious] = False' ;
    end
    else if (FieldFilterAmountEdit.Text <> '') then
    begin
      // Все время
      if DateFilterTypeCB.ItemIndex = 0 then
        DataModule2.Product_supply_view_table.Filter := FilterField + FilterSign + QuotedStr(FieldFilterAmountEdit.Text)
        + ' AND [fictitious] = False'
      // Сегодня
      else if DateFilterTypeCB.ItemIndex = 1 then
        DataModule2.Product_supply_view_table.Filter := FilterField + FilterSign + QuotedStr(FieldFilterAmountEdit.Text)
          + ' AND ' + '[date] = ' + QuotedStr(DateToStr(Date)) + ' AND [fictitious] = False'
      // Интервал по дате
      else if DateFilterTypeCB.ItemIndex = 2 then
        DataModule2.Product_supply_view_table.Filter := FilterField + FilterSign + QuotedStr(FieldFilterAmountEdit.Text)
          + ' AND ' + '[date] >= ' + QuotedStr(DateToStr(DateFilterDTP1.DateTime)) + ' AND [date] <= '
          + QuotedStr(DateToStr(DateFilterDTP2.DateTime)) + ' AND [fictitious] = False' ;
    end
    else OnlyDateFilter();
  end
  else OnlyDateFilter();
  DataModule2.StatUpdate(ProductionSupplyForm);
  try DataModule2.Product_supply_view_table.GotoBookmark(LeBookmark) except end;
  DataModule2.StatUpdate(ProductionSupplyForm);
end;

// Фильтр по полю
  // Изменение типа фильтра - визуал
procedure TProductionSupplyForm.FieldFilterTypeCBChange(Sender: TObject);
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
procedure TProductionSupplyForm.FieldFilterCriterionCBChange(Sender: TObject);
begin
  SetFilter();
end;

// Фильтр по дате
  // Изменение типа фильтра - визуал
procedure TProductionSupplyForm.DateFilterTypeCBChange(Sender: TObject);
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
end;

// Поставки продукци -----------------------------------------------------------
// Разрешенные к нажатию кнопки
procedure TProductionSupplyForm.EditAmountEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in [#8, '0'..'9', #13]) then Key := #0;
  // Переход на следующий элемент ввода
  if Key = #13 then
  begin
    EditStorageOffCB.SetFocus;
    EditStorageOffCB.DropDown;
  end;
end;

// Запрет на запоминание при пустом поле
procedure TProductionSupplyForm.EditAmountEditChange(Sender: TObject);
begin
  if (Length(EditNameCB.Text) <= 0) or (Length(EditColorCB.Text) <= 0) or (Length(EditAmountEdit.Text) <= 0)
    or (StrToFloat(EditAmountEdit.Text) = 0) or (Length(EditStorageOffCB.Text) <= 0) or (Length(EditStorageFillCB.Text) <= 0)
    or (EditStorageOffCB.Text = EditStorageFillCB.Text) then
    PostButton.Enabled := False
  else PostButton.Enabled := True;
end;

// Переход на следующий элемент ввода
procedure TProductionSupplyForm.EditDateDTPKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    EditNameCB.SetFocus;
    EditNameCB.DropDown;
  end;
end;
//
procedure TProductionSupplyForm.EditNameCBKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    EditColorCB.SetFocus;
    EditColorCB.DropDown;
  end;
end;
//
procedure TProductionSupplyForm.EditColorCBKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then EditAmountEdit.SetFocus;
end;
//
procedure TProductionSupplyForm.EditStorageOffCBKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    EditStorageFillCB.SetFocus;
    EditStorageFillCB.DropDown;
  end;
end;
//
procedure TProductionSupplyForm.EditStorageFillCBKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if PostButton.Enabled = True then
      PostButton.Click;
  end;
end;

// Список поставок -------------------------------------------------------------
// Сортировка
procedure TProductionSupplyForm.PurchaseGridTitleClick(Column: TColumn);
begin
  DataModule2.Sorting(PurchaseGrid, Column);
end;

// Вкл/выкл элементов списка поставок
procedure TProductionSupplyForm.PurchaseButtonsControl(Bool: Boolean);
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
procedure TProductionSupplyForm.PurchaseCheck();
begin
  if (PositionAddButton.Enabled = True) and (Length(PurchaseEditStorageFromCB.Text) > 0)
    and (Length(PurchaseEditStorageToCB.Text) > 0)
    then PurchasePostButton.Enabled := True
  else PurchasePostButton.Enabled := False;
end;

// Запрет на запоминание при пустом поле
procedure TProductionSupplyForm.PurchaseEditNameCBCloseUp(Sender: TObject);
begin
  if (Length(PurchaseEditNameCB.Text) <= 0) or (Length(PurchaseEditColorCB.Text) <= 0) or (Length(PurchaseEditAmountEdit.Text) <= 0)
    or (StrToFloat(PurchaseEditAmountEdit.Text) = 0) or (PositionAddButton.Enabled = True) then PositionPostButton.Enabled := False
  else PositionPostButton.Enabled := True;
  PurchaseCheck();
end;
//
procedure TProductionSupplyForm.PurchaseEditStorageFromCBCloseUp(Sender: TObject);
begin
  PurchaseCheck();
end;

// Изменение даты
procedure TProductionSupplyForm.PurchaseEditDTPChange(Sender: TObject);
begin
  if DataModule2.Product_supply_buffer_table.RecordCount > 0 then
  begin
    DataModule2.Product_supply_buffer_table.First;
    while not DataModule2.Product_supply_buffer_table.EOF do
    begin
      DataModule2.Product_supply_buffer_table.Edit;
      DataModule2.Product_supply_buffer_tabledate_pb.Value := PurchaseEditDTP.Date;
      try
        DataModule2.Product_supply_buffer_table.Post;
      except
        DataModule2.Product_supply_buffer_table.Cancel;
      end;
      DataModule2.Product_supply_buffer_table.Next;
    end;
  end;
  DataModule2.PurchaseStatUpdate(ProductionSupplyForm);
end;

// Переход на следующий элемент ввода
procedure TProductionSupplyForm.PurchaseEditStorageFromCBKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    PurchaseEditStorageToCB.SetFocus;
    PurchaseEditStorageToCB.DropDown;
  end;
end;
//
procedure TProductionSupplyForm.PurchaseEditNameCBKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    PurchaseEditColorCB.SetFocus;
    PurchaseEditColorCB.DropDown;
  end;
end;
//
procedure TProductionSupplyForm.PurchaseEditColorCBKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then PurchaseEditAmountEdit.SetFocus;
end;
//
procedure TProductionSupplyForm.PurchaseEditAmountEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  DataModule2.DelimeterKeyDB(PurchaseEditAmountEdit, Key);
  // Переход на следующий элемент ввода
  if Key = #13 then
  begin
    if PositionPostButton.Enabled = True then
      PositionPostButton.Click;
  end;
end;

// Изменение курса -------------------------------------------------------------
procedure TProductionSupplyForm.ChangeRateButtonClick(Sender: TObject);
begin
  RateUpdateForm.ShowModal;
end;

// Кнопки (Редактирование) =====================================================
// Линейки в количество
procedure TProductionSupplyForm.Label9Click(Sender: TObject);
begin
  DataModule2.AmountMultiply(EditAmountEdit);
end;

// Новый список продаж
procedure TProductionSupplyForm.N2Click(Sender: TObject);
begin
  PurchaseEditStorageFromCB.KeyValue := NULL;
  PurchaseEditStorageToCB.KeyValue := NULL;
  PurchaseEditDTP.Date := Date;
  if DefaultFieldsParam = True then
  begin
    PurchaseEditStorageToCB.KeyValue := 1;
    PurchaseEditStorageFromCB.KeyValue := 2;
  end;
  // Интерфейс {
  ProductionSupplyMainPanel.Visible := False;
  DataModule2.EditBlock(ToolBar, False, 7);
  PurchaseEditPanel.Visible := True;
  ToolBar.Buttons[1].Caption := LabelDot + LabelList;
  // } Интерфейс
  DataModule2.PurchaseStatUpdate(ProductionSupplyForm);
  if DefaultFieldsParam = False then
    PurchaseEditStorageFromCB.SetFocus;
end;

// Новый
procedure TProductionSupplyForm.AddButtonClick(Sender: TObject);
begin
  // Интерфейс {
  BoxColorActive(False);
  ProductSupplyGrid.Enabled := False;
  FilterPanel.Enabled := False;
  SearchPanel.Enabled := False;
  DataModule2.EditBlock(ToolBar, False, 7);
  EditBox.Caption := 'Новая запись поставки продукции';
  EditPanel.Visible := True;
  SearchPanel.Top := 0;
  FilterPanel.Top := 0;
  ToolBar.Buttons[2].Caption := LabelDot + LabelAdd;
  EditDateDTP.Date := Date;
  // } Интерфейс
  if DataModule2.Product_supply_table.State in [dsBrowse] then
    DataModule2.Product_supply_table.Append;
  if DefaultFieldsParam = True then
  begin
    DataModule2.Product_supply_tableid_sl_to.Value := 1;
    DataModule2.Product_supply_tableid_sl_from.Value := 2;
  end;
  // Интерфейс {
  EditNameCB.SetFocus;
  DataModule2.PanelHighlight(EditBox);
  // } Интерфейс
end;

// Изменить
procedure TProductionSupplyForm.EditButtonClick(Sender: TObject);
begin
  if DataModule2.Product_supply_table.State in [dsBrowse] then
    if DataModule2.Product_supply_table.RecordCount > 0 then
    begin
      try
        EditDateDTP.Date := DataModule2.Product_supply_tabledate_ps.Value;
        DataModule2.Product_supply_table.Edit;
      except
        DataModule2.Sales_table.Cancel;
      end;
      // Интерфейс {
      BoxColorActive(False);
//      PostButton.Enabled := True;
      ProductSupplyGrid.Enabled := False;
      FilterPanel.Enabled := False;
      SearchPanel.Enabled := False;
      PostButton.Enabled := True;
      DataModule2.EditBlock(ToolBar, False, 7);
      EditBox.Caption := 'Изменение записи поставки продукции';
      EditPanel.Visible := True;
      SearchPanel.Top := 0;
      FilterPanel.Top := 0;
      ToolBar.Buttons[3].Caption := LabelDot + LabelEdit;
      DataModule2.PanelHighlight(EditBox);
      // } Интерфейс
    end;
end;

// Удалить
procedure TProductionSupplyForm.DeleteButtonClick(Sender: TObject);
begin
  // Интерфейс {
  DataModule2.EditBlock(ToolBar, False, 7);
  ToolBar.Buttons[4].Caption := LabelDot + LabelDelete;
  // } Интерфейс
  DataModule2.DeleteRecord(DataModule2.Product_supply_table);
  // Интерфейс {
  DataModule2.EditBlock(ToolBar, True, 7);
  ToolBar.Buttons[4].Caption := LabelDelete;
  // } Интерфейс
end;
//
procedure TProductionSupplyForm.ProductSupplyGridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
    DeleteButton.Click;
end;

// Запомнить -------------------------------------------------------------------
procedure TProductionSupplyForm.PostButtonClick(Sender: TObject);
begin
  if DataModule2.Product_supply_table.State in [dsInsert, dsEdit] then
  begin
    try
      DataModule2.Product_supply_tabledate_ps.Value := EditDateDTP.Date;
      DataModule2.Product_supply_tablefictitious_ps.Value := False;
      DataModule2.Product_supply_tableid_e.Value := LoginIdParam;
      DataModule2.Product_supply_table.Post;
    except
      DataModule2.Product_supply_table.Cancel;
    end;
  end;
  // Интерфейс {
  BoxColorActive(True);
  ProductSupplyGrid.Enabled := True;
  FilterPanel.Enabled := True;
  SearchPanel.Enabled := True;
  DataModule2.EditBlock(ToolBar, True, 7);
  EditPanel.Visible := False;
  ToolBar.Buttons[2].Caption := LabelAdd;
  ToolBar.Buttons[3].Caption := LabelEdit;
  // } Интерфейс
end;

// Отменить --------------------------------------------------------------------
procedure TProductionSupplyForm.CancelButtonClick(Sender: TObject);
begin
  if DataModule2.Product_supply_table.State in [dsInsert, dsEdit] then
    DataModule2.Product_supply_table.Cancel;
  // Интерфейс {
  BoxColorActive(True);
  ProductSupplyGrid.Enabled := True;
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
procedure TProductionSupplyForm.PurchasePostButtonClick(Sender: TObject);
begin
  if MyMessageDlg('Запомнить список поставок?', mtConfirmation, [mbYes, mbNo], ['Да','Нет'], 'Подтверждение') = mrYes then
  begin
    if DataModule2.Product_supply_buffer_table.RecordCount > 0 then
    begin
      DataModule2.Product_supply_buffer_table.First;
      while not DataModule2.Product_supply_buffer_table.EOF do
      begin
        DataModule2.Product_supply_table.Append;
        DataModule2.Product_supply_tabledate_ps.Value := DataModule2.Product_supply_buffer_tabledate_pb.Value;
        DataModule2.Product_supply_tableid_pl.Value := DataModule2.Product_supply_buffer_tableid_pl.Value;
        DataModule2.Product_supply_tableid_pc.Value := DataModule2.Product_supply_buffer_tableid_pc.Value;
        DataModule2.Product_supply_tableamount_ps.Value := DataModule2.Product_supply_buffer_tableamount_ps.Value;
        DataModule2.Product_supply_tableid_sl_from.Value := PurchaseEditStorageFromCB.KeyValue;
        DataModule2.Product_supply_tableid_sl_to.Value := PurchaseEditStorageToCB.KeyValue;
        DataModule2.Product_supply_tablefictitious_ps.Value := False;
        DataModule2.Product_supply_tableid_e.Value := LoginIdParam;
        try
          DataModule2.Product_supply_table.Post;
        except
          DataModule2.Product_supply_table.Cancel;
        end;
        DataModule2.Product_supply_buffer_table.Next;
      end;
      DataModule2.ClearTable(DataModule2.Product_supply_buffer_table);
      DataModule2.StatUpdate(ProductionSupplyForm);
    end;
    // Интерфейс {
    ProductionSupplyMainPanel.Visible := True;
    DataModule2.EditBlock(ToolBar, True, 7);
    ToolBar.Buttons[4].Enabled := True;
    PurchaseEditPanel.Visible := False;
    ToolBar.Buttons[1].Caption := LabelList;
    // } Интерфейс
  end;
end;

// Отменить список
procedure TProductionSupplyForm.PurchaseCancelButtonClick(Sender: TObject);
begin
  if MyMessageDlg('Отменить список поставок?', mtConfirmation, [mbYes, mbNo], ['Да','Нет'], 'Подтверждение') = mrYes then
  begin
    DataModule2.ClearTable(DataModule2.Product_supply_buffer_table);
    // Интерфейс {
    ProductionSupplyMainPanel.Visible := True;
    DataModule2.EditBlock(ToolBar, True, 7);
    ToolBar.Buttons[4].Enabled := True;
    PurchaseEditPanel.Visible := False;
    ToolBar.Buttons[1].Caption := LabelList;
    // } Интерфейс
  end;
end;

// Добавить
procedure TProductionSupplyForm.PositionAddButtonClick(Sender: TObject);
begin
  PurchaseButtonsControl(False);
  if DataModule2.Product_supply_buffer_table.State in [dsBrowse] then
    DataModule2.Product_supply_buffer_table.Append;
  PurchaseEditNameCB.DropDown;
  PurchaseEditNameCB.SetFocus;
end;

// Изменить
procedure TProductionSupplyForm.PositionEditButtonClick(Sender: TObject);
begin
  if DataModule2.Product_supply_buffer_table.State in [dsBrowse] then
    if DataModule2.Product_supply_buffer_table.RecordCount > 0 then
    begin
      PurchaseButtonsControl(False);
      PositionPostButton.Enabled := True;
      DataModule2.Product_supply_buffer_table.Edit;
    end;
end;

// Удалить
procedure TProductionSupplyForm.PositionDeleteButtonClick(Sender: TObject);
begin
  DataModule2.DeleteRecord(DataModule2.Product_supply_buffer_table);
  PurchaseCheck();
end;
//
procedure TProductionSupplyForm.PurchaseGridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
    PositionDeleteButton.Click;
end;

// Запомнить
procedure TProductionSupplyForm.PositionPostButtonClick(Sender: TObject);
begin
  PurchaseButtonsControl(True);
  if DataModule2.Product_supply_buffer_table.State in [dsInsert, dsEdit] then
  begin
    try
      DataModule2.Product_supply_buffer_tabledate_pb.Value := PurchaseEditDTP.Date;
      DataModule2.Product_supply_buffer_table.Post;
    except
      DataModule2.Product_supply_buffer_table.Cancel;
    end;
  end;
  PurchaseCheck();
end;
//
procedure TProductionSupplyForm.PositionPostButtonDblClick(Sender: TObject);
begin
  PositionPostButton.Click;
  PositionAddButton.Click;
end;

// Отменить
procedure TProductionSupplyForm.PositionCancelButtonClick(Sender: TObject);
begin
  PurchaseButtonsControl(True);
  if DataModule2.Product_supply_buffer_table.State in [dsInsert, dsEdit] then
    DataModule2.Product_supply_buffer_table.Cancel;
  PurchaseCheck();
end;

// Кнопки ======================================================================
// Фильтрация ------------------------------------------------------------------
procedure TProductionSupplyForm.FilterButtonClick(Sender: TObject);
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
  ProductionFilterParam := DataModule2.BoxShow(FilterPanel, nil, nil, ToolBar, 5, LabelFilter, True);
  FilterPanel.Top := 0;
  SearchPanel.Top := 69;
  DataModule2.PanelHighlightDouble(FieldFilterBox, DateFilterBox);
  // } Интерфейс
end;

// Поиск -----------------------------------------------------------------------
procedure TProductionSupplyForm.SearchMenuButtonClick(Sender: TObject);
begin
  // Интерфейс {
  SearchFieldCB.ItemIndex := 0;
  SearchCriterionEdit.Text := '';
  ProductionSearchParam := DataModule2.BoxShow(SearchPanel, SearchBox, StatBox, ToolBar, 6, LabelSearch, False);
  FilterPanel.Top := 0;
  SearchPanel.Top := 69;
  SearchBox.Left := 0;
  DataModule2.PanelHighlight(SearchBox);
  // } Интерфейс
end;

// Сиатистика ------------------------------------------------------------------
procedure TProductionSupplyForm.StatButtonClick(Sender: TObject);
begin
  // Интерфейс {
  ProductionStatParam := DataModule2.BoxShow(SearchPanel, StatBox, SearchBox, ToolBar, 7, LabelStat, False);
  if FilterPanel.Visible = True then
  begin
    FilterPanel.Top := 0;
  end;
  SearchBox.Left := 0;
  DataModule2.PanelHighlight(StatBox);
  // } Интерфейс
end;

// Искать
procedure TProductionSupplyForm.SearchButtonClick(Sender: TObject);
var
  SearchField: string;
begin
  case SearchFieldCB.ItemIndex of
    0: SearchField := '[name_p]';
    1: SearchField := '[name_pt]';
    2: SearchField := '[name_pc]';
    3: SearchField := '[amount]';
    4: SearchField := '[storage_from]';
    5: SearchField := '[storage_to]';
    6: SearchField := '[proceeds_sort]';
    7: SearchField := '[cost_price_sort]';
    8: SearchField := '[added_value_sort]';
    9: SearchField := '[name_e]';
  end;
  if SearchFieldCB.ItemIndex in [0,1,2,4,5,9] then
    DataModule2.Product_supply_view_table_search.Filter := DataModule2.Product_supply_view_table.Filter + ' AND ' + SearchField +
    ' LIKE ' + QuotedStr(SearchCriterionEdit.Text+'*')
  else
    DataModule2.Product_supply_view_table_search.Filter := DataModule2.Product_supply_view_table.Filter + ' AND ' + SearchField +
    ' = ' + QuotedStr(FloatToStr(StrToFloat(SearchCriterionEdit.Text)));
  if (FirstSearch = True) then
    DataModule2.Product_supply_view_table_search.First ;
  if not DataModule2.Product_supply_view_table.Locate('id_ps', DataModule2.Product_supply_view_table_search.FieldByName('id_ps').Value, []) then
    MyMessageDlg('Запись не найдена!', mtInformation, [mbYes], ['ОК'], 'Результаты поиска');
  DataModule2.Product_supply_view_table_search.Next;
  if DataModule2.Product_supply_view_table_search.EOF = True then FirstSearch := True
  else FirstSearch := False;
end;
// Запрет поиска при пустом поле
procedure TProductionSupplyForm.SearchCriterionEditChange(Sender: TObject);
begin
  if (Length(SearchCriterionEdit.Text) = 0) then SearchButton.Enabled := False
  else SearchButton.Enabled := True;
  FirstSearch := True;
end;
// Разрешенные к вводу символы
procedure TProductionSupplyForm.SearchCriterionEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if SearchFieldCB.ItemIndex in [6,7,8] then
    DataModule2.DelimeterKey(SearchCriterionEdit, Key)
  else if SearchFieldCB.ItemIndex = 3 then
    if not (Key in [#8, '0'..'9', #13]) then Key := #0;
end;
// Расширенный поиск
procedure TProductionSupplyForm.ExtendedSearchButtonClick(Sender: TObject);
begin
  Label60.Enabled := False;
  Label31.Enabled := False;
  SearchFieldCB.Enabled := False;
  SearchCriterionEdit.Enabled := False;
  SearchCriterionEdit.Text := '';
  ProductionSearchForm := TProductionSearchForm.Create(Self);
  ExtendedSearchButton.Enabled := False;
  ProductionSearchForm.Show;
end;
// Очистка поля поиска при переключени типа поиска
procedure TProductionSupplyForm.SearchFieldCBChange(Sender: TObject);
begin
  SearchCriterionEdit.Text := '';
end;

end.
