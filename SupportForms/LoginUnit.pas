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
  // ����� �� � ������� ������������
  IsLogged: Boolean;

implementation

{$R *.dfm}

uses DataModule, SettingsUnit;

// �������� �����
procedure TloginForm.FormCreate(Sender: TObject);
begin
    // ����� � ���� ����
  SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
  IsLogged := False;
  Indicator.Picture := nil;
  ImageList1.GetBitmap(0, Indicator.Picture.Bitmap);
end;

// ����� �����
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
//    LabelError.Caption := '������ �����!'+#13#10+'������� ������ ������ ��� ���������� � ��������������.';
//  end;
end;

// �������� �����
procedure TloginForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if IsLogged = False then
  begin
    if MyMessageDlg('�� �� ����� � �������.'+#13#10+'����� �� ���������?', mtConfirmation, [mbYes, mbNo],
      ['��','���'], '�������������') = mrYes then
    begin
      LoginIdParam := 0;
      LoginPassParam := '';
      DataModule2.SaveSettings;
      Application.Terminate()
    end
    else Action := caNone;
  end;
end;

// ��������� �����
procedure TloginForm.LoginNameEditChange(Sender: TObject);
begin
  if (Length(LoginNameEdit.Text) > 0) and (Length(LoginPassEdit.Text) > 0) then
    LoginButton.Enabled := True
  else LoginButton.Enabled := False;
  PanelError.Visible := False;
  LoginForm.AutoSize := False;
  LoginForm.AutoSize := True;
end;

// ������� �� ��������� ������� �����
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

// �������/����������� ������
procedure TloginForm.IndicatorClick(Sender: TObject);
begin
  if LoginPassEdit.PasswordChar = #0 then
  begin
    Indicator.Picture := nil;
    ImageList1.GetBitmap(0, Indicator.Picture.Bitmap);
    LoginPassEdit.PasswordChar := '�';
  end
  else
  begin
    Indicator.Picture := nil;
    ImageList1.GetBitmap(1, Indicator.Picture.Bitmap);
    LoginPassEdit.PasswordChar := #0;
  end;
end;

// ������ �����
procedure TloginForm.LoginButtonClick(Sender: TObject);
begin
    // ���� ������������ ������, ������� ������
  if DataModule2.Employes_table.Locate('name_e', Trim(LoginNameEdit.Text), []) then
  begin
      // ���� ��������� ������ ������������� ������������, ������� ���������
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
      LabelError.Caption := '�������� ������!'+#13#10+'������� ������ ������ ��� ���������� � ��������������.';
//      MyMessageDlg('������������ ������!'+#13#10+'������� ������ ������ ��� ���������� � ��������������.',
//        mtWarning, [mbYes], ['��'], '������ ������');
    end;
  end
  else
  begin
    DataModule2.FormOpenError();
    PanelError.Visible := True;
    LoginForm.AutoSize := False;
    LoginForm.AutoSize := True;
      LabelError.Font.Color := clRed;
    LabelError.Caption := '�������� �����!'+#13#10+'������� ������ ������ ��� ���������� � ��������������.';
//    MyMessageDlg('������������ �� ������!'+#13#10+'������� ������ ������ ��� ���������� � ��������������.',
//      mtWarning, [mbYes], ['��'], '������ ������');
  end;
end;

end.
