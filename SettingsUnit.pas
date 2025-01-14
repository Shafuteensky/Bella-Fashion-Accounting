unit SettingsUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.DB, Vcl.Menus, Vcl.ToolWin, Vcl.ComCtrls, Vcl.Mask;

type
  TSettingsForm = class(TForm)
    SettingsPanel: TPanel;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    WindowMinCB: TCheckBox;
    SaveButStateCB: TCheckBox;
    RememWinCB: TCheckBox;
    HighlPanelsCB: TCheckBox;
    DefaultFieldsCB: TCheckBox;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    Label1: TLabel;
    AskRateCB: TCheckBox;
    DispCurrCB: TComboBox;
    ConnectionGB: TGroupBox;
    GridPanel1: TGridPanel;
    Label2: TLabel;
    Label5: TLabel;
    ServerEdit: TEdit;
    PortEdit: TEdit;
    Label3: TLabel;
    PassEdit: TEdit;
    ReconnectButton: TButton;
    GroupBox5: TGroupBox;
    Panel4: TPanel;
    DoNotLogOutCB: TCheckBox;
    LogOutButton: TButton;
    AccManageButton: TButton;
    GridPanel2: TGridPanel;
    Label4: TLabel;
    AccountLabel: TLabel;
    AccountPanel: TPanel;
    AccountEditToolBar: TToolBar;
    AccountEditPanel: TPanel;
    AccountEditBox: TGroupBox;
    GridPanel3: TGridPanel;
    Label9: TLabel;
    Label8: TLabel;
    AccountNameEdit: TDBEdit;
    AccountGrid: TDBGrid;
    AccountPostButton: TButton;
    AccountCancelButton: TButton;
    AccountMenu: TMainMenu;
    N1: TMenuItem;
    AccountAddButton: TMenuItem;
    AccountEditButton: TMenuItem;
    AccountDeleteButton: TMenuItem;
    AccountAdminCB: TDBCheckBox;
    AccountPassEdit: TDBEdit;
    AccountPopupMenu: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    SettingsResetLabel: TLabel;
    AccountGridCheckBox: TDBCheckBox;
    PaintIfNoRateCB: TCheckBox;
    ConnectByStringCB: TCheckBox;
    StringEdit: TEdit;
    GroupBox4: TGroupBox;
    Panel3: TPanel;
    RepIntensLabel: TLabel;
    AutoReportsCB: TCheckBox;
    RepIntensCB: TComboBox;
    procedure ServerEditChange(Sender: TObject);
    procedure PortEditChange(Sender: TObject);
    procedure PassEditChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ReconnectButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SaveButStateCBClick(Sender: TObject);
    procedure WindowMinCBClick(Sender: TObject);
    procedure RememWinCBClick(Sender: TObject);
    procedure DispCurrCBChange(Sender: TObject);
    procedure AskRateCBClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure HighlPanelsCBClick(Sender: TObject);
    procedure AutoReportsCBClick(Sender: TObject);
    procedure RepIntensCBChange(Sender: TObject);
    procedure DoNotLogOutCBClick(Sender: TObject);
    procedure LogOutButtonClick(Sender: TObject);
    procedure DefaultFieldsCBClick(Sender: TObject);
    procedure AccManageButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AccountPostButtonClick(Sender: TObject);
    procedure AccountAddButtonClick(Sender: TObject);
    procedure AccountEditButtonClick(Sender: TObject);
    procedure AccountDeleteButtonClick(Sender: TObject);
    procedure AccountCancelButtonClick(Sender: TObject);
    procedure AccountNameEditChange(Sender: TObject);
    procedure LoadSettingsStates();
    procedure SettingsResetLabelClick(Sender: TObject);
    procedure SettingsResetLabelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SettingsResetLabelMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AccountGridTitleClick(Column: TColumn);
    procedure AccountGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure AccountGridColExit(Sender: TObject);
    procedure AccountGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PaintIfNoRateCBClick(Sender: TObject);
    procedure AccountGridMouseEnter(Sender: TObject);
    procedure ConnectByStringCBClick(Sender: TObject);
    procedure StringEditChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SettingsForm: TSettingsForm;
  IsReconnect: Boolean = False;

implementation

{$R *.dfm}

uses DataModule, LoginUnit, MaterialSupplySearchUnit,
  ProductionSupplySearchUnit, SalesUnit, MaterialSupplyUnit,
  ProductionSupplyUnit;

// Процедуры ===================================================================
// Фокус на таблицу при наведении мышкой
procedure TSettingsForm.AccountGridMouseEnter(Sender: TObject);
begin
  AccountGrid.SetFocus;
end;

// Загрузка состояний кнопок меню настроек
procedure TSettingsForm.LoadSettingsStates();
begin
  SaveButStateCB.Checked := SaveButStateParam;
  WindowMinCB.Checked := WindowMinParam;
  RememWinCB.Checked := RememWinParam;
  AskRateCB.Checked := AskRateParam;
  HighlPanelsCB.Checked := HighlPanelsParam;
  DefaultFieldsCB.Checked := DefaultFieldsParam;
  DispCurrCB.ItemIndex := DispCurrParam;
  ServerEdit.Text := ServerParam;
  PortEdit.Text := IntToStr(PortParam);
  PassEdit.Text := IntToStr(PassParam);
  StringEdit.Text := ConnectionStringParam;
  DoNotLogOutCB.Checked := DoNotLogOutParam;
  PaintIfNoRateCB.Checked := PaintIfNoRateParam;
  ConnectByStringCB.Checked := ConnectByStringParam;
end;

// Создание формы
procedure TSettingsForm.FormCreate(Sender: TObject);
begin
  LoadSettingsStates();
end;

// Активация формы
procedure TSettingsForm.FormActivate(Sender: TObject);
begin
  //
end;

// Закрытие формы
procedure TSettingsForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AccountCancelButton.Click;
  SettingsForm.Close;
end;

// Изменение значения поля
procedure TSettingsForm.PassEditChange(Sender: TObject);
begin
  PassParam := StrToInt(PassEdit.Text);
end;
//
procedure TSettingsForm.PortEditChange(Sender: TObject);
begin
  PortParam := StrToInt(PortEdit.Text);
end;
//
procedure TSettingsForm.ServerEditChange(Sender: TObject);
begin
  ServerParam := ServerEdit.Text;
end;
//
procedure TSettingsForm.StringEditChange(Sender: TObject);
begin
  ConnectionStringParam := StringEdit.Text;
end;

// Показ формы
procedure TSettingsForm.FormShow(Sender: TObject);
begin
//  if DataModule2.DataBaseConnection.Connected = True then ReconnectButton.Enabled := False
//  else ReconnectButton.Enabled := True;
  try
    DataModule2.Employes_table.Locate('id_e', LoginIdParam, []);
    if DataModule2.Employes_table.FieldByName('admin_e').AsBoolean = True then
    begin
      ConnectByStringCB.Enabled := True;
      if ConnectByStringParam = True then
      begin
        Label2.Enabled := False;
        Label3.Enabled := False;
        Label5.Enabled := False;
        ServerEdit.Enabled := False;
        PortEdit.Enabled := False;
        PassEdit.Enabled := False;
        StringEdit.Enabled := True;
      end
      else
      begin
        Label2.Enabled := True;
        Label3.Enabled := True;
        Label5.Enabled := True;
        ServerEdit.Enabled := True;
        PortEdit.Enabled := True;
        PassEdit.Enabled := True;
        StringEdit.Enabled := False;
      end;
      ReconnectButton.Enabled := True;
      AccManageButton.Enabled := True
    end
    else
    begin
      ReconnectButton.Enabled := False;
      Label2.Enabled := False;
      Label3.Enabled := False;
      Label5.Enabled := False;
      ServerEdit.Enabled := False;
      PortEdit.Enabled := False;
      PassEdit.Enabled := False;
      StringEdit.Enabled := False;
      ConnectByStringCB.Enabled := False;
      AccManageButton.Enabled := False;
    end;
    AccountLabel.Caption := DataModule2.Employes_table.FieldByName('name_e').AsString;
  except
  end;
end;

// Запрет на запоминание при пустом поле
procedure TSettingsForm.AccountNameEditChange(Sender: TObject);
begin
  if (Length(AccountNameEdit.Text) = 0) or (Length(AccountPassEdit.Text) = 0) then
    AccountPostButton.Enabled := False
  else AccountPostButton.Enabled := True;
end;

// Сортировка
procedure TSettingsForm.AccountGridTitleClick(Column: TColumn);
begin
  DataModule2.Sorting(AccountGrid, Column);
end;

// Прорисовка CheckBox-ов в Grid-е (поле "Администратор")
procedure TSettingsForm.AccountGridDrawColumnCell( Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
const
  IsChecked : array[Boolean] of Integer = (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED);
var
  DrawState: Integer;
  DrawRect: TRect;
begin
  if (gdFocused in State) then
  begin
    if (Column.Field.FieldName = AccountGridCheckBox.DataField) then
//    if Column = AccountGrid.Columns[4] then
    begin
     AccountGridCheckBox.Left := Rect.Left + AccountGrid.Left + 2;
     AccountGridCheckBox.Top := Rect.Top + AccountGrid.top + 2;
     AccountGridCheckBox.Width := Rect.Right - Rect.Left;
     AccountGridCheckBox.Height := Rect.Bottom - Rect.Top;
     AccountGridCheckBox.Visible := True;
    end
  end
  else
  begin
    if (Column.Field.FieldName = AccountGridCheckBox.DataField) then
//    if Column = AccountGrid.Columns[4] then
    begin
      DrawRect := Rect;
      InflateRect(DrawRect, -1, -1);
      DrawState := ISChecked[Column.Field.AsBoolean];
      AccountGrid.Canvas.FillRect(Rect);
      DrawFrameControl(AccountGrid.Canvas.Handle, DrawRect, DFC_BUTTON, DrawState);
    end;
  end;
end;
//
procedure TSettingsForm.AccountGridColExit(Sender: TObject);
begin
  if AccountGrid.SelectedField.FieldName = AccountGridCheckBox.DataField then
    AccountGridCheckBox.Visible := False
end;

// Кнопки ======================================================================
// Сохранять состояния кнопок
procedure TSettingsForm.SaveButStateCBClick(Sender: TObject);
begin
  SaveButStateParam := SaveButStateCB.Checked;
  // Сброс кнопок при отключенной настройке
  if SaveButStateParam = False then
  begin
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
//    StorageCurrentStorageParam
  end;
end;

// Запускать в неразвернутом виде
procedure TSettingsForm.WindowMinCBClick(Sender: TObject);
begin
  WindowMinParam := WindowMinCB.Checked;
end;

// Запоминать последнее окно
procedure TSettingsForm.RememWinCBClick(Sender: TObject);
begin
  RememWinParam := RememWinCB.Checked;
end;

// Подсвечивать новые панели
procedure TSettingsForm.HighlPanelsCBClick(Sender: TObject);
begin
  HighlPanelsParam := HighlPanelsCB.Checked;
end;

// Поля по-умолчанию
procedure TSettingsForm.DefaultFieldsCBClick(Sender: TObject);
begin
  DefaultFieldsParam := DefaultFieldsCB.Checked;
end;

// Окрашивать строки при отсутствии курса
procedure TSettingsForm.PaintIfNoRateCBClick(Sender: TObject);
begin
  PaintIfNoRateParam := PaintIfNoRateCB.Checked;
  if SalesForm <> nil then
  begin
    SalesForm.SalesGrid.Refresh;
    SalesForm.PurchaseGrid.Refresh;
  end;
  if ProductionSupplyForm <> nil then
  begin
    ProductionSupplyForm.ProductSupplyGrid.Refresh;
    ProductionSupplyForm.PurchaseGrid.Refresh;
  end;
  if MaterialSupplyForm <> nil then
  begin
    MaterialSupplyForm.MaterialSupplyGrid.Refresh;
    MaterialSupplyForm.PurchaseGrid.Refresh;
  end;
end;

// Просить ввести курс при его отсутствии
procedure TSettingsForm.AskRateCBClick(Sender: TObject);
begin
  AskRateParam := AskRateCB.Checked;
end;

// Отображаемая валюта
procedure TSettingsForm.DispCurrCBChange(Sender: TObject);
begin
  DispCurrParam := DispCurrCB.ItemIndex;
  DataModule2.ChangeTableCurrency();
end;

// Создавать отчеты автоматически
procedure TSettingsForm.AutoReportsCBClick(Sender: TObject);
begin
  AutoReportsParam := AutoReportsCB.Checked;
  if AutoReportsCB.Checked = True then
  begin
    RepIntensLabel.Enabled := True;
    RepIntensCB.Enabled := True;
  end
  else
  begin
    RepIntensLabel.Enabled := False;
    RepIntensCB.Enabled := False;
  end;
end;

// Интенсивность создания отчетов
procedure TSettingsForm.RepIntensCBChange(Sender: TObject);
begin
  RepIntensParam := RepIntensCB.ItemIndex;
end;

// Переподключение
procedure TSettingsForm.ReconnectButtonClick(Sender: TObject);
begin
  IsReconnect := True;
  DataModule2.ReConnectDB();
  IsReconnect := False;
  if SalesForm <> nil then
  begin
    SalesForm.SalesGrid.Refresh;
    SalesForm.PurchaseGrid.Refresh;
  end;
  if ProductionSupplyForm <> nil then
  begin
    ProductionSupplyForm.ProductSupplyGrid.Refresh;
    ProductionSupplyForm.PurchaseGrid.Refresh;
  end;
  if MaterialSupplyForm <> nil then
  begin
    MaterialSupplyForm.MaterialSupplyGrid.Refresh;
    MaterialSupplyForm.PurchaseGrid.Refresh;
  end;
end;

// Подключаться по строке
procedure TSettingsForm.ConnectByStringCBClick(Sender: TObject);
begin
  ConnectByStringParam := ConnectByStringCB.Checked;
  if ConnectByStringCB.Checked = True then
  begin
    Label2.Enabled := False;
    Label3.Enabled := False;
    Label5.Enabled := False;
    ServerEdit.Enabled := False;
    PortEdit.Enabled := False;
    PassEdit.Enabled := False;
    StringEdit.Enabled := True;
//    ReconnectButton.Enabled := True;
  end
  else
  begin
    Label2.Enabled := True;
    Label3.Enabled := True;
    Label5.Enabled := True;
    ServerEdit.Enabled := True;
    PortEdit.Enabled := True;
    PassEdit.Enabled := True;
    StringEdit.Enabled := False;
  end;
end;

// Не выходить из учетной записи
procedure TSettingsForm.DoNotLogOutCBClick(Sender: TObject);
begin
  DoNotLogOutParam := DoNotLogOutCB.Checked;
end;

// Выйти из учетной записи
procedure TSettingsForm.LogOutButtonClick(Sender: TObject);
begin
  if MyMessageDlg('Выйти из текущей учетной записи?', mtConfirmation, [mbYes, mbNo], ['Да','Нет'], 'Подтверждение') = mrYes then
  begin
    AccountCancelButton.Click;
    AccountPanel.Visible := False;
    AccountLabel.Caption := '-';
    // Выход из учетной записи *************
    LoginIdParam := 0;
    IsLogged := False;
    LoginForm.ShowModal;
  end;
end;

// Управление аккаунтами
procedure TSettingsForm.AccManageButtonClick(Sender: TObject);
begin
  if AccountPanel.Visible = False then
  begin
    AccManageButton.Caption := '< Управление аккаунтами';
    AccountPanel.Visible := True;
    // Отключение отображения горизонтального ScrollBar
    ShowScrollBar(AccountGrid.Handle, SB_HORZ, False);
  end
  else
  begin
    AccManageButton.Caption := 'Управление аккаунтами >';
    AccountPanel.Visible := False;
  end;
end;

// Кнопки (Управления аккаунтами) ==============================================
// Добавить
procedure TSettingsForm.AccountAddButtonClick(Sender: TObject);
begin
  // Интерфейс {
  AccountGrid.Enabled := False;
  AccountEditBox.Caption := 'Новый аккаунт';
  DataModule2.EditBlock(AccountEditToolBar, False, 3);
  AccountEditPanel.Visible := True;
  AccountEditToolBar.Buttons[1].Caption := LabelDot + LabelAdd;
  // } Интерфейс
  if DataModule2.Employes_table.State in [dsBrowse] then
  begin
    DataModule2.Employes_table.Append;
    DataModule2.Employes_table.FieldByName('admin_e').AsBoolean := False;
  end;
  // Интерфейс {
  DataModule2.PanelHighlight(AccountEditBox);
  AccountNameEdit.SetFocus;
  // } Интерфейс
end;

// Изменить
procedure TSettingsForm.AccountEditButtonClick(Sender: TObject);
begin
  if DataModule2.Employes_table.State in [dsBrowse] then
    if DataModule2.Employes_table.RecordCount > 0 then
    begin
      // Запрет на изменение аккаунта главного администратора не от его лица
      if (LoginIdParam <> 1) and (DataModule2.Employes_table.FieldByName('id_e').AsInteger = 1) then
          MyMessageDlg('Вы не можете изменить данный аккаунт!',
            mtWarning, [mbYes], ['ОК'], 'Ошибка')
      else
      begin
        DataModule2.Employes_table.Edit;
        // Интерфейс {
        if (DataModule2.Employes_table.FieldByName('id_e').AsInteger = 1) then
          AccountAdminCB.Enabled := False
        else AccountAdminCB.Enabled := True;
        AccountGrid.Enabled := False;
        AccountEditBox.Caption := 'Изменение аккаунта';
        DataModule2.EditBlock(AccountEditToolBar, False, 3);
        AccountEditPanel.Visible := True;
        AccountEditToolBar.Buttons[2].Caption := LabelDot + LabelEdit;
        DataModule2.PanelHighlight(AccountEditBox);
        // } Интерфейс
      end;
    end;
end;

// Удалить
procedure TSettingsForm.AccountDeleteButtonClick(Sender: TObject);
begin
  // Интерфейс {
    DataModule2.EditBlock(AccountEditToolBar, False, 3);
    AccountEditToolBar.Buttons[3].Caption := LabelDot + LabelDelete;
  // } Интерфейс
  if (DataModule2.Employes_table.FieldByName('id_e').AsInteger = 1) then
    MyMessageDlg('Администратора можно только изменить!',
      mtWarning, [mbYes], ['ОК'], 'Ошибка')
  else if (DataModule2.Employes_table.FieldByName('id_e').AsInteger = LoginIdParam) then
    MyMessageDlg('Активный аккаунт удалить нельзя!'+#13#10+'Обратитесь к администратору.',
      mtWarning, [mbYes], ['ОК'], 'Ошибка')
  else
    DataModule2.DeleteRecord(DataModule2.Employes_table);
  // Интерфейс {
    DataModule2.EditBlock(AccountEditToolBar, True, 3);
    AccountEditToolBar.Buttons[3].Caption := LabelDelete;
  // } Интерфейс
end;
//
procedure TSettingsForm.AccountGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
    AccountDeleteButton.Click;
end;

// Запомнить
procedure TSettingsForm.AccountPostButtonClick(Sender: TObject);
begin
  try
    if DataModule2.Employes_table.State in [dsInsert, dsEdit] then
      try
        if DataModule2.Employes_table.FieldByName('id_e').AsInteger = LoginIdParam then
        begin
          AccountLabel.Caption := DataModule2.Employes_table.FieldByName('name_e').AsString;
          LoginPassParam := DataModule2.Employes_table.FieldByName('pass_e').AsString;
        end;
        DataModule2.Employes_table.Post;
      except
        DataModule2.Employes_table.Cancel;
      end;
  except
    MyMessageDlg('Пользователь с таким логином уже существует!',
      mtWarning, [mbYes], ['ОК'], 'Ошибка');
    Abort;
  end;
  // Интерфейс {
  AccountGrid.Enabled := True;
  DataModule2.EditBlock(AccountEditToolBar, True, 3);
  AccountEditPanel.Visible := False;
  AccountEditToolBar.Buttons[1].Caption := LabelAdd;
  AccountEditToolBar.Buttons[2].Caption := LabelEdit;
  // } Интерфейс
end;

// Отменить
procedure TSettingsForm.AccountCancelButtonClick(Sender: TObject);
begin
  if DataModule2.Employes_table.State in [dsInsert, dsEdit] then
    DataModule2.Employes_table.Cancel;
  // Интерфейс {
    AccountGrid.Enabled := True;
    DataModule2.EditBlock(AccountEditToolBar, True, 3);
    AccountEditPanel.Visible := False;
    AccountEditToolBar.Buttons[1].Caption := LabelAdd;
    AccountEditToolBar.Buttons[2].Caption := LabelEdit;
  // } Интерфейс
end;

// Сброс настроек
procedure TSettingsForm.SettingsResetLabelClick(Sender: TObject);
begin
  if MyMessageDlg('Вы действительно хотите сбросить настройки?',
    mtError, [mbYes, mbNo], ['Да','Нет'], 'Сброс настроек') = mrYes then
  begin
    DataModule2.SettingsReset();
    LoadSettingsStates();
    DataModule2.ChangeTableCurrency();
  end;
end;
//
procedure TSettingsForm.SettingsResetLabelMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SettingsResetLabel.Font.Color := clSilver;
  SettingsResetLabel.Font.Style := [fsUnderline, fsItalic];
end;
//
procedure TSettingsForm.SettingsResetLabelMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SettingsResetLabel.Font.Color := clGray;
  SettingsResetLabel.Font.Style := [fsUnderline];
end;

end.
