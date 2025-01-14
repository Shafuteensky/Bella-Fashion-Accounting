unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu: TMainMenu;
    MenuShop: TMenuItem;
    MenuSales: TMenuItem;
    MenuStorage: TMenuItem;
    MenuSupply: TMenuItem;
    MenuSupplyProduct: TMenuItem;
    MenuSupplyMaterial: TMenuItem;
    MenuEdit: TMenuItem;
    MenuEditProduct: TMenuItem;
    MenuEditMaterial: TMenuItem;
    MenuReport: TMenuItem;
    MenuFinancialReport: TMenuItem;
    MenuABC: TMenuItem;
    MenuSettings: TMenuItem;
    MenuExit: TMenuItem;
    MainPanel: TPanel;
    procedure MenuSalesClick(Sender: TObject);
    procedure MenuStorageClick(Sender: TObject);
    procedure MenuSupplyProductClick(Sender: TObject);
    procedure MenuSupplyMaterialClick(Sender: TObject);
    procedure MenuEditClick(Sender: TObject);
    procedure MenuEditProductClick(Sender: TObject);
    procedure MenuEditMaterialClick(Sender: TObject);
    procedure MenuFinancialReportClick(Sender: TObject);
    procedure MenuABCClick(Sender: TObject);
    procedure MenuSettingsClick(Sender: TObject);
    procedure MenuExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses ABCAnalysisUnit, DataModule, FinancialReportUnit, MainPage,
  MaterialEditUnit, MaterialSupplyUnit, ProductionEditUnit,
  ProductionSupplyUnit, SalesUnit, SettingsUnit, StorageUnit;

procedure TForm1.MenuSalesClick(Sender: TObject);
begin
  SalesForm := SalesForm.Create(MainPanel);
  with SalesForm do
  begin
    Name := 'MyForm';
    Parent := MainPanel;
    Position := poDesigned;
    Show;
  end;
end;

procedure TForm1.MenuStorageClick(Sender: TObject);
begin
  StorageForm := StorageForm.Create(MainPanel);
  with StorageForm do
  begin
    Name := 'MyForm';
    Parent := MainPanel;
    Show;
  end;
end;

procedure TForm1.MenuSupplyProductClick(Sender: TObject);
begin
  ProductionSupplyForm := ProductionSupplyForm.Create(MainPanel);
  with ProductionSupplyForm do
  begin
    Name := 'MyForm';
    Parent := MainPanel;
    Show;
  end;
end;

procedure TForm1.MenuSupplyMaterialClick(Sender: TObject);
begin
  MaterialSupplyForm := MaterialSupplyForm.Create(MainPanel);
  with MaterialSupplyForm do
  begin
    Name := 'MyForm';
    Parent := MainPanel;
    Show;
  end;
end;

procedure TForm1.MenuEditProductClick(Sender: TObject);
begin
  ProductionEditForm := ProductionEditForm.Create(MainPanel);
  with ProductionEditForm do
  begin
    Name := 'MyForm';
    Parent := MainPanel;
    Show;
  end;
end;

procedure TForm1.MenuEditMaterialClick(Sender: TObject);
begin
  MaterialEditForm := MaterialEditForm.Create(MainPanel);
  with MaterialEditForm do
  begin
    Name := 'MyForm';
    Parent := MainPanel;
    Show;
  end;
end;

procedure TForm1.MenuFinancialReportClick(Sender: TObject);
begin
  FinancialReportForm := FinancialReportForm.Create(MainPanel);
  with FinancialReportForm do
  begin
    Name := 'MyForm';
    Parent := MainPanel;
    Show;
  end;
end;

procedure TForm1.MenuABCClick(Sender: TObject);
begin
  ABCAnalysisForm := ABCAnalysisForm.Create(MainPanel);
  with ABCAnalysisForm do
  begin
    Name := 'MyForm';
    Parent := MainPanel;
    Show;
  end;
end;

procedure TForm1.MenuSettingsClick(Sender: TObject);
begin
  SettingsForm.ShowModal;
end;

procedure TForm1.MenuExitClick(Sender: TObject);
begin
  Application.Terminate();
end;

end.

