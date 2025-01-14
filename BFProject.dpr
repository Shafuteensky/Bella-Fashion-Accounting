program BFProject;

uses
  Vcl.Forms,
  MainPage in 'MainPage.pas' {MainForm},
  DataModule in 'DataModule.pas' {DataModule2: TDataModule},
  SalesUnit in 'SalesUnit.pas' {SalesForm},
  ProductionSupplyUnit in 'ProductionSupplyUnit.pas' {ProductionSupplyForm},
  StorageUnit in 'StorageUnit.pas' {StorageForm},
  ProductionEditUnit in 'ProductionEditUnit.pas' {ProductionEditForm},
  MaterialSupplyUnit in 'MaterialSupplyUnit.pas' {MaterialSupplyForm},
  MaterialEditUnit in 'MaterialEditUnit.pas' {MaterialEditForm},
  FinancialReportUnit in 'FinancialReportUnit.pas' {FinancialReportForm},
  ABCAnalysisUnit in 'ABCAnalysisUnit.pas' {ABCAnalysisForm},
  SettingsUnit in 'SettingsUnit.pas' {SettingsForm},
  EnvironmentEditUnit in 'EnvironmentEditUnit.pas' {EnvironmentEditForm},
  AboutUnit in 'AboutUnit.pas' {AboutForm},
  CalculatorUnit in 'CalculatorUnit.pas' {CalculatorForm},
  NotesUnit in 'NotesUnit.pas' {NotesForm},
  RateUnit in 'RateUnit.pas' {RateForm},
  ManualUnit in 'ManualUnit.pas' {ManualForm},
  Vcl.Themes,
  Vcl.Styles,
  SalesSearchUnit in 'InnerForms\SalesSearchUnit.pas' {SalesSearchForm},
  MaterialSupplySearchUnit in 'InnerForms\MaterialSupplySearchUnit.pas' {MaterialSearchForm},
  ProductionSupplySearchUnit in 'InnerForms\ProductionSupplySearchUnit.pas' {ProductionSearchForm},
  RateUpdateUnit in 'RateUpdateUnit.pas' {RateUpdateForm},
  CommonReportUnit in 'Reports\CommonReportUnit.pas' {CommonReportForm},
  LoginUnit in 'SupportForms\LoginUnit.pas' {loginForm},
  StorageSearchUnit in 'InnerForms\StorageSearchUnit.pas' {StorageSearchForm},
  DateFilterFrameUnit in 'Frames\DateFilterFrameUnit.pas' {DateFilterFrame: TFrame},
  FieldFilterFrameUnit in 'Frames\FieldFilterFrameUnit.pas' {FieldFilterFrame: TFrame},
  SearchFrameUnit in 'Frames\SearchFrameUnit.pas' {SearchFrame: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModule2, DataModule2);
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
