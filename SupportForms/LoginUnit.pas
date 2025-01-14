unit LoginUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList;

type
  TloginForm = class(TForm)
    Panel1: TPanel;
    LoginPassEdit: TEdit;
    Label2: TLabel;
    LoginNameEdit: TEdit;
    Label1: TLabel;
    LoginButton: TButton;
    PanelError: TPanel;
    LabelError: TLabel;
    Indicator: TImage;
    ImageList1: TImageList;
    procedure LoginButtonClick(Sender: TObject);
    procedure LoginNameEditChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure LoginNameEditKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure LoginPassEditKeyPress(Sender: TObject; var Key: Char);
    procedure IndicatorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  loginForm: TloginForm;
  // Вошел ли в аккаунт пользователь
  IsLogged: Boolean;

implementation

{$R *.dfm}

uses DataModule, SettingsUnit;

// Создание формы
procedure TloginForm.FormCreate(Sender: TObject);
begin
    // Форма в меню пуск
  SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
  IsLogged := False;
  Indicator.Picture := nil;
  ImageList1.GetBitmap(0, Indicator.Picture.Bitmap);
end;

// Показ формы
procedure TloginForm.FormShow(Sender: TObject);
begin
  LoginNameEdit.SetFocus;
  LoginNameEdit.Text := '';
  LoginPassEdit.Text := '';
//  if (DataModule2.Employes_table.Locate('name_e', LoginNameParam, []) = False)
//    or (DataModule2.Employes_table.FieldByName('pass_e').AsString <> LoginPassParam) then
//  begin
//    DataModule2.FormOpenError();
//    PanelError.Visible := True;
//    LoginForm.AutoSize := False;
//    LoginForm.AutoSize := True;
//    LabelError.Font.Color := $00008CFF;
//    LabelError.Caption := 'Ошибка входа!'+#13#10+'Введите данные заново или обратитесь к администратору.';
//  end;
end;

// Закрытие формы
procedure TloginForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if IsLogged = False then
  begin
    if MyMessageDlg('Вы не вошли в аккаунт.'+#13#10+'Выйти из программы?', mtConfirmation, [mbYes, mbNo],
      ['Да','Нет'], 'Подтверждение') = mrYes then
    begin
      LoginIdParam := 0;
      LoginPassParam := '';
      DataModule2.SaveSettings;
      Application.Terminate()
    end
    else Action := caNone;
  end;
end;

// Изменение полей
procedure TloginForm.LoginNameEditChange(Sender: TObject);
begin
  if (Length(LoginNameEdit.Text) > 0) and (Length(LoginPassEdit.Text) > 0) then
    LoginButton.Enabled := True
  else LoginButton.Enabled := False;
  PanelError.Visible := False;
  LoginForm.AutoSize := False;
  LoginForm.AutoSize := True;
end;

// Переход на следующий элемент ввода
procedure TloginForm.LoginNameEditKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then LoginPassEdit.SetFocus;
end;
//
procedure TloginForm.LoginPassEditKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if LoginButton.Enabled = True then
      LoginButton.Click;
  end;
end;

// Скрытие/отображение пароля
procedure TloginForm.IndicatorClick(Sender: TObject);
begin
  if LoginPassEdit.PasswordChar = #0 then
  begin
    Indicator.Picture := nil;
    ImageList1.GetBitmap(0, Indicator.Picture.Bitmap);
    LoginPassEdit.PasswordChar := '•';
  end
  else
  begin
    Indicator.Picture := nil;
    ImageList1.GetBitmap(1, Indicator.Picture.Bitmap);
    LoginPassEdit.PasswordChar := #0;
  end;
end;

// Кнопка входа
procedure TloginForm.LoginButtonClick(Sender: TObject);
begin
    // Если пользователь найден, сверить пароль
  if DataModule2.Employes_table.Locate('name_e', Trim(LoginNameEdit.Text), []) then
  begin
      // Если введенный пароль соответствует сохраненному, открыть программу
    if DataModule2.Employes_table.FieldByName('pass_e').AsString = Trim(LoginPassEdit.Text) then
    begin
      LoginIdParam := DataModule2.Employes_table.FieldByName('id_e').AsInteger;
      LoginPassParam := Trim(LoginPassEdit.Text);
      IsLogged := True;
      SettingsForm.FormShow(nil);
      LoginForm.Close;
    end
    else
    begin
      DataModule2.FormOpenError();
      PanelError.Visible := True;
      LoginForm.AutoSize := False;
      LoginForm.AutoSize := True;
      LabelError.Font.Color := clRed;
      LabelError.Caption := 'Неверный пароль!'+#13#10+'Введите данные заново или обратитесь к администратору.';
//      MyMessageDlg('Неправильный пароль!'+#13#10+'Введите данные заново или обратитесь к администратору.',
//        mtWarning, [mbYes], ['ОК'], 'Ошибка логина');
    end;
  end
  else
  begin
    DataModule2.FormOpenError();
    PanelError.Visible := True;
    LoginForm.AutoSize := False;
    LoginForm.AutoSize := True;
      LabelError.Font.Color := clRed;
    LabelError.Caption := 'Неверный логин!'+#13#10+'Введите данные заново или обратитесь к администратору.';
//    MyMessageDlg('Пользователь не найден!'+#13#10+'Введите данные заново или обратитесь к администратору.',
//      mtWarning, [mbYes], ['ОК'], 'Ошибка логина');
  end;
end;

end.
