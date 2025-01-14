unit NotesUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ComCtrls, ToolWin, Clipbrd, System.ImageList,
  Vcl.ImgList, RichEdit, Math, Vcl.ExtCtrls, Vcl.WinXCtrls, System.UITypes;

type
  TNotesForm = class(TForm)
    MainMenu: TMainMenu;
    OpenDlg: TOpenDialog;
    PrintDlg: TPrintDialog;
    PrintSetupDlg: TPrinterSetupDialog;
    FontDlg: TFontDialog;
    ColorDlg: TColorDialog;
    OpenFileButton: TMenuItem;
    SaveFileButton: TMenuItem;
    PrintFileButton: TMenuItem;
    CloseFileButton: TMenuItem;
    UndoButton: TMenuItem;
    CutButton: TMenuItem;
    CopButton: TMenuItem;
    InsertButton: TMenuItem;
    SelectAllButton: TMenuItem;
    FontButton: TMenuItem;
    ColorButton: TMenuItem;
    SaveDlg: TSaveDialog;
    PrintSetupButton: TMenuItem;
    ImageList1: TImageList;
    BoldButton: TMenuItem;
    ItalicButton: TMenuItem;
    UnderlineButton: TMenuItem;
    StrikeOutButton: TMenuItem;
    MarkerButton: TMenuItem;
    NumberingButton: TMenuItem;
    IndentButton: TMenuItem;
    IncreaseButton: TMenuItem;
    DecreaseButton: TMenuItem;
    Filler: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Casebutton: TMenuItem;
    PopupMenu: TPopupMenu;
    N3: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N18: TMenuItem;
    SetBMButton: TMenuItem;
    GotoBMButton: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    ToolBar: TToolBar;
    PopupMenu1: TPopupMenu;
    RelativePanel1: TRelativePanel;
    RichEd: TRichEdit;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    StatusBar1: TStatusBar;
    N21: TMenuItem;
    Word1: TMenuItem;
    procedure OpenFileButtonClick(Sender: TObject);
    procedure SaveFileButtonClick(Sender: TObject);
    procedure PrintMClick(Sender: TObject);
    procedure PrintSetupButtonClick(Sender: TObject);
    procedure CloseFileButtonClick(Sender: TObject);
    procedure FontButtonClick(Sender: TObject);
    procedure ColorButtonClick(Sender: TObject);
    procedure UndoButtonClick(Sender: TObject);
    procedure CutButtonClick(Sender: TObject);
    procedure CopButtonClick(Sender: TObject);
    procedure InsertButtonClick(Sender: TObject);
    procedure SelectAllButtonClick(Sender: TObject);
    procedure BoldButtonClick(Sender: TObject);
    procedure ItalicButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure UnderlineButtonClick(Sender: TObject);
    procedure StrikeOutButtonClick(Sender: TObject);
    procedure RE_SetSelBgColor(RichEdit: TRichEdit; AColor: TColor);
    procedure MarkerButtonClick(Sender: TObject);
    procedure NumberingButtonClick(Sender: TObject);
    procedure IndentButtonClick(Sender: TObject);
    procedure IncreaseButtonClick(Sender: TObject);
    procedure DecreaseButtonClick(Sender: TObject);
    procedure CasebuttonClick(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure GotoBMButtonClick(Sender: TObject);
    procedure SetBMButtonClick(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure RichEdSelectionChange(Sender: TObject);
    procedure Word1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  end;

var
  NotesForm: TNotesForm;
  Bookmark: Integer = -1;
const
  NoteFile = 'note.rtf';

implementation

{$R *.dfm}

uses DataModule, ComObj;

// Процедуры ===================================================================
// Создание формы
procedure TNotesForm.FormCreate(Sender: TObject);
begin
  NoteFileLoaded := False;
  Bookmark := BookmarkParam;
  RichEd.Font.Size := 12;
  StatusBar1.Panels[0].Text := '';
//  TrackBar1.Max := 250; // (RichEd.Width-центр)/2~=350; 350/1.4=250
end;

// Показ формы
procedure TNotesForm.FormShow(Sender: TObject);
begin
  SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
  // Загрузка блокнота, если еще не загружен
  if NoteFileLoaded = False then
  begin
    if FileExists(NoteFile) then
    begin
      RichEd.Lines.LoadFromFile(NoteFile);
      TrackBar2.Position := 250 - RichEd.Paragraph.RightIndent;
      TrackBar1.Position := RichEd.Paragraph.FirstIndent;
    end
    else
    begin
      MyMessageDlg('Файл блокнота не найден: создан новый блокнот.', mtWarning, [mbYes], ['ОК'], 'Блокнот');
    end;
    NoteFileLoaded := True;
  end;
end;

// Закрытие формы
procedure TNotesForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RichEd.Lines.SaveToFile(NoteFile);
end;

// Изменение размера формы
procedure TNotesForm.FormResize(Sender: TObject);
begin
//  TrackBar1.Max := Ceil(RichEd.Width/1.7);
//  RichEd
//  RichEd.Width := 830;
//  if RichEditPanel.Width <= 837 then
//  begin
//    RichEd.Margins.Left := 3;
//  end
//  else
//  begin
//    RichEd.Margins.Left := Round((RichEditPanel.Width - 820)/2);
//  end;
end;

// Цвет выделения
procedure TNotesForm.RE_SetSelBgColor(RichEdit: TRichEdit; AColor: TColor);
var
  Format: CHARFORMAT2;
begin
  FillChar(Format, SizeOf(Format), 0);
  with Format do
  begin
    cbSize := SizeOf(Format);
    dwMask := CFM_BACKCOLOR;
    crBackColor := AColor;
    Richedit.Perform(EM_SETCHARFORMAT, SCF_SELECTION, Longint(@Format));
  end;
end;

// Измнение выбора (позиции курсора в richEdit)
procedure TNotesForm.RichEdSelectionChange(Sender: TObject);
var
  Page: Integer;
  CharsCount: Integer;
begin
  CharsCount := Length(StringReplace(RichEd.Text, sLineBreak, '', [rfReplaceAll]));
  if RichEd.CaretPos.Y = 0 then Page := 1 else Page := Ceil(RichEd.CaretPos.Y/45);
  StatusBar1.Panels[0].Text := ' Страница: ' + IntToStr(Page) + '; Строка: ' + IntToStr(RichEd.CaretPos.Y + 1) + '; Всего символов: ' +
    IntToStr(CharsCount)+ '.';
  TrackBar1.Position := RichEd.Paragraph.FirstIndent;
  TrackBar2.Position := 250 - RichEd.Paragraph.RightIndent;
end;

// Изменение позиции трекбара
procedure TNotesForm.TrackBar1Change(Sender: TObject);
begin
//  RichEd.SelectAll;
  RichEd.Paragraph.FirstIndent := TrackBar1.Position; //Round((TrackBar1.Position)/1.4);
  RichEd.SetFocus;
end;
//
procedure TNotesForm.TrackBar2Change(Sender: TObject);
begin
//  RichEd.SelectAll;
  RichEd.Paragraph.RightIndent := TrackBar2.Max - TrackBar2.Position; //Round((350 - TrackBar2.Position)/1.4);
  RichEd.SetFocus;
end;

// Кнопки ======================================================================
// Открыть файл
procedure TNotesForm.OpenFileButtonClick(Sender: TObject);
begin
 if OpenDlg.Execute then RichEd.Lines.LoadFromFile(OpenDlg.FileName);
end;

// Сохранить файл
procedure TNotesForm.SaveFileButtonClick(Sender: TObject);
begin
 if OpenDlg.FileName<>'' then SaveDlg.FileName:=OpenDlg.FileName;
 if SaveDlg.Execute then RichEd.Lines.SaveToFile(SaveDlg.FileName);
end;

// Закрыть файл
procedure TNotesForm.CloseFileButtonClick(Sender: TObject);
begin
 close;
end;

// Печать
procedure TNotesForm.PrintMClick(Sender: TObject);
begin
 if PrintDlg.Execute then RichEd.Print('');
end;

// Настройка печати
procedure TNotesForm.PrintSetupButtonClick(Sender: TObject);
begin
 PrintSetupDlg.Execute;
end;

// Назад
procedure TNotesForm.UndoButtonClick(Sender: TObject);
begin
 if RichEd.CanUndo then RichEd.Undo;
end;

procedure TNotesForm.Word1Click(Sender: TObject);
var WordApp, WordDoc: Variant;
begin
  try
    WordApp := CreateOleObject('Word.Application');
    WordApp.Visible := True;
    WordDoc := WordApp.Documents.Add;
    WordApp.Selection.TypeText(RichEd.Text);
    WordDoc.Close;
  finally
    WordApp := Unassigned;
    WordDoc := Unassigned;
  end;
end;

// Вырезать
procedure TNotesForm.CutButtonClick(Sender: TObject);
begin
 if RichEd.SelText<>'' then RichEd.CutToClipboard;
end;

// Копировать
procedure TNotesForm.CopButtonClick(Sender: TObject);
begin
 if RichEd.SelText<>'' then RichEd.CopyToClipboard;
end;

// Вставить
procedure TNotesForm.InsertButtonClick(Sender: TObject);
begin
 if Clipboard.HasFormat(CF_TEXT) then RichEd.PasteFromClipboard;
end;

// Выбрать все
procedure TNotesForm.SelectAllButtonClick(Sender: TObject);
begin
 RichEd.SelectAll;
end;

// Маркер
procedure TNotesForm.MarkerButtonClick(Sender: TObject);
var
  PickColor: integer;
begin
 if not ColorDlg.Execute then exit;
 PickColor := ColorDlg.Color;
 RE_SetSelBgColor(RichEd, PickColor);
end;

// Нумерация
procedure TNotesForm.NumberingButtonClick(Sender: TObject);
begin
  if RichEd.Paragraph.Numbering = nsBullet then
  begin
    RichEd.Paragraph.FirstIndent := 0 + TrackBar1.Position;
    RichEd.Paragraph.Numbering := nsNone;
  end
  else
  begin
    RichEd.Paragraph.FirstIndent := 25 + TrackBar1.Position;
    RichEd.Paragraph.Numbering := nsBullet;
  end;
end;

// Отступ
procedure TNotesForm.IndentButtonClick(Sender: TObject);
begin
  if RichEd.Paragraph.Alignment = taLeftJustify then
  begin
    RichEd.Paragraph.Alignment := taCenter;
  end
  else if RichEd.Paragraph.Alignment = taCenter then
  begin
    RichEd.Paragraph.Alignment := taLeftJustify;
  end;
end;

// Уменьшить шрифт
procedure TNotesForm.DecreaseButtonClick(Sender: TObject);
begin
  RichEd.SelAttributes.Size := RichEd.SelAttributes.Size - 2;
end;

// Увеличить шрифт
procedure TNotesForm.IncreaseButtonClick(Sender: TObject);
begin
  RichEd.SelAttributes.Size := RichEd.SelAttributes.Size + 2;
end;

// Заглавные/строчные
procedure TNotesForm.CasebuttonClick(Sender: TObject);
begin
  if RichEd.SelText <> UpperCase(RichEd.SelText) then
  begin
    RichEd.SelText := UpperCase(RichEd.SelText);
  end
  else;
  begin
    RichEd.SelText := LowerCase(RichEd.SelText);
  end;
end;

// Цвет
procedure TNotesForm.ColorButtonClick(Sender: TObject);
begin
  ColorDlg.Color := RichEd.SelAttributes.Color;
  if not ColorDlg.Execute then exit;
  RichEd.SelAttributes.Color := ColorDlg.Color;
end;

// Шрифт
procedure TNotesForm.FontButtonClick(Sender: TObject);
begin
  FontDlg.Font.Name := RichEd.SelAttributes.Name;
  FontDlg.Font.Color := RichEd.SelAttributes.Color;
  FontDlg.Font.Charset := RichEd.SelAttributes.Charset;
  FontDlg.Font.Size := RichEd.SelAttributes.Size;
  FontDlg.Font.Style := RichEd.SelAttributes.Style;
  if not FontDlg.Execute then exit;
  RichEd.SelAttributes.Name := FontDlg.Font.Name;
  RichEd.SelAttributes.Color := FontDlg.Font.Color;
  RichEd.SelAttributes.Charset := FontDlg.Font.Charset;
  RichEd.SelAttributes.Size := FontDlg.Font.Size;
  RichEd.SelAttributes.Style := FontDlg.Font.Style;
end;

// Жирный шрифт
procedure TNotesForm.BoldButtonClick(Sender: TObject);
begin
  if (fsBold in RichEd.SelAttributes.Style) then
    RichEd.SelAttributes.Style := RichEd.SelAttributes.Style - [fsBold]
  else
    RichEd.SelAttributes.Style := RichEd.SelAttributes.Style + [fsBold];
end;

// Курсив
procedure TNotesForm.ItalicButtonClick(Sender: TObject);
begin
  if (fsItalic in RichEd.SelAttributes.Style) then
    RichEd.SelAttributes.Style := RichEd.SelAttributes.Style - [fsItalic]
  else
    RichEd.SelAttributes.Style := RichEd.SelAttributes.Style + [fsItalic];
end;

// Подчеркнутый
procedure TNotesForm.UnderlineButtonClick(Sender: TObject);
begin
  if (fsUnderline in RichEd.SelAttributes.Style) then
    RichEd.SelAttributes.Style := RichEd.SelAttributes.Style - [fsUnderline]
  else
    RichEd.SelAttributes.Style := RichEd.SelAttributes.Style + [fsUnderline];
end;

// Зачеркнутый
procedure TNotesForm.StrikeOutButtonClick(Sender: TObject);
begin
  if (fsStrikeOut in RichEd.SelAttributes.Style) then
    RichEd.SelAttributes.Style := RichEd.SelAttributes.Style - [fsStrikeOut]
  else
    RichEd.SelAttributes.Style := RichEd.SelAttributes.Style + [fsStrikeOut];
end;

// Добавить закладку
procedure TNotesForm.SetBMButtonClick(Sender: TObject);
begin
  if (Bookmark <> -1) and (Bookmark <> RichEd.CaretPos.Y) then
  begin
    if MyMessageDlg('Изменить закладку с страницы ' + IntToStr(Bookmark+1) + ' на страницу ' + IntToStr(RichEd.CaretPos.Y+1) + '?',
      mtConfirmation, [mbYes, mbNo], ['Да','Нет'], 'Подтверждение') = mrYes then
    begin
      Bookmark := RichEd.CaretPos.Y;
    end;
  end
  else if Bookmark = RichEd.CaretPos.Y then begin end
  else Bookmark := RichEd.CaretPos.Y;
  BookmarkParam := Bookmark;
end;

// Перейти к закладке
procedure TNotesForm.GotoBMButtonClick(Sender: TObject);
begin
  RichEd.SetFocus;
  RichEd.SelStart := RichEd.perform(EM_LINEINDEX, Bookmark, 0);
  RichEd.perform(EM_SCROLLCARET, 0, 0);
end;

end.
