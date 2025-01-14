unit CommonReportUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls;

type
  TCommonReportForm = class(TForm)
    Report1PeriodBox: TGroupBox;
    Report1AllTimeRB: TRadioButton;
    Report1IntervalRB: TRadioButton;
    Report1DTP1: TDateTimePicker;
    Report1DTP2: TDateTimePicker;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    GroupBox2: TGroupBox;
    CheckBox5: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    GroupBox3: TGroupBox;
    DBComboBox1: TDBComboBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CommonReportForm: TCommonReportForm;

implementation

{$R *.dfm}

procedure TCommonReportForm.Button1Click(Sender: TObject);
begin
  Close;
end;

end.
