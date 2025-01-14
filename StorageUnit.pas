unit StorageUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, VclTee.TeeGDIPlus, Vcl.Menus,
  VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.ComCtrls,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.DBCtrls, Vcl.Mask, VCLTee.TeeDBCrossTab,
  VCLTee.TeeFunci;

type
  TStorageForm = class(TForm)
    StorageMainPanel: TPanel;
    StorageGrid: TDBGrid;
    StorageChart: TDBChart;
    Menu: TMainMenu;
    FilterButton: TMenuItem;
    StatButton: TMenuItem;
    ToolBar: TToolBar;
    ToolsPanel: TPanel;
    Filler1: TGroupBox;
    N1: TMenuItem;
    ManagePanel: TPanel;
    GroupBox3: TGroupBox;
    StoragePickGB: TGroupBox;
    SearchMenuButton: TMenuItem;
    SearchBox: TGroupBox;
    SearchGridPanel: TGridPanel;
    Label60: TLabel;
    Label31: TLabel;
    SearchCriterionEdit: TEdit;
    SearchButton: TButton;
    SearchFieldCB: TComboBox;
    FictSuppPanel: TPanel;
    FictSuppBox: TGroupBox;
    EditGridPanel: TGridPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    FictSuppStorageFillCB: TDBLookupComboBox;
    FictSuppStorageOffCB: TDBLookupComboBox;
    FictSuppPostButton: TButton;
    FictSuppCancelButton: TButton;
    FictSuppDateDTP: TDateTimePicker;
    FictSuppNameCB: TDBLookupComboBox;
    FictSuppColorCB: TDBLookupComboBox;
    FictSuppAmountEdit: TDBEdit;
    Filler2: TGroupBox;
    FictSalePanel: TPanel;
    Filler3: TGroupBox;
    FictSaleBox: TGroupBox;
    GridPanel1: TGridPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    FictSaleDateDTP: TDateTimePicker;
    FictSaleNameCB: TDBLookupComboBox;
    FictSaleColorCB: TDBLookupComboBox;
    FictSaleAmountEdit: TDBEdit;
    FictSaleCustomerCB: TDBLookupComboBox;
    FictSaleStorageOffCB: TDBLookupComboBox;
    FictSalePostButton: TButton;
    FictSaleCancelButton: TButton;
    FictSaleButton: TMenuItem;
    FictSuppButton: TMenuItem;
    FilterBox: TGroupBox;
    FieldFilterGridPanel: TGridPanel;
    Label1: TLabel;
    FilterCriterionLabel: TLabel;
    FieldFilterTypeCB: TComboBox;
    FilterAmountLabel: TLabel;
    FieldFilterAmountEdit: TEdit;
    FieldFilterSignCB: TComboBox;
    StatBox: TGroupBox;
    StatGridPanel: TGridPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    AmountLabel: TLabel;
    ProceedsLabel: TLabel;
    CostPriceLabel: TLabel;
    AddedValueLabel: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Panel1: TPanel;
    MostVolumLabel: TLabel;
    Label8: TLabel;
    ExtendedSearchButton: TButton;
    FieldFilterCriterionCB: TEdit;
    StoragePopupMenu: TPopupMenu;
    SellButton: TMenuItem;
    Series1: THorizBarSeries;
    GridPanel2: TGridPanel;
    CurrentStorageCB: TComboBox;
    LastButton: TButton;
    NextButton: TButton;
    ChartPickGB: TGroupBox;
    GridPanel3: TGridPanel;
    ChartKind2RB: TRadioButton;
    ChartKind1RB: TRadioButton;
    StoragePieChart: TDBChart;
    Series2: TPieSeries;
    procedure FilterButtonClick(Sender: TObject);
    procedure StatButtonClick(Sender: TObject);
    procedure StorageChartOpenClick(Sender: TObject);
    procedure SearchMenuButtonClick(Sender: TObject);
    procedure LoadButStates();
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FieldFilterTypeCBChange(Sender: TObject);
    procedure FictSaleButtonClick(Sender: TObject);
    procedure FictSuppButtonClick(Sender: TObject);
    procedure FictSalePostButtonClick(Sender: TObject);
    procedure FictSaleCancelButtonClick(Sender: TObject);
    procedure FictSuppPostButtonClick(Sender: TObject);
    procedure FictSuppCancelButtonClick(Sender: TObject);
    procedure NextButtonClick(Sender: TObject);
    procedure LastButtonClick(Sender: TObject);
    procedure CurrentStorageCBChange(Sender: TObject);
    procedure StorageButtonsCheck();
    procedure SearchFieldCBChange(Sender: TObject);
    procedure SearchCriterionEditChange(Sender: TObject);
    procedure SearchCriterionEditKeyPress(Sender: TObject; var Key: Char);
    procedure SearchButtonClick(Sender: TObject);
    procedure ExtendedSearchButtonClick(Sender: TObject);
    procedure FieldFilterCriterionCBChange(Sender: TObject);
    procedure FieldFilterAmountEditKeyPress(Sender: TObject; var Key: Char);
    procedure SetFilter();
    procedure StorageGridTitleClick(Column: TColumn);
    procedure FictSaleDateDTPKeyPress(Sender: TObject; var Key: Char);
    procedure FictSaleNameCBKeyPress(Sender: TObject; var Key: Char);
    procedure FictSaleColorCBKeyPress(Sender: TObject; var Key: Char);
    procedure FictSaleAmountEditKeyPress(Sender: TObject; var Key: Char);
    procedure FictSaleCustomerCBKeyPress(Sender: TObject; var Key: Char);
    procedure FictSaleStorageOffCBKeyPress(Sender: TObject; var Key: Char);
    procedure FictSuppDateDTPKeyPress(Sender: TObject; var Key: Char);
    procedure FictSuppNameCBKeyPress(Sender: TObject; var Key: Char);
    procedure FictSuppColorCBKeyPress(Sender: TObject; var Key: Char);
    procedure FictSuppAmountEditKeyPress(Sender: TObject; var Key: Char);
    procedure FictSuppStorageOffCBKeyPress(Sender: TObject; var Key: Char);
    procedure FictSuppStorageFillCBKeyPress(Sender: TObject; var Key: Char);
    procedure FictSuppAmountEditChange(Sender: TObject);
    procedure FictSaleAmountEditChange(Sender: TObject);
    procedure SellButtonClick(Sender: TObject);
    procedure StorageChartMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label16Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure ChartKind1RBClick(Sender: TObject);
    procedure StoragePieChartClick(Sender: TObject);
    procedure StoragePieChartMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  StorageForm: TStorageForm;
    // Первый ли поиск
  FirstSearch: Boolean = True;
  valueIndex: Integer;

implementation

{$R *.dfm}

uses DataModule, SalesUnit, StorageSearchUnit;

// Процедуры ===================================================================
// Сортировка
procedure TStorageForm.StorageGridTitleClick(Column: TColumn);
begin
  DataModule2.Sorting(StorageGrid, Column);
end;

// Визуал кнопок переключения
procedure TStorageForm.StorageButtonsCheck();
begin
  if CurrentStorageCB.ItemIndex = (CurrentStorageCB.Items.Count-1) then NextButton.Enabled := False else NextButton.Enabled := True;
  if CurrentStorageCB.ItemIndex = 0 then LastButton.Enabled := False else LastButton.Enabled := True;
end;

// Загрузить состояния кнопок
procedure TStorageForm.LoadButStates();
begin
  if SaveButStateParam = True then
  begin
    if StorageFilterParam = True then
    begin
      // Интерфейс {
      FilterBox.Visible := not FilterBox.Visible;
      if FilterBox.Visible = True then
      begin
        FilterBox.Visible := True;
        ToolBar.Buttons[3].Caption := LabelCheck + LabelFilter;
      end
      else
      begin
        FilterBox.Visible := False;
        ToolBar.Buttons[3].Caption := LabelFilter;
      end;
      // } Интерфейс
    end;
    if StorageSearchParam = True then
    begin
      // Интерфейс {
      DataModule2.BoxShow(ToolsPanel, SearchBox, FilterBox, ToolBar, 4, LabelSearch, False);
      SearchBox.Left := 0;
      // } Интерфейс
    end;
    if StorageStatParam = True then
    begin
      // Интерфейс {
      DataModule2.BoxShow(ToolsPanel, StatBox, SearchBox, ToolBar, 5, LabelStat, False);
      SearchBox.Left := 0;
      // } Интерфейс
    end;
    if ChartCurrentParam = True then ChartKind1RB.Checked := True
    else ChartKind2RB.Checked := True;
    StoragePickGB.Left := 0;
  end;
end;

// Создание формы
procedure TStorageForm.FormCreate(Sender: TObject);
begin
  if ChartCurrentParam = True then ChartKind1RB.Checked := True else ChartKind2RB.Checked := True;
  ChartKind1RB.OnClick(nil);
end;

// Активация формы
procedure TStorageForm.FormActivate(Sender: TObject);
begin
  // Загрузка состояний
  if FirstActivation = True then
  begin
    LoadButStates();
    FirstActivation := False;
  end;
  if ChartCurrentParam = True then ChartKind1RB.Checked := True else ChartKind2RB.Checked := True;
  ChartKind1RB.OnClick(nil);
end;

// Показ формы
procedure TStorageForm.FormShow(Sender: TObject);
var
  i: Integer;
begin
  // Загрузка состояний
  LoadButStates();
  // Загрузка складов из БД в Combo Box
  Datamodule2.ComboBoxFromSQL(DataModule2.Storages_storages_source, 'name_sl', CurrentStorageCB);
  CurrentStorageCB.ItemIndex := StorageCurrentParam;
  DataModule2.StorageLoad();
  StorageButtonsCheck();
  DataModule2.Storage_source.DataSet := DataModule2.Storage_table;
  DataModule2.Storage_source.Enabled := True;
  StorageGrid.Refresh;
  DataModule2.StatUpdate(StorageForm);
end;

// Фильтрация ------------------------------------------------------------------
// Установка фильтра
procedure TStorageForm.SetFilter();
var
  FilterField: string;
  FilterSign: string;
  LeBookmark: TBookmark;
begin
  try LeBookmark := DataModule2.Storage_table.GetBookmark except end;
  FirstSearch := True;
  DataModule2.Storage_table.First;
  // Установка строки фильтра
  case FieldFilterTypeCB.ItemIndex of
    0: FilterField := '';
    // Текстовые
    1: FilterField := '[name_p]';
    2: FilterField := '[name_pt]';
    3: FilterField := '[name_pc]';
    // Числовые
    4: FilterField := '[amount]';
    5: FilterField := '[proceeds_sort]';
    6: FilterField := '[cost_price_sort]';
    7: FilterField := '[added_value_sort]';
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
      DataModule2.Storage_table.Filter := FilterField + ' LIKE ' + QuotedStr('*' + FieldFilterCriterionCB.Text + '*')
    end
    else if (FieldFilterAmountEdit.Text <> '') then
    begin
      DataModule2.Storage_table.Filter := FilterField + FilterSign + QuotedStr(FieldFilterAmountEdit.Text)
    end
    else DataModule2.Storage_table.Filter := '';
  end
  else DataModule2.Storage_table.Filter := '';
  DataModule2.StatUpdate(StorageForm);
  try DataModule2.Storage_table.GotoBookmark(LeBookmark) except end;  
end;

// Фильтр по полю
  // Изменение типа фильтра - визуал
procedure TStorageForm.FieldFilterTypeCBChange(Sender: TObject);
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
  else if (FieldFilterTypeCB.ItemIndex = 4) or (FieldFilterTypeCB.ItemIndex = 5) or (FieldFilterTypeCB.ItemIndex = 6)
  or (FieldFilterTypeCB.ItemIndex = 7)then VisualControl(False, True)
  // Текстовые
  else VisualControl(True, False);
end;
  // Изменение критерия фильтрации
procedure TStorageForm.FieldFilterCriterionCBChange(Sender: TObject);
begin
  SetFilter();
end;

// Разрешенные к нажатию кнопки
  // Фильтр (числовое поле)
procedure TStorageForm.FieldFilterAmountEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  DataModule2.DelimeterKey(FieldFilterAmountEdit, Key);
end;

// Изменение вида диаграммы
procedure TStorageForm.ChartKind1RBClick(Sender: TObject);
begin
  if ChartKind1RB.Checked = True then ChartCurrentParam := True
  else ChartCurrentParam := False;
  if ChartCurrentParam = True then
  begin
    StoragePieChart.Visible := False;
    StorageChart.Visible := True;
  end
  else
  begin
    StorageChart.Visible := False;
    StoragePieChart.Visible := True;
  end
end;

// Изменение текущего выбранного склада
procedure TStorageForm.CurrentStorageCBChange(Sender: TObject);
var
  i: Integer;
begin
  StorageCurrentParam := CurrentStorageCB.ItemIndex;
  // переключение активного склада ************************
  DataModule2.StorageLoad();
  StorageButtonsCheck();
  DataModule2.StatUpdate(StorageForm);
  StorageForm.StorageChart.RefreshData;
  StorageForm.StorageChart.Refresh;
end;

// Запрет на запоминание при пустом поле
// Продажа
procedure TStorageForm.FictSaleAmountEditChange(Sender: TObject);
begin
  if (Length(FictSaleNameCB.Text) <= 0) or (Length(FictSaleColorCB.Text) <= 0) or (Length(FictSaleAmountEdit.Text) <= 0)
    or (StrToFloat(FictSaleAmountEdit.Text) = 0) or (Length(FictSaleCustomerCB.Text) <= 0) or (Length(FictSaleStorageOffCB.Text) <= 0)
    then FictSalePostButton.Enabled := False
  else FictSalePostButton.Enabled := True;
end;

// Поставка
procedure TStorageForm.FictSuppAmountEditChange(Sender: TObject);
begin
  if (Length(FictSuppNameCB.Text) <= 0) or (Length(FictSuppColorCB.Text) <= 0) or (Length(FictSuppAmountEdit.Text) <= 0)
    or (StrToFloat(FictSuppAmountEdit.Text) = 0) or (Length(FictSuppStorageOffCB.Text) <= 0) or (Length(FictSuppStorageFillCB.Text) <= 0)
    then FictSuppPostButton.Enabled := False
  else FictSuppPostButton.Enabled := True;
end;

// Переход на следующий элемент ввода ------------------------------------------
// Продажа
procedure TStorageForm.FictSaleDateDTPKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    FictSaleNameCB.SetFocus;
    FictSaleNameCB.DropDown;
  end;
end;
procedure TStorageForm.FictSaleNameCBKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    FictSaleColorCB.SetFocus;
    FictSaleColorCB.DropDown;
  end;
end;
procedure TStorageForm.FictSaleColorCBKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then FictSaleAmountEdit.SetFocus;
end;
procedure TStorageForm.FictSaleAmountEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in [#8, '0'..'9', #13]) then Key := #0;
  // Переход на следующий элемент ввода
  if Key = #13 then
  begin
    FictSaleCustomerCB.SetFocus;
    FictSaleCustomerCB.DropDown;
  end;
end;
procedure TStorageForm.FictSaleCustomerCBKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    FictSaleStorageOffCB.SetFocus;
    FictSaleStorageOffCB.DropDown;
  end;
end;
procedure TStorageForm.FictSaleStorageOffCBKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if FictSalePostButton.Enabled = True then
      FictSalePostButton.Click;
  end;
end;

// Поставка
procedure TStorageForm.FictSuppDateDTPKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    FictSuppNameCB.SetFocus;
    FictSuppNameCB.DropDown;
  end;
end;
procedure TStorageForm.FictSuppNameCBKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    FictSuppColorCB.SetFocus;
    FictSuppColorCB.DropDown;
  end;
end;
procedure TStorageForm.FictSuppColorCBKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then FictSuppAmountEdit.SetFocus;
end;

procedure TStorageForm.FictSuppAmountEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in [#8, '0'..'9', #13]) then Key := #0;
  // Переход на следующий элемент ввода
  if Key = #13 then
  begin
    FictSuppStorageOffCB.SetFocus;
    FictSuppStorageOffCB.DropDown;
  end;
end;
procedure TStorageForm.FictSuppStorageOffCBKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    FictSuppStorageFillCB.SetFocus;
    FictSuppStorageFillCB.DropDown;
  end;
end;
procedure TStorageForm.FictSuppStorageFillCBKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if FictSuppPostButton.Enabled = True then
      FictSuppPostButton.Click;
  end;
end;

// Чарт ------------------------------------------------------------------------
// Движение мыши по чарту
procedure TStorageForm.StorageChartMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var XVal, YVal: Double;
begin
  // Получить текущий индекс бара
  valueIndex := StorageChart[0].Clicked(X, Y);
  // Разрешить/запретить прокрутку
  XVal := StorageChart.Axes.Bottom.CalcPosPoint(X);
  YVal := StorageChart.Axes.Left.CalcPosPoint(Y);   
  if ((XVal > Series1.MaxXValue) or (XVal < Series1.MinXValue)
      or (YVal > Series1.MaxYValue) or (YVal < Series1.MinYValue)) then
    StorageChart.AllowPanning := pmNone
  else
    StorageChart.AllowPanning := pmVertical;
end;       
//
procedure TStorageForm.StoragePieChartMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);  
var XVal, YVal: Double;
begin
  // Получить текущий индекс бара
  valueIndex := StoragePieChart[0].Clicked(X, Y);
end;

// Клик по чарту
procedure TStorageForm.StorageChartOpenClick(Sender: TObject);
var
  NameStr: string;
  ColorStr: string;
begin
  // Развертывание/свертывание диаграммы
  if valueIndex <= -1 then
    StorageGrid.Visible := not StorageGrid.Visible;
  // Перейти к записи склада по нажатию
  if (StorageGrid.Visible = False) and (valueIndex > -1) then
    StorageGrid.Visible := True;
  NameStr := StorageChart.Series[0].XLabel[valueIndex];
  ColorStr := StorageChart.Series[0].XLabel[valueIndex];
  Delete(NameStr, LastDelimiter('(', NameStr), Length(NameStr)-LastDelimiter('(', NameStr)+2);
  Delete(ColorStr, 1, LastDelimiter('(', ColorStr));
  Delete(ColorStr, LastDelimiter(')', ColorStr), 2);
  DataModule2.Storage_table.Locate('name_p;name_pc', VarArrayOf([NameStr, ColorStr]), []);
end;
//
procedure TStorageForm.StoragePieChartClick(Sender: TObject);
var
  NameStr: string;
  ColorStr: string;
begin
  // Развертывание/свертывание диаграммы
  if valueIndex <= -1 then
    StorageGrid.Visible := not StorageGrid.Visible;
  // Перейти к записи склада по нажатию
  if (StorageGrid.Visible = False) and (valueIndex > -1) then
    StorageGrid.Visible := True;
  NameStr := StoragePieChart.Series[0].XLabel[valueIndex];
  ColorStr := StoragePieChart.Series[0].XLabel[valueIndex];
  Delete(NameStr, LastDelimiter('(', NameStr), Length(NameStr)-LastDelimiter('(', NameStr)+2);
  Delete(ColorStr, 1, LastDelimiter('(', ColorStr));
  Delete(ColorStr, LastDelimiter(')', ColorStr), 2);
  DataModule2.Storage_table.Locate('name_p;name_pc', VarArrayOf([NameStr, ColorStr]), []);
end;

// Кнопки (меню) ===============================================================
// Фильтрация
procedure TStorageForm.FilterButtonClick(Sender: TObject);
begin
  // Сброс фильтра
  DataModule2.Storage_table.Filter := '';
  FieldFilterTypeCB.ItemIndex := 0;
  FieldFilterTypeCB.OnChange(nil);
  // Интерфейс {
  FilterBox.Visible := not FilterBox.Visible;
  if FilterBox.Visible = True then
  begin
    FilterBox.Visible := True;
    ToolBar.Buttons[3].Caption := LabelCheck + LabelFilter;
    StorageFilterParam := True;
  end
  else
  begin
    FilterBox.Visible := False;
    ToolBar.Buttons[3].Caption := LabelFilter;
    StorageFilterParam := False;
  end;
  FilterBox.Left := 2000;
  DataModule2.PanelHighlight(FilterBox);
  // } Интерфейс
end;

// Поиск
procedure TStorageForm.SearchMenuButtonClick(Sender: TObject);
begin
  // Интерфейс {
  StorageSearchParam := DataModule2.BoxShow(ToolsPanel, SearchBox, StatBox, ToolBar, 4, LabelSearch, False);
  ManagePanel.Top := 0;
  SearchBox.Left := 0;
  DataModule2.PanelHighlight(SearchBox);
  // } Интерфейс
end;

// Статистика
procedure TStorageForm.StatButtonClick(Sender: TObject);
begin
  // Интерфейс {
  StorageStatParam := DataModule2.BoxShow(ToolsPanel, StatBox, SearchBox, ToolBar, 5, LabelStat, False);
  ManagePanel.Top := 0;
  SearchBox.Left := 0;
  DataModule2.PanelHighlight(StatBox);
  // } Интерфейс
end;

// Предыдущий склад
procedure TStorageForm.LastButtonClick(Sender: TObject);
begin
  if CurrentStorageCB.ItemIndex <> 0 then
  begin
    CurrentStorageCB.ItemIndex := CurrentStorageCB.ItemIndex - 1;
    CurrentStorageCBChange(nil);
  end;
  StorageButtonsCheck();
end;

// Следующий склад
procedure TStorageForm.NextButtonClick(Sender: TObject);
begin
  if CurrentStorageCB.ItemIndex <> (CurrentStorageCB.ItemIndex -1) then
  begin
    CurrentStorageCB.ItemIndex := CurrentStorageCB.ItemIndex + 1;
    CurrentStorageCBChange(nil);
  end;
  StorageButtonsCheck();
end;

// Продать выбранный товар
procedure TStorageForm.SellButtonClick(Sender: TObject);
begin
  // Интерфейс {
  StorageGrid.Enabled := False;
  DataModule2.EditBlock(ToolBar, False, 2);
  FictSaleBox.Caption := 'Новая запись продажи';
  FictSalePanel.Visible := True;
  ToolsPanel.Top := 0;
  ManagePanel.Top := 0;
  FictSaleDateDTP.Date := Date;
  // } Интерфейс
  if DataModule2.Sales_table.State in [dsBrowse] then
  begin
    DataModule2.Sales_table.Append;
    DataModule2.Sales_tableid_pl.Value := DataModule2.Products_table.Lookup('name_p', DataModule2.Storage_table.FieldByName('name_p').AsString,
      'id_p');
    DataModule2.Sales_tableid_pc.Value := DataModule2.Product_color_table.Lookup('name_pc', DataModule2.Storage_table.FieldByName('name_pc').AsString,
      'id_pc');
    DataModule2.Sales_tableid_sl_from.Value := DataModule2.Storages_table.Lookup('name_sl', CurrentStorageCB.Text, 'id_sl');
    if DefaultFieldsParam = True then
      DataModule2.Sales_tableid_cl.Value := 1;
  end;
  // Интерфейс {
  FictSaleAmountEdit.SetFocus;
  DataModule2.PanelHighlight(FictSaleBox);
  // } Интерфейс
end;

// Кнопки (Поиск и фильтрация) =================================================
// Запрет поиска при пустом поле// Искать
procedure TStorageForm.SearchButtonClick(Sender: TObject);
var
  SearchField: string;
begin
  case SearchFieldCB.ItemIndex of
    0: SearchField := '[name_p]';
    1: SearchField := '[name_pt]';
    2: SearchField := '[name_pc]';
    3: SearchField := '[amount]';
    4: SearchField := '[proceeds_sort]';
    5: SearchField := '[cost_price_sort]';
    6: SearchField := '[added_value_sort]';
  end;
  if SearchFieldCB.ItemIndex in [0,1,2] then
  begin
    if DataModule2.Storage_table.Filter <> '' then
      DataModule2.Storage_table_search.Filter := DataModule2.Storage_table.Filter + ' AND ' + SearchField +
      ' LIKE ' + QuotedStr(SearchCriterionEdit.Text + '*')
    else
      DataModule2.Storage_table_search.Filter := SearchField + ' LIKE ' + QuotedStr(SearchCriterionEdit.Text+'*')
  end
  else
  begin
    if DataModule2.Storage_table.Filter <> '' then
      DataModule2.Storage_table_search.Filter := DataModule2.Storage_table.Filter + ' AND ' + SearchField +
      ' = ' + QuotedStr(FloatToStr(StrToFloat(SearchCriterionEdit.Text)))
    else
      DataModule2.Storage_table_search.Filter := SearchField + ' = ' + QuotedStr(FloatToStr(StrToFloat(SearchCriterionEdit.Text)))
  end;
  if (FirstSearch = True) then
    DataModule2.Storage_table_search.First ;
  if not DataModule2.Storage_table.Locate('id_ps',  DataModule2.Storage_table_search.FieldByName('id_ps').Value, []) then
    MyMessageDlg('Запись не найдена!', mtInformation, [mbYes], ['ОК'], 'Результаты поиска');
  DataModule2.Storage_table_search.Next;
  if DataModule2.Storage_table_search.EOF = True then FirstSearch := True
  else FirstSearch := False;
end;
procedure TStorageForm.SearchCriterionEditChange(Sender: TObject);
begin
  if (Length(SearchCriterionEdit.Text) = 0) then SearchButton.Enabled := False
  else SearchButton.Enabled := True;
  FirstSearch := True;
end;
// Очистка поля поиска при переключени типа поиска
procedure TStorageForm.SearchFieldCBChange(Sender: TObject);
begin
  SearchCriterionEdit.Text := '';
end;
// Разрешенные к вводу символы
procedure TStorageForm.SearchCriterionEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if SearchFieldCB.ItemIndex in [6,7,8] then
    DataModule2.DelimeterKey(SearchCriterionEdit, Key)
  else if SearchFieldCB.ItemIndex in [3,9] then
    if not (Key in [#8, '0'..'9', #13]) then Key := #0;
end;

// Расширенный поиск
procedure TStorageForm.ExtendedSearchButtonClick(Sender: TObject);
begin
  Label60.Enabled := False;
  Label31.Enabled := False;
  SearchFieldCB.Enabled := False;
  SearchCriterionEdit.Enabled := False;
  SearchCriterionEdit.Text := '';
  StorageSearchForm := TStorageSearchForm.Create(Self);
  ExtendedSearchButton.Enabled := False;
  StorageSearchForm.Show;
end;

// Кнопки (редактирование) =====================================================
// Линейки в количество
procedure TStorageForm.Label16Click(Sender: TObject);
begin
  DataModule2.AmountMultiply(FictSaleAmountEdit);
end;
//
procedure TStorageForm.Label10Click(Sender: TObject);
begin
  DataModule2.AmountMultiply(FictSuppAmountEdit);
end;

// Фиктивная продажа
procedure TStorageForm.FictSaleButtonClick(Sender: TObject);
begin
  // Интерфейс {
  StorageGrid.Enabled := False;
  DataModule2.EditBlock(ToolBar, False, 2);
  FictSalePanel.Visible := True;
  FictSalePanel.Caption := 'Запись фиктивной продажи';
  ToolsPanel.Top := 0;
  ManagePanel.Top := 0;
  ToolBar.Buttons[1].Caption := LabelDot + 'Фиктивная продажа';
  FictSaleDateDTP.Date := Date;
  // } Интерфейс
  if DataModule2.Sales_table.State in [dsBrowse] then
    DataModule2.Sales_table.Append;
  // Интерфейс {
  FictSaleNameCB.SetFocus;
  DataModule2.PanelHighlight(FictSaleBox);
  // } Интерфейс
end;
// Запомнить
procedure TStorageForm.FictSalePostButtonClick(Sender: TObject);
begin
  if DataModule2.Sales_table.State in [dsInsert, dsEdit] then
  begin
    try
      DataModule2.Sales_tabledate_s.Value := FictSaleDateDTP.Date;
      if FictSaleBox.Caption = 'Запись фиктивной продажи' then
        DataModule2.Sales_tablefictitious_s.Value := True
      else
        DataModule2.Sales_tablefictitious_s.Value := False;
      DataModule2.Sales_tableid_e.Value := LoginIdParam;
      DataModule2.Sales_tablereceipt_number_s.Value := SalesForm.GetReceiptNumber();
      DataModule2.Sales_table.Post;
    except
      DataModule2.Sales_table.Cancel;
    end;
  end;
  DataModule2.ReactivateQuery(DataModule2.Storage_source.DataSet);
  // Интерфейс {
  StorageGrid.Enabled := True;
  DataModule2.EditBlock(ToolBar, True, 2);
  FictSalePanel.Visible := False;
  ToolBar.Buttons[1].Caption := 'Фиктивная продажа';
  // } Интерфейс
  Datamodule2.ReactivateQuery(Datamodule2.Storage_table);
  Datamodule2.ReactivateQuery(Datamodule2.Storage_chart);
  Datamodule2.ReactivateQuery(Datamodule2.Storage_table_search);
end;

// Отменить
procedure TStorageForm.FictSaleCancelButtonClick(Sender: TObject);
begin
  if DataModule2.Sales_table.State in [dsInsert, dsEdit] then
    DataModule2.Sales_table.Cancel;
  // Интерфейс {
  StorageGrid.Enabled := True;
  DataModule2.EditBlock(ToolBar, True, 2);
  FictSalePanel.Visible := False;
  ToolBar.Buttons[1].Caption := 'Фиктивная продажа';
  // } Интерфейс
end;

// Фиктивная поставка
procedure TStorageForm.FictSuppButtonClick(Sender: TObject);
begin
  // Интерфейс {
  StorageGrid.Enabled := False;
  DataModule2.EditBlock(ToolBar, False, 2);
  FictSuppPanel.Visible := True;
  FictSuppPanel.Caption := 'Запись фиктивной поставки';
  ToolsPanel.Top := 0;
  ManagePanel.Top := 0;
  ToolBar.Buttons[2].Caption := LabelDot + 'Фиктивная поставка';
  FictSuppDateDTP.Date := Date;
  // } Интерфейс
  if DataModule2.Product_supply_table.State in [dsBrowse] then
    DataModule2.Product_supply_table.Append;
  // Интерфейс {
  FictSuppNameCB.SetFocus;
  DataModule2.PanelHighlight(FictSuppBox);
  // } Интерфейс
end;
// Запомнить
procedure TStorageForm.FictSuppPostButtonClick(Sender: TObject);
begin
  if DataModule2.Product_supply_table.State in [dsInsert, dsEdit] then
  begin
    try
      DataModule2.Product_supply_tabledate_ps.Value := FictSuppDateDTP.Date;
      if FictSalePanel.Caption = 'Запись фиктивной поставки' then
        DataModule2.Product_supply_tablefictitious_ps.Value := True
      else
        DataModule2.Product_supply_tablefictitious_ps.Value := False;
      DataModule2.Product_supply_tableid_e.Value := LoginIdParam;
      DataModule2.Product_supply_table.Post;
    except
      DataModule2.Product_supply_table.Cancel;
    end;
  end;
  DataModule2.ReactivateQuery(DataModule2.Storage_source.DataSet);
  // Интерфейс {
  StorageGrid.Enabled := True;
  DataModule2.EditBlock(ToolBar, True, 2);
  FictSuppPanel.Visible := False;
  ToolBar.Buttons[2].Caption := 'Фиктивная поставка';
  // } Интерфейс
  Datamodule2.ReactivateQuery(Datamodule2.Storage_table);
  Datamodule2.ReactivateQuery(Datamodule2.Storage_chart);
  Datamodule2.ReactivateQuery(Datamodule2.Storage_table_search);
end;

// Отменить
procedure TStorageForm.FictSuppCancelButtonClick(Sender: TObject);
begin
  if DataModule2.Product_supply_table.State in [dsInsert, dsEdit] then
    DataModule2.Product_supply_table.Cancel;
  // Интерфейс {
  StorageGrid.Enabled := True;
  DataModule2.EditBlock(ToolBar, True, 2);
  FictSuppPanel.Visible := False;
  ToolBar.Buttons[2].Caption := 'Фиктивная поставка';
  // } Интерфейс
end;

end.
