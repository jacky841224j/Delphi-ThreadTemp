unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  MyThread = class(TThread)
    protected
      procedure Execute; override;
  end;

  TForm1 = class(TForm)
    mmo1: TMemo;
    pb1: TProgressBar;
    pb2: TProgressBar;
    pb3: TProgressBar;
    pb4: TProgressBar;
    pb5: TProgressBar;
    btn1: TBitBtn;
    btn2: TBitBtn;
    tmr1: TTimer;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  num : TStringList ;
  x : Integer = 0 ;

implementation

{$R *.dfm}

procedure MyThread.Execute;
var
  i,p : Integer;
begin
  p := x ;
  FreeOnTerminate:= True;
  Form1.mmo1.Lines.Add(IntToStr(p)+ '---');
//  Form1.mmo1.Lines.Add(num.Text);
  for I := 0 to 10000 do
  begin
    TProgressBar(Form1.Controls[StrToInt(num[p-1]) ]).Position := i ;
  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  if x <= num.Count -1 then
    begin
      MyThread.Create(False);
      Inc(x);
    end
  else
    begin
      x := 0;
      btn2Click(nil);
      exit;
    end;
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  i : integer;
begin
for I := 0 to ComponentCount - 1 do
  if Components[i] is TProgressBar then
    TProgressBar(Controls[i]).Position := 0 ;
end;

procedure TForm1.FormShow(Sender: TObject);
var
  i : Integer;
begin
  num := TStringList.Create;

  for I := 0 to ComponentCount - 1 do
  if Components[i] is TProgressBar then num.Add(IntToStr(i));
  mmo1.Lines.Add(num.Text);
end;

end.
