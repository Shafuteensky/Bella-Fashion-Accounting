unit RateUpdateUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, ADODB, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TRateUpdateForm = class(TForm)
    ManualUSDGP: TGridPanel;
    Label14: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    EditRateButton: TButton;
    InfoLabel: TLabel;
    SetAutoRateButton: TButton;
    USD_KGSEdit: TEdit;
    USD_RUBEdit: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditRateButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure USD_KGSEditKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure USD_KGSEditChange(Sender: TObject);
    procedure USD_RUBEditKeyPress(Sender: TObject; var Key: Char);
    procedure SetAutoRateButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure CreateParams(var Params: TCreateParams) ; override;
  end;

var
  RateUpdateForm: TRateUpdateForm;
  IsUpdated: Boolean = False;
  // ���� �� ������ (��� ������ �� ����)
  SenderDate: TDate;
  // �� �����?
  IsSenderForm: Boolean = False;

implementation

{$R *.dfm}

uses DataModule, RateUnit, SalesUnit, MaterialSupplyUnit, ProductionSupplyUnit,
  StorageUnit;

// ��������� ===================================================================
// �������� �����
procedure TRateUpdateForm.FormCreate(Sender: TObject);
begin
  //
end;

// ����� � ������ �����
procedure TRateUpdateForm.CreateParams(var Params: TCreateParams) ;
begin
  inherited;
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := 0;
end;

// ����� �����
procedure TRateUpdateForm.FormShow(Sender: TObject);
begin
  // ���� ������� �� ��������������� ����
  try
  if SalesForm <> nil then
  begin
    if SalesForm.SalesMainPanel.Visible = True then
    begin
      SenderDate := DataModule2.Sales_table.FieldByName('date_s').AsDateTime;
      InfoLabel.Caption := '���������� ���� �� ' + DateToStr(SenderDate) + ' ������� ��� �������������.';
    end
    else if SalesForm.PurchaseEditPanel.Visible = True then
    begin
      SenderDate := DataModule2.Sales_buffer_table.FieldByName('date_sb').AsDateTime;
      InfoLabel.Caption := '���������� ���� �� ' + DateToStr(SenderDate) + ' ������� ��� �������������.';
    end;
    IsSenderForm := True;
  end
  else if ProductionSupplyForm <> nil then
  begin
    if ProductionSupplyForm.ProductionSupplyMainPanel.Visible = True then
    begin
      SenderDate := DataModule2.Product_supply_table.FieldByName('date_ps').AsDateTime;
      InfoLabel.Caption := '���������� ���� �� ' + DateToStr(SenderDate) + ' ������� ��� �������������.';
    end
    else if ProductionSupplyForm.PurchaseEditPanel.Visible = True then
    begin
      SenderDate := DataModule2.Product_supply_buffer_table.FieldByName('date_pb').AsDateTime;
      InfoLabel.Caption := '���������� ���� �� ' + DateToStr(SenderDate) + ' ������� ��� �������������.';
    end;
    IsSenderForm := True;
  end
  else if MaterialSupplyForm <> nil then
  begin
    if MaterialSupplyForm.MaterialSupplyPanel.Visible = True then
    begin
      SenderDate := DataModule2.Material_supply_table.FieldByName('date_ms').AsDateTime;
      InfoLabel.Caption := '���������� ���� �� ' + DateToStr(SenderDate) + ' ������� ��� �������������.';
    end
    else if MaterialSupplyForm.PurchaseEditPanel.Visible = True then
    begin
      SenderDate := DataModule2.Material_supply_buffer_table.FieldByName('date_mb').AsDateTime;
      InfoLabel.Caption := '���������� ���� �� ' + DateToStr(SenderDate) + ' ������� ��� �������������.';
    end;
    IsSenderForm := True;
  end
  // ���� ������� �� ������ ��� ��� ������ ������
  else
  begin
    SenderDate := Date;
    InfoLabel.Caption := '���������� ���������� ���� ������� ��� �������������.';
    IsSenderForm := False;
  end;
  // ���������� �����
  if IsSenderForm = True then
  begin
    if DataModule2.Rate_table.Locate('date_r', DateToStr(SenderDate), []) = True then
    begin
      DataModule2.Rate_table.Edit;
    end
    else
    begin
      DataModule2.Rate_table.Append;
    end;
  end
  else
  begin
    USD_KGSEdit.Text := '';
    USD_RUBEdit.Text := '';
    DataModule2.Rate_table.Append;
  end;
  except
  end;
end;

// ����������� � ������� �������
procedure TRateUpdateForm.USD_KGSEditKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#8, '0'..'9', ',', #13]) then Key := #0;
  if Key = '.' then Key := ',';
  if Key = ',' then
  begin
    if (LastDelimiter(',', USD_KGSEdit.Text) <> 0) or (USD_KGSEdit.SelStart = 0) then
      Key := #0;
  end;
//  if (Key in ['0'..'9']) and (LastDelimiter(',', USD_RUBEdit.Text) <> 0) and
//    (pos(',', USD_KGSEdit.Text) > Length(USD_KGSEdit.Text)-2) then Key := #0;
end;
//
procedure TRateUpdateForm.USD_RUBEditKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#8, '0'..'9', ',', '.',#13]) then Key := #0;
  if Key = '.' then Key := ',';
  if Key = ',' then
  begin
    if (LastDelimiter(',', USD_RUBEdit.Text) <> 0) or (USD_RUBEdit.SelStart = 0) then
      Key := #0;
  end;
end;

// ��������� �������� ����
procedure TRateUpdateForm.USD_KGSEditChange(Sender: TObject);
begin
  if (USD_KGSEdit.Text <> '') and (USD_RUBEdit.Text <> '') then
  begin
    if ((StrToFloat(USD_KGSEdit.Text) <> 0) and (LastDelimiter(',', USD_KGSEdit.Text) <> Length(USD_KGSEdit.Text))) and
      ((StrToFloat(USD_RUBEdit.Text) <> 0) and (LastDelimiter(',', USD_RUBEdit.Text) <> Length(USD_RUBEdit.Text))) then
      EditRateButton.Enabled := True
    else EditRateButton.Enabled := False;
  end
  else EditRateButton.Enabled := False;
end;

// �������� �����
procedure TRateUpdateForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule2.Rate_table.Cancel;
  // �������� �� ���������� �����, ���� �������� �� ����������
//  if DataModule2.Rate_table.Locate('date_r', DateToStr(SenderDate), []) = False then
//    MyMessageDlg('���� ������� �� ������: ���� �����'+#13#10+'���������� � ��������.',
//      mtWarning, [mbYes], ['��'], '���������� �����');
  if ProductionSupplyForm <> nil then
    DataModule2.StatUpdate(ProductionSupplyForm);
  if MaterialSupplyForm <> nil then
    DataModule2.StatUpdate(MaterialSupplyForm);
  if SalesForm <> nil then
    DataModule2.StatUpdate(SalesForm);
end;

// ������ ======================================================================
// ����������
procedure TRateUpdateForm.EditRateButtonClick(Sender: TObject);
begin
  // ������� ����� � ����
  if DataModule2.Rate_table.State in [dsInsert, dsEdit] then
  begin
    DataModule2.Rate_tabledate_r.Value := SenderDate;
    DataModule2.Rate_tableKGS.Value := StrToCurr(USD_KGSEdit.Text);
    DataModule2.Rate_tableRUB.Value := StrToCurr(USD_RUBEdit.Text);
    DataModule2.Rate_tableIsAuto.Value := False;
    try
      DataModule2.Rate_table.Post;
    except
      DataModule2.Rate_table.Cancel;
    end;
  end;
  IsUpdated := True;
  RateUpdateForm.Close;
end;

// ���������� ������������� �� ����
procedure TRateUpdateForm.SetAutoRateButtonClick(Sender: TObject);
begin
//  RateForm.AutoRateCB.Checked := True;
//  RateForm.AutoRateCB.Checked := False;
  RateForm.RateDTP1.Date := SenderDate;
  RateForm.SetAutoRate(False);
  RateForm.GetRate();
  IsUpdated := True;
  RateUpdateForm.Close;
end;

end.
