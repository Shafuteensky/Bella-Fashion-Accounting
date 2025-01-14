unit FinancialReportUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Types, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, VclTee.TeeGDIPlus,
  VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart,
  Vcl.DBCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Menus, Vcl.ToolWin, ADODB, System.DateUtils, VCLTee.TeeDBCrossTab,
  VCLTee.TeeFunci;

type
  TFinancialReportForm = class(TForm)
    FinancialReportMainPanel: TPanel;
    ChartsPanel: TScrollBox;
    FinancialReport1Chart: TDBChart;
    Filler2: TGroupBox;
    GridsPanel: TScrollBox;
    Filler3: TGroupBox;
    Report1Panel: TPanel;
    Report1Grid: TDBGrid;
    Report1ToolsBox: TGroupBox;
    Report1PeriodBox: TGroupBox;
    Report2Panel: TPanel;
    Report2ToolsBox: TGroupBox;
    Report2PeriodBox: TGroupBox;
    Report2Grid: TDBGrid;
    ToolBar1: TToolBar;
    Menu: TMainMenu;
    ResetButton: TMenuItem;
    SaveButton: TMenuItem;
    N4: TMenuItem;
    ReportSumPanel: TPanel;
    DifferenceBox: TGroupBox;
    FieldFilterBox: TGroupBox;
    FieldFilterGridPanel: TGridPanel;
    R1FilterTypeLabel: TLabel;
    R1FilterCriterionLabel: TLabel;
    R1FilterTypeCB: TComboBox;
    R1FilterAmountLabel: TLabel;
    R1FilterAmountEdit: TEdit;
    R1FilterSignCB: TComboBox;
    GroupBox1: TGroupBox;
    GridPanel1: TGridPanel;
    R2FilterTypeLabel: TLabel;
    R2FilterCriterionLabel: TLabel;
    R2FilterTypeCB: TComboBox;
    R2FilterAmountLabel: TLabel;
    R2FilterAmountEdit: TEdit;
    R2FilterSignCB: TComboBox;
    GridPanel2: TGridPanel;
    Report1AllTimeRB: TRadioButton;
    Report1IntervalRB: TRadioButton;
    R1DateFilterDTP1: TDateTimePicker;
    R1DateFilterDTP2: TDateTimePicker;
    GridPanel3: TGridPanel;
    Report2AllTimeRB: TRadioButton;
    Report2IntervalRB: TRadioButton;
    R2DateFilterDTP1: TDateTimePicker;
    R2DateFilterDTP2: TDateTimePicker;
    Report1TodayRB: TRadioButton;
    Report1MonthRB: TRadioButton;
    Report2TodayRB: TRadioButton;
    Report2MonthRB: TRadioButton;
    R1StatBox: TGroupBox;
    GridPanel4: TGridPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    R1AmountLabel: TLabel;
    R1ProceedsLabel: TLabel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    R2StatBox: TGroupBox;
    GridPanel5: TGridPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    R2AmountLabel: TLabel;
    R2CostPriceLabel: TLabel;
    R2AddedValueLabel: TLabel;
    R2ProceedsLabel: TLabel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    DiffStatBox: TGroupBox;
    GridPanel6: TGridPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DiffAmountLabel: TLabel;
    DiffProceedsLabel: TLabel;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    Label17: TLabel;
    DiffTotalLabel: TLabel;
    Label12: TLabel;
    R2BestSellingLabel: TLabel;
    Label7: TLabel;
    R1BestSellingLabel: TLabel;
    R1FilterCriterionEdit: TEdit;
    R2FilterCriterionEdit: TEdit;
    DiffCostPriceLabel: TLabel;
    DiffAddedValueLabel: TLabel;
    R1CostPriceLabel: TLabel;
    R1AddedValueLabel: TLabel;
    Series1: TBarSeries;
    Series2: TBarSeries;
    Series5: TBarSeries;
    FinancialReport2Chart: TDBChart;
    BarSeries1: TBarSeries;
    BarSeries2: TBarSeries;
    BarSeries3: TBarSeries;
    FinancialReportPie1Chart: TDBChart;
    Series3: TPieSeries;
    FinancialReportPie2Chart: TDBChart;
    PieSeries1: TPieSeries;
    procedure ChartsPanelMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure R1FilterTypeCBChange(Sender: TObject);
    procedure Report1AllTimeRBClick(Sender: TObject);
    procedure Report2AllTimeRBClick(Sender: TObject);
    procedure DateFilter(RBToday: TRadioButton; RBMonth: TRadioButton; RBInterval: TRadioButton; DTP1: TDateTimePicker;
      DTP2: TDateTimePicker; Table: TADOQuery);
    procedure Report1GridTitleClick(Column: TColumn);
    procedure Report2GridTitleClick(Column: TColumn);
    procedure SetFilter(Query: TADOQuery; FilterTypeCB: TComboBox; FilterSignCB: TComboBox; FilterCriterionEdit: TEdit;
      FilterAmountEdit: TEdit);
    procedure FilterTypeChange(Query: TADOQuery; FilterTypeCB: TComboBox; FilterSignCB: TComboBox;
      FilterCriterionEdit: TEdit; FilterAmountEdit: TEdit);
    procedure R2FilterTypeCBChange(Sender: TObject);
    procedure R1FilterCriterionEditChange(Sender: TObject);
    procedure R2FilterCriterionEditChange(Sender: TObject);
    procedure R1FilterAmountEditKeyPress(Sender: TObject; var Key: Char);
    procedure R2FilterAmountEditKeyPress(Sender: TObject; var Key: Char);
    procedure ResetButtonClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FinancialReportForm: TFinancialReportForm;

implementation

{$R *.dfm}

uses DataModule, Math;

// Процедуры ===================================================================
// Показ формы
procedure TFinancialReportForm.FormShow(Sender: TObject);
begin
  try
    DataModule2.Financial_report_table_1.Active := True;
    DataModule2.Financial_report_table_2.Active := True;
  except
  end;
  R1DateFilterDTP1.Date := Date;
  R1DateFilterDTP2.Date := Date;
  R2DateFilterDTP1.Date := Date;
  R2DateFilterDTP2.Date := Date;
  DataModule2.FinancialReportLoad();
  DataModule2.StatUpdate(FinancialReportForm);
  FinancialReportForm.OnResize(nil);
end;

// Закрытие формы
procedure TFinancialReportForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    DataModule2.Financial_report_table_1.Active := False;
    DataModule2.Financial_report_table_2.Active := False;
  except
  end;
end;

// Изменение размеров панелей чартов при ресайзе
procedure TFinancialReportForm.FormResize(Sender: TObject);
begin
  FinancialReportPie1Chart.Height := Ceil(FinancialReportPie1Chart.Width/1.5);
  FinancialReportPie2Chart.Height := Ceil(FinancialReportPie2Chart.Width/1.5);
end;

// Прокрутка колесом мыши
procedure TFinancialReportForm.ChartsPanelMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
var
  LTopLeft, LTopRight, LBottomLeft, LBottomRight: SmallInt;
  LPoint: TPoint;
  ScrollBox: TScrollBox;
begin
  ScrollBox := TScrollBox(Sender);
  LPoint := ScrollBox.ClientToScreen(Point(0,0));
  LTopLeft := LPoint.X;
  LTopRight := LTopLeft + ScrollBox.ClientWidth;
  LBottomLeft := LPoint.Y;
  LBottomRight := LBottomLeft + ScrollBox.ClientWidth;
//  if (MousePos.X >= LTopLeft) and
//    (MousePos.X <= LTopRight) and
//    (MousePos.Y >= LBottomLeft) and
//    (MousePos.Y <= LBottomRight) then
  begin
    ScrollBox.VertScrollBar.Position := ScrollBox.VertScrollBar.Position - WheelDelta;
    Handled := True;
  end;
end;

// Фильтр по дате
procedure TFinancialReportForm.DateFilter(RBToday: TRadioButton; RBMonth: TRadioButton; RBInterval: TRadioButton; DTP1: TDateTimePicker;
      DTP2: TDateTimePicker; Table: TADOQuery);
var
  DaysOfMonth: Integer;
  ThisDay: Integer;
  DaysUntil: Integer;
  MyDate: TDateTime;
begin
  Table.Parameters[0].DataType := ftDate;
  Table.Parameters[1].DataType := ftDate;
  if RBToday.Checked = True then
  begin
    DTP1.Enabled := False;
    DTP2.Enabled := False;
    Table.Parameters[0].Value := Date;
    Table.Parameters[1].Value := Date;
  end
  else if RBMonth.Checked = True then
  begin
    DTP1.Enabled := False;
    DTP2.Enabled := False;
    DaysOfMonth := DaysInMonth(Date);
    ThisDay := DayOfTheMonth(Date)-1;
    DaysUntil := DaysOfMonth - ThisDay;
    Table.Parameters[0].Value := Date - ThisDay;
    Table.Parameters[1].Value := Date + DaysUntil;
  end
  else if RBInterval.Checked = True then
  begin
    DTP1.Enabled := True;
    DTP2.Enabled := True;
    Table.Parameters[0].Value := DTP1.Date;
    Table.Parameters[1].Value := DTP2.Date;
  end
  else
  begin
    DTP1.Enabled := False;
    DTP2.Enabled := False;
    Table.Parameters[0].Value := ('01.01.1000');
    Table.Parameters[1].Value := ('01.01.3000');
  end;
  DataModule2.ReactivateQuery(Table);
end;

// Фильтры .....................................................................
// Установка фильтра по полю
procedure TFinancialReportForm.SetFilter(Query: TADOQuery; FilterTypeCB: TComboBox; FilterSignCB: TComboBox; FilterCriterionEdit: TEdit;
  FilterAmountEdit: TEdit);
var
  FilterField: string;
  FilterSign: string;
begin
  // Установка строки фильтра
  case FilterTypeCB.ItemIndex of
    0: FilterField := '';
    // Текстовые
    1: FilterField := '[name_p]';
    2: FilterField := '[name_pt]';
    3: FilterField := '[name_pc]';
    // Численные
    4: FilterField := '[amount]';
    5: FilterField := '[proceeds_sort]';
    6: FilterField := '[cost_price_sort]';
    7: FilterField := '[added_value_sort]';
  end;
  // Установка типа числового фильтра
  case FilterSignCB.ItemIndex of
    0: FilterSign := ' = ';
    1: FilterSign := ' > ';
    2: FilterSign := ' < ';
    3: FilterSign := ' >= ';
    4: FilterSign := ' <= ';
  end;
  // Если выбран фильтр по полю
  if (FilterTypeCB.ItemIndex <> 0) then
  begin
    if (FilterCriterionEdit.Text <> '') then
    begin
      Query.Filter := FilterField + ' LIKE ' + QuotedStr('*' + FilterCriterionEdit.Text + '*');
    end
    else if (FilterAmountEdit.Text <> '') then
    begin
      Query.Filter := FilterField + FilterSign + QuotedStr(FilterAmountEdit.Text);
    end
    else Query.Filter := '';
  end
  else Query.Filter := '';
  DataModule2.StatUpdate(FinancialReportForm);
end;

// Визуал
procedure TFinancialReportForm.FilterTypeChange(Query: TADOQuery; FilterTypeCB: TComboBox; FilterSignCB: TComboBox;
  FilterCriterionEdit: TEdit; FilterAmountEdit: TEdit);
  procedure VisualControl(Bool1, Bool2: Boolean);
  begin
    if Query = DataModule2.Financial_report_table_1 then
    begin
      R1FilterCriterionLabel.Enabled := Bool1;
      R1FilterCriterionEdit.Enabled := Bool1;
      R1FilterAmountLabel.Enabled := Bool2;
      R1FilterSignCB.Enabled := Bool2;
      R1FilterAmountEdit.Enabled := Bool2;
    end
    else
    begin
      R2FilterCriterionLabel.Enabled := Bool1;
      R2FilterCriterionEdit.Enabled := Bool1;
      R2FilterAmountLabel.Enabled := Bool2;
      R2FilterSignCB.Enabled := Bool2;
      R2FilterAmountEdit.Enabled := Bool2;
    end
  end;
begin
  // Очистка полей фильтров
  FilterCriterionEdit.Text := '';
  FilterSignCB.ItemIndex := 0;
  FilterAmountEdit.Text := '';
  // Без фильтра
  if (FilterTypeCB.ItemIndex = 0) then VisualControl(False, False)
  // Численные
  else if (FilterTypeCB.ItemIndex = 4) or (FilterTypeCB.ItemIndex = 5) or
    (FilterTypeCB.ItemIndex = 6) or (FilterTypeCB.ItemIndex = 7) then VisualControl(False, True)
  // Текстовые
  else VisualControl(True, False);
  DataModule2.StatUpdate(FinancialReportForm);
end;

// Фильтрация и сортировка -----------------------------------------------------
// Сортировка
procedure TFinancialReportForm.Report1GridTitleClick(Column: TColumn);
begin
  DataModule2.Sorting(Report1Grid, Column);
end;
//
procedure TFinancialReportForm.Report2GridTitleClick(Column: TColumn);
begin
  DataModule2.Sorting(Report2Grid, Column);
end;

// Отчет №1 ....................................................................
// Фильтр по дате
procedure TFinancialReportForm.Report1AllTimeRBClick(Sender: TObject);
begin
  DateFilter(Report1TodayRB, Report1MonthRB, Report1IntervalRB, R1DateFilterDTP1, R1DateFilterDTP2, DataModule2.Financial_report_table_1);
  DataModule2.StatUpdate(FinancialReportForm);
end;

// Фильтр по полю
// Изменение
procedure TFinancialReportForm.R1FilterCriterionEditChange(Sender: TObject);
begin
  SetFilter(DataModule2.Financial_report_table_1, R1FilterTypeCB, R1FilterSignCB, R1FilterCriterionEdit, R1FilterAmountEdit);
end;
// Визуал
procedure TFinancialReportForm.R1FilterTypeCBChange(Sender: TObject);
begin
  FilterTypeChange(DataModule2.Financial_report_table_1, R1FilterTypeCB, R1FilterSignCB, R1FilterCriterionEdit, R1FilterAmountEdit);
end;

// Разрешенные к нажатию кнопки
procedure TFinancialReportForm.R1FilterAmountEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if R1FilterTypeCB.ItemIndex <> 4 then
  begin
    DataModule2.DelimeterKey(R1FilterAmountEdit, Key);
  end
  else if not (Key in [#8, '0'..'9', #13]) then Key := #0;
end;

// Отчет №2 ....................................................................
// Фильтр по дате
procedure TFinancialReportForm.Report2AllTimeRBClick(Sender: TObject);
begin
  DateFilter(Report2TodayRB, Report2MonthRB, Report2IntervalRB, R2DateFilterDTP1, R2DateFilterDTP2, DataModule2.Financial_report_table_2);
  DataModule2.StatUpdate(FinancialReportForm);
end;

// Фильтр по полю
// Изменение
procedure TFinancialReportForm.R2FilterCriterionEditChange(Sender: TObject);
begin
  SetFilter(DataModule2.Financial_report_table_2, R2FilterTypeCB, R2FilterSignCB, R2FilterCriterionEdit, R2FilterAmountEdit);
end;
// Визуал
procedure TFinancialReportForm.R2FilterTypeCBChange(Sender: TObject);
begin
  FilterTypeChange(DataModule2.Financial_report_table_2, R2FilterTypeCB, R2FilterSignCB, R2FilterCriterionEdit, R2FilterAmountEdit);
end;

// Разрешенные к нажатию кнопки
procedure TFinancialReportForm.R2FilterAmountEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if R2FilterTypeCB.ItemIndex <> 4 then
  begin
    DataModule2.DelimeterKey(R2FilterAmountEdit, Key);
  end
  else if not (Key in [#8, '0'..'9', #13]) then Key := #0;
end;

// Кнопки (меню) ===============================================================
// Сбросить
procedure TFinancialReportForm.ResetButtonClick(Sender: TObject);
begin
  if Report1AllTimeRB.Checked = False then
    Report1AllTimeRB.Checked := True;
  if R1FilterTypeCB.ItemIndex <> 0 then
  begin
    R1FilterTypeCB.ItemIndex := 0;
    R1FilterTypeCB.OnChange(nil);
  end;
  if Report2AllTimeRB.Checked = False then
    Report2AllTimeRB.Checked := True;
  if R2FilterTypeCB.ItemIndex <> 0 then
  begin
    R2FilterTypeCB.ItemIndex := 0;
    R2FilterTypeCB.OnChange(nil);
  end;
end;

end.
