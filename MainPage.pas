unit MainPage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, Vcl.ToolWin,
  Vcl.ComCtrls, System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Math;

type
  TMainForm = class(TForm)
    MainMenu: TMainMenu;
    MenuShopButton: TMenuItem;
    MenuSalesButton: TMenuItem;
    MenuStorageButton: TMenuItem;
    MenuSupplyButton: TMenuItem;
    MenuSupplyProductButton: TMenuItem;
    MenuSupplyMaterialButton: TMenuItem;
    MenuEditButton: TMenuItem;
    MenuEditProductButton: TMenuItem;
    MenuEditMaterialButton: TMenuItem;
    MenuReportButton: TMenuItem;
    MenuFinancialReportButton: TMenuItem;
    MenuABCButton: TMenuItem;
    MenuOptionsButton: TMenuItem;
    MenuExitButton: TMenuItem;
    ToolBarPanel: TPanel;
    ImageList1: TImageList;
    MenuManufactoriesButton: TMenuItem;
    MenuConsumersButton: TMenuItem;
    MenuSettingsButton: TMenuItem;
    MenuRateButton: TMenuItem;
    MenuNotesButton: TMenuItem;
    MenuStoragesButton: TMenuItem;
    Bevel1: TBevel;
    ToolBar1: TToolBar;
    MainPanel: TPanel;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    MenuToolsButton: TMenuItem;
    N1: TMenuItem;
    StatusBar1: TStatusBar;
    MenuComonReportButton: TMenuItem;
    procedure MenuSalesButtonClick(Sender: TObject);
    procedure MenuStorageButtonClick(Sender: TObject);
    procedure MenuSupplyProductButtonClick(Sender: TObject);
    procedure MenuSupplyMaterialButtonClick(Sender: TObject);
    procedure MenuEditProductButtonClick(Sender: TObject);
    procedure MenuEditMaterialButtonClick(Sender: TObject);
    procedure MenuFinancialReportButtonClick(Sender: TObject);
    procedure MenuABCButtonClick(Sender: TObject);
    procedure MenuExitButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDeactivating;
    procedure MenuSettingsButtonClick(Sender: TObject);
    procedure MenuConsumersButtonClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure MenuNotesButtonClick(Sender: TObject);
    procedure MenuRateButtonClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MenuComonReportButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses ABCAnalysisUnit, DataModule, FinancialReportUnit, MaterialEditUnit,
  MaterialSupplyUnit, ProductionEditUnit, ProductionSupplyUnit, SalesUnit,
  SettingsUnit, StorageUnit, EnvironmentEditUnit, CalculatorUnit,
  ManualUnit, NotesUnit, RateUnit, AboutUnit, RateUpdateUnit, CommonReportUnit,
  LoginUnit;

// Процедуры ===================================================================
// Выход из формы
procedure TmainForm.FormDeactivating;
begin
  if SalesForm <> nil then
  begin
    if SalesForm.EditPanel.Visible = True then
      SalesForm.CancelButton.Click;
    if SalesForm.PurchaseEditPanel.Visible = True then
    begin
      SalesForm.PositionCancelButton.Click;
      if MyMessageDlg('Отменить список продаж?', mtConfirmation, [mbYes, mbNo], ['Да','Нет'], 'Подтверждение') = mrYes then
        DataModule2.ClearTable(DataModule2.Sales_buffer_table)
      else Abort;
    end;
    DataModule2.Sales_view_table.Filter := '[fictitious] = False';
    freeandnil(SalesForm);
  end;
  if StorageForm <> nil then
  begin
    if StorageForm.FictSaleBox.Visible = True then
      StorageForm.FictSaleCancelButton.Click;
    if StorageForm.FictSuppBox.Visible = True then
      StorageForm.FictSuppCancelButton.Click;
    DataModule2.Storage_table.Filter := '';
    freeandnil(StorageForm);
  end;
  if ProductionSupplyForm <> nil then
  begin
    if ProductionSupplyForm.EditPanel.Visible = True then
      ProductionSupplyForm.CancelButton.Click;
    if ProductionSupplyForm.PurchaseEditPanel.Visible = True then
    begin
      ProductionSupplyForm.PositionCancelButton.Click;
      if MyMessageDlg('Отменить список поставок?', mtConfirmation, [mbYes, mbNo], ['Да','Нет'], 'Подтверждение') = mrYes then
        DataModule2.ClearTable(DataModule2.Product_supply_buffer_table)
      else Abort;
    end;
    DataModule2.Product_supply_view_table.Filter := '[fictitious] = False';
    freeandnil(ProductionSupplyForm);
  end;
  if MaterialSupplyForm <> nil then
  begin
    if MaterialSupplyForm.EditPanel.Visible = True then
      MaterialSupplyForm.CancelButton.Click;
    if MaterialSupplyForm.PurchaseEditPanel.Visible = True then
    begin
      MaterialSupplyForm.PositionCancelButton.Click;
      if MyMessageDlg('Отменить список поставок?', mtConfirmation, [mbYes, mbNo], ['Да','Нет'], 'Подтверждение') = mrYes then
        DataModule2.ClearTable(DataModule2.Material_supply_buffer_table)
      else Abort;
    end;
    DataModule2.Material_supply_view_table.Filter := '';
    DataModule2.Material_supply_view_table.Filtered := False;
    freeandnil(MaterialSupplyForm);
  end;
  if ProductionEditForm <> nil then
  begin
    if ProductionEditForm.ProductionEditPanel.Visible = True then
      ProductionEditForm.ProductionCancelButton.Click;
    if ProductionEditForm.ColorEditBox.Visible = True then
      ProductionEditForm.ColorCancelButton.Click;
    if ProductionEditForm.TypeEditBox.Visible = True then
      ProductionEditForm.TypeCancelButton.Click;
    freeandnil(ProductionEditForm);
  end;
  if MaterialEditForm <> nil then
  begin
    if MaterialEditForm.MaterialEditPanel.Visible = True then
      MaterialEditForm.MaterialCancelButton.Click;
    if MaterialEditForm.ColorEditBox.Visible = True then
      MaterialEditForm.ColorCancelButton.Click;
    if MaterialEditForm.TypeEditBox.Visible = True then
      MaterialEditForm.TypeCancelButton.Click;
    freeandnil(MaterialEditForm);
  end;
  if EnvironmentEditForm <> nil then
  begin
    if EnvironmentEditForm.ConsumersEditBox.Visible = True then
      EnvironmentEditForm.ConsumersCancelButton.Click;
    if EnvironmentEditForm.StoragesEditBox.Visible = True then
      EnvironmentEditForm.StoragesCancelButton.Click;
    freeandnil(EnvironmentEditForm);
  end;
  if FinancialReportForm <> nil then freeandnil(FinancialReportForm);
  if ABCAnalysisForm <> nil then freeandnil(ABCAnalysisForm);
  if ABCAnalysisForm <> nil then freeandnil(ABCAnalysisForm);
end;

// Изменение размеров формы
procedure TMainForm.FormResize(Sender: TObject);
begin
  // Скрыть статус-бар, если программа развернута
  if MainForm.WindowState = wsMaximized then StatusBar1.Visible := False
  else StatusBar1.Visible := True;
//  if SalesForm.Visible = True then
//  begin
//
//  end;
//  if StorageForm.Visible = True then
//  begin
//
//  end;
//  if ProductionSupplyForm.Visible = True then
//  begin
//
//  end;
//  if MaterialSupplyForm.Visible = True then
//  begin
//
//  end;
//  if ProductionEditForm.Visible = True then
//  begin
//
//  end;
//  if MaterialEditForm.Visible = True then
//  begin
//
//  end;
//  if EnvironmentEditForm.Visible = True then
//  begin
//
//  end;
//  if FinancialReportForm.Visible = True then
//  begin
//
//  end;
//  if ABCAnalysisForm.Visible = True then
//  begin
//
//  end;
end;

// Показ формы
procedure TMainForm.FormShow(Sender: TObject);
begin
  // КОСТЫЛЬ: при изменении шиирины формы ребенок встает на свое место
  MainForm.Width := MainForm.Width + 1;
  MainForm.Width := MainForm.Width - 1;
end;

// Создание формы
procedure TMainForm.FormCreate(Sender: TObject);
begin
  FirstRun := True;
  // КОСТЫЛЬ: при получении ошибки среда ломает скейлинг.
  MainForm.Height := 501;
  MainForm.Height := 500;
  // Деактивация активных форм
  FormDeactivating();
  // Упорядоченное создание форм
  SettingsForm := TSettingsForm.Create(Self);
    // Загрузка настроек
  DataModule2.LoadSettings;
    // Подключение к БД
  DataModule2.ReConnectDB();
  RateForm := TRateForm.Create(Self);
  NotesForm := TNotesForm.Create(Self);
  LoginForm := TLoginForm.Create(Self);
  // Вход в учетную запись
    // Если включена настройка автоматического входа в аккаунт, то войти; иначе открыть форму входа
  try
    if DoNotLogOutParam = True then
    begin
        // Если пользователь найден, сверить пароль; иначе открыть форму входа
      if DataModule2.Employes_table.Locate('id_e', LoginIdParam, []) then
      begin
          // Если введенный пароль соответствует сохраненному, открыть программу; иначе открыть форму входа
        if DataModule2.Employes_table.FieldByName('pass_e').AsString <> LoginPassParam then LoginForm.ShowModal();
      end
      else LoginForm.ShowModal();
    end
    else
    begin
      LoginForm.ShowModal();
    end;
  except
  end;
  // Ввод курса валюты
  RateUpdateForm := TRateUpdateForm.Create(application);
  RateForm.RateDTP1.Date := Date;
  try
    if DataModule2.Rate_table.Locate('date_r', DateToStr(Date), []) = False then
    begin
      if AutoRateParam = False then
      begin
        if AskRateParam = True then
        begin
          RateUpdateForm.ShowModal;
        end
        else
        begin
          MyMessageDlg('Курс доллара отсутствует: цены будут'+#13#10+'отображены в долларах.',
            mtWarning, [mbYes], ['ОК'], 'Отсутствие курса');
        end;
      end
      else
      begin
        RateForm.RateDTP1.Date := Date;
        if AutoRateParam = True then RateForm.SetAutoRate(True);
        RateForm.GetRate();
      end;
    end;
  except
  end;
  // Загрузка последней страницы
  if RememWinParam = True then
  begin
    if CurrWinParam = 'Sales' then
    begin
      SalesForm := TSalesForm.Create(application);
      SalesForm.LoadButStates();
      DataModule2.ShowForm(SalesForm);
    end;
    if CurrWinParam = 'Storages' then
    begin
      StorageForm := TStorageForm.Create(application);
      StorageForm.LoadButStates();
      DataModule2.ShowForm(StorageForm);
    end;
    if CurrWinParam = 'ProductionSupply' then
    begin
      ProductionSupplyForm := TProductionSupplyForm.Create(application);
      ProductionSupplyForm.LoadButStates();
      DataModule2.ShowForm(ProductionSupplyForm);
    end;
    if CurrWinParam = 'MaterialSupply' then
    begin
      MaterialSupplyForm := TMaterialSupplyForm.Create(application);
      MaterialSupplyForm.LoadButStates();
      DataModule2.ShowForm(MaterialSupplyForm);
    end;
    if CurrWinParam = 'ProductionEdit' then
    begin
      ProductionEditForm := TProductionEditForm.Create(application);
      DataModule2.ShowForm(ProductionEditForm);
    end;
    if CurrWinParam = 'MaterialEdit' then
    begin
      MaterialEditForm := TMaterialEditForm.Create(application);
      DataModule2.ShowForm(MaterialEditForm);
    end;
    if CurrWinParam = 'EnvironmentEdit' then
    begin
      EnvironmentEditForm := TEnvironmentEditForm.Create(application);
      DataModule2.ShowForm(EnvironmentEditForm);
    end;
    if CurrWinParam = 'FinancialReport' then
    begin
      FinancialReportForm := TFinancialReportForm.Create(application);
      DataModule2.ShowForm(FinancialReportForm);
    end;
    if CurrWinParam = 'ABCAnalysis' then
    begin
      ABCAnalysisForm := TABCAnalysisForm.Create(application);
      DataModule2.ShowForm(ABCAnalysisForm);
    end;
  end
  else
  begin
    SalesForm := TSalesForm.Create(application);
    SalesForm.LoadButStates();
    DataModule2.ShowForm(SalesForm);
  end;
  // Развернутый/неразвернутый вид
  if WindowMinParam = True then
  begin
    MainForm.WindowState := wsNormal;
  end
  else MainForm.WindowState := wsMaximized;
  // Переключение таблиц на необходимую по валюте
  SettingsForm.DispCurrCB.ItemIndex := DispCurrParam;
  DataModule2.ChangeTableCurrency();
end;

// Активация формы
procedure TMainForm.FormActivate(Sender: TObject);
begin
  //
end;

// Закрытие формы
procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MyMessageDlg('Выйти из программы?', mtConfirmation, [mbYes, mbNo], ['Да','Нет'], 'Подтверждение') = mrYes then
  begin
    FormDeactivating;
    if NotesForm <> nil then NotesForm.Close;
    if RateForm <> nil then RateForm.Close;
    DataModule2.SaveSettings;
    Application.Terminate();
  end
  else Action := caNone;
end;

// Кнопки ======================================================================
// Продажи
procedure TMainForm.MenuSalesButtonClick(Sender: TObject);
begin
  DataModule2.ReactivateTable(DataModule2.Sales_table);
  DataModule2.ReactivateTable(DataModule2.Sales_table_2);
  DataModule2.ReactivateTable(DataModule2.Sales_view_table_search);
  DataModule2.ReactivateTable(DataModule2.Sales_view_table);
  DataModule2.ReactivateTable(DataModule2.Sales_buffer_table);
  DataModule2.ReactivateTable(DataModule2.Sales_buffer_view_table);
  // Интерфейс {
  if SalesForm <> nil then
  begin
    DataModule2.FormOpenError();
  end
  else
  begin
    CurrWinParam := 'Sales';
    FormDeactivating();
    SalesForm := TSalesForm.Create(application);
    DataModule2.ShowForm(SalesForm);
  end;
  // } Интерфейс
end;

// Склад
procedure TMainForm.MenuStorageButtonClick(Sender: TObject);
begin
//  DataModule2.ReactivateTable(DataModule2.Storage_table);
//  DataModule2.ReactivateTable(DataModule2.Storage_table_search);
  // Интерфейс {
  if StorageForm <> nil then
  begin
    DataModule2.FormOpenError();
  end
  else
  begin
    CurrWinParam := 'Storages';
    FormDeactivating();
    StorageForm := TStorageForm.Create(application);
    DataModule2.ShowForm(StorageForm);
  end;
  // } Интерфейс
end;

// Поставки продукции
procedure TMainForm.MenuSupplyProductButtonClick(Sender: TObject);
begin
  DataModule2.ReactivateTable(DataModule2.Product_supply_table);
  DataModule2.ReactivateTable(DataModule2.Product_supply_view_table);
  DataModule2.ReactivateTable(DataModule2.Product_supply_view_table_search);
  DataModule2.ReactivateTable(DataModule2.Product_supply_buffer_table);
  DataModule2.ReactivateTable(DataModule2.Product_supply_buffer_view_table);
  // Интерфейс {
  if ProductionSupplyForm <> nil then
  begin
    DataModule2.FormOpenError();
  end
  else
  begin
    CurrWinParam := 'ProductionSupply';
    FormDeactivating();
    ProductionSupplyForm := TProductionSupplyForm.Create(application);
    DataModule2.ShowForm(ProductionSupplyForm);
  end;
  // } Интерфейс
end;

// Поставки материала
procedure TMainForm.MenuSupplyMaterialButtonClick(Sender: TObject);
begin
  DataModule2.ReactivateTable(DataModule2.Material_supply_table);
  DataModule2.ReactivateTable(DataModule2.Material_supply_view_table);
  DataModule2.ReactivateTable(DataModule2.Material_supply_view_table_search);
  DataModule2.ReactivateTable(DataModule2.Material_supply_buffer_table);
  DataModule2.ReactivateTable(DataModule2.Material_supply_buffer_view_table);
  // Интерфейс {
  if MaterialSupplyForm <> nil then
  begin
    DataModule2.FormOpenError();
  end
  else
  begin
    CurrWinParam := 'MaterialSupply';
    FormDeactivating();
    MaterialSupplyForm := TMaterialSupplyForm.Create(application);
    DataModule2.ShowForm(MaterialSupplyForm);
  end;
  // } Интерфейс
end;

// Редактирование продукции
procedure TMainForm.MenuEditProductButtonClick(Sender: TObject);
begin
  DataModule2.ReactivateTable(DataModule2.Products_table);
  DataModule2.ReactivateTable(DataModule2.Products_view_table);
  DataModule2.ReactivateTable(DataModule2.Product_type_table_1);
  DataModule2.ReactivateTable(DataModule2.Product_type_table_2);
  DataModule2.ReactivateTable(DataModule2.Product_color_table);
  // Интерфейс {
  if ProductionEditForm <> nil then
  begin
    DataModule2.FormOpenError();
  end
  else
  begin
    CurrWinParam := 'ProductionEdit';
    FormDeactivating();
    ProductionEditForm := TProductionEditForm.Create(application);
    DataModule2.ShowForm(ProductionEditForm);
  end;
  // } Интерфейс
end;

// Редактирование материала
procedure TMainForm.MenuEditMaterialButtonClick(Sender: TObject);
begin
  DataModule2.ReactivateTable(DataModule2.Materials_table);
  DataModule2.ReactivateTable(DataModule2.Materials_view_table);
  DataModule2.ReactivateTable(DataModule2.Material_type_table_1);
  DataModule2.ReactivateTable(DataModule2.Material_type_table_2);
  DataModule2.ReactivateTable(DataModule2.Material_color_table);
  // Интерфейс {
  if MaterialEditForm <> nil then
  begin
    DataModule2.FormOpenError();
  end
  else
  begin
    CurrWinParam := 'MaterialEdit';
    FormDeactivating();
    MaterialEditForm := TMaterialEditForm.Create(application);
    DataModule2.ShowForm(MaterialEditForm);
  end;
  // } Интерфейс
end;

// Потребители
procedure TMainForm.MenuConsumersButtonClick(Sender: TObject);
begin
  DataModule2.ReactivateTable(DataModule2.Customers_table);
  DataModule2.ReactivateTable(DataModule2.Storages_table);
  DataModule2.ReactivateTable(DataModule2.Storages_table_2);
  // Интерфейс {
  if EnvironmentEditForm <> nil then
  begin
    DataModule2.FormOpenError();
  end
  else
  begin
    CurrWinParam := 'EnvironmentEdit';
    FormDeactivating();
    EnvironmentEditForm := TEnvironmentEditForm.Create(application);
    DataModule2.ShowForm(EnvironmentEditForm);
  end;
  // } Интерфейс
end;

// Финансовый отчет
procedure TMainForm.MenuFinancialReportButtonClick(Sender: TObject);
begin
  DataModule2.ReactivateQuery(DataModule2.Financial_report_table_1);
  DataModule2.ReactivateQuery(DataModule2.Financial_report_table_2);
  // Интерфейс {
  if FinancialReportForm <> nil then
  begin
    DataModule2.FormOpenError();
  end
  else
  begin
    CurrWinParam := 'FinancialReport';
    FormDeactivating();
    FinancialReportForm := TFinancialReportForm.Create(application);
    DataModule2.ShowForm(FinancialReportForm);
  end;
  // } Интерфейс
end;

// Анализ остатка
procedure TMainForm.MenuABCButtonClick(Sender: TObject);
begin
  // Интерфейс {
  if ABCAnalysisForm <> nil then
  begin
    DataModule2.FormOpenError();
  end
  else
  begin
    CurrWinParam := 'ABCAnalysis';
    FormDeactivating();
    ABCAnalysisForm := TABCAnalysisForm.Create(application);
    DataModule2.ShowForm(ABCAnalysisForm);
  end;
  // } Интерфейс
end;

// Общий отчет
procedure TMainForm.MenuComonReportButtonClick(Sender: TObject);
begin
  // Интерфейс {
  CommonReportForm := TCommonReportForm.Create(Self);
  CommonReportForm.ShowModal;
  // } Интерфейс
end;


// Настройки
procedure TMainForm.MenuSettingsButtonClick(Sender: TObject);
begin
  // Интерфейс {
  SettingsForm := TSettingsForm.Create(Self);
  SettingsForm.ShowModal;
  // } Интерфейс
end;

// Калькулятор
procedure TMainForm.N2Click(Sender: TObject);
begin
  // Интерфейс {
  if CalculatorForm = nil then
    CalculatorForm := TCalculatorForm.Create(Self);
  CalculatorForm.Show;
  // } Интерфейс
end;

// Заметки
procedure TMainForm.MenuNotesButtonClick(Sender: TObject);
begin
  // Интерфейс {
  if NotesForm = nil then
    NotesForm := TNotesForm.Create(Self);
  NotesForm.Show;
  // } Интерфейс
end;

// Курс
procedure TMainForm.MenuRateButtonClick(Sender: TObject);
begin
  // Интерфейс {
  if RateForm = nil then
    RateForm := TRateForm.Create(Self);
  RateForm.Show;
  // } Интерфейс
end;

// О программе
procedure TMainForm.N3Click(Sender: TObject);
begin
  // Интерфейс {
  if AboutForm = nil then
    AboutForm := TAboutForm.Create(Self);
  AboutForm.ShowModal;
  // } Интерфейс
end;

// Руководство
procedure TMainForm.N4Click(Sender: TObject);
begin
  // Интерфейс {
  if ManualForm = nil then
    ManualForm := TManualForm.Create(Self);
  ManualForm.Show;
  // } Интерфейс
end;

// Выход
procedure TMainForm.MenuExitButtonClick(Sender: TObject);
begin
  if MyMessageDlg('Выйти из программы?', mtConfirmation, [mbYes, mbNo], ['Да','Нет'], 'Подтверждение') = mrYes then
  begin
    if NotesForm <> nil then NotesForm.Close;
    if RateForm <> nil then RateForm.Close;
    FormDeactivating();
    DataModule2.SaveSettings;
    Application.Terminate();
  end;
end;



end.

