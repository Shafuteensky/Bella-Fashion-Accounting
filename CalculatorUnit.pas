unit CalculatorUnit;
{A simple calculator -
  Do not change button names Btn0- Btn9 as the digits 0 -9 are extract from the
  4th position of the name in a common routine}


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TCalculatorForm = class(TForm)
    GridPanel1: TGridPanel;
    Result: TEdit;
    BtnClear: TButton;
    BtnDiv: TButton;
    Btn7: TButton;
    Btn8: TButton;
    Btn9: TButton;
    BtnMult: TButton;
    Btn4: TButton;
    Btn5: TButton;
    Btn6: TButton;
    BtnMinus: TButton;
    Btn1: TButton;
    Btn2: TButton;
    Btn3: TButton;
    BtnPlus: TButton;
    Btn0: TButton;
    BtnDot: TButton;
    BtnEq: TButton;
    NotesInsertButton: TButton;
    StatusBar1: TStatusBar;
    procedure Btn0Click(Sender: TObject);
    procedure BtnDotClick(Sender: TObject);
    procedure BtnPlusClick(Sender: TObject);
    procedure BtnMinusClick(Sender: TObject);
    procedure BtnMultClick(Sender: TObject);
    procedure BtnDivClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnEqClick(Sender: TObject);
    procedure ResultKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure NotesInsertButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    r:double;
    w:string;
    dotentered:Boolean;
    startnew:Boolean;
    lastop, nextToLastOp :char;
    Procedure AddDigit(c:char);
    Procedure HandleOp(c:char);
    procedure Reset;
  end;

var
  CalculatorForm: TCalculatorForm;

implementation

{$R *.DFM}

uses NotesUnit;

// Процедуры ===================================================================
// Сброс
Procedure TCalculatorForm.Reset; {Clear everything out}
  begin
    w:='';
    dotentered:=false;
    r:=0.0;
    result.text:='';
    startnew:=false;
    lastop:=' ';
  end;

// Нажатие клавишь
procedure TCalculatorForm.ResultKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9'] then
    AddDigit(Key);
  if Key in ['+', '-', '/', '*'] then
    Handleop(Key);
  if Key = #8 then
    reset;
  if (Key = #13) or (Key = '=') then
  begin
    Handleop('=');
    result.text:=result.text+floattostr(r);{convert the result and add to display}
    startnew:=true;
  end;
end;

// Вывод цифр/знаков на панель
Procedure TCalculatorForm.AddDigit(c:char);  {Used pressed a digit}
Begin
  If startnew then reset;
  result.text:=result.text+c;
  w:=w+c;
end;

// Обработка операции
Procedure TCalculatorForm.HandleOp(c:char); {User pressed an operator}
var
  x:double;
Begin
  If startnew then reset;
  If length(w)>0 then {If there's a number in w then handle it}
  Begin
    x:=strtofloat(w);
    If lastop<>' ' then {lastop is the operation preceding  W}
    Begin
      case lastop of
        '+': r:=r+x;
        '-': r:=r-x;
        '*': r:=r*x;
        '/': r:=r/x;
      end;
    end
    else r:= x; {If no lastop - it's the first number, just move it to r}
    w:='';
    dotentered:=false;
    nextToLastOp := lastop;  {we need this to decide whether to insert parens}
    lastop:=c;
    {OK - if op is * or / and prev op was + or -, put the whole thing in parens}
    If (c in ['*','/']) and (NextToLastOp in ['+','-'])
    then Result.text:='('+Result.text+')';
    Result.text:=Result.text+c;
  end
  else beep;  {User entered 2 ops togeether or op as first entry}
end;

procedure TCalculatorForm.NotesInsertButtonClick(Sender: TObject);
var CurColor: Integer;
begin
//  ClipBoard.AsText := '{' + cboTable.Text + '|' + cboField.Text + '}';
//  NotesForm.RichEd.PasteFromClipboard;
//  NotesForm.RichEd.SetFocus;
  CurColor := NotesForm.RichEd.SelAttributes.Color;
  NotesForm.RichEd.SelLength := 0;
  NotesForm.RichEd.SelAttributes.Color := $000A7A96;
  NotesForm.RichEd.SelText := floattostr(r);
  NotesForm.RichEd.SelAttributes.Color := CurColor;
end;

// Обработка нажатой клавиши
procedure TCalculatorForm.Btn0Click(Sender: TObject);
{handles all digits}
begin
{NOTE! 4th charatcer of button anme is the digit - do NOT rename buttons!}
  If sender is TButton
  then If TButton(Sender).name[4] in ['0'..'9']
       then  AddDigit(TButton(sender).name[4])
       else beep;
end;

// Точка
procedure TCalculatorForm.BtnDotClick(Sender: TObject);
begin
  If startnew then reset;
  {make sure we get at most one decimal pount in the number}
  If not dotentered then  begin AddDigit('.'); dotentered:=true; end
  else beep;
end;

// Активация формы
procedure TCalculatorForm.FormActivate(Sender: TObject);
begin  reset;  end;

// Показ формы
procedure TCalculatorForm.FormShow(Sender: TObject);
begin
  SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
end;

// Кнопки ======================================================================
// +
procedure TCalculatorForm.BtnPlusClick(Sender: TObject);
begin Handleop('+'); end;

// -
procedure TCalculatorForm.BtnMinusClick(Sender: TObject);
begin  Handleop('-'); end;

// *
procedure TCalculatorForm.BtnMultClick(Sender: TObject);
begin  Handleop('*'); end;

// /
procedure TCalculatorForm.BtnDivClick(Sender: TObject);
begin  Handleop('/'); end;

// С
procedure TCalculatorForm.BtnClearClick(Sender: TObject);
begin  reset;  end;

// =
procedure TCalculatorForm.BtnEqClick(Sender: TObject);
begin
  Handleop('=');
  result.text:=result.text+floattostr(r);{convert the result and add to display}
  startnew:=true;   {set flag to start over on next kepresss}
end;

end.
