unit DateFilterFrameUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.DBCtrls;

type
  TDateFilterFrame = class(TFrame)
    Label7: TLabel;
    DateFilterTypeCB: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    DateFilterDTP2: TDateTimePicker;
    DateFilterDTP1: TDateTimePicker;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
