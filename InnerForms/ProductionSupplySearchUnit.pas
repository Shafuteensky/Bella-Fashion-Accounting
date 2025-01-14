unit ProductionSupplySearchUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls;

type
  TProductionSearchForm = class(TForm)
    Bevel3: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label31: TLabel;
    Label4: TLabel;
    SearchButton: TButton;
    ProceedsEdit: TEdit;
    CostPriceEdit: TEdit;
    AddedValueEdit: TEdit;
    DateDTP: TDateTimePicker;
    AmountEdit: TEdit;
    StorageFromEdit: TEdit;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    RecordAmountLabel: TLabel;
    RecordCountLabel: TLabel;
    З: TLabel;
    NameEdit: TEdit;
    TypeEdit: TEdit;
    ColorEdit: TEdit;
    Label8: TLabel;
    StorageToEdit: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    EmployeEdit: TEdit;
    GroupBox2: TGroupBox;
    procedure FormShow(Sender: TObject);
    procedure NameEditChange(Sender: TObject);
    procedure SearchButtonClick(Sender: TObject);
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
  ProductionSearchForm: TProductionSearchForm;

implementation

{$R *.dfm}

uses DataModule, ProductionSupplyUnit;

// Показ формы
procedure TProductionSearchForm.FormShow(Sender: TObject);
begin
  SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
  DateDTP.Date := Date;
  DateDTP.Checked := False;
  NameEdit.Text := '';
  ColorEdit.Text := '';
  TypeEdit.Text := '';
  AmountEdit.Text := '';
  StorageFromEdit.Text := '';
  StorageToEdit.Text := '';
  ProceedsEdit.Text := '';
  CostPriceEdit.Text := '';
  AddedValueEdit.Text := '';
  EmployeEdit.Text := '';
  RecordAmountLabel.Caption := '-';
  RecordCountLabel.Caption := '-';
  SearchButton.Enabled := False;
end;

// Закрытие формы
procedure TProductionSearchForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ProductionSupplyForm.Label60.Enabled := True;
  ProductionSupplyForm.Label31.Enabled := True;
  ProductionSupplyForm.SearchFieldCB.Enabled := True;
  ProductionSupplyForm.SearchCriterionEdit.Enabled := True;
  ProductionSupplyForm.ExtendedSearchButton.Enabled := True;
end;

// Запрет на поиск при пустом поле
procedure TProductionSearchForm.NameEditChange(Sender: TObject);
begin
  if (Length(NameEdit.Text) = 0) and (Length(ColorEdit.Text) = 0) and (Length(TypeEdit.Text) = 0) and (Length(AmountEdit.Text) = 0)
    and (Length(StorageFromEdit.Text) = 0) and (Length(StorageToEdit.Text) = 0) and (Length(ProceedsEdit.Text) = 0)
    and (Length(CostPriceEdit.Text) = 0) and (Length(AddedValueEdit.Text) = 0) and (Length(EmployeEdit.Text) = 0)
    and (DateDTP.Checked = False) then SearchButton.Enabled := False
  else
    SearchButton.Enabled := True;
end;

// Разрешенные к вводу символы
procedure TProductionSearchForm.ProceedsEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  DataModule2.DelimeterKey(ProceedsEdit, Key);
end;
//
procedure TProductionSearchForm.CostPriceEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  DataModule2.DelimeterKey(CostPriceEdit, Key);
end;
//
procedure TProductionSearchForm.AddedValueEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  DataModule2.DelimeterKey(AddedValueEdit, Key);
end;

// Поиск
procedure TProductionSearchForm.SearchButtonClick(Sender: TObject);
var
  FilterString: string;
begin
  FilterString := '';
  if DateDTP.Checked = True then
    FilterString := ' AND [date] = ' + QuotedStr(DateToStr(DateDTP.Date));
  if Length(NameEdit.Text) > 0  then
    FilterString := FilterString + ' AND [name_p] LIKE ' + QuotedStr(NameEdit.Text+'*');
  if Length(ColorEdit.Text) > 0  then
    FilterString := FilterString + ' AND [name_pc] LIKE ' + QuotedStr(ColorEdit.Text+'*');
  if Length(TypeEdit.Text) > 0  then
    FilterString := FilterString + ' AND [name_pt] LIKE ' + QuotedStr(TypeEdit.Text+'*');
  if Length(AmountEdit.Text) > 0  then
    FilterString := FilterString + ' AND [amount] = ' + QuotedStr(AmountEdit.Text);
  if Length(StorageFromEdit.Text) > 0  then
    FilterString := FilterString + ' AND [storage_from] LIKE ' + QuotedStr(StorageFromEdit.Text+'*') ;
  if Length(StorageToEdit.Text) > 0  then
    FilterString := FilterString + ' AND [storage_to] LIKE ' + QuotedStr(StorageToEdit.Text+'*');
  if Length(ProceedsEdit.Text) > 0  then
    FilterString := FilterString + ' AND [proceeds_sort] = ' + QuotedStr(ProceedsEdit.Text);
  if Length(CostPriceEdit.Text) > 0  then
    FilterString := FilterString + ' AND [cost_price_sort] = ' + QuotedStr(CostPriceEdit.Text);
  if Length(AddedValueEdit.Text) > 0  then
    FilterString := FilterString + ' AND [added_value_sort] = ' + QuotedStr(AddedValueEdit.Text);
  if Length(EmployeEdit.Text) > 0  then
    FilterString := FilterString + ' AND [name_e] LIKE ' + QuotedStr(EmployeEdit.Text+'*');
  DataModule2.Product_supply_view_table_search.Filter := DataModule2.Product_supply_view_table.Filter + FilterString;
  if  DataModule2.Product_supply_view_table_search.RecordCount > 0 then
  begin
    if (FirstSearch = True) then
    begin
      RecordCountLabel.Caption := IntToStr(1);
      DataModule2.Product_supply_view_table_search.First ;
    end
    else RecordCountLabel.Caption := IntToStr(DataModule2.Product_supply_view_table_search.RecNo);
    if  DataModule2.Product_supply_view_table_search.RecordCount > 0 then
      RecordAmountLabel.Caption := IntToStr(DataModule2.Product_supply_view_table_search.RecordCount)
    else RecordAmountLabel.Caption := '-';
  end;
  if not DataModule2.Product_supply_view_table.Locate('id_ps', DataModule2.Product_supply_view_table_search.FieldByName('id_ps').Value, []) then
  begin
    RecordCountLabel.Caption := '-';
    MyMessageDlg('Запись не найдена!', mtInformation, [mbYes], ['ОК'], 'Результаты поиска');
  end;
  if  DataModule2.Product_supply_view_table_search.RecordCount > 0 then
  begin
    DataModule2.Product_supply_view_table_search.Next;
    if DataModule2.Product_supply_view_table_search.EOF = True then FirstSearch := True
    else FirstSearch := False;
  end;
end;

end.
