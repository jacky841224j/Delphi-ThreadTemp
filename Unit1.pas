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
    btn3: TBitBtn;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  num,num1 : TStringList ;
  x : Integer = 0 ;

implementation

{$R *.dfm}

procedure MyThread.Execute;
var
  i,p,max : Integer;
begin
  FreeOnTerminate:= True;
  p := x ;
  max := TProgressBar(Form1.Controls[StrToInt(num[p-1]) ]).max;
//  showmessage(inttostr(TProgressBar(Form1.Controls[StrToInt(num[p-1])]).max));
  Form1.mmo1.Lines.Add('---------------------------------');
  Form1.mmo1.Lines.Add('Line [ '+IntToStr(p)+' ] Action');

  for I := 0 to max   do
  begin
    TProgressBar(Form1.Controls[StrToInt(num[p-1]) ]).Position := i ;
    tlabel(Form1.Controls[StrToInt(num1[p-1]) ]).caption := 'ProgressĄG '+inttostr(i) ;
  end;

end;

procedure TForm1.btn1Click(Sender: TObject);
var
  chk,i : integer;
begin
  chk := 0;
  if x <= num.Count -1 then
    begin
      MyThread.Create(False);
      Inc(x);
    end
  else
    begin

      for I := 0 to num.Count -1 do
      if TProgressBar(Form1.Controls[StrToInt(num[i]) ]).Position = TProgressBar(Form1.Controls[StrToInt(num[i]) ]).max then inc(chk);

      if chk = num.Count then
      begin
        x := 0;
        btn2Click(nil);
      end;
      chk := 0;

    end;
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  i : integer;
begin
//tmr1.Enabled := false;
for I := 0 to ComponentCount - 1 do
  if Components[i] is TProgressBar then
    TProgressBar(Controls[i]).Position := 0 ;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  if tmr1.Enabled then  tmr1.Enabled := false
  else tmr1.Enabled := true;
end;

procedure TForm1.FormShow(Sender: TObject);
var
  i : Integer;
begin
  num := TStringList.Create;
  num1:= TStringList.Create;
  for I := 0 to ComponentCount - 1 do
  if Components[i] is TProgressBar then num.Add(IntToStr(i));

  for I := 0 to ComponentCount - 1 do
  if Components[i] is Tlabel then num1.Add(IntToStr(i));

  mmo1.Lines.Add('Have [ '+ inttostr(num.Count)+' ] Thread Lines');
end;

end.
