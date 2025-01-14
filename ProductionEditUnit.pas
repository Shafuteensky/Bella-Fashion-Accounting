unit ProductionEditUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Menus,
  Vcl.ToolWin;

type
  TProductionEditForm = class(TForm)
    ProductionMenu: TMainMenu;
    ProductionAddButton: TMenuItem;
    ProductionEditButton: TMenuItem;
    ProductionDeleteButton: TMenuItem;
    ColorMenu: TMainMenu;
    ColorAddButton: TMenuItem;
    ColorEditButton: TMenuItem;
    ColorDeleteButton: TMenuItem;
    TypeMenu: TMainMenu;
    TypeAddButton: TMenuItem;
    TypeEditButton: TMenuItem;
    TypeDeleteButton: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    ProductionEditMainPanel: TScrollBox;
    Filler4: TGroupBox;
    Label8: TLabel;
    Label6: TLabel;
    ProductionPanel: TPanel;
    ProductionGrid: TDBGrid;
    ProductionEditToolBar: TToolBar;
    ProductionEditPanel: TPanel;
    ProductionEditBox: TGroupBox;
    ProductionEditGridPanel: TGridPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    ProductionPostButton: TButton;
    ProductionCancelButton: TButton;
    ProductionNameEdit: TDBEdit;
    ProductionTypeCB: TDBLookupComboBox;
    ProceedsEdit: TDBEdit;
    CostPriceEdit: TDBEdit;
    AddedValueEdit: TDBEdit;
    ColorPanel: TPanel;
    ColorGrid: TDBGrid;
    ColorEditToolBar: TToolBar;
    ColorEditBox: TGroupBox;
    ColorEditGridPanel: TGridPanel;
    Label3: TLabel;
    ColorEdit: TDBEdit;
    ColorPostButton: TButton;
    ColorCancelButton: TButton;
    TypePanel: TPanel;
    TypeGrid: TDBGrid;
    TypeEditToolBar: TToolBar;
    TypeEditBox: TGroupBox;
    TypeEditGridPanel: TGridPanel;
    Label2: TLabel;
    TypeEdit: TDBEdit;
    TypePostButton: TButton;
    TypeCancelButton: TButton;
    ProductPopupMenu: TPopupMenu;
    MenuItem1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    TypePopupMenu: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    ColorPopupMenu: TPopupMenu;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    procedure ProductionPostButtonClick(Sender: TObject);
    procedure ProductionCancelButtonClick(Sender: TObject);
    procedure ColorPostButtonClick(Sender: TObject);
    procedure ColorCancelButtonClick(Sender: TObject);
    procedure TypePostButtonClick(Sender: TObject);
    procedure TypeCancelButtonClick(Sender: TObject);
    procedure ProductionAddButtonClick(Sender: TObject);
    procedure ProductionEditButtonClick(Sender: TObject);
    procedure ColorAddButtonClick(Sender: TObject);
    procedure ColorEditButtonClick(Sender: TObject);
    procedure TypeAddButtonClick(Sender: TObject);
    procedure TypeEditButtonClick(Sender: TObject);
    procedure ProductionDeleteButtonClick(Sender: TObject);
    procedure ColorDeleteButtonClick(Sender: TObject);
    procedure TypeDeleteButtonClick(Sender: TObject);
    procedure ProductionNameEditChange(Sender: TObject);
    procedure ColorEditChange(Sender: TObject);
    procedure TypeEditChange(Sender: TObject);
    procedure ProductionGridTitleClick(Column: TColumn);
    procedure ColorGridTitleClick(Column: TColumn);
    procedure TypeGridTitleClick(Column: TColumn);
    procedure ProceedsEditKeyPress(Sender: TObject; var Key: Char);
    procedure CostPriceEditKeyPress(Sender: TObject; var Key: Char);
    procedure AddedValueEditKeyPress(Sender: TObject; var Key: Char);
    procedure ProductionEditMainPanelMouseWheel(Sender: TObject;
      Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
      var Handled: Boolean);
    procedure ProductionNameEditKeyPress(Sender: TObject; var Key: Char);
    procedure ProductionTypeCBKeyPress(Sender: TObject; var Key: Char);
    procedure ColorEditKeyPress(Sender: TObject; var Key: Char);
    procedure TypeEditKeyPress(Sender: TObject; var Key: Char);
    procedure Label10Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ProductionGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TypeGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ColorGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ProductionGridMouseEnter(Sender: TObject);
    procedure TypeGridMouseEnter(Sender: TObject);
    procedure ColorGridMouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProductionEditForm: TProductionEditForm;

implementation

{$R *.dfm}

uses DataModule;
// Процедуры ===================================================================
// Общие -----------------------------------------------------------------------
// Фокус на таблицу при наведении мышкой
procedure TProductionEditForm.ColorGridMouseEnter(Sender: TObject);
begin
  ColorGrid.SetFocus;
end;
procedure TProductionEditForm.TypeGridMouseEnter(Sender: TObject);
begin
  TypeGrid.SetFocus;
end;
procedure TProductionEditForm.ProductionGridMouseEnter(Sender: TObject);
begin
  ProductionGrid.SetFocus;
end;

// Показ формы
procedure TProductionEditForm.FormShow(Sender: TObject);
begin
  // Отключение отображения горизонтального ScrollBar
  ShowScrollBar(ProductionGrid.Handle, SB_HORZ, False);
  ShowScrollBar(TypeGrid.Handle, SB_HORZ, False);
  ShowScrollBar(ColorGrid.Handle, SB_HORZ, False);
end;

// Прокрутка колесом мыши
procedure TProductionEditForm.ProductionEditMainPanelMouseWheel(Sender: TObject;
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
    ScrollBox.HorzScrollBar.Position := ScrollBox.HorzScrollBar.Position - WheelDelta;
    Handled := True;
  end;
end;

// "Дорасчет" цен
  // Цены
procedure TProductionEditForm.Label10Click(Sender: TObject);
begin
  if (Length(AddedValueEdit.Text) <> 0) and (Length(CostPriceEdit.Text) <> 0) then
    if (StrToFloat(AddedValueEdit.Text) > 0) and (StrToFloat(CostPriceEdit.Text) > 0) then
      ProceedsEdit.Text := FloatToStr(StrToFloat(CostPriceEdit.Text) + StrToFloat(AddedValueEdit.Text));
end;
  // Затраты
procedure TProductionEditForm.Label11Click(Sender: TObject);
begin
  if (Length(ProceedsEdit.Text) <> 0) and (Length(AddedValueEdit.Text) <> 0) then
    if (StrToFloat(ProceedsEdit.Text) > 0) and (StrToFloat(AddedValueEdit.Text) > 0) then
      CostPriceEdit.Text := FloatToStr(StrToFloat(ProceedsEdit.Text) - StrToFloat(AddedValueEdit.Text));
end;
  // ДСТ
procedure TProductionEditForm.Label12Click(Sender: TObject);
begin
  if (Length(ProceedsEdit.Text) <> 0) and (Length(CostPriceEdit.Text) <> 0) then
    if (StrToFloat(ProceedsEdit.Text) > 0) and (StrToFloat(CostPriceEdit.Text) > 0) then
      AddedValueEdit.Text := FloatToStr(StrToFloat(ProceedsEdit.Text) - StrToFloat(CostPriceEdit.Text));
end;

// Переход на следующий элемент ввода
// Продукт
procedure TProductionEditForm.ProductionNameEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    ProductionTypeCB.SetFocus;
    ProductionTypeCB.DropDown;
  end;
end;
//
procedure TProductionEditForm.ProductionTypeCBKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then ProceedsEdit.SetFocus;
end;
// Тип
procedure TProductionEditForm.TypeEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if TypePostButton.Enabled = True then
      TypePostButton.Click;
  end;
end;
// Цвет
procedure TProductionEditForm.ColorEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if ColorPostButton.Enabled = True then
      ColorPostButton.Click;
  end;
end;

// Продукция -------------------------------------------------------------------
// Сортировка
procedure TProductionEditForm.ProductionGridTitleClick(Column: TColumn);
begin
  DataModule2.Sorting(ProductionGrid, Column);
end;

// Разрешенные к нажатию кнопки
procedure TProductionEditForm.ProceedsEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in [#8, '0'..'9', ',', #13]) then Key := ',';
  if Key = '.' then Key := ',';
  if Key = ',' then
  begin
    if (LastDelimiter(',', ProceedsEdit.Text) <> 0) or (ProceedsEdit.SelStart = 0) then
      Key := #0;
  end;
  // Переход на следующий элемент ввода
  if Key = #13 then CostPriceEdit.SetFocus;
end;
//
procedure TProductionEditForm.CostPriceEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in [#8, '0'..'9', ',', #13]) then Key := ',';
  if Key = '.' then Key := ',';
  if Key = ',' then
  begin
    if (LastDelimiter(',', CostPriceEdit.Text) <> 0) or (CostPriceEdit.SelStart = 0) then
      Key := #0;
  end;
  // Переход на следующий элемент ввода
  if Key = #13 then AddedValueEdit.SetFocus;
end;
//
procedure TProductionEditForm.AddedValueEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in [#8, '0'..'9', ',', #13]) then Key := ',';
  if Key = '.' then Key := ',';
  if Key = ',' then
  begin
    if (LastDelimiter(',', AddedValueEdit.Text) <> 0) or (AddedValueEdit.SelStart = 0) then
      Key := #0;
  end;
  // Переход на следующий элемент ввода - запомнить
  if Key = #13 then
  begin
    if ProductionPostButton.Enabled = True then
      ProductionPostButton.Click;
  end;
end;

// Запрет на запоминание при пустом поле
procedure TProductionEditForm.ProductionNameEditChange(Sender: TObject);
begin
  if (Length(ProductionNameEdit.Text) <= 0) or (Length(ProductionTypeCB.Text) <= 0) or (Length(ProceedsEdit.Text) <= 0)
    or (Length(CostPriceEdit.Text) <= 0) or (StrToFloat(CostPriceEdit.Text) = 0) or (Length(AddedValueEdit.Text) <= 0)
    or (StrToFloat(AddedValueEdit.Text) = 0) or (StrToFloat(ProceedsEdit.Text) = 0) then
    ProductionPostButton.Enabled := False
  else ProductionPostButton.Enabled := True;
end;

// Цвет ------------------------------------------------------------------------
// Сортировка
procedure TProductionEditForm.ColorGridTitleClick(Column: TColumn);
begin
  DataModule2.Sorting(ColorGrid, Column);
end;

// Запрет на запоминание при пустом поле
procedure TProductionEditForm.ColorEditChange(Sender: TObject);
begin
  if Length(ColorEdit.Text) <= 0 then ColorPostButton.Enabled := False
  else ColorPostButton.Enabled := True;
end;

// Тип -------------------------------------------------------------------------
// Сортировка
procedure TProductionEditForm.TypeGridTitleClick(Column: TColumn);
begin
  DataModule2.Sorting(TypeGrid, Column);
end;

// Запрет на запоминание при пустом поле
procedure TProductionEditForm.TypeEditChange(Sender: TObject);
begin
  if Length(TypeEdit.Text) <= 0 then TypePostButton.Enabled := False
  else TypePostButton.Enabled := True;
end;

// Кнопки (Редактирование) =====================================================
// Продукция -------------------------------------------------------------------
// Новый
procedure TProductionEditForm.ProductionAddButtonClick(Sender: TObject);
begin
  // Интерфейс {
  ProductionGrid.Enabled := False;
  TypeGrid.Enabled := False;
  ColorGrid.Enabled := False;
  ProductionEditBox.Caption := 'Новая продукция';
  DataModule2.EditBlock(ProductionEditToolBar, False, 3);
  DataModule2.EditBlock(ColorEditToolBar, False, 3);
  DataModule2.EditBlock(TypeEditToolBar, False, 3);
  ProductionEditPanel.Visible := True;
  ProductionEditToolBar.Buttons[1].Caption := LabelDot + LabelAdd;
  // } Интерфейс
  if DataModule2.Products_table.State in [dsBrowse] then
    DataModule2.Products_table.Append;
  // Интерфейс {
  DataModule2.PanelHighlight(ProductionEditBox);
  ProductionNameEdit.SetFocus;
  // } Интерфейс
end;

//Изменить
procedure TProductionEditForm.ProductionEditButtonClick(Sender: TObject);
begin
  if DataModule2.Products_table.State in [dsBrowse] then
    if DataModule2.Products_table.RecordCount > 0 then
    begin
      DataModule2.Products_table.Edit;
      // Интерфейс {
      ProductionGrid.Enabled := False;
      TypeGrid.Enabled := False;
      ColorGrid.Enabled := False;
      ProductionEditBox.Caption := 'Изменение продукции';
      DataModule2.EditBlock(ProductionEditToolBar, False, 3);
      DataModule2.EditBlock(ColorEditToolBar, False, 3);
      DataModule2.EditBlock(TypeEditToolBar, False, 3);
      ProductionEditPanel.Visible := True;
      ProductionEditToolBar.Buttons[2].Caption := LabelDot + LabelEdit;
      DataModule2.PanelHighlight(ProductionEditBox);
      // } Интерфейс
    end;
end;

// Удалить
procedure TProductionEditForm.ProductionDeleteButtonClick(Sender: TObject);
begin
  // Интерфейс {
  DataModule2.EditBlock(ProductionEditToolBar, False, 3);
  DataModule2.EditBlock(ColorEditToolBar, False, 3);
  DataModule2.EditBlock(TypeEditToolBar, False, 3);
  ProductionEditToolBar.Buttons[3].Caption := LabelDot + LabelDelete;
  // } Интерфейс
  DataModule2.DeleteRecord(DataModule2.Products_table);
  // Интерфейс {
  DataModule2.EditBlock(ProductionEditToolBar, True, 3);
  DataModule2.EditBlock(ColorEditToolBar, True, 3);
  DataModule2.EditBlock(TypeEditToolBar, True, 3);
  ProductionEditToolBar.Buttons[3].Caption := LabelDelete;
  // } Интерфейс
end;
//
procedure TProductionEditForm.ProductionGridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
    ProductionDeleteButton.Click;
end;

// Запомнить
procedure TProductionEditForm.ProductionPostButtonClick(Sender: TObject);
begin
  try
    if DataModule2.Products_table.State in [dsInsert, dsEdit] then
      try
        DataModule2.Products_table.Post;
      except
        DataModule2.Products_table.Cancel;
      end;
  except
    MyMessageDlg('Поле "Наименование" повторяется!'+#13#10+'Поле должно быть уникальным.',
      mtWarning, [mbYes], ['ОК'], 'Ошибка');
    Abort;
  end;
  // Интерфейс {
  ProductionGrid.Enabled := True;
  TypeGrid.Enabled := True;
  ColorGrid.Enabled := True;
  DataModule2.EditBlock(ProductionEditToolBar, True, 3);
  DataModule2.EditBlock(ColorEditToolBar, True, 3);
  DataModule2.EditBlock(TypeEditToolBar, True, 3);
  ProductionEditPanel.Visible := False;
  ProductionEditToolBar.Buttons[1].Caption := LabelAdd;
  ProductionEditToolBar.Buttons[2].Caption := LabelEdit;
  // } Интерфейс
end;

// Отмена
procedure TProductionEditForm.ProductionCancelButtonClick(Sender: TObject);
begin
  if DataModule2.Products_table.State in [dsInsert, dsEdit] then
    DataModule2.Products_table.Cancel;
  // Интерфейс {
  ProductionGrid.Enabled := True;
  TypeGrid.Enabled := True;
  ColorGrid.Enabled := True;
  DataModule2.EditBlock(ProductionEditToolBar, True, 3);
  DataModule2.EditBlock(ColorEditToolBar, True, 3);
  DataModule2.EditBlock(TypeEditToolBar, True, 3);
  ProductionEditPanel.Visible := False;
  ProductionEditToolBar.Buttons[1].Caption := LabelAdd;
  ProductionEditToolBar.Buttons[2].Caption := LabelEdit;
  // } Интерфейс
end;

// Цвет ------------------------------------------------------------------------
// Новый
procedure TProductionEditForm.ColorAddButtonClick(Sender: TObject);
begin
  // Интерфейс {
  ProductionGrid.Enabled := False;
  TypeGrid.Enabled := False;
  ColorGrid.Enabled := False;
  ColorEditBox.Caption := 'Новый цвет';
  DataModule2.EditBlock(ProductionEditToolBar, False, 3);
  DataModule2.EditBlock(ColorEditToolBar, False, 3);
  DataModule2.EditBlock(TypeEditToolBar, False, 3);
  ColorEditBox.Visible := True;
  ColorEditToolBar.Buttons[1].Caption := LabelDot + LabelAdd;
  // } Интерфейс
  if DataModule2.Product_color_table.State in [dsBrowse] then
    DataModule2.Product_color_table.Append;
  // Интерфейс {
  DataModule2.PanelHighlight(ColorEditBox);
  ColorEdit.SetFocus;
  // } Интерфейс
end;

// Изменить
procedure TProductionEditForm.ColorEditButtonClick(Sender: TObject);
begin
  if DataModule2.Product_color_table.State in [dsBrowse] then
    if DataModule2.Product_color_table.RecordCount > 0 then
    begin
      DataModule2.Product_color_table.Edit;
      // Интерфейс {
      ProductionGrid.Enabled := False;
      TypeGrid.Enabled := False;
      ColorGrid.Enabled := False;
      ColorEditBox.Caption := 'Изменение цвета';
      DataModule2.EditBlock(ProductionEditToolBar, False, 3);
      DataModule2.EditBlock(ColorEditToolBar, False, 3);
      DataModule2.EditBlock(TypeEditToolBar, False, 3);
      ColorEditBox.Visible := True;
      ColorEditToolBar.Buttons[2].Caption := LabelDot + LabelEdit;
      DataModule2.PanelHighlight(ColorEditBox);
      // } Интерфейс
    end;
end;

// Удалить
procedure TProductionEditForm.ColorDeleteButtonClick(Sender: TObject);
begin
  // Интерфейс {
  DataModule2.EditBlock(ProductionEditToolBar, False, 3);
  DataModule2.EditBlock(ColorEditToolBar, False, 3);
  DataModule2.EditBlock(TypeEditToolBar, False, 3);
  ColorEditToolBar.Buttons[3].Caption := LabelDot + LabelDelete;
  // } Интерфейс
  DataModule2.DeleteRecord(DataModule2.Product_color_table);
  // Интерфейс {
  DataModule2.EditBlock(ProductionEditToolBar, True, 3);
  DataModule2.EditBlock(ColorEditToolBar, True, 3);
  DataModule2.EditBlock(TypeEditToolBar, True, 3);
  ColorEditToolBar.Buttons[3].Caption := LabelDelete;
  // } Интерфейс
end;
//
procedure TProductionEditForm.ColorGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
    ColorDeleteButton.Click;
end;

// Запомнить
procedure TProductionEditForm.ColorPostButtonClick(Sender: TObject);
begin
  try
    if DataModule2.Product_color_table.State in [dsInsert, dsEdit] then
      try
        DataModule2.Product_color_table.Post;
      except
        DataModule2.Product_color_table.Cancel;
      end;
  except
    MyMessageDlg('Поле "Цвет" повторяется!'+#13#10+'Поле должно быть уникальным.',
      mtWarning, [mbYes], ['ОК'], 'Ошибка');
    Abort;
  end;
  // Интерфейс {
  ProductionGrid.Enabled := True;
  TypeGrid.Enabled := True;
  ColorGrid.Enabled := True;
  DataModule2.EditBlock(ProductionEditToolBar, True, 3);
  DataModule2.EditBlock(ColorEditToolBar, True, 3);
  DataModule2.EditBlock(TypeEditToolBar, True, 3);
  ColorEditBox.Visible := False;
  ColorEditToolBar.Buttons[1].Caption := LabelAdd;
  ColorEditToolBar.Buttons[2].Caption := LabelEdit;
  // } Интерфейс
end;

// Отмена
procedure TProductionEditForm.ColorCancelButtonClick(Sender: TObject);
begin
  if DataModule2.Product_color_table.State in [dsInsert, dsEdit] then
    DataModule2.Product_color_table.Cancel;
  // Интерфейс {
  ProductionGrid.Enabled := True;
  TypeGrid.Enabled := True;
  ColorGrid.Enabled := True;
  DataModule2.EditBlock(ProductionEditToolBar, True, 3);
  DataModule2.EditBlock(ColorEditToolBar, True, 3);
  DataModule2.EditBlock(TypeEditToolBar, True, 3);
  ColorEditBox.Visible := False;
  ColorEditToolBar.Buttons[1].Caption := LabelAdd;
  ColorEditToolBar.Buttons[2].Caption := LabelEdit;
  // } Интерфейс
end;

// Тип -------------------------------------------------------------------------
// Новый
procedure TProductionEditForm.TypeAddButtonClick(Sender: TObject);
begin
  // Интерфейс {
  ProductionGrid.Enabled := False;
  TypeGrid.Enabled := False;
  ColorGrid.Enabled := False;
  TypeEditBox.Caption := 'Новый тип';
  DataModule2.EditBlock(ProductionEditToolBar, False, 3);
  DataModule2.EditBlock(ColorEditToolBar, False, 3);
  DataModule2.EditBlock(TypeEditToolBar, False, 3);
  TypeEditBox.Visible := True;
  TypeEditToolBar.Buttons[1].Caption := LabelDot + LabelAdd;
  // } Интерфейс
  if DataModule2.Product_type_table_2.State in [dsBrowse] then
    DataModule2.Product_type_table_2.Append;
  // Интерфейс {
  DataModule2.PanelHighlight(TypeEditBox);
  TypeEdit.SetFocus;
  // } Интерфейс
end;

// Изменить
procedure TProductionEditForm.TypeEditButtonClick(Sender: TObject);
begin
  if DataModule2.Product_type_table_2.State in [dsBrowse] then
    if DataModule2.Product_type_table_2.RecordCount > 0 then
    begin
      DataModule2.Product_type_table_2.Edit;
      // Интерфейс {
      ProductionGrid.Enabled := False;
      TypeGrid.Enabled := False;
      ColorGrid.Enabled := False;
      TypeEditBox.Caption := 'Изменение типа';
      DataModule2.EditBlock(ProductionEditToolBar, False, 3);
      DataModule2.EditBlock(ColorEditToolBar, False, 3);
      DataModule2.EditBlock(TypeEditToolBar, False, 3);
      TypeEditBox.Visible := True;
      TypeEditToolBar.Buttons[2].Caption := LabelDot + LabelEdit;
      DataModule2.PanelHighlight(TypeEditBox);
      // } Интерфейс
    end;
end;

// Удалить
procedure TProductionEditForm.TypeDeleteButtonClick(Sender: TObject);
begin
  // Интерфейс {
  DataModule2.EditBlock(ProductionEditToolBar, False, 3);
  DataModule2.EditBlock(ColorEditToolBar, False, 3);
  DataModule2.EditBlock(TypeEditToolBar, False, 3);
  TypeEditToolBar.Buttons[3].Caption := LabelDot + LabelDelete;
  // Интерфейс {
  DataModule2.DeleteRecord(DataModule2.Product_type_table_2);
  // } Интерфейс
  DataModule2.EditBlock(ProductionEditToolBar, True, 3);
  DataModule2.EditBlock(ColorEditToolBar, True, 3);
  DataModule2.EditBlock(TypeEditToolBar, True, 3);
  TypeEditToolBar.Buttons[3].Caption := LabelDelete;
  // } Интерфейс
end;
//
procedure TProductionEditForm.TypeGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
    TypeDeleteButton.Click;
end;

// Запомнить
procedure TProductionEditForm.TypePostButtonClick(Sender: TObject);
begin
  try
    if DataModule2.Product_type_table_2.State in [dsInsert, dsEdit] then
      try
        DataModule2.Product_type_table_2.Post;
      except
        DataModule2.Product_type_table_2.Cancel;
      end;
  except
    MyMessageDlg('Поле "Тип" повторяется!'+#13#10+'Поле должно быть уникальным.',
      mtWarning, [mbYes], ['ОК'], 'Ошибка');
    Abort;
  end;
  // Интерфейс {
  ProductionGrid.Enabled := True;
  TypeGrid.Enabled := True;
  ColorGrid.Enabled := True;
  DataModule2.EditBlock(ProductionEditToolBar, True, 3);
  DataModule2.EditBlock(ColorEditToolBar, True, 3);
  DataModule2.EditBlock(TypeEditToolBar, True, 3);
  TypeEditBox.Visible := False;
  TypeEditToolBar.Buttons[1].Caption := LabelAdd;
  TypeEditToolBar.Buttons[2].Caption := LabelEdit;
  // } Интерфейс
end;

// Отмена
procedure TProductionEditForm.TypeCancelButtonClick(Sender: TObject);
begin
  if DataModule2.Product_type_table_2.State in [dsInsert, dsEdit] then
    DataModule2.Product_type_table_2.Cancel;
  // Интерфейс {
  ProductionGrid.Enabled := True;
  TypeGrid.Enabled := True;
  ColorGrid.Enabled := True;
  DataModule2.EditBlock(ProductionEditToolBar, True, 3);
  DataModule2.EditBlock(ColorEditToolBar, True, 3);
  DataModule2.EditBlock(TypeEditToolBar, True, 3);
  TypeEditBox.Visible := False;
  TypeEditToolBar.Buttons[1].Caption := LabelAdd;
  TypeEditToolBar.Buttons[2].Caption := LabelEdit;
  // } Интерфейс
end;

end.
