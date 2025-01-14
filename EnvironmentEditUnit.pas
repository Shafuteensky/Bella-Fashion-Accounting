unit EnvironmentEditUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ToolWin, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.Menus;

type
  TEnvironmentEditForm = class(TForm)
    ConsumersMenu: TMainMenu;
    N1: TMenuItem;
    ConsumersAddButton: TMenuItem;
    ConsumersEditButton: TMenuItem;
    ConsumersDeleteButton: TMenuItem;
    StoragesMenu: TMainMenu;
    N2: TMenuItem;
    StoragesAddButton: TMenuItem;
    StoragesEditButton: TMenuItem;
    StoragesDeleteButton: TMenuItem;
    EnvironmentEditMainPanel: TScrollBox;
    Filler4: TGroupBox;
    ConsumersPanel: TPanel;
    ConsumersGrid: TDBGrid;
    ConsumersEditToolBar: TToolBar;
    StoragesPanel: TPanel;
    StoragesGrid: TDBGrid;
    StoragesEditToolBar: TToolBar;
    StoragesEditBox: TGroupBox;
    StorageEditGridPanel: TGridPanel;
    Label8: TLabel;
    StoragesNameEdit: TDBEdit;
    StoragesPostButton: TButton;
    StoragesEditMemo: TDBMemo;
    StoragesInfoBox: TGroupBox;
    StoragesMemo: TDBMemo;
    ConsumersInfoBox: TGroupBox;
    ConsumersInfoMemo: TDBMemo;
    ConsumersEditBox: TGroupBox;
    GridPanel2: TGridPanel;
    Label1: TLabel;
    Label10: TLabel;
    ConsumersNameEdit: TDBEdit;
    ConsumersNumberEdit: TDBEdit;
    ConsumersMemo: TDBMemo;
    ConsumersPostButton: TButton;
    ConsumersCancelButton: TButton;
    Label7: TLabel;
    Label3: TLabel;
    ConsumersAddressEdit: TDBEdit;
    Label6: TLabel;
    StoragesAddressEdit: TDBEdit;
    Label9: TLabel;
    StoragesCancelButton: TButton;
    StoragesTypeRadio: TDBRadioGroup;
    ConsumersPopupMenu: TPopupMenu;
    StoragesPopupMenu: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    procedure ConsumersAddButtonClick(Sender: TObject);
    procedure ConsumersEditButtonClick(Sender: TObject);
    procedure ConsumersPostButtonClick(Sender: TObject);
    procedure ConsumersCancelButtonClick(Sender: TObject);
    procedure StoragesAddButtonClick(Sender: TObject);
    procedure StoragesEditButtonClick(Sender: TObject);
    procedure StoragesPostButtonClick(Sender: TObject);
    procedure StoragesCancelButtonClick(Sender: TObject);
    procedure ConsumersDeleteButtonClick(Sender: TObject);
    procedure StoragesDeleteButtonClick(Sender: TObject);
    procedure ConsumersGridTitleClick(Column: TColumn);
    procedure StoragesGridTitleClick(Column: TColumn);
    procedure ConsumersNumberEditKeyPress(Sender: TObject; var Key: Char);
    procedure ConsumersNameEditChange(Sender: TObject);
    procedure StoragesNameEditChange(Sender: TObject);
    procedure EnvironmentEditMainPanelMouseWheel(Sender: TObject;
      Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
      var Handled: Boolean);
    procedure ConsumersNameEditKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ConsumersAddressEditKeyPress(Sender: TObject; var Key: Char);
    procedure StoragesNameEditKeyPress(Sender: TObject; var Key: Char);
    procedure StoragesAddressEditKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ConsumersGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure StoragesGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ConsumersGridMouseEnter(Sender: TObject);
    procedure StoragesGridMouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EnvironmentEditForm: TEnvironmentEditForm;

implementation

{$R *.dfm}

uses DataModule, MainPage;
// Процедуры ===================================================================
// Общие -----------------------------------------------------------------------
// Фокус на таблицу при наведении мышкой
procedure TEnvironmentEditForm.StoragesGridMouseEnter(Sender: TObject);
begin
  StoragesGrid.SetFocus;
end;
//
procedure TEnvironmentEditForm.ConsumersGridMouseEnter(Sender: TObject);
begin
  ConsumersGrid.SetFocus;
end;

// Показ формы
procedure TEnvironmentEditForm.FormShow(Sender: TObject);
begin
  // Отключение отображения горизонтального ScrollBar
  ShowScrollBar(ConsumersGrid.Handle, SB_HORZ, False);
  ShowScrollBar(StoragesGrid.Handle, SB_HORZ, False);
  DataModule2.Storages_table.Sort := 'type_sl ASC';
end;

// Прокрутка колесом мыши
procedure TEnvironmentEditForm.EnvironmentEditMainPanelMouseWheel(Sender: TObject;
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

// Переход по TabOrder
procedure TEnvironmentEditForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
//  if (Key = #13) then
//  begin
//    Key := #0;
//    Perform(WM_NEXTDLGCTL, 0, 0);
//  end;
end;

// Переход на следующий элемент ввода
// Потребители
procedure TEnvironmentEditForm.ConsumersNameEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then ConsumersNumberEdit.SetFocus;
end;
//
procedure TEnvironmentEditForm.ConsumersAddressEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then ConsumersMemo.SetFocus;
end;
// Склады/цеха
procedure TEnvironmentEditForm.StoragesNameEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then StoragesAddressEdit.SetFocus;
end;
//
procedure TEnvironmentEditForm.StoragesAddressEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then StoragesEditMemo.SetFocus;
end;

// Потребители -----------------------------------------------------------------
// Сортировка
procedure TEnvironmentEditForm.ConsumersGridTitleClick(Column: TColumn);
begin
  DataModule2.Sorting(ConsumersGrid, Column);
end;

// Разрешенные к нажатию кнопки
procedure TEnvironmentEditForm.ConsumersNumberEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in [#8, '0'..'9', ',', '.', '/', '-', '+', '(', ')', #13, #32]) then Key := '-';
  // Переход на следующий элемент ввода
  if Key = #13 then ConsumersAddressEdit.SetFocus;
end;

// Запрет на запоминание при пустом поле
procedure TEnvironmentEditForm.ConsumersNameEditChange(Sender: TObject);
begin
  if Length(ConsumersNameEdit.Text) <= 0 then ConsumersPostButton.Enabled := False
  else ConsumersPostButton.Enabled := True;
end;

// Склады ----------------------------------------------------------------------
// Сортировка
procedure TEnvironmentEditForm.StoragesGridTitleClick(Column: TColumn);
begin
  DataModule2.Sorting(StoragesGrid, Column);
end;

// Запрет на запоминание при пустом поле
procedure TEnvironmentEditForm.StoragesNameEditChange(Sender: TObject);
begin
  if Length(StoragesNameEdit.Text) <= 0 then StoragesPostButton.Enabled := False
  else StoragesPostButton.Enabled := True;
end;

// Кнопки ======================================================================
// Потребители -----------------------------------------------------------------
// Новый
procedure TEnvironmentEditForm.ConsumersAddButtonClick(Sender: TObject);
begin
  // Интерфейс {
  ConsumersGrid.Enabled := False;
  StoragesGrid.Enabled := False;
  ConsumersEditBox.Caption := 'Новый потребитель';
  DataModule2.EditBlock(ConsumersEditToolBar, False, 3);
  DataModule2.EditBlock(StoragesEditToolBar, False, 3);
  ConsumersEditBox.Visible := True;
  ConsumersInfoBox.Visible := False;
  ConsumersEditToolBar.Buttons[1].Caption := LabelDot + LabelAdd;
  // } Интерфейс
  if DataModule2.Customers_table.State in [dsBrowse] then
    DataModule2.Customers_table.Append;
  // Интерфейс {
  DataModule2.PanelHighlight(ConsumersEditBox);
  ConsumersNameEdit.SetFocus;
  // } Интерфейс
end;

// Изменить
procedure TEnvironmentEditForm.ConsumersEditButtonClick(Sender: TObject);
begin
  if DataModule2.Customers_table.State in [dsBrowse] then
    if DataModule2.Customers_table.RecordCount > 0 then
    begin
      DataModule2.Customers_table.Edit;
      // Интерфейс {
      ConsumersGrid.Enabled := False;
      StoragesGrid.Enabled := False;
      ConsumersEditBox.Caption := 'Изменение потребителя';
      DataModule2.EditBlock(ConsumersEditToolBar, False, 3);
      DataModule2.EditBlock(StoragesEditToolBar, False, 3);
      ConsumersEditBox.Visible := True;
      ConsumersInfoBox.Visible := False;
      ConsumersEditToolBar.Buttons[2].Caption := LabelDot + LabelEdit;
      DataModule2.PanelHighlight(ConsumersEditBox);
      // } Интерфейс
    end;
end;

// Удалить
procedure TEnvironmentEditForm.ConsumersDeleteButtonClick(Sender: TObject);
begin
  // { Интерфейс
  DataModule2.EditBlock(ConsumersEditToolBar, False, 3);
  DataModule2.EditBlock(StoragesEditToolBar, False, 3);
  ConsumersEditToolBar.Buttons[3].Caption := LabelDot + LabelDelete;
  // } Интерфейс
  if (DataModule2.Customers_table.FieldByName('id_c').AsInteger = 1) then
      MyMessageDlg('Стандартного покупателя можно только изменить!',
        mtWarning, [mbYes], ['ОК'], 'Ошибка')
  else
    DataModule2.DeleteRecord(DataModule2.Customers_table);
  // { Интерфейс
  DataModule2.EditBlock(ConsumersEditToolBar, True, 3);
  DataModule2.EditBlock(StoragesEditToolBar, True, 3);
  ConsumersEditToolBar.Buttons[3].Caption := LabelDelete;
  // } Интерфейс
end;
//
procedure TEnvironmentEditForm.ConsumersGridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
    ConsumersDeleteButton.Click;
end;

// Запомнить
procedure TEnvironmentEditForm.ConsumersPostButtonClick(Sender: TObject);
begin
  try
    if DataModule2.Customers_table.State in [dsInsert, dsEdit] then
      try
        DataModule2.Customers_table.Post;
      except
        DataModule2.Customers_table.Cancel;
      end;
  except
    MyMessageDlg('Поле "Имя, фамилия" повторяется!'+#13#10+'Поле должно быть уникальным.',
      mtWarning, [mbYes], ['ОК'], 'Ошибка');
    Abort;
  end;
  // Интерфейс {
  ConsumersGrid.Enabled := True;
  StoragesGrid.Enabled := True;
  DataModule2.EditBlock(ConsumersEditToolBar, True, 3);
  DataModule2.EditBlock(StoragesEditToolBar, True, 3);
  ConsumersEditBox.Visible := False;
  ConsumersInfoBox.Visible := True;
  ConsumersEditToolBar.Buttons[1].Caption := LabelAdd;
  ConsumersEditToolBar.Buttons[2].Caption := LabelEdit;
  DataModule2.PanelHighlight(ConsumersInfoBox);
  // } Интерфейс
end;

// Отмена
procedure TEnvironmentEditForm.ConsumersCancelButtonClick(Sender: TObject);
begin
  if DataModule2.Customers_table.State in [dsInsert, dsEdit] then
    DataModule2.Customers_table.Cancel;
  // Интерфейс {
  ConsumersGrid.Enabled := True;
  StoragesGrid.Enabled := True;
  DataModule2.EditBlock(ConsumersEditToolBar, True, 3);
  DataModule2.EditBlock(StoragesEditToolBar, True, 3);
  ConsumersEditBox.Visible := False;
  ConsumersInfoBox.Visible := True;
  ConsumersEditToolBar.Buttons[1].Caption := LabelAdd;
  ConsumersEditToolBar.Buttons[2].Caption := LabelEdit;
  DataModule2.PanelHighlight(ConsumersInfoBox);
  // } Интерфейс
end;

// Склады ----------------------------------------------------------------------
// Новый
procedure TEnvironmentEditForm.StoragesAddButtonClick(Sender: TObject);
begin
  // Интерфейс {
  ConsumersGrid.Enabled := False;
  StoragesGrid.Enabled := False;
  StoragesEditBox.Caption := 'Новый склад';
  DataModule2.EditBlock(ConsumersEditToolBar, False, 3);
  DataModule2.EditBlock(StoragesEditToolBar, False, 3);
  StoragesEditBox.Visible := True;
  StoragesInfoBox.Visible := False;
  StoragesEditToolBar.Buttons[1].Caption := LabelDot + LabelAdd;
  // } Интерфейс
  if DataModule2.Storages_table.State in [dsBrowse] then
  begin
    DataModule2.Storages_table.Append;
    DataModule2.Storages_table.FieldByName('type_sl').AsString := 'Склад';
  end;
  StoragesTypeRadio.Value := 'Склад';
  // Интерфейс {
  DataModule2.PanelHighlight(StoragesEditBox);
  StoragesNameEdit.SetFocus;
  // } Интерфейс
end;

// Изменить
procedure TEnvironmentEditForm.StoragesEditButtonClick(Sender: TObject);
begin
  if DataModule2.Storages_table.State in [dsBrowse] then
    if DataModule2.Storages_table.RecordCount > 0 then
    begin
      DataModule2.Storages_table.Edit;
      // Интерфейс {
      if (DataModule2.Storages_table.FieldByName('id_sl').AsInteger = 1)
        or (DataModule2.Storages_table.FieldByName('id_sl').AsInteger = 2) then
        StoragesTypeRadio.Enabled := False
      else
        StoragesTypeRadio.Enabled := True;
      ConsumersGrid.Enabled := False;
      StoragesGrid.Enabled := False;
      StoragesEditBox.Caption := 'Изменение склада';
      DataModule2.EditBlock(ConsumersEditToolBar, False, 3);
      DataModule2.EditBlock(StoragesEditToolBar, False, 3);
      StoragesEditBox.Visible := True;
      StoragesInfoBox.Visible := False;
      StoragesEditToolBar.Buttons[2].Caption := LabelDot + LabelEdit;
      DataModule2.PanelHighlight(StoragesEditBox);
      // } Интерфейс
    end;
end;

// Удалить
procedure TEnvironmentEditForm.StoragesDeleteButtonClick(Sender: TObject);
begin
  // { Интерфейс
  DataModule2.EditBlock(ConsumersEditToolBar, False, 3);
  DataModule2.EditBlock(StoragesEditToolBar, False, 3);
  StoragesEditToolBar.Buttons[3].Caption := LabelDot + LabelDelete;
  // } Интерфейс
  if (DataModule2.Storages_table.FieldByName('id_sl').AsInteger = 1) then
      MyMessageDlg('Стандартный склад можно только изменить!',
        mtWarning, [mbYes], ['ОК'], 'Ошибка')
  else if (DataModule2.Storages_table.FieldByName('id_sl').AsInteger = 2) then
      MyMessageDlg('Стандартный цех можно только изменить!',
        mtWarning, [mbYes], ['ОК'], 'Ошибка')
  else
    DataModule2.DeleteRecord(DataModule2.Storages_table);
  // { Интерфейс
  DataModule2.EditBlock(ConsumersEditToolBar, True, 3);
  DataModule2.EditBlock(StoragesEditToolBar, True, 3);
  StoragesEditToolBar.Buttons[3].Caption := LabelDelete;
  // } Интерфейс
end;
//
procedure TEnvironmentEditForm.StoragesGridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
    StoragesDeleteButton.Click;
end;

// Запомнить
procedure TEnvironmentEditForm.StoragesPostButtonClick(Sender: TObject);
begin
  try
    if DataModule2.Storages_table.State in [dsInsert, dsEdit] then
        try
          DataModule2.Storages_table.Post;
        except
          DataModule2.Storages_table.Cancel;
        end;
  except
    MyMessageDlg('Поле "Наименование" повторяется!'+#13#10+'Поле должно быть уникальным.',
      mtWarning, [mbYes], ['ОК'], 'Ошибка');
    Abort;
  end;
  // Интерфейс {
  ConsumersGrid.Enabled := True;
  StoragesGrid.Enabled := True;
  DataModule2.EditBlock(ConsumersEditToolBar, True, 3);
  DataModule2.EditBlock(StoragesEditToolBar, True, 3);
  StoragesEditBox.Visible := False;
  StoragesInfoBox.Visible := True;
  StoragesEditToolBar.Buttons[1].Caption := LabelAdd;
  StoragesEditToolBar.Buttons[2].Caption := LabelEdit;
  DataModule2.PanelHighlight(StoragesInfoBox);
  // } Интерфейс
end;

// Отмена
procedure TEnvironmentEditForm.StoragesCancelButtonClick(Sender: TObject);
begin
  if DataModule2.Storages_table.State in [dsInsert, dsEdit] then
    DataModule2.Storages_table.Cancel;
  // Интерфейс {
  ConsumersGrid.Enabled := True;
  StoragesGrid.Enabled := True;
  DataModule2.EditBlock(ConsumersEditToolBar, True, 3);
  DataModule2.EditBlock(StoragesEditToolBar, True, 3);
  StoragesEditBox.Visible := False;
  StoragesInfoBox.Visible := True;
  StoragesEditToolBar.Buttons[1].Caption := LabelAdd;
  StoragesEditToolBar.Buttons[2].Caption := LabelEdit;
  DataModule2.PanelHighlight(StoragesInfoBox);
  // } Интерфейс
end;

end.
