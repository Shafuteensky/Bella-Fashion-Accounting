unit ABCAnalysisUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, VclTee.TeeGDIPlus, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.Menus, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart, VCLTee.TeeFunci;

type
  TABCAnalysisForm = class(TForm)
    ABCAnalysisMainPanel: TPanel;
    ChartsPanel: TScrollBox;
    ABCPieChart1: TDBChart;
    ToolBar1: TToolBar;
    Panel2: TPanel;
    Series1: TPieSeries;
    ABCPieChart2: TDBChart;
    PieSeries1: TPieSeries;
    Panel1: TPanel;
    Report1PeriodBox: TGroupBox;
    GridPanel3: TGridPanel;
    DateFilterAllTimeRB: TRadioButton;
    DateFilterIntervalRB: TRadioButton;
    DateFilterDTP1: TDateTimePicker;
    Filler1: TGroupBox;
    Menu: TMainMenu;
    N4: TMenuItem;
    ResetButton: TMenuItem;
    SaveButton: TMenuItem;
    PrintButton: TMenuItem;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    SetNSEdit: TEdit;
    ABCGrid: TDBGrid;
    GroupBox2: TGroupBox;
    Filler2: TGroupBox;
    GridPanel4: TGridPanel;
    Label5: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    DateFilterDTP2: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ABCGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure ChartsPanelMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure SetNSEditChange(Sender: TObject);
    procedure RecalculateABC();
    procedure DateFilterAllTimeRBClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ABCAnalysisForm: TABCAnalysisForm;
  SumAddedValue: Double;
  SumAmount: Integer;
  SumNumOSales: Integer;
  SetNumOSales: Integer;

implementation

{$R *.dfm}

uses DataModule, Math;

// Процедуры ===================================================================
// Форма -----------------------------------------------------------------------
// Показ формы
procedure TABCAnalysisForm.FormShow(Sender: TObject);
begin
  DateFilterDTP1.Date := Date;
  DateFilterDTP2.Date := Date;
  DateFilterAllTimeRB.Checked := True;
  DataModule2.Sales_sum_table.Active := True;
  DateFilterAllTimeRB.Checked := True;
  SetNSEdit.Text := '';
  RecalculateABC();
end;

// Закрытие формы
procedure TABCAnalysisForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try DataModule2.Sales_sum_table.Active := False except end;
end;

// Изменение фильтра по дате
procedure TABCAnalysisForm.DateFilterAllTimeRBClick(Sender: TObject);
begin
  if DateFilterAllTimeRB.Checked = True then
  with DataModule2 do
  begin
    DateFilterDTP1.Enabled := False;
    DateFilterDTP2.Enabled := False;
    DateFilterDTP1.Date := Date;
    DateFilterDTP2.Date := Date;
    Sales_sum_table.Parameters[0].Value := '01.01.1899';
    Sales_sum_table.Parameters[1].Value := '01.01.3000';
  end
  else
  with DataModule2 do
  begin
    DateFilterDTP1.Enabled := True;
    DateFilterDTP2.Enabled := True;
    Sales_sum_table.Parameters[0].Value := DateFilterDTP1.Date;
    Sales_sum_table.Parameters[1].Value := DateFilterDTP2.Date;
  end;
  DataModule2.ReactivateQuery(DataModule2.Sales_sum_table);
  RecalculateABC();
end;

// Изменение значения неучета
procedure TABCAnalysisForm.SetNSEditChange(Sender: TObject);
begin
  if Length(SetNSEdit.Text) >= 1 then SetNumOSales := StrToInt(SetNSEdit.Text)
  else SetNumOSales := 0;
  RecalculateABC();
end;

// Прорисовка ячеек
procedure TABCAnalysisForm.ABCGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  with ABCGrid.Canvas do
  begin
    if (Column.FieldName = 'category') then
    begin
      if DataModule2.Sales_sum_tablecategory.AsString = 'A' then
      begin
        Font.Color := $000FC4F1;
        Font.Style := [fsBold];
      end
      else if DataModule2.Sales_sum_tablecategory.AsString = 'B' then
      begin
        Font.Color := $00A8F336;
        Font.Style := [fsBold];
      end
      else if DataModule2.Sales_sum_tablecategory.AsString = 'C' then
      begin
        Font.Color := $00FDC084;
        Font.Style := [fsBold];
      end
      else if DataModule2.Sales_sum_tablecategory.AsString = 'N' then
      begin
        Font.Color := $00FF0080;
        Font.Style := [fsBold];
      end;
    end;
  end;
  ABCGrid.DefaultDrawColumnCell(REct, DataCol, Column, State);
  ABCGrid.Enabled := True;
end;

// Изменение размеров панелей чартов при ресайзе
procedure TABCAnalysisForm.FormResize(Sender: TObject);
begin
  ABCPieChart1.Height := Ceil(ABCPieChart1.Width/1.5);
  ABCPieChart2.Height := Ceil(ABCPieChart2.Width/1.5);
end;

// Прокрутка колесом мыши
procedure TABCAnalysisForm.ChartsPanelMouseWheel(Sender: TObject;
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
  begin
    ScrollBox.VertScrollBar.Position := ScrollBox.VertScrollBar.Position - WheelDelta;
    Handled := True;
  end;
end;

// Функционал ------------------------------------------------------------------
// Переанализировать
procedure TABCAnalysisForm.RecalculateABC();
var
  SeriesColor: TColor;
begin
  ABCPieChart1.Series[0].Clear;
  ABCPieChart2.Series[0].Clear;
  ABCPercentSum := 0;
  // Расчет сумм
  SumAddedValue := 0;
  SumAmount := 0;
  SumNumOSales := 0;
  with DataModule2 do
  if Sales_sum_table.RecordCount > 0 then
  with Sales_sum_table do
  begin
    Sales_sum_table.First;
    while not Eof do
    begin
      if FieldByName('number_of_sales').Value >= SetNumOSales then
      begin
        SumAddedValue := SumAddedValue + FieldByName('added_value_sort').AsFloat;
        SumAmount := SumAmount + FieldByName('amount').Value;
        SumNumOSales := SumNumOSales + FieldByName('number_of_sales').Value;
      end;
      Next;
    end;
  end;
  //
  ABCPercentSum := 0;
  ABCPieChart1.Title.Text.Strings[0] := 'Доля от общей ДСТ ('+FloatToStr(SumAddedValue)+' USD)';
  ABCPieChart2.Title.Text.Strings[0] := 'Доля от общего количества ('+IntToStr(SumAmount)+')';
  DataModule2.Sales_sum_table.AutoCalcFields := True;
  DataModule2.ReactivateQuery(DataModule2.Sales_sum_table);
  DataModule2.Sales_sum_table.AutoCalcFields := False;
  if SumAddedValue <= 0 then
  begin
    ABCAnalysisForm.ABCPieChart1.Series[0].Add(0, '-', clWhite);
    ABCAnalysisForm.ABCPieChart2.Series[0].Add(0, '-', clWhite);
  end;
end;

end.
