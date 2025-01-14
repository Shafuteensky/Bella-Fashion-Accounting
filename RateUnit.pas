unit RateUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, ADODB,
  Vcl.ComCtrls, Vcl.Menus, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Mask, Xml.XMLIntf,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  Xml.xmldom, Xml.XMLDoc, System.ImageList, Vcl.ImgList;

type
  TRateForm = class(TForm)
    AllRatesButton: TButton;
    RUBGP: TGridPanel;
    Label3: TLabel;
    RUB_KGSLabel: TLabel;
    Label5: TLabel;
    RUB_USDLabel: TLabel;
    Label7: TLabel;
    KGSGP: TGridPanel;
    AutoUSDGP: TGridPanel;
    Label1: TLabel;
    KGS_USDLabel: TLabel;
    Label10: TLabel;
    KGS_RUBLabel: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    USD_KGSLabel: TLabel;
    Label11: TLabel;
    USD_RUBLabel: TLabel;
    Label12: TLabel;
    RatePanel: TGridPanel;
    AutoRateCB: TCheckBox;
    Label2: TLabel;
    RateDTP1: TDateTimePicker;
    ManualUSDGP: TGridPanel;
    Label14: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    EditRateButton: TButton;
    USD_KGSEdit: TEdit;
    USD_RUBEdit: TEdit;
    Indicator: TImage;
    ImageList1: TImageList;
    InfoPanel: TPanel;
    InfoLabel: TLabel;
    procedure AllRatesButtonClick(Sender: TObject);
    procedure RateDTP1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AutoRateCBClick(Sender: TObject);
    procedure SetAutoRate(IsToday: Boolean);
    procedure EditRateButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure GetRate();
    procedure USD_KGSEditChange(Sender: TObject);
    procedure USD_KGSEditKeyPress(Sender: TObject; var Key: Char);
    procedure USD_RUBEditKeyPress(Sender: TObject; var Key: Char);
    procedure RateDTP1Click(Sender: TObject);
    procedure UpdateStats();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RateForm: TRateForm;
  FirstRun: Boolean;

implementation

{$R *.dfm}

uses DataModule, Math, SalesUnit, StorageUnit, MaterialSupplyUnit, ProductionSupplyUnit;

// ��������� ===================================================================
// �������� ����������
procedure TRateForm.UpdateStats();
begin
  if StorageForm <> nil then
  begin
    DataModule2.StorageLoad();
    DataModule2.StatUpdate(StorageForm);
  end;
  if SalesForm <> nil then
    DataModule2.StatUpdate(SalesForm);
  if ProductionSupplyForm <> nil then
    DataModule2.StatUpdate(ProductionSupplyForm);
  if MaterialSupplyForm <> nil then
    DataModule2.StatUpdate(MaterialSupplyForm);
end;

// �������� �����
procedure TRateForm.FormCreate(Sender: TObject);
begin
  FirstRun := True;
end;

// ����� �����
procedure TRateForm.FormShow(Sender: TObject);
begin
  if FirstRun = True then
    AutoRateCB.Checked := AutoRateParam;
  // �������: ����� �������� ������� �� ���� ����������.
  RateForm.AutoSize := False;
  RateForm.Width := 195;
  RateForm.AutoSize := True;
  // ���
    // ����� � ���� ����
  SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
  RateDTP1.MaxDate := Date;
//  if DataModule2.CheckTodayRate() = False then EditRateButton.Caption := '����������'
//    else EditRateButton.Caption := '��������';
  InfoPanel.Visible := False;
  RateDTP1.Date := Date;
  GetRate();
end;

// �������� �����
procedure TRateForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if EditRateButton.Caption = '����������' then
  begin
    USD_KGSEdit.Enabled := False;
    USD_RUBEdit.Enabled := False;
    RateDTP1.Enabled := True;
    EditRateButton.Caption := '��������';
  end;
  DataModule2.Rate_table.Cancel;
end;

// ���������� ����� �� ���������� ����
procedure TRateForm.RateDTP1Change(Sender: TObject);
begin
  if DataModule2.Rate_table.RecordCount > 0 then
    DataModule2.Rate_table.Locate('date_r', DateToStr(RateDTP1.Date), []);
  if (AutoRateParam = True) then SetAutoRate(False);
  GetRate();
end;
// ������� (�����) - ������-�� ����� - SetAutoRate() ��������� ������� ����� ��������� ���
procedure TRateForm.RateDTP1Click(Sender: TObject);
begin
  InfoPanel.Visible := False;
end;

// �������� ���� ������ �� �� �� ������������ ����
procedure TRateForm.GetRate();
begin
  // ����� ������ �� ����������� ����
//  DataModule2.Rate_table.Filter := 'date_r  LIKE ' + DateToStr(RateDTP1.Date);
//  DataModule2.Rate_table.Filtered := True;
//  if DataModule2.Rate_table.RecordCount > 0 then
  try
    if DataModule2.Rate_table.Locate('date_r', DateToStr(RateForm.RateDTP1.Date), []) = True then
    begin
      DataModule2.Rate_table.Filter := 'date_r =' + DateToStr(RateDTP1.Date);
      Indicator.Picture := nil;
      ImageList1.GetBitmap(1, Indicator.Picture.Bitmap);
      // ���������� �����
      RateUSD_KGS := SimpleRoundTo(DataModule2.Rate_tableKGS.AsCurrency, -2);
      RateUSD_RUB := SimpleRoundTo(DataModule2.Rate_tableRUB.AsCurrency, -2);
      RateKGS_USD := SimpleRoundTo(1/RateUSD_KGS, -4);
      RateRUB_USD := SimpleRoundTo(1/RateUSD_RUB, -4);
      RateKGS_RUB := SimpleRoundTo(RateKGS_USD * RateUSD_RUB, -2);
      RateRUB_KGS := SimpleRoundTo(RateRUB_USD * RateUSD_KGS, -2);
      // ���������� �����������
      USD_KGSEdit.Text := DataModule2.Rate_tableKGS.AsString;
      USD_RUBEdit.Text := DataModule2.Rate_tableRUB.AsString;
      USD_KGSLabel.Caption := DataModule2.Rate_tableKGS.AsString;
      USD_RUBLabel.Caption := DataModule2.Rate_tableRUB.AsString;
      RUB_KGSLabel.Caption := FloatToStr(RateRUB_KGS);
      RUB_USDLabel.Caption := FloatToStr(RateRUB_USD);
      KGS_USDLabel.Caption := FloatToStr(RateKGS_USD);
      KGS_RUBLabel.Caption := FloatToStr(RateKGS_RUB);
    end
    else
    begin
      Indicator.Picture := nil;
      ImageList1.GetBitmap(0, Indicator.Picture.Bitmap);
      USD_KGSEdit.Text := '';
      USD_RUBEdit.Text := '';
      USD_KGSLabel.Caption := '-';
      USD_RUBLabel.Caption := '-';
      RUB_KGSLabel.Caption := '-';
      RUB_USDLabel.Caption := '-';
      KGS_USDLabel.Caption := '-';
      KGS_RUBLabel.Caption := '-';
    end;
    DataModule2.Rate_table.Filter := '';
  except
  end;
end;

// ���������� ���� ������ ������������� �� ������������ ����
procedure TRateForm.SetAutoRate(IsToday: Boolean);
var
  XMLDoc: IXMLDocument;
  XMLNode, NodeElement: IXMLNode;
  MS: TMemoryStream;
  IdHTTPRate: TIdHTTP;
  procedure Start(New: Boolean);
  var
    i: Integer;
  begin
    RateRUB_KGS := 0;
    RateKGS_RUB := 0;
    RateRUB_USD := 0;
    RateUSD_RUB := 0;
    RateUSD_KGS := 0;
    RateKGS_USD := 0;
    try
      // ������������ � ������� ��
      MS := TMemoryStream.Create;
      IdHTTPRate := nil;
      IdHTTPRate := TIdHTTP.Create(nil);
      IdHTTPRate.Get('http://www.cbr.ru/scripts/XML_daily.asp?date_req=' + DateToStr(RateDTP1.Date), MS);
      XMLDoc := TXMLDocument.Create(nil);
      XMLDoc.LoadFromStream(MS);
      MS.Free;
      XMLNode := XMLDoc.ChildNodes.FindNode('ValCurs');
      // ��������� ����� ����������
      for i := 0 to XMLNode.ChildNodes.Count - 1 do
      begin
        NodeElement := XMLNode.ChildNodes.Get(i);
        if NodeElement.ChildValues['Name'] = '���������� �����' then
        begin
          RateRUB_KGS := SimpleRoundTo(100/NodeElement.ChildValues['Value'], -2);
          RateKGS_RUB := SimpleRoundTo(NodeElement.ChildValues['Value']/100, -2);
        end;
        if NodeElement.ChildValues['Name'] = '������ ���' then
        begin
          RateRUB_USD := (SimpleRoundTo(1/NodeElement.ChildValues['Value'], -3));
          RateUSD_RUB := (SimpleRoundTo(NodeElement.ChildValues['Value'], -2));
        end;
      end;
      RateUSD_KGS := SimpleRoundTo(RateUSD_RUB * RateRUB_KGS, -2);
      RateKGS_USD := SimpleRoundTo(1/RateUSD_KGS, -3);
      // �������� ������ � ��
      if New = True then
        DataModule2.Rate_table.Append
      else
        DataModule2.Rate_table.Edit;
      DataModule2.Rate_tabledate_r.Value := (RateDTP1.Date);
      DataModule2.Rate_tableKGS.Value := SimpleRoundTo(RateUSD_KGS, -2);
      DataModule2.Rate_tableRUB.Value := SimpleRoundTo(RateUSD_RUB, -2);
      DataModule2.Rate_tableIsAuto.Value := True;
      try
        DataModule2.Rate_table.Post
      except
        DataModule2.Rate_table.Cancel
      end;
      if RateForm.Active = True then
      begin
        InfoLabel.Caption := '���� ������� �� ' + DateToStr(RateDTP1.Date) + ' ��������� �������������.';
        InfoPanel.Visible := True;
      end
      else MyMessageDlg('���� ������� �� ' + DateToStr(RateDTP1.Date) + ' ��������� �������������:'+#13#10+FloatToStr(SimpleRoundTo(RateUSD_KGS, -2))+' �����'+
        #13#10+FloatToStr(SimpleRoundTo(RateUSD_KGS, -2))+' ������', mtInformation, [mbYes], ['��'], '���� �������');
      RateConnection := True;
    except
      MyMessageDlg('���������� �������� ����� �����! ��������-����������'+#13#10+'�� ����������� ��� ����� ��� ����������: ���� �����'
        +#13#10+'���������� � ��������.'+#13#10+'���������� �������� � ������������� ��������� ���'+#13#10+
        '����������� ��� � ���� ������� ��� ��������� ��������������'+#13#10+'���� � ������� ��� �������.',
        mtWarning, [mbYes], ['��'], '������');
      RateConnection := False;
    end;
  end;
begin
  if DataModule2.Rate_table.Locate('date_r', DateToStr(RateDTP1.Date), []) = False then Start(True)
  else if DataModule2.Rate_table.Locate('date_r', DateToStr(RateDTP1.Date), []) = True and
    DataModule2.Rate_table.FieldByName('IsAuto').AsBoolean = False then
    if MyMessageDlg('�������� ������� �������� �����?', mtConfirmation, [mbYes, mbNo], ['��','���'], '�������������') = mrYes
    then Start(False);
  UpdateStats();
end;

// ��������� �������� ����
procedure TRateForm.USD_KGSEditChange(Sender: TObject);
begin
  if (EditRateButton.Caption = '����������') then
  begin
    if ((USD_KGSEdit.Text <> '0') and (USD_KGSEdit.Text <> '') and (LastDelimiter(',', USD_KGSEdit.Text) <> Length(USD_KGSEdit.Text))) and
      ((USD_RUBEdit.Text <> '0') and (USD_RUBEdit.Text <> '') and (LastDelimiter(',', USD_RUBEdit.Text) <> Length(USD_RUBEdit.Text)))then
    EditRateButton.Enabled := True
    else EditRateButton.Enabled := False;
  end;
end;

// ����������� � ������� ������
procedure TRateForm.USD_KGSEditKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#8, '0'..'9', ',', #13]) then Key := #0;
  if Key = '.' then Key := ',';
  if Key = ',' then
  begin
    if (LastDelimiter(',', USD_KGSEdit.Text) <> 0) or (USD_KGSEdit.SelStart = 0) then
      Key := #0;
  end;
end;
//
procedure TRateForm.USD_RUBEditKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#8, '0'..'9', ',', '.',#13]) then Key := #0;
  if Key = '.' then Key := ',';
  if Key = ',' then
  begin
    if (LastDelimiter(',', USD_RUBEdit.Text) <> 0) or (USD_RUBEdit.SelStart = 0) then
      Key := #0;
  end;
end;

// ������ ======================================================================
// ��������/����������
procedure TRateForm.EditRateButtonClick(Sender: TObject);
begin
  if EditRateButton.Caption = '��������' then
  begin
    // ����� ������ � ���� ********************
    USD_KGSEdit.Enabled := True;
    USD_RUBEdit.Enabled := True;
    RateDTP1.Enabled := False;
    EditRateButton.Enabled := False;
    EditRateButton.Caption := '����������';
    if DataModule2.Rate_table.Locate('date_r', DateToStr(RateDTP1.Date), []) = False then DataModule2.Rate_table.Append
      else DataModule2.Rate_table.Edit;
  end
  else
  begin
    // ���������� ������ � ���� ********************
    USD_KGSEdit.Enabled := False;
    USD_RUBEdit.Enabled := False;
    RateDTP1.Enabled := True;
    EditRateButton.Enabled := True;
    EditRateButton.Caption := '��������';
    DataModule2.Rate_tabledate_r.Value := (RateDTP1.Date);
    DataModule2.Rate_tableKGS.Value := StrToCurr(USD_KGSEdit.Text);
    DataModule2.Rate_tableRUB.Value := StrToCurr(USD_RUBEdit.Text);
    DataModule2.Rate_tableIsAuto.Value := False;
    try
      DataModule2.Rate_table.Post;
    except
      DataModule2.Rate_table.Cancel;
    end;
    UpdateStats();
    GetRate();
  end;

end;

// �������������� ����
procedure TRateForm.AutoRateCBClick(Sender: TObject);
begin
  InfoPanel.Visible := False;
//  if FirstRun = False then
    AutoRateParam := AutoRateCB.Checked;
  FirstRun := False;
  if AutoRateParam = True then
  begin
    AutoUSDGP.Visible := True;
    ManualUSDGP.Visible := False;
    AutoUSDGP.Top := 0;
    RatePanel.Top := 0;
    RateDTP1.Date := Date;
    RateForm.SetAutoRate(True);
  end
  else
  begin
    ManualUSDGP.Visible := True;
    AutoUSDGP.Visible := False;
    ManualUSDGP.Top := 0;
    RatePanel.Top := 0;
  end;
  GetRate();
end;

// �������� ��� �����
procedure TRateForm.AllRatesButtonClick(Sender: TObject);
var
  i: Integer;
  s: string;
  NodeValue: Double;
  XMLDoc: IXMLDocument;
  XMLNode, NodeElement: IXMLNode;
  MS: TMemoryStream;
  IdHTTPRate: TIdHTTP;
begin
  s := EmptyStr;
  MS := TMemoryStream.Create;
  try
    IdHTTPRate := TIdHTTP.Create(nil);
    IdHTTPRate.Get('http://www.cbr.ru/scripts/XML_daily.asp?date_req=' + FormatDateTime('DD.MM.YYYY', (RateDTP1.Date)), MS);
    XMLDoc := TXMLDocument.Create(nil);
    XMLDoc.LoadFromStream(MS);
    MS.Free;
    XMLNode := XMLDoc.ChildNodes.FindNode('ValCurs');
    for i := 0 to XMLNode.ChildNodes.Count - 1 do
    begin
      NodeElement := XMLNode.ChildNodes.Get(i);
      NodeValue := NodeElement.ChildValues['Value']/RateUSD_RUB;
      if NodeElement.ChildValues['Name'] = '������ ���' then //-
        s := s+FloatToStr(SimpleRoundTo(1/(RateRUB_USD), -2))+' ���������� ������'+#13#10
      else if NodeElement.ChildValues['Name'] = '��������� ������' then
        s := s+FloatToStr(SimpleRoundTo(1/(NodeValue/100), -2))+' '+NodeElement.ChildValues['Name']+#13#10
      else if NodeElement.ChildValues['Name'] = '���������� ��������' then
        s := s+FloatToStr(SimpleRoundTo(1/(NodeValue/100), -2))+' '+NodeElement.ChildValues['Name']+#13#10
      else if NodeElement.ChildValues['Name'] = '��� ���������� �����' then
        s := s+FloatToStr(SimpleRoundTo(1/(NodeValue/1000), -2))+' '+NodeElement.ChildValues['Name']+#13#10
      else if NodeElement.ChildValues['Name'] = '����������� ��������' then
        s := s+FloatToStr(SimpleRoundTo(1/(NodeValue/10), -2))+' '+NodeElement.ChildValues['Name']+#13#10
      else if NodeElement.ChildValues['Name'] = '	��������� �����' then
        s := s+FloatToStr(SimpleRoundTo(1/(NodeValue/10), -2))+' '+NodeElement.ChildValues['Name']+#13#10
      else if NodeElement.ChildValues['Name'] = '������������� �����' then
        s := s+FloatToStr(SimpleRoundTo(1/(NodeValue/100), -2))+' '+NodeElement.ChildValues['Name']+#13#10
      else if NodeElement.ChildValues['Name'] = '���������� �����' then
        s := s+FloatToStr(SimpleRoundTo(1/(NodeValue/100), -2))+' '+NodeElement.ChildValues['Name']+#13#10
      else if NodeElement.ChildValues['Name'] = '���������� ����' then
        s := s+FloatToStr(SimpleRoundTo(1/(NodeValue/10), -2))+' '+NodeElement.ChildValues['Name']+#13#10
      else if NodeElement.ChildValues['Name'] = '���������� ����' then
        s := s+FloatToStr(SimpleRoundTo(1/(NodeValue/10), -2))+' '+NodeElement.ChildValues['Name']+#13#10
      else if NodeElement.ChildValues['Name'] = '���������� ������' then
        s := s+FloatToStr(SimpleRoundTo(1/(NodeValue/10), -2))+' '+NodeElement.ChildValues['Name']+#13#10
      else if NodeElement.ChildValues['Name'] = '�������� ���' then
        s := s+FloatToStr(SimpleRoundTo(1/(NodeValue/10), -2))+' '+NodeElement.ChildValues['Name']+#13#10
      else if NodeElement.ChildValues['Name'] = '��������� �����' then
        s := s+FloatToStr(SimpleRoundTo(1/(NodeValue/10000), -2))+' '+NodeElement.ChildValues['Name']+#13#10
      else if NodeElement.ChildValues['Name'] = '���������� ������' then
        s := s+FloatToStr(SimpleRoundTo(1/(NodeValue/10), -2))+' '+NodeElement.ChildValues['Name']+#13#10
      else if NodeElement.ChildValues['Name'] = '������� ����' then
        s := s+FloatToStr(SimpleRoundTo(1/(NodeValue/10), -2))+' '+NodeElement.ChildValues['Name']+#13#10
      else if NodeElement.ChildValues['Name'] = '�������� ����' then
        s := s+FloatToStr(SimpleRoundTo(1/(NodeValue/10), -2))+' '+NodeElement.ChildValues['Name']+#13#10
      else if NodeElement.ChildValues['Name'] = '��������������� ������' then
        s := s+FloatToStr(SimpleRoundTo(1/(NodeValue/10), -2))+' '+NodeElement.ChildValues['Name']+#13#10
      else if NodeElement.ChildValues['Name'] = '�������� ���' then
        s := s+FloatToStr(SimpleRoundTo(1/(NodeValue/100), -2))+' '+NodeElement.ChildValues['Name']+#13#10
      else
        s := s+FloatToStr(SimpleRoundTo(1/(NodeValue), -3))+' '+NodeElement.ChildValues['Name']+#13#10
    end;
  //  ShowMessage(s);
    MyMessageDlg(s, mtCustom, [mbYes], ['�������'], '���� �������')
  except
    MyMessageDlg('���������� �������� ����� �����! ��������-����������'+#13#10+'�� ����������� ��� ����� ��� ����������.',
      mtWarning, [mbYes], ['��'], '������');
  end;
end;

end.
