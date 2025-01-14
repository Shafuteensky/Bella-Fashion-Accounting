unit MaterialSupplyUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Menus, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.ToolWin;

type
  TMaterialSupplyForm = class(TForm)
    MaterialSupplyPanel: TPanel;
    ToolsPanel: TPanel;
    FilterPanel: TPanel;
    Filler2: TGroupBox;
    EditPanel: TPanel;
    EditBox: TGroupBox;
    Filler1: TGroupBox;
    SearchPanel: TPanel;
    Filler3: TGroupBox;
    Menu: TMainMenu;
    AddButton: TMenuItem;
    EditButton: TMenuItem;
    DeleteButton: TMenuItem;
    SearchMenuButton: TMenuItem;
    FilterButton: TMenuItem;
    StatButton: TMenuItem;
    MaterialSupplyGrid: TDBGrid;
    N1: TMenuItem;
    StatBox: TGroupBox;
    StatGridPanel: TGridPanel;
    Label7: TLabel;
    CostLabel: TLabel;
    Label9: TLabel;
    AmountLabel: TLabel;
    EditGridPanel: TGridPanel;
    Label4: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    EditDateDTP: TDateTimePicker;
    EditNameCB: TDBLookupComboBox;
    EditColorCB: TDBLookupComboBox;
    EditAmountEdit: TDBEdit;
    EditManufactoryCB: TDBLookupComboBox;
    PostButton: TButton;
    CancelButton: TButton;
    FieldFilterBox: TGroupBox;
    FieldFilterGridPanel: TGridPanel;
    Label6: TLabel;
    FilterCriterionLabel: TLabel;
    FieldFilterTypeCB: TComboBox;
    FilterAmountLabel: TLabel;
    FieldFilterAmountEdit: TEdit;
    FieldFilterSignCB: TComboBox;
    SearchBox: TGroupBox;
    SearchGridPanel: TGridPanel;
    Label60: TLabel;
    Label31: TLabel;
    SearchCriterionEdit: TEdit;
    SearchButton: TButton;
    ExtendedSearchButton: TButton;
    SearchFieldCB: TComboBox;
    DateFilterBox: TGroupBox;
    DateFilterGridPanel: TGridPanel;
    Label14: TLabel;
    DateFilterTypeCB: TComboBox;
    FilterDateLabel: TLabel;
    DateFilterDTP1: TDateTimePicker;
    DateFilterDTP2: TDateTimePicker;
    ToolBar: TToolBar;
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
    PositionPostButton: TButton;
    PositionCancelButton: TButton;
    GroupBox2: TGroupBox;
    PopupMenu: TPopupMenu;
    MenuItem1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N2: TMenuItem;
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
    Label17: TLabel;
    Label21: TLabel;
    PurchaseEditDTP: TDateTimePicker;
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
    GroupBox1: TGroupBox;
    PurchaseEditGridPanel: TGridPanel;
    Label2: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    PurchaseEditNameCB: TDBLookupComboBox;
    PurchaseEditColorCB: TDBLookupComboBox;
    PurchaseEditAmountEdit: TDBEdit;
    procedure AddButtonClick(Sender: TObject);
    procedure EditButtonClick(Sender: TObject);
    procedure DeleteButtonClick(Sender: TObject);
    procedure SearchMenuButtonClick(Sender: TObject);
    procedure FilterButtonClick(Sender: TObject);
    procedure StatButtonClick(Sender: TObject);
    procedure PostButtonClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ExtendedSearchButtonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LoadButStates();
    procedure FieldFilterTypeCBChange(Sender: TObject);
    procedure DateFilterTypeCBChange(Sender: TObject);
    procedure EditAmountEditKeyPress(Sender: TObject; var Key: Char);
    procedure EditAmountEditChange(Sender: TObject);
    procedure EditDateDTPKeyPress(Sender: TObject; var Key: Char);
    procedure EditNameCBKeyPress(Sender: TObject; var Key: Char);
    procedure EditColorCBKeyPress(Sender: TObject; var Key: Char);
    procedure EditManufactoryCBKeyPress(Sender: TObject; var Key: Char);
    procedure MaterialSupplyGridTitleClick(Column: TColumn);
    procedure N2Click(Sender: TObject);
    procedure PurchaseCancelButtonClick(Sender: TObject);
    procedure PurchasePostButtonClick(Sender: TObject);
    procedure PositionAddButtonClick(Sender: TObject);
    procedure PositionEditButtonClick(Sender: TObject);
    procedure PositionDeleteButtonClick(Sender: TObject);
    procedure PositionPostButtonClick(Sender: TObject);
    procedure PositionCancelButtonClick(Sender: TObject);
    procedure PurchaseButtonsControl(Bool: Boolean);
    procedure PurchaseEditNameCBCloseUp(Sender: TObject);
    procedure PurchaseCheck();
    procedure PurchaseEditStorageCBCloseUp(Sender: TObject);
    procedure PurchaseGridTitleClick(Column: TColumn);
    procedure PurchaseEditDTPChange(Sender: TObject);
    procedure PurchaseEditNameCBKeyPress(Sender: TObject; var Key: Char);
    procedure PurchaseEditColorCBKeyPress(Sender: TObject; var Key: Char);
    procedure PurchaseEditAmountEditKeyPress(Sender: TObject; var Key: Char);
    procedure SearchButtonClick(Sender: TObject);
    procedure SearchCriterionEditChange(Sender: TObject);
    procedure SearchFieldCBChange(Sender: TObject);
    procedure SearchCriterionEditKeyPress(Sender: TObject; var Key: Char);
    procedure BoxColorActive(Bool: Boolean);
    procedure FieldFilterCriterionCBChange(Sender: TObject);
    procedure SetFilter();
    procedure FieldFilterAmountEditKeyPress(Sender: TObject; var Key: Char);
    procedure ChangeRateButtonClick(Sender: TObject);
    procedure PurchaseGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaterialSupplyGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaterialSupplyGridMouseEnter(Sender: TObject);
    procedure PurchaseGridMouseEnter(Sender: TObject);
    procedure MaterialSupplyGridDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure PurchaseGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialSupplyForm: TMaterialSupplyForm;
    // Первый ли поиск
    FirstSearch: Boolean = True;

implementation

{$R *.dfm}

uses DataModule, MaterialSupplySearchUnit, MainPage, RateUpdateUnit;

// Процедуры ===================================================================
// Общие
// Фокус на таблицу при наведении мышкой
procedure TMaterialSupplyForm.MaterialSupplyGridMouseEnter(Sender: TObject);
begin
  MaterialSupplyGrid.SetFocus;
end;
//
procedure TMaterialSupplyForm.PurchaseGridMouseEnter(Sender: TObject);
begin
  PurchaseGrid.SetFocus;
end;

// Закрашивание ячеек без курса на дату
procedure TMaterialSupplyForm.PurchaseGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  DataModule2.GridDrawColumnCell(Rect, DataCol, Column, State, DataModule2.Material_supply_buffer_view_table, PurchaseGrid,
    'material_supply_buffer_view_usd', 'cost');
end;
procedure TMaterialSupplyForm.MaterialSupplyGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  DataModule2.GridDrawColumnCell(Rect, DataCol, Column, State, DataModule2.Material_supply_view_table, MaterialSupplyGrid,
    'material_supply_view_usd', 'cost');
end;

// Серые панели, пока неактивны
procedure TMaterialSupplyForm.BoxColorActive(Bool: Boolean);
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

// Загрузить состояния кнопок
procedure TMaterialSupplyForm.LoadButStates();
begin
  if SaveButStateParam = True then
  begin
    if MaterialFilterParam = True then
    begin
      // Интерфейс {
      DataModule2.BoxShow(FilterPanel, nil, nil, ToolBar, 5, LabelFilter, True);
      SearchPanel.Top := 69;
      FilterPanel.Top := 0;
      // } Интерфейс
      DateFilterDTP1.Date := Date;
      DateFilterDTP2.Date := Date;
    end;
    if MaterialSearchParam = True then
    begin
      // Интерфейс {
      DataModule2.BoxShow(SearchPanel, SearchBox, StatBox, ToolBar, 6, LabelSearch, False);
      // } Интерфейс
    end;
    if MaterialStatParam = True then
    begin
      // Интерфейс {
      DataModule2.BoxShow(SearchPanel, StatBox, SearchBox, ToolBar, 7, LabelStat, False);
      SearchPanel.Top := 69;
      FilterPanel.Top := 0;
      // } Интерфейс
    end;
  end;
end;

// Показ формы
procedure TMaterialSupplyForm.FormShow(Sender: TObject);
begin
  // Загрузка состояний
  LoadButStates();
  DataModule2.StatUpdate(MaterialSupplyForm);
end;

// Активация формы
procedure TMaterialSupplyForm.FormActivate(Sender: TObject);
begin
  // Загрузка состояний
  if FirstActivation = True then
  begin
    LoadButStates();
    FirstActivation := False;
  end;
end;

// Уничтожение формы
procedure TMaterialSupplyForm.FormDestroy(Sender: TObject);
begin
  if EditPanel.Visible = True then
    CancelButton.Click;       
end;

// Разрешенные к нажатию кнопки
  // Фильтр (числовое поле)
procedure TMaterialSupplyForm.FieldFilterAmountEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  DataModule2.DelimeterKey(FieldFilterAmountEdit, Key);
end;

// Фильтрация ------------------------------------------------------------------
// Установка фильтра
procedure TMaterialSupplyForm.SetFilter();
var
  FilterField: string;
  FilterSign: string;
  LeBookmark: TBookmark;
  // Только фиьтр по дате
  procedure OnlyDateFilter();
  begin
    // Все время
    if DateFilterTypeCB.ItemIndex = 0 then
      DataModule2.Material_supply_view_table.Filter := ''
    // Сегодня
    else if DateFilterTypeCB.ItemIndex = 1 then
      DataModule2.Material_supply_view_table.Filter := '[date] = ' + QuotedStr(DateToStr(Date))
    // Интервал по дате
    else if DateFilterTypeCB.ItemIndex = 2 then
      DataModule2.Material_supply_view_table.Filter := '[date] >= ' + QuotedStr(DateToStr(DateFilterDTP1.DateTime)) + ' AND [date] <= '
        + QuotedStr(DateToStr(DateFilterDTP2.DateTime));
  end;
begin
  LeBookmark := DataModule2.Material_supply_view_table.GetBookmark;
  FirstSearch := True;
  DataModule2.Material_supply_view_table.First;
  // Установка строки фильтра
  case FieldFilterTypeCB.ItemIndex of
    0: FilterField := '';
    // Текстовые
    1: FilterField := '[name_m]';
    2: FilterField := '[name_mt]';
    3: FilterField := '[name_mc]';
    5: FilterField := '[name_sl]';
    7: FilterField := '[name_e]';
    // Числовые
    4: FilterField := '[amount]';
    6: FilterField := '[cost_sort]';
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
        DataModule2.Material_supply_view_table.Filter := FilterField + ' LIKE ' + QuotedStr('*' + FieldFilterCriterionCB.Text + '*')
      // Сегодня
      else if DateFilterTypeCB.ItemIndex = 1 then
        DataModule2.Material_supply_view_table.Filter := FilterField + ' LIKE ' + QuotedStr('*' + FieldFilterCriterionCB.Text + '*')
          + ' AND ' + '[date] = ' + QuotedStr(DateToStr(Date))
      // Интервал по дате
      else if DateFilterTypeCB.ItemIndex = 2 then
        DataModule2.Material_supply_view_table.Filter := FilterField + ' LIKE ' + QuotedStr('*' + FieldFilterCriterionCB.Text + '*')
          + ' AND ' + '[date] >= ' + QuotedStr(DateToStr(DateFilterDTP1.DateTime)) + ' AND [date] <= '
          + QuotedStr(DateToStr(DateFilterDTP2.DateTime));
    end
    else if (FieldFilterAmountEdit.Text <> '') then
    begin
      // Все время
      if DateFilterTypeCB.ItemIndex = 0 then
        DataModule2.Material_supply_view_table.Filter := FilterField + FilterSign + QuotedStr(FieldFilterAmountEdit.Text)
      // Сегодня
      else if DateFilterTypeCB.ItemIndex = 1 then
        DataModule2.Material_supply_view_table.Filter := FilterField + FilterSign + QuotedStr(FieldFilterAmountEdit.Text)
          + ' AND ' + '[date] = ' + QuotedStr(DateToStr(Date))
      // Интервал по дате
      else if DateFilterTypeCB.ItemIndex = 2 then
        DataModule2.Material_supply_view_table.Filter := FilterField + FilterSign + QuotedStr(FieldFilterAmountEdit.Text)
          + ' AND ' + '[date] >= ' + QuotedStr(DateToStr(DateFilterDTP1.DateTime)) + ' AND [date] <= '
          + QuotedStr(DateToStr(DateFilterDTP2.DateTime));
    end
    else OnlyDateFilter();
  end
  else OnlyDateFilter();
  try DataModule2.Material_supply_view_table.GotoBookmark(LeBookmark) except end;
  DataModule2.StatUpdate(MaterialSupplyForm);
end;

// Фильтр по полю
  // Изменение типа фильтра - визуал
procedure TMaterialSupplyForm.FieldFilterTypeCBChange(Sender: TObject);
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
  else if (FieldFilterTypeCB.ItemIndex = 4) or (FieldFilterTypeCB.ItemIndex = 6) then VisualControl(False, True)
  // Текстовые
  else VisualControl(True, False);
end;
  // Изменение критерия фильтрации
procedure TMaterialSupplyForm.FieldFilterCriterionCBChange(Sender: TObject);
begin
  SetFilter();
end;

// Фильтр по дате
  // Изменение типа фильтра - визуал
procedure TMaterialSupplyForm.DateFilterTypeCBChange(Sender: TObject);
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

// Поставки материалов ---------------------------------------------------------
// Сортировка
procedure TMaterialSupplyForm.MaterialSupplyGridTitleClick(Column: TColumn);
begin
  DataModule2.Sorting(MaterialSupplyGrid, Column);
end;

// Разрешенные к нажатию кнопки
procedure TMaterialSupplyForm.EditAmountEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  DataModule2.DelimeterKeyDB(EditAmountEdit, Key);
  // Переход на следующий элемент ввода
  if Key = #13 then
  begin
    EditManufactoryCB.SetFocus;
    EditManufactoryCB.DropDown;
  end;
end;

// Запрет на запоминание при пустом поле
procedure TMaterialSupplyForm.EditAmountEditChange(Sender: TObject);
begin
  if (Length(EditAmountEdit.Text) <= 0) or (Length(EditColorCB.Text) <= 0) or (Length(EditNameCB.Text) <= 0)
    or (StrToFloat(EditAmountEdit.Text) = 0) or (Length(EditManufactoryCB.Text) <= 0) then PostButton.Enabled := False
  else PostButton.Enabled := True;
end;

// Переход на следующий элемент ввода
procedure TMaterialSupplyForm.EditDateDTPKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    EditNameCB.SetFocus;
    EditNameCB.DropDown;
  end;
end;
//
procedure TMaterialSupplyForm.EditNameCBKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    EditColorCB.SetFocus;
    EditColorCB.DropDown;
  end;
end;
//
procedure TMaterialSupplyForm.EditColorCBKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then EditAmountEdit.SetFocus;
end;
//
procedure TMaterialSupplyForm.EditManufactoryCBKeyPress(Sender: TObject;
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
procedure TMaterialSupplyForm.PurchaseGridTitleClick(Column: TColumn);
begin
  DataModule2.Sorting(PurchaseGrid, Column);
end;

// Вкл/выкл элементов списка поставок
procedure TMaterialSupplyForm.PurchaseButtonsControl(Bool: Boolean);
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
  Label17.Enabled := Bool;
  PurchaseEditDTP.Enabled := Bool;
  if Bool = True then PositionPostButton.Enabled := False
    else PurchasePostButton.Enabled := False;
end;

// Проверка - можно ли запомнить список
procedure TMaterialSupplyForm.PurchaseCheck();
begin
  if (PositionAddButton.Enabled = True) and (Length(PurchaseEditStorageCB.Text) > 0)
    then PurchasePostButton.Enabled := True
  else PurchasePostButton.Enabled := False;
end;

// Запрет на запоминание при пустом поле
procedure TMaterialSupplyForm.PurchaseEditNameCBCloseUp(Sender: TObject);
begin
  if (Length(PurchaseEditNameCB.Text) <= 0) or (Length(PurchaseEditColorCB.Text) <= 0) or (Length(PurchaseEditAmountEdit.Text) <= 0)
    or (StrToFloat(PurchaseEditAmountEdit.Text) = 0) or (PositionAddButton.Enabled = True) then PositionPostButton.Enabled := False
  else PositionPostButton.Enabled := True;
  PurchaseCheck();
end;
//
procedure TMaterialSupplyForm.PurchaseEditStorageCBCloseUp(Sender: TObject);
begin
  PurchaseCheck();
end;

// Изменение даты
procedure TMaterialSupplyForm.PurchaseEditDTPChange(Sender: TObject);
begin
  DataModule2.Material_supply_buffer_table.DisableControls;
  PurchaseGrid.Enabled := False;
  if DataModule2.Material_supply_buffer_table.RecordCount > 0 then
  begin
    DataModule2.Material_supply_buffer_table.First;
    while not DataModule2.Material_supply_buffer_table.EOF do
    begin
      DataModule2.Material_supply_buffer_table.Edit;
      DataModule2.Material_supply_buffer_tabledate_mb.Value := PurchaseEditDTP.Date;
      try
        DataModule2.Material_supply_buffer_table.Post;
      except
        DataModule2.Material_supply_buffer_table.Cancel;
      end;
      DataModule2.Material_supply_buffer_table.Next;
    end;
  end;
  DataModule2.Material_supply_buffer_table.EnableControls;
  DataModule2.PurchaseStatUpdate(MaterialSupplyForm);
  PurchaseGrid.Enabled := True;
end;

// Переход на следующий элемент ввода
procedure TMaterialSupplyForm.PurchaseEditNameCBKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    PurchaseEditColorCB.SetFocus;
    PurchaseEditColorCB.DropDown;
  end;
end;
//
procedure TMaterialSupplyForm.PurchaseEditColorCBKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then PurchaseEditAmountEdit.SetFocus;
end;
//
procedure TMaterialSupplyForm.PurchaseEditAmountEditKeyPress(Sender: TObject;
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
procedure TMaterialSupplyForm.ChangeRateButtonClick(Sender: TObject);
begin
  RateUpdateForm.ShowModal;
end;

// Кнопки (Редактирование) =====================================================
// Новый список продаж
procedure TMaterialSupplyForm.N2Click(Sender: TObject);
begin
  PurchaseEditStorageCB.KeyValue := NULL;
  PurchaseEditDTP.Date := Date;
  if DefaultFieldsParam = True then
    PurchaseEditStorageCB.KeyValue := 2;
  // Интерфейс {
  MaterialSupplyPanel.Visible := False;
  DataModule2.EditBlock(ToolBar, False, 7);
  PurchaseEditPanel.Visible := True;
  ToolBar.Buttons[1].Caption := LabelDot + LabelList;
  // } Интерфейс
  DataModule2.PurchaseStatUpdate(MaterialSupplyForm);
  if DefaultFieldsParam = False then
    PurchaseEditStorageCB.SetFocus;
end;

// Новый
procedure TMaterialSupplyForm.AddButtonClick(Sender: TObject);
begin
  // Интерфейс {
  BoxColorActive(False);
  MaterialSupplyGrid.Enabled := False;
  FilterPanel.Enabled := False;
  SearchPanel.Enabled := False;
  DataModule2.EditBlock(ToolBar, False, 7);
  EditBox.Caption := 'Новая запись поставки материала';
  EditPanel.Visible := True;
  SearchPanel.Top := 0;
  FilterPanel.Top := 0;
  ToolBar.Buttons[2].Caption := LabelDot + LabelAdd;
  EditDateDTP.Date := Date;
  // } Интерфейс
  if DataModule2.Material_supply_table.State in [dsBrowse] then
    DataModule2.Material_supply_table.Append;
  if DefaultFieldsParam = True then
    DataModule2.Material_supply_tableid_sl_to.Value := 2;
  // Интерфейс {
  EditNameCB.SetFocus;
  DataModule2.PanelHighlight(EditBox);
  // } Интерфейс
end;

// Изменить
procedure TMaterialSupplyForm.EditButtonClick(Sender: TObject);
begin
  if DataModule2.Material_supply_table.State in [dsBrowse] then
    if DataModule2.Material_supply_table.RecordCount > 0 then
    begin
      try
        EditDateDTP.Date := DataModule2.Material_supply_tabledate_ms.Value;
        DataModule2.Material_supply_table.Edit;
      except
        DataModule2.Sales_table.Cancel;
      end;
      // Интерфейс {
      BoxColorActive(False);
//      PostButton.Enabled := True;
      MaterialSupplyGrid.Enabled := False;
      FilterPanel.Enabled := False;
      SearchPanel.Enabled := False;
      PostButton.Enabled := True;
      DataModule2.EditBlock(ToolBar, False, 7);
      EditBox.Caption := 'Изменение записи поставки материала';
      EditPanel.Visible := True;
      SearchPanel.Top := 0;
      FilterPanel.Top := 0;
      ToolBar.Buttons[3].Caption := LabelDot + LabelEdit;
      DataModule2.PanelHighlight(EditBox);
      // } Интерфейс
    end;
end;

// Удалить
procedure TMaterialSupplyForm.DeleteButtonClick(Sender: TObject);
begin
  // Интерфейс {
  DataModule2.EditBlock(ToolBar, False, 7);
  ToolBar.Buttons[4].Caption := LabelDot + LabelDelete;
  // } Интерфейс
  DataModule2.DeleteRecord(DataModule2.Material_supply_table);
  // Интерфейс {
  DataModule2.EditBlock(ToolBar, True, 7);
  ToolBar.Buttons[4].Caption := LabelDelete;
  // } Интерфейс
end;
//
procedure TMaterialSupplyForm.MaterialSupplyGridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
    DeleteButton.Click;
end;

// Заpпомнить
procedure TMaterialSupplyForm.PostButtonClick(Sender: TObject);
begin
  if DataModule2.Material_supply_table.State in [dsInsert, dsEdit] then
  begin
    try
      DataModule2.Material_supply_tabledate_ms.Value := EditDateDTP.Date;
      DataModule2.Material_supply_tableid_e.Value := LoginIdParam;
      DataModule2.Material_supply_table.Post;
    except
      DataModule2.Material_supply_table.Cancel;
    end;
  end;
  // Интерфейс {
  BoxColorActive(True);
  MaterialSupplyGrid.Enabled := True;
  FilterPanel.Enabled := True;
  SearchPanel.Enabled := True;
  DataModule2.EditBlock(ToolBar, True, 7);
  EditPanel.Visible := False;
  ToolBar.Buttons[2].Caption := LabelAdd;
  ToolBar.Buttons[3].Caption := LabelEdit;
  // } Интерфейс
end;

// Отменить
procedure TMaterialSupplyForm.CancelButtonClick(Sender: TObject);
begin
  if DataModule2.Material_supply_table.State in [dsInsert, dsEdit] then
    DataModule2.Material_supply_table.Cancel;
  // Интерфейс {
  BoxColorActive(True);
  MaterialSupplyGrid.Enabled := True;
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
procedure TMaterialSupplyForm.PurchasePostButtonClick(Sender: TObject);
begin
  if MyMessageDlg('Запомнить список поставок?', mtConfirmation, [mbYes, mbNo], ['Да','Нет'], 'Подтверждение') = mrYes then
  begin
    if DataModule2.Material_supply_buffer_table.RecordCount > 0 then
    begin
      DataModule2.Material_supply_buffer_table.First;
      while not DataModule2.Material_supply_buffer_table.EOF do
      begin
        DataModule2.Material_supply_table.Append;
        DataModule2.Material_supply_tabledate_ms.Value := DataModule2.Material_supply_buffer_tabledate_mb.Value;
        DataModule2.Material_supply_tableid_ml.Value := DataModule2.Material_supply_buffer_tableid_ml.Value;
        DataModule2.Material_supply_tableid_mc.Value := DataModule2.Material_supply_buffer_tableid_mc.Value;
        DataModule2.Material_supply_tableamount_ms.Value := DataModule2.Material_supply_buffer_tableamount_ms.Value;
        DataModule2.Material_supply_tableid_sl_to.Value := PurchaseEditStorageCB.KeyValue;
        DataModule2.Material_supply_tableid_e.Value := LoginIdParam;
        try
          DataModule2.Material_supply_table.Post;
        except
          DataModule2.Material_supply_table.Cancel;
        end;
        DataModule2.Material_supply_buffer_table.Next;
      end;
      DataModule2.ClearTable(DataModule2.Material_supply_buffer_table);
      DataModule2.StatUpdate(MaterialSupplyForm);
    end;
    // Интерфейс {
    MaterialSupplyPanel.Visible := True;
    DataModule2.EditBlock(ToolBar, True, 7);
    ToolBar.Buttons[4].Enabled := True;
    PurchaseEditPanel.Visible := False;
    ToolBar.Buttons[1].Caption := LabelList;
    // } Интерфейс
  end;
end;

// Отменить список
procedure TMaterialSupplyForm.PurchaseCancelButtonClick(Sender: TObject);
begin
  if MyMessageDlg('Отменить список поставок?', mtConfirmation, [mbYes, mbNo], ['Да','Нет'], 'Подтверждение') = mrYes then
  begin
    DataModule2.ClearTable(DataModule2.Material_supply_buffer_table);
    // Интерфейс {
    MaterialSupplyPanel.Visible := True;
    DataModule2.EditBlock(ToolBar, True, 7);
    ToolBar.Buttons[4].Enabled := True;
    PurchaseEditPanel.Visible := False;
    ToolBar.Buttons[1].Caption := LabelList;
    // } Интерфейс
  end;
end;

// Добавить
procedure TMaterialSupplyForm.PositionAddButtonClick(Sender: TObject);
begin
  PurchaseButtonsControl(False);
  if DataModule2.Material_supply_buffer_table.State in [dsBrowse] then
    DataModule2.Material_supply_buffer_table.Append;
  PurchaseEditNameCB.DropDown;
  PurchaseEditNameCB.SetFocus;
end;

// Изменить
procedure TMaterialSupplyForm.PositionEditButtonClick(Sender: TObject);
begin
  if DataModule2.Material_supply_buffer_table.State in [dsBrowse] then
    if DataModule2.Material_supply_buffer_table.RecordCount > 0 then
    begin
      PurchaseButtonsControl(False);
      PositionPostButton.Enabled := True;
      DataModule2.Material_supply_buffer_table.Edit;
    end;
end;

// Удалить
procedure TMaterialSupplyForm.PositionDeleteButtonClick(Sender: TObject);
begin
  DataModule2.DeleteRecord(DataModule2.Material_supply_buffer_table);
  PurchaseCheck();
end;
//
procedure TMaterialSupplyForm.PurchaseGridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
    PositionDeleteButton.Click;
end;

// Запомнить
procedure TMaterialSupplyForm.PositionPostButtonClick(Sender: TObject);
begin
  PurchaseButtonsControl(True);
  if DataModule2.Material_supply_buffer_table.State in [dsInsert, dsEdit] then
  begin
    try
      DataModule2.Material_supply_buffer_tabledate_mb.Value := PurchaseEditDTP.Date;
      DataModule2.Material_supply_buffer_table.Post;
    except
      DataModule2.Material_supply_buffer_table.Cancel;
    end;
  end;
  PurchaseCheck();
end;

// Отменить
procedure TMaterialSupplyForm.PositionCancelButtonClick(Sender: TObject);
begin
  PurchaseButtonsControl(True);
  if DataModule2.Material_supply_table.State in [dsInsert, dsEdit] then
    DataModule2.Material_supply_table.Cancel;
  PurchaseCheck();
end;

// Кнопки ======================================================================
// Фильтрация
procedure TMaterialSupplyForm.FilterButtonClick(Sender: TObject);
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
  MaterialFilterParam := DataModule2.BoxShow(FilterPanel, nil, nil, ToolBar, 5, LabelFilter, True);
  FilterPanel.Top := 0;
  SearchPanel.Top := 69;
  DataModule2.PanelHighlightDouble(FieldFilterBox, DateFilterBox);
  // } Интерфейс
end;

// Искать
procedure TMaterialSupplyForm.SearchButtonClick(Sender: TObject);
var
  SearchField: string;
begin
  case SearchFieldCB.ItemIndex of
    0: SearchField := '[name_m]';
    1: SearchField := '[name_mt]';
    2: SearchField := '[name_mc]';
    3: SearchField := '[amount]';
    4: SearchField := '[name_sl]';
    5: SearchField := '[cost]';
    6: SearchField := '[name_e]';
  end;
  if SearchFieldCB.ItemIndex in [0,1,2,4] then
  begin
    if DataModule2.Material_supply_view_table.Filter <> '' then
      DataModule2.Material_supply_view_table_search.Filter := DataModule2.Material_supply_view_table.Filter + ' AND ' + SearchField +
      ' LIKE ' + QuotedStr(SearchCriterionEdit.Text + '*')
    else
      DataModule2.Material_supply_view_table_search.Filter := SearchField + ' LIKE ' + QuotedStr(SearchCriterionEdit.Text+'*')
  end
  else
  begin
    if DataModule2.Material_supply_view_table.Filter <> '' then
      DataModule2.Material_supply_view_table_search.Filter := DataModule2.Material_supply_view_table.Filter + ' AND ' + SearchField +
      ' = ' + QuotedStr(FloatToStr(StrToFloat(SearchCriterionEdit.Text)))
    else
      DataModule2.Material_supply_view_table_search.Filter := SearchField + ' = ' + QuotedStr(FloatToStr(StrToFloat(SearchCriterionEdit.Text)))
  end;
  if (FirstSearch = True) then
    DataModule2.Material_supply_view_table_search.First ;
  if not DataModule2.Material_supply_view_table.Locate('id_ms', DataModule2.Material_supply_view_table_search.FieldByName('id_ms').Value, []) then
    MyMessageDlg('Запись не найдена!', mtInformation, [mbYes], ['ОК'], 'Результаты поиска');
  DataModule2.Material_supply_view_table_search.Next;
  if DataModule2.Material_supply_view_table_search.EOF = True then FirstSearch := True
  else FirstSearch := False;
end;
// Запрет поиска при пустом поле
procedure TMaterialSupplyForm.SearchCriterionEditChange(Sender: TObject);
begin
  if (Length(SearchCriterionEdit.Text) = 0) then SearchButton.Enabled := False
  else SearchButton.Enabled := True;
  FirstSearch := True;
end;
// Разрешенные к вводу символы
procedure TMaterialSupplyForm.SearchCriterionEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if SearchFieldCB.ItemIndex in [3,5] then
    DataModule2.DelimeterKey(SearchCriterionEdit, Key);
end;
// Очистка поля поиска при переключени типа поиска
procedure TMaterialSupplyForm.SearchFieldCBChange(Sender: TObject);
begin
  SearchCriterionEdit.Text := '';
end;

// Расширенный поиск
procedure TMaterialSupplyForm.ExtendedSearchButtonClick(Sender: TObject);
begin
  Label60.Enabled := False;
  Label31.Enabled := False;
  SearchFieldCB.Enabled := False;
  SearchCriterionEdit.Enabled := False;
  SearchCriterionEdit.Text := '';
  MaterialSearchForm := TMaterialSearchForm.Create(Self);
  ExtendedSearchButton.Enabled := False;
  MaterialSearchForm.Show;
end;

// Поиск
procedure TMaterialSupplyForm.SearchMenuButtonClick(Sender: TObject);
begin
  // Интерфейс {
  SearchFieldCB.ItemIndex := 0;
  SearchCriterionEdit.Text := '';
  MaterialSearchParam := DataModule2.BoxShow(SearchPanel, SearchBox, StatBox, ToolBar, 6, LabelSearch, False);
  FilterPanel.Top := 0;
  SearchPanel.Top := 69;
  SearchBox.Left := 0;
  DataModule2.PanelHighlight(SearchBox);
  // } Интерфейс
end;


// Сиатистика
procedure TMaterialSupplyForm.StatButtonClick(Sender: TObject);
begin
  // Интерфейс {
  MaterialStatParam := DataModule2.BoxShow(SearchPanel, StatBox, SearchBox, ToolBar, 7, LabelStat, False);
  if FilterPanel.Visible = True then
  begin
    FilterPanel.Top := 0;
  end;
  DataModule2.PanelHighlight(StatBox);
  // } Интерфейс
end;

end.
