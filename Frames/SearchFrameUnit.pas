unit SearchFrameUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TSearchFrame = class(TFrame)
    Label60: TLabel;
    SearchNameCB: TDBLookupComboBox;
    Label31: TLabel;
    SearchAmountEdit: TEdit;
    SearchButton: TButton;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses DataModule;

procedure TSearchFrame.Button1Click(Sender: TObject);
begin
 // kek
end;

end.
