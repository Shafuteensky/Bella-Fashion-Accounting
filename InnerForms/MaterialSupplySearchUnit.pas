unit MaterialSupplySearchUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls;

type
  TMaterialSearchForm = class(TForm)
    Label5: TLabel;
    Label8: TLabel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label31: TLabel;
    Label4: TLabel;
    Bevel2: TBevel;
    SearchButton: TButton;
    CostEdit: TEdit;
    DateDTP: TDateTimePicker;
    AmountEdit: TEdit;
    NameEdit: TEdit;
    TypeEdit: TEdit;
    ColorEdit: TEdit;
    StorageToEdit: TEdit;
    Label21: TLabel;
    EmployeEdit: TEdit;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    RecordAmountLabel: TLabel;
    RecordCountLabel: TLabel;
    З: TLabel;
    GroupBox2: TGroupBox;
    procedure FormShow(Sender: TObject);
    procedure NameEditChange(Sender: TObject);
    procedure SearchButtonClick(Sender: TObject);
    procedure AmountEditKeyPress(Sender: TObject; var Key: Char);
    procedure CostEditKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialSearchForm: TMaterialSearchForm;

implementation

{$R *.dfm}

uses DataModule, MaterialSupplyUnit;

// Показ формы
procedure TMaterialSearchForm.FormShow(Sender: TObject);
begin
  SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
  DateDTP.Date := Date;
  DateDTP.Checked := False;
  NameEdit.Text := '';
  ColorEdit.Text := '';
  TypeEdit.Text := '';
  AmountEdit.Text := '';
  StorageToEdit.Text := '';
  CostEdit.Text := '';
  EmployeEdit.Text := '';
  RecordAmountLabel.Caption := '-';
  RecordCountLabel.Caption := '-';
  SearchButton.Enabled := False;
end;

// Закрытие формы
procedure TMaterialSearchForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MaterialSupplyForm.Label60.Enabled := True;
  MaterialSupplyForm.Label31.Enabled := True;
  MaterialSupplyForm.SearchFieldCB.Enabled := True;
  MaterialSupplyForm.SearchCriterionEdit.Enabled := True;
  MaterialSupplyForm.ExtendedSearchButton.Enabled := True;
end;

// Запрет на поиск при пустом поле
procedure TMaterialSearchForm.NameEditChange(Sender: TObject);
begin
  if (Length(NameEdit.Text) = 0) and (Length(ColorEdit.Text) = 0) and (Length(TypeEdit.Text) = 0) and (Length(AmountEdit.Text) = 0)
    and (Length(CostEdit.Text) = 0) and (Length(StorageToEdit.Text) = 0) and (Length(EmployeEdit.Text) = 0)
    and (DateDTP.Checked = False) then SearchButton.Enabled := False
  else
    SearchButton.Enabled := True;
end;

// Разрешенные к вводу символы
procedure TMaterialSearchForm.AmountEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  DataModule2.DelimeterKey(AmountEdit, Key);
end;
//
procedure TMaterialSearchForm.CostEditKeyPress(Sender: TObject; var Key: Char);
begin
  DataModule2.DelimeterKey(CostEdit, Key);
end;

// Поиск
procedure TMaterialSearchForm.SearchButtonClick(Sender: TObject);
var
  FilterString: string;
begin
  FilterString := '';
  if DateDTP.Checked = True then
    FilterString := ' AND [date] = ' + QuotedStr(DateToStr(DateDTP.Date));
  if Length(NameEdit.Text) > 0  then
    FilterString := FilterString + ' AND [name_m] LIKE ' + QuotedStr(NameEdit.Text+'*');
  if Length(ColorEdit.Text) > 0  then
    FilterString := FilterString + ' AND [name_mc] LIKE ' + QuotedStr(ColorEdit.Text+'*');
  if Length(TypeEdit.Text) > 0  then
    FilterString := FilterString + ' AND [name_mt] LIKE ' + QuotedStr(TypeEdit.Text+'*');
  if Length(AmountEdit.Text) > 0  then
    FilterString := FilterString + ' AND [amount] = ' + QuotedStr(AmountEdit.Text);
  if Length(StorageToEdit.Text) > 0  then
    FilterString := FilterString + ' AND [name_sl] LIKE ' + QuotedStr(StorageToEdit.Text+'*') ;
  if Length(CostEdit.Text) > 0  then
    FilterString := FilterString + ' AND [cost] = ' + QuotedStr(CostEdit.Text+'*');
  if Length(EmployeEdit.Text) > 0  then
    FilterString := FilterString + ' AND [name_e] LIKE ' + QuotedStr(EmployeEdit.Text+'*');
  if DataModule2.Material_supply_view_table.Filter <> '' then
    DataModule2.Material_supply_view_table_search.Filter := DataModule2.Material_supply_view_table.Filter + FilterString
  else
  begin
    Delete(FilterString, 1, 5);
    DataModule2.Material_supply_view_table_search.Filter := FilterString;
  end;
  if  DataModule2.Material_supply_view_table_search.RecordCount > 0 then
  begin
    if (FirstSearch = True) then
    begin
      RecordCountLabel.Caption := IntToStr(1);
      DataModule2.Material_supply_view_table_search.First ;
    end
    else RecordCountLabel.Caption := IntToStr(DataModule2.Material_supply_view_table_search.RecNo);
    if  DataModule2.Material_supply_view_table_search.RecordCount > 0 then
      RecordAmountLabel.Caption := IntToStr(DataModule2.Material_supply_view_table_search.RecordCount)
    else RecordAmountLabel.Caption := '-';
  end;
  if not DataModule2.Material_supply_view_table.Locate('id_ms', DataModule2.Material_supply_view_table_search.FieldByName('id_ms').Value, []) then
  begin
    RecordCountLabel.Caption := '-';
    MyMessageDlg('Запись не найдена!', mtInformation, [mbYes], ['ОК'], 'Результаты поиска');
  end;
  if  DataModule2.Material_supply_view_table_search.RecordCount > 0 then
  begin
    DataModule2.Material_supply_view_table_search.Next;
    if DataModule2.Material_supply_view_table_search.EOF = True then FirstSearch := True
    else FirstSearch := False;
  end;
end;

end.
