unit FieldFilterFrameUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls;

type
  TFieldFilterFrame = class(TFrame)
    Label1: TLabel;
    FieldFilterTypeCB: TDBLookupComboBox;
    FieldFilterFieldCB: TDBLookupComboBox;
    Label4: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
