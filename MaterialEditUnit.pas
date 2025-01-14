unit MaterialEditUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Menus;

type
  TMaterialEditForm = class(TForm)
    ColorMenu: TMainMenu;
    N2: TMenuItem;
    ColorAddButton: TMenuItem;
    ColorEditButton: TMenuItem;
    ColorDeleteButton: TMenuItem;
    MaterialMenu: TMainMenu;
    N1: TMenuItem;
    MaterialAddButton: TMenuItem;
    MaterialEditButton: TMenuItem;
    MaterialDeleteButton: TMenuItem;
    TypeMenu: TMainMenu;
    N3: TMenuItem;
    TypeAddButton: TMenuItem;
    TypeEditButton: TMenuItem;
    TypeDeleteButton: TMenuItem;
    MaterialEditMainPanel: TScrollBox;
    MaterialPanel: TPanel;
    MaterialEditToolBar: TToolBar;
    MaterialEditPanel: TPanel;
    MaterialEditBox: TGroupBox;
    MaterialGrid: TDBGrid;
    Filler4: TGroupBox;
    MaterialEditGridPanel: TGridPanel;
    Label9: TLabel;
    Label5: TLabel;
    MaterialEditNameEdit: TDBEdit;
    MaterialEditTypeComboBox: TDBLookupComboBox;
    MaterialCostEdit: TDBEdit;
    MaterialPostButton: TButton;
    MaterialCancelButton: TButton;
    TypePanel: TPanel;
    TypeEditToolBar: TToolBar;
    TypeEditBox: TGroupBox;
    TypeEditGridPanel: TGridPanel;
    Label2: TLabel;
    TypeEdit: TDBEdit;
    TypePostButton: TButton;
    TypeCancelButton: TButton;
    TypeGrid: TDBGrid;
    ColorPanel: TPanel;
    ColorEditToolBar: TToolBar;
    ColorEditBox: TGroupBox;
    ColorEditGridPanel: TGridPanel;
    Label3: TLabel;
    ColorEdit: TDBEdit;
    ColorPostButton: TButton;
    ColorCancelButton: TButton;
    ColorGrid: TDBGrid;
    MaterialPopupMenu: TPopupMenu;
    MenuItem1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    TypePopupMenu: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    ColorPopupMenu: TPopupMenu;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    Label1: TLabel;
    Label4: TLabel;
    MaterialEditMeasureCB: TDBLookupComboBox;
    Panel1: TPanel;
    MeasureEditToolBar: TToolBar;
    MeasureEditBox: TGroupBox;
    GridPanel1: TGridPanel;
    Label6: TLabel;
    MeasureEdit: TDBEdit;
    MeasurePostButton: TButton;
    MeasureCancelButton: TButton;
    MeasureGrid: TDBGrid;
    MeasurePopupMenu: TPopupMenu;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MeasureMenu: TMainMenu;
    MenuItem11: TMenuItem;
    MeasureAddButton: TMenuItem;
    MeasureEditButton: TMenuItem;
    MeasureDeleteButton: TMenuItem;
    procedure MaterialAddButtonClick(Sender: TObject);
    procedure MaterialEditButtonClick(Sender: TObject);
    procedure ColorAddButtonClick(Sender: TObject);
    procedure ColorEditButtonClick(Sender: TObject);
    procedure TypeAddButtonClick(Sender: TObject);
    procedure TypeEditButtonClick(Sender: TObject);
    procedure MaterialCancelButtonClick(Sender: TObject);
    procedure ColorCancelButtonClick(Sender: TObject);
    procedure MaterialPostButtonClick(Sender: TObject);
    procedure ColorPostButtonClick(Sender: TObject);
    procedure TypePostButtonClick(Sender: TObject);
    procedure TypeCancelButtonClick(Sender: TObject);
    procedure MaterialDeleteButtonClick(Sender: TObject);
    procedure ColorDeleteButtonClick(Sender: TObject);
    procedure TypeDeleteButtonClick(Sender: TObject);
    procedure MaterialCostEditKeyPress(Sender: TObject; var Key: Char);
    procedure TypeEditKeyPress(Sender: TObject; var Key: Char);
    procedure ColorEditKeyPress(Sender: TObject; var Key: Char);
    procedure MaterialEditNameEditChange(Sender: TObject);
    procedure ColorEditChange(Sender: TObject);
    procedure TypeEditChange(Sender: TObject);
    procedure MaterialGridTitleClick(Column: TColumn);
    procedure ColorGridTitleClick(Column: TColumn);
    procedure TypeGridTitleClick(Column: TColumn);
    procedure MaterialEditMainPanelMouseWheel(Sender: TObject;
      Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
      var Handled: Boolean);
    procedure MaterialEditNameEditKeyPress(Sender: TObject; var Key: Char);
    procedure MaterialEditTypeComboBoxKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure MeasureAddButtonClick(Sender: TObject);
    procedure MeasureEditButtonClick(Sender: TObject);
    procedure MeasureDeleteButtonClick(Sender: TObject);
    procedure MeasurePostButtonClick(Sender: TObject);
    procedure MeasureCancelButtonClick(Sender: TObject);
    procedure VisualGrid(Bool: Boolean);
    procedure VisualToolBar(Bool: Boolean);
    procedure MeasureEditChange(Sender: TObject);
    procedure MeasureGridTitleClick(Column: TColumn);
    procedure MeasureEditKeyPress(Sender: TObject; var Key: Char);
    procedure MaterialEditMeasureCBKeyPress(Sender: TObject; var Key: Char);
    procedure MaterialGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TypeGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ColorGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MeasureGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaterialGridMouseEnter(Sender: TObject);
    procedure TypeGridMouseEnter(Sender: TObject);
    procedure ColorGridMouseEnter(Sender: TObject);
    procedure MeasureGridMouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialEditForm: TMaterialEditForm;
  Bookmark: TBookmark;

implementation

{$R *.dfm}

uses MainPage, DataModule;
// ��������� ===================================================================
// ����� -----------------------------------------------------------------------
// ����� �� ������� ��� ��������� ������
procedure TMaterialEditForm.MeasureGridMouseEnter(Sender: TObject);
begin
  MeasureGrid.SetFocus;
end;
procedure TMaterialEditForm.ColorGridMouseEnter(Sender: TObject);
begin
//  ColorGrid.SetFocus;
end;
procedure TMaterialEditForm.TypeGridMouseEnter(Sender: TObject);
begin
  TypeGrid.SetFocus;
end;
procedure TMaterialEditForm.MaterialGridMouseEnter(Sender: TObject);
begin
  MaterialGrid.SetFocus;
end;

// ����� �����
procedure TMaterialEditForm.FormShow(Sender: TObject);
begin
  // ���������� ����������� ��������������� ScrollBar
  ShowScrollBar(MaterialGrid.Handle, SB_HORZ, False);
  ShowScrollBar(TypeGrid.Handle, SB_HORZ, False);
  ShowScrollBar(ColorGrid.Handle, SB_HORZ, False);
  ShowScrollBar(MeasureGrid.Handle, SB_HORZ, False);
end;

// ��������� ������� ����
procedure TMaterialEditForm.MaterialEditMainPanelMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
var
  LTopLeft, LTopRight, LBottomLeft, LBottomRight: SmallInt;
  LPoint: TPoint;
  ScrollBox: TScrollBox;
begin
  ScrollBox := TScrollBox(Sender);
  LPoint := ScrollBox.ClientToScreen(Point(0,0));
  LTopLeft := LPoint.X;
  LTopRight := LTopLeft + ScrollBox.ClientWidth;
  LBottomLeft := LPoint.Y;
  LBottomRight := LBottomLeft + ScrollBox.ClientWidth;
//  if (MousePos.X >= LTopLeft) and
//    (MousePos.X <= LTopRight) and
//    (MousePos.Y >= LBottomLeft) and
//    (MousePos.Y <= LBottomRight) then
  begin
    ScrollBox.HorzScrollBar.Position := ScrollBox.HorzScrollBar.Position - WheelDelta;
    Handled := True;
  end;
end;

// ������� �� ��������� ������� �����
// ��������
procedure TMaterialEditForm.MaterialEditNameEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    MaterialEditTypeComboBox.SetFocus;
    MaterialEditTypeComboBox.DropDown;
  end;
end;
//
procedure TMaterialEditForm.MaterialEditTypeComboBoxKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    MaterialEditMeasureCB.SetFocus;
    MaterialEditMeasureCB.DropDown;
  end;
end;
//
procedure TMaterialEditForm.MaterialEditMeasureCBKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then MaterialCostEdit.SetFocus;
end;
// ���
procedure TMaterialEditForm.TypeEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if TypePostButton.Enabled = True then
      TypePostButton.Click;
  end;
end;
// ����
procedure TMaterialEditForm.ColorEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if ColorPostButton.Enabled = True then
      ColorPostButton.Click;
  end;
end;
// ����
procedure TMaterialEditForm.MeasureEditKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if MeasurePostButton.Enabled = True then
      MeasurePostButton.Click;
  end;
end;

// ���/���� ���������
procedure TMaterialEditForm.VisualGrid(Bool: Boolean);
begin
  MaterialGrid.Enabled := Bool;
  ColorGrid.Enabled := Bool;
  TypeGrid.Enabled := Bool;
  MeasureGrid.Enabled := Bool;
end;
procedure TMaterialEditForm.VisualToolBar(Bool: Boolean);
begin
  DataModule2.EditBlock(MaterialEditToolBar, Bool, 3);
  DataModule2.EditBlock(ColorEditToolBar, Bool, 3);
  DataModule2.EditBlock(TypeEditToolBar, Bool, 3);
  DataModule2.EditBlock(MeasureEditToolBar, Bool, 3);
end;

// �������� --------------------------------------------------------------------
// ����������
procedure TMaterialEditForm.MaterialGridTitleClick(Column: TColumn);
begin
  DataModule2.Sorting(MaterialGrid, Column);
end;

// ����������� � ������� ������
procedure TMaterialEditForm.MaterialCostEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in [#8, '0'..'9', ',', #13]) then Key := ',';
  if Key = '.' then Key := ',';
  if Key = ',' then
  begin
    if (LastDelimiter(',', MaterialCostEdit.Text) <> 0) or (MaterialCostEdit.SelStart = 0) then
      Key := #0;
  end;
  // ������� �� ��������� ������� ����� - ���������
  if Key = #13 then
  begin
    if MaterialPostButton.Enabled = True then
      MaterialPostButton.Click;
  end;
end;

// ������ �� ����������� ��� ������ ����
procedure TMaterialEditForm.MaterialEditNameEditChange(Sender: TObject);
begin
  if (Length(MaterialEditNameEdit.Text) <= 0) or (Length(MaterialCostEdit.Text) <= 0) or (Length(MaterialEditTypeComboBox.Text) <= 0)
    or (StrToFloat(MaterialCostEdit.Text) = 0) or (Length(MaterialEditMeasureCB.Text) <= 0) then MaterialPostButton.Enabled := False
  else MaterialPostButton.Enabled := True;
end;

// ���� ------------------------------------------------------------------------
// ����������
procedure TMaterialEditForm.ColorGridTitleClick(Column: TColumn);
begin
  DataModule2.Sorting(ColorGrid, Column);
end;

// ������ �� ����������� ��� ������ ����
procedure TMaterialEditForm.ColorEditChange(Sender: TObject);
begin
  if Length(ColorEdit.Text) <= 0 then ColorPostButton.Enabled := False
  else ColorPostButton.Enabled := True;
end;

// ��� -------------------------------------------------------------------------
// ����������
procedure TMaterialEditForm.TypeGridTitleClick(Column: TColumn);
begin
  DataModule2.Sorting(TypeGrid, Column);
end;

// ������ �� ����������� ��� ������ ����
procedure TMaterialEditForm.TypeEditChange(Sender: TObject);
begin
  if Length(TypeEdit.Text) <= 0 then TypePostButton.Enabled := False
  else TypePostButton.Enabled := True;
end;

// ���� ------------------------------------------------------------------------
// ����������
procedure TMaterialEditForm.MeasureGridTitleClick(Column: TColumn);
begin
  DataModule2.Sorting(MeasureGrid, Column);
end;

// ������ �� ����������� ��� ������ ����
procedure TMaterialEditForm.MeasureEditChange(Sender: TObject);
begin
  if Length(MeasureEdit.Text) <= 0 then MeasurePostButton.Enabled := False
  else MeasurePostButton.Enabled := True;
end;

// ������ ======================================================================
// �������� --------------------------------------------------------------------
// �����
procedure TMaterialEditForm.MaterialAddButtonClick(Sender: TObject);
begin
  // ��������� {
  VisualGrid(False);
  MaterialEditBox.Caption := '����� ��������';
  VisualToolBar(False);
  MaterialEditPanel.Visible := True;
  MaterialEditToolBar.Buttons[1].Caption := LabelDot + LabelAdd;
  // } ���������
  if DataModule2.Materials_view_table.RecordCount > 0 then
    DataModule2.Materials_table.Locate('id_m', DataModule2.Materials_view_tableid_m.Value, []);
  if DataModule2.Materials_table.State in [dsBrowse] then
    DataModule2.Materials_table.Append;
  // ��������� {
  DataModule2.PanelHighlight(MaterialEditBox);
  MaterialEditNameEdit.SetFocus;
  // } ���������
end;

// ��������
procedure TMaterialEditForm.MaterialEditButtonClick(Sender: TObject);
begin
  if DataModule2.Materials_table.State in [dsBrowse] then
    if DataModule2.Materials_table.RecordCount > 0 then
    begin
      DataModule2.Materials_table.Edit;
      // ��������� {
      VisualGrid(False);
      MaterialEditBox.Caption := '��������� ���������';
      VisualToolBar(False);
      MaterialEditPanel.Visible := True;
      MaterialEditToolBar.Buttons[2].Caption := LabelDot + LabelEdit;
      DataModule2.PanelHighlight(MaterialEditBox);
      // } ���������
    end;
end;

// �������
procedure TMaterialEditForm.MaterialDeleteButtonClick(Sender: TObject);
begin
  // ��������� {
  VisualToolBar(False);
  MaterialEditToolBar.Buttons[3].Caption := LabelDot + LabelDelete;
  // } ���������
  DataModule2.DeleteRecord(DataModule2.Materials_table);
  // ��������� {
  VisualToolBar(True);
  MaterialEditToolBar.Buttons[3].Caption := LabelDelete;
  // } ���������
end;
//
procedure TMaterialEditForm.MaterialGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
    MaterialDeleteButton.Click;
end;

// ���������
procedure TMaterialEditForm.MaterialPostButtonClick(Sender: TObject);
begin
  try
    if DataModule2.Materials_table.State in [dsInsert, dsEdit] then
      try
        DataModule2.Materials_table.Post;
      except
        DataModule2.Materials_table.Cancel;
      end;
  except
    MyMessageDlg('���� "������������" �����������!'+#13#10+'���� ������ ���� ����������.',
      mtWarning, [mbYes], ['��'], '������');
    Abort;
  end;
  // ��������� {
  VisualGrid(True);
  VisualToolBar(True);
  MaterialEditPanel.Visible := False;
  MaterialEditToolBar.Buttons[1].Caption := LabelAdd;
  MaterialEditToolBar.Buttons[2].Caption := LabelEdit;
  // } ���������
end;

// ������
procedure TMaterialEditForm.MaterialCancelButtonClick(Sender: TObject);
begin
  if DataModule2.Materials_table.State in [dsInsert, dsEdit] then
    DataModule2.Materials_table.Cancel;
  // ��������� {
  VisualGrid(True);
  VisualToolBar(True);
  MaterialEditPanel.Visible := False;
  MaterialEditToolBar.Buttons[1].Caption := LabelAdd;
  MaterialEditToolBar.Buttons[2].Caption := LabelEdit;
  // } ���������
end;

// ���� ------------------------------------------------------------------------
// �����
procedure TMaterialEditForm.ColorAddButtonClick(Sender: TObject);
begin
  // ��������� {
  VisualGrid(False);
  ColorEditBox.Caption := '����� ����';
  VisualToolBar(False);
  ColorEditBox.Visible := True;
  ColorEditToolBar.Buttons[1].Caption := LabelDot + LabelAdd;
  // } ���������
  if DataModule2.Material_color_table.State in [dsBrowse] then
    DataModule2.Material_color_table.Append;
  // ��������� {
  DataModule2.PanelHighlight(ColorEditBox);
  ColorEdit.SetFocus;
  // } ���������
end;

// ��������
procedure TMaterialEditForm.ColorEditButtonClick(Sender: TObject);
begin
  if DataModule2.Material_color_table.State in [dsBrowse] then
    if DataModule2.Material_color_table.RecordCount > 0 then
    begin
      DataModule2.Material_color_table.Edit;
      // ��������� {
      VisualGrid(False);
      ColorEditBox.Caption := '��������� �����';
      VisualToolBar(False);
      ColorEditBox.Visible := True;
      ColorEditToolBar.Buttons[2].Caption := LabelDot + LabelEdit;
      DataModule2.PanelHighlight(ColorEditBox);
      // } ���������
    end;
end;

// �������
procedure TMaterialEditForm.ColorDeleteButtonClick(Sender: TObject);
begin
  // ��������� {
  VisualToolBar(False);
  ColorEditToolBar.Buttons[3].Caption := LabelDot + LabelDelete;
  // } ���������
  DataModule2.DeleteRecord(DataModule2.Material_color_table);
  // ��������� {
  VisualToolBar(True);
  ColorEditToolBar.Buttons[3].Caption := LabelDelete;
  // } ���������
end;
//
procedure TMaterialEditForm.ColorGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
    ColorDeleteButton.Click;
end;

// ���������
procedure TMaterialEditForm.ColorPostButtonClick(Sender: TObject);
begin
  try
    if DataModule2.Material_color_table.State in [dsInsert, dsEdit] then
      try
        DataModule2.Material_color_table.Post;
      except
        DataModule2.Material_color_table.Cancel;
      end;
  except
    MyMessageDlg('���� "����" �����������!'+#13#10+'���� ������ ���� ����������.',
      mtWarning, [mbYes], ['��'], '������');
    Abort;
  end;
  // ��������� {
  VisualGrid(True);
  VisualToolBar(True);
  ColorEditBox.Visible := False;
  ColorEditToolBar.Buttons[1].Caption := LabelAdd;
  ColorEditToolBar.Buttons[2].Caption := LabelEdit;
  // } ���������
end;

// ������
procedure TMaterialEditForm.ColorCancelButtonClick(Sender: TObject);
begin
  if DataModule2.Material_color_table.State in [dsInsert, dsEdit] then
    DataModule2.Material_color_table.Cancel;
  // ��������� {
  VisualGrid(True);
  VisualToolBar(True);
  ColorEditBox.Visible := False;
  ColorEditToolBar.Buttons[1].Caption := LabelAdd;
  ColorEditToolBar.Buttons[2].Caption := LabelEdit;
  // } ���������
end;

// ��� -------------------------------------------------------------------------
// �����
procedure TMaterialEditForm.TypeAddButtonClick(Sender: TObject);
begin
  // ��������� {
  VisualGrid(False);
  TypeEditBox.Caption := '����� ���';
  VisualToolBar(False);
  TypeEditBox.Visible := True;
  TypeEditToolBar.Buttons[1].Caption := LabelDot + LabelAdd;
  // } ���������
  if DataModule2.Material_type_table_2.State in [dsBrowse] then
    DataModule2.Material_type_table_2.Append;
  // ��������� {
  DataModule2.PanelHighlight(TypeEditBox);
  TypeEdit.SetFocus;
  // } ���������
end;

// ��������
procedure TMaterialEditForm.TypeEditButtonClick(Sender: TObject);
begin
  if DataModule2.Material_type_table_2.State in [dsBrowse] then
    if DataModule2.Material_type_table_2.RecordCount > 0 then
    begin
      DataModule2.Material_type_table_2.Edit;
      // ��������� {
      VisualGrid(False);
      TypeEditBox.Caption := '��������� ����';
      VisualToolBar(False);
      TypeEditBox.Visible := True;
      TypeEditToolBar.Buttons[2].Caption := LabelDot + LabelEdit;
      DataModule2.PanelHighlight(TypeEditBox);
      // } ���������
    end;
end;

// �������
procedure TMaterialEditForm.TypeDeleteButtonClick(Sender: TObject);
begin
  // ��������� {
  VisualToolBar(False);
  TypeEditToolBar.Buttons[3].Caption := LabelDot + LabelDelete;
  // } ���������
  DataModule2.DeleteRecord(DataModule2.Material_type_table_2);
  // ��������� {
  VisualToolBar(True);
  TypeEditToolBar.Buttons[3].Caption := LabelDelete;
  // } ���������
end;
//
procedure TMaterialEditForm.TypeGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
    TypeDeleteButton.Click;
end;

// ���������
procedure TMaterialEditForm.TypePostButtonClick(Sender: TObject);
begin
  try
    if DataModule2.Material_type_table_2.State in [dsInsert, dsEdit] then
      try
        DataModule2.Material_type_table_2.Post;
      except
        DataModule2.Material_type_table_2.Cancel;
      end;
  except
    MyMessageDlg('���� "���" �����������!'+#13#10+'���� ������ ���� ����������.',
      mtWarning, [mbYes], ['��'], '������');
    Abort;
  end;
  // ��������� {
  VisualGrid(True);
  VisualToolBar(True);
  TypeEditBox.Visible := False;
  TypeEditToolBar.Buttons[1].Caption := LabelAdd;
  TypeEditToolBar.Buttons[2].Caption := LabelEdit;
  // } ���������
end;

// ������
procedure TMaterialEditForm.TypeCancelButtonClick(Sender: TObject);
begin
  if DataModule2.Material_type_table_2.State in [dsInsert, dsEdit] then
    DataModule2.Material_type_table_2.Cancel;
  // ��������� {
  VisualGrid(True);
  VisualToolBar(True);
  TypeEditBox.Visible := False;
  TypeEditToolBar.Buttons[1].Caption := LabelAdd;
  TypeEditToolBar.Buttons[2].Caption := LabelEdit;
  // } ���������
end;

// ���� ------------------------------------------------------------------------
// ��������
procedure TMaterialEditForm.MeasureAddButtonClick(Sender: TObject);
begin
  // ��������� {
  VisualGrid(False);
  MeasureEditBox.Caption := '����� ����';
  VisualToolBar(False);
  MeasureEditBox.Visible := True;
  MeasureEditToolBar.Buttons[1].Caption := LabelDot + LabelAdd;
  // } ���������
  if DataModule2.Material_measure_table_2.State in [dsBrowse] then
    DataModule2.Material_measure_table_2.Append;
  // ��������� {
  DataModule2.PanelHighlight(MeasureEditBox);
  MeasureEdit.SetFocus;
  // } ���������
end;

// ��������
procedure TMaterialEditForm.MeasureEditButtonClick(Sender: TObject);
begin
  if DataModule2.Material_measure_table_2.State in [dsBrowse] then
    if DataModule2.Material_measure_table_2.RecordCount > 0 then
    begin
      DataModule2.Material_measure_table_2.Edit;
      // ��������� {
      MaterialGrid.Enabled := False;
      ColorGrid.Enabled := False;
      TypeGrid.Enabled := False;
      MeasureGrid.Enabled := False;
      MeasureEditBox.Caption := '��������� ����';
      VisualToolBar(False);
      MeasureEditBox.Visible := True;
      MeasureEditToolBar.Buttons[2].Caption := LabelDot + LabelEdit;
      DataModule2.PanelHighlight(MeasureEditBox);
      // } ���������
    end;
end;

// �������
procedure TMaterialEditForm.MeasureDeleteButtonClick(Sender: TObject);
begin
  // ��������� {
  VisualToolBar(False);
  MeasureEditToolBar.Buttons[3].Caption := LabelDot + LabelDelete;
  // } ���������
  DataModule2.DeleteRecord(DataModule2.Material_measure_table_2);
  // ��������� {
  VisualToolBar(True);
  MeasureEditToolBar.Buttons[3].Caption := LabelDelete;
  // } ���������
end;
//
procedure TMaterialEditForm.MeasureGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
    MeasureDeleteButton.Click;
end;

// ���������
procedure TMaterialEditForm.MeasurePostButtonClick(Sender: TObject);
begin
  try
    if DataModule2.Material_measure_table_2.State in [dsInsert, dsEdit] then
      try
        DataModule2.Material_measure_table_2.Post;
      except
        DataModule2.Material_measure_table_2.Cancel;
      end;
  except
    MyMessageDlg('���� "���" �����������!'+#13#10+'���� ������ ���� ����������.',
      mtWarning, [mbYes], ['��'], '������');
    Abort;
  end;
  // ��������� {
  VisualGrid(True);
  VisualToolBar(True);
  MeasureEditBox.Visible := False;
  MeasureEditToolBar.Buttons[1].Caption := LabelAdd;
  MeasureEditToolBar.Buttons[2].Caption := LabelEdit;
  // } ���������
end;

// ������
procedure TMaterialEditForm.MeasureCancelButtonClick(Sender: TObject);
begin
  if DataModule2.Material_measure_table_2.State in [dsInsert, dsEdit] then
    DataModule2.Material_measure_table_2.Cancel;
  // ��������� {
  VisualGrid(True);
  VisualToolBar(True);
  MeasureEditBox.Visible := False;
  MeasureEditToolBar.Buttons[1].Caption := LabelAdd;
  MeasureEditToolBar.Buttons[2].Caption := LabelEdit;
  // } ���������
end;

end.
