unit StorageSearchUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TStorageSearchForm = class(TForm)
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    RecordAmountLabel: TLabel;
    RecordCountLabel: TLabel;
    З: TLabel;
    SearchButton: TButton;
    ProceedsEdit: TEdit;
    CostPriceEdit: TEdit;
    AmountEdit: TEdit;
    AddedValueEdit: TEdit;
    NameEdit: TEdit;
    ColorEdit: TEdit;
    TypeEdit: TEdit;
    Bevel1: TBevel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AddedValueEditKeyPress(Sender: TObject; var Key: Char);
    procedure CostPriceEditKeyPress(Sender: TObject; var Key: Char);
    procedure AmountEditKeyPress(Sender: TObject; var Key: Char);
    procedure ProceedsEditKeyPress(Sender: TObject; var Key: Char);
    procedure NameEditChange(Sender: TObject);
    procedure SearchButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StorageSearchForm: TStorageSearchForm;

implementation

{$R *.dfm}

uses StorageUnit, DataModule;

// Открытие формы
procedure TStorageSearchForm.FormShow(Sender: TObject);
begin
  SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
  NameEdit.Text := '';
  ColorEdit.Text := '';
  TypeEdit.Text := '';
  AmountEdit.Text := '';
  ProceedsEdit.Text := '';
  CostPriceEdit.Text := '';
  AddedValueEdit.Text := '';
  RecordAmountLabel.Caption := '-';
  RecordCountLabel.Caption := '-';
  SearchButton.Enabled := False;
end;

// Закрытие формы
procedure TStorageSearchForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StorageForm.Label60.Enabled := True;
  StorageForm.Label31.Enabled := True;
  StorageForm.SearchFieldCB.Enabled := True;
  StorageForm.SearchCriterionEdit.Enabled := True;
  StorageForm.ExtendedSearchButton.Enabled := True;
end;

// Запрет на поиск при пустом поле
procedure TStorageSearchForm.NameEditChange(Sender: TObject);
begin
  if (Length(NameEdit.Text) = 0) and (Length(ColorEdit.Text) = 0) and (Length(TypeEdit.Text) = 0) and (Length(AmountEdit.Text) = 0)
    and (Length(ProceedsEdit.Text) = 0) and (Length(CostPriceEdit.Text) = 0) and (Length(AddedValueEdit.Text) = 0)
    then SearchButton.Enabled := False
  else
    SearchButton.Enabled := True;
end;

// Разрешенные к вводу символы
procedure TStorageSearchForm.AmountEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in [#8, '0'..'9', #13]) then Key := #0;
end;
//
procedure TStorageSearchForm.AddedValueEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  DataModule2.DelimeterKey(AddedValueEdit, Key);
end;
//
procedure TStorageSearchForm.ProceedsEditKeyPress(Sender: TObject; var Key: Char);
begin
  DataModule2.DelimeterKey(ProceedsEdit, Key);
end;
//
procedure TStorageSearchForm.CostPriceEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  DataModule2.DelimeterKey(CostPriceEdit, Key);
end;

// Поиск
procedure TStorageSearchForm.SearchButtonClick(Sender: TObject);
var
  FilterString: string;
begin
  FilterString := '';
  if Length(NameEdit.Text) > 0  then
    FilterString := FilterString + ' AND [name_p] LIKE ' + QuotedStr(NameEdit.Text+'*');
  if Length(ColorEdit.Text) > 0  then
    FilterString := FilterString + ' AND [name_pc] LIKE ' + QuotedStr(ColorEdit.Text+'*');
  if Length(TypeEdit.Text) > 0  then
    FilterString := FilterString + ' AND [name_pt] LIKE ' + QuotedStr(TypeEdit.Text+'*');
  if Length(AmountEdit.Text) > 0  then
    FilterString := FilterString + ' AND [amount] = ' + QuotedStr(AmountEdit.Text);
  if Length(ProceedsEdit.Text) > 0  then
    FilterString := FilterString + ' AND [proceeds_sort] = ' + QuotedStr(ProceedsEdit.Text);
  if Length(CostPriceEdit.Text) > 0  then
    FilterString := FilterString + ' AND [cost_price_sort] = ' + QuotedStr(CostPriceEdit.Text);
  if Length(AddedValueEdit.Text) > 0  then
    FilterString := FilterString + ' AND [added_value_sort] = ' + QuotedStr(AddedValueEdit.Text);
  if DataModule2.Storage_table.Filter <> '' then
    DataModule2.Storage_table_search.Filter := DataModule2.Storage_table.Filter + FilterString
  else
  begin
    Delete(FilterString, 1, 5);
    DataModule2.Storage_table_search.Filter := FilterString;
  end;
  if DataModule2.Storage_table_search.RecordCount > 0 then
  begin
    if (FirstSearch = True) then
    begin
      RecordCountLabel.Caption := IntToStr(1);
      DataModule2.Storage_table_search.First ;
    end
    else RecordCountLabel.Caption := IntToStr(DataModule2.Storage_table_search.RecNo);
    RecordAmountLabel.Caption := IntToStr(DataModule2.Storage_table_search.RecordCount);
  end
  else RecordAmountLabel.Caption := '-';
  if not DataModule2.Storage_table.Locate('id_ps', DataModule2.Storage_table_search.FieldByName('id_ps').Value, []) then
  begin
    RecordCountLabel.Caption := '-';
    MyMessageDlg('Запись не найдена!', mtInformation, [mbYes], ['ОК'], 'Результаты поиска');
  end;
  if  DataModule2.Storage_table.RecordCount > 0 then
  begin
    DataModule2.Storage_table_search.Next;
    if DataModule2.Storage_table_search.EOF = True then FirstSearch := True
    else FirstSearch := False;
  end;
end;

end.
