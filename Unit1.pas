unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

var number, attempts: Integer;
procedure TForm1.FormCreate(Sender: TObject);
begin
  Randomize;
  attempts := 0;
  number :=  Random(100)+1;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Randomize;
  number :=  Random(100)+1;
  attempts := 0;
  Panel2.Caption := 'Your attempts: ' + IntToStr(attempts);
  Edit1.Text := '';
  Panel1.Color := clBtnFace;
  Panel1.Caption := 'result';
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  attempts := attempts +1;
  Panel2.Caption := 'Your attempts: ' + IntToStr(attempts);
  Panel1.Font.Color := clWhite;
  if StrToInt(Edit1.Text) = number
    then
      begin
        Panel1.Color := clGreen;
        Panel1.Caption := 'right';
      end
  else
    Panel1.Color := clRed;
    if StrToInt(Edit1.Text) > number
      then Panel1.Caption := 'less'
    else if StrToInt(Edit1.Text) < number
      then Panel1.Caption := 'more'
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

end.
