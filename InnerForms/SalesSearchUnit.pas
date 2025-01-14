unit SalesSearchUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TSalesSearchForm = class(TForm)
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label31: TLabel;
    Label4: TLabel;
    Bevel3: TBevel;
    SearchButton: TButton;
    ProceedsEdit: TEdit;
    CostPriceEdit: TEdit;
    DateDTP: TDateTimePicker;
    AmountEdit: TEdit;
    AddedValueEdit: TEdit;
    NameEdit: TEdit;
    ColorEdit: TEdit;
    TypeEdit: TEdit;
    CustomerEdit: TEdit;
    StorageEdit: TEdit;
    Label10: TLabel;
    ReceiptEdit: TEdit;
    Label11: TLabel;
    EmployeEdit: TEdit;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    RecordAmountLabel: TLabel;
    RecordCountLabel: TLabel;
    З: TLabel;
    GroupBox2: TGroupBox;
    procedure FormShow(Sender: TObject);
    procedure SearchButtonClick(Sender: TObject);
    procedure NameEditChange(Sender: TObject);
    procedure AmountEditKeyPress(Sender: TObject; var Key: Char);
    procedure ProceedsEditKeyPress(Sender: TObject; var Key: Char);
    procedure CostPriceEditKeyPress(Sender: TObject; var Key: Char);
    procedure AddedValueEditKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalesSearchForm: TSalesSearchForm;

implementation

{$R *.dfm}

uses DataModule, SalesUnit;

// Открытие формы
procedure TSalesSearchForm.FormShow(Sender: TObject);
begin
  SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
  DateDTP.Date := Date;
  DateDTP.Checked := False;
  NameEdit.Text := '';
  ColorEdit.Text := '';
  TypeEdit.Text := '';
  AmountEdit.Text := '';
  CustomerEdit.Text := '';
  StorageEdit.Text := '';
  ProceedsEdit.Text := '';
  CostPriceEdit.Text := '';
  AddedValueEdit.Text := '';
  ReceiptEdit.Text := '';
  EmployeEdit.Text := '';
  RecordAmountLabel.Caption := '-';
  RecordCountLabel.Caption := '-';
  SearchButton.Enabled := False;
end;

// Закрытие формы
procedure TSalesSearchForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SalesForm.Label60.Enabled := True;
  SalesForm.Label31.Enabled := True;
  SalesForm.SearchFieldCB.Enabled := True;
  SalesForm.SearchCriterionEdit.Enabled := True;
  SalesForm.ExtendedSearchButton.Enabled := True;
end;

// Запрет на поиск при пустом поле
procedure TSalesSearchForm.NameEditChange(Sender: TObject);
begin
  if (Length(NameEdit.Text) = 0) and (Length(ColorEdit.Text) = 0) and (Length(TypeEdit.Text) = 0) and (Length(AmountEdit.Text) = 0)
    and (Length(CustomerEdit.Text) = 0) and (Length(StorageEdit.Text) = 0) and (Length(ProceedsEdit.Text) = 0)
    and (Length(CostPriceEdit.Text) = 0) and (Length(AddedValueEdit.Text) = 0) and (Length(ReceiptEdit.Text) = 0)
    and (Length(EmployeEdit.Text) = 0) and (DateDTP.Checked = False) then SearchButton.Enabled := False
  else
    SearchButton.Enabled := True;
end;

// Разрешенные к вводу символы
procedure TSalesSearchForm.AmountEditKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#8, '0'..'9', #13]) then Key := #0;
end;
//
procedure TSalesSearchForm.AddedValueEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  DataModule2.DelimeterKey(AddedValueEdit, Key);
end;
//
procedure TSalesSearchForm.ProceedsEditKeyPress(Sender: TObject; var Key: Char);
begin
  DataModule2.DelimeterKey(ProceedsEdit, Key);
end;
//
procedure TSalesSearchForm.CostPriceEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  DataModule2.DelimeterKey(CostPriceEdit, Key);
end;

// Поиск
procedure TSalesSearchForm.SearchButtonClick(Sender: TObject);
var
  FilterString: string;
begin
  FilterString := '';
  if DateDTP.Checked = True then
    FilterString := FilterString + ' AND [date_s] = ' + QuotedStr(DateToStr(DateDTP.Date));
  if Length(NameEdit.Text) > 0  then
    FilterString := FilterString + ' AND [name_p] LIKE ' + QuotedStr(NameEdit.Text+'*');
  if Length(ColorEdit.Text) > 0  then
    FilterString := FilterString + ' AND [name_pc] LIKE ' + QuotedStr(ColorEdit.Text+'*');
  if Length(TypeEdit.Text) > 0  then
    FilterString := FilterString + ' AND [name_pt] LIKE ' + QuotedStr(TypeEdit.Text+'*');
  if Length(AmountEdit.Text) > 0  then
    FilterString := FilterString + ' AND [amount] = ' + QuotedStr(AmountEdit.Text);
  if Length(CustomerEdit.Text) > 0  then
    FilterString := FilterString + ' AND [name_c] LIKE ' + QuotedStr(CustomerEdit.Text+'*') ;
  if Length(StorageEdit.Text) > 0  then
    FilterString := FilterString + ' AND [name_sl] LIKE ' + QuotedStr(StorageEdit.Text+'*');
  if Length(ProceedsEdit.Text) > 0  then
    FilterString := FilterString + ' AND [proceeds_sort] = ' + QuotedStr(ProceedsEdit.Text);
  if Length(CostPriceEdit.Text) > 0  then
    FilterString := FilterString + ' AND [cost_price_sort] = ' + QuotedStr(CostPriceEdit.Text);
  if Length(AddedValueEdit.Text) > 0  then
    FilterString := FilterString + ' AND [added_value_sort] = ' + QuotedStr(AddedValueEdit.Text);
  if Length(ReceiptEdit.Text) > 0  then
    FilterString := FilterString + ' AND [receipt_number] LIKE ' + QuotedStr(ReceiptEdit.Text+'*');
  if Length(EmployeEdit.Text) > 0  then
    FilterString := FilterString + ' AND [name_e] LIKE ' + QuotedStr(EmployeEdit.Text+'*');
  DataModule2.Sales_view_table_search.Filter := DataModule2.Sales_view_table.Filter + FilterString;
  if  DataModule2.Sales_view_table_search.RecordCount > 0 then
  begin
    if (FirstSearch = True) then
    begin
      RecordCountLabel.Caption := IntToStr(1);
      DataModule2.Sales_view_table_search.First ;
    end
    else RecordCountLabel.Caption := IntToStr(DataModule2.Sales_view_table_search.RecNo);
      RecordAmountLabel.Caption := IntToStr(DataModule2.Sales_view_table_search.RecordCount)
  end
  else RecordAmountLabel.Caption := '-';
  if not DataModule2.Sales_view_table.Locate('id_s', DataModule2.Sales_view_table_search.FieldByName('id_s').Value, []) then
  begin
    RecordCountLabel.Caption := '-';
    MyMessageDlg('Запись не найдена!', mtInformation, [mbYes], ['ОК'], 'Результаты поиска');
  end;
  if  DataModule2.Sales_view_table_search.RecordCount > 0 then
  begin
    DataModule2.Sales_view_table_search.Next;
    if DataModule2.Sales_view_table_search.EOF = True then FirstSearch := True
    else FirstSearch := False;
  end;
end;

end.
