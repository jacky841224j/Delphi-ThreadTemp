object Form1: TForm1
  Left = 0
  Top = 309
  Caption = 'Form1'
  ClientHeight = 488
  ClientWidth = 860
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object mmo1: TMemo
    Left = 328
    Top = 8
    Width = 524
    Height = 161
    TabOrder = 0
  end
  object pb1: TProgressBar
    Left = 8
    Top = 184
    Width = 844
    Height = 33
    Max = 10000
    Smooth = True
    SmoothReverse = True
    TabOrder = 1
  end
  object pb2: TProgressBar
    Left = 8
    Top = 240
    Width = 844
    Height = 33
    Max = 10000
    Smooth = True
    SmoothReverse = True
    TabOrder = 2
  end
  object pb3: TProgressBar
    Left = 8
    Top = 304
    Width = 844
    Height = 33
    Max = 10000
    Smooth = True
    SmoothReverse = True
    TabOrder = 3
  end
  object pb4: TProgressBar
    Left = 8
    Top = 368
    Width = 844
    Height = 33
    Max = 10000
    Smooth = True
    SmoothReverse = True
    TabOrder = 4
  end
  object pb5: TProgressBar
    Left = 8
    Top = 424
    Width = 844
    Height = 33
    Max = 10000
    Smooth = True
    SmoothReverse = True
    TabOrder = 5
  end
  object btn1: TBitBtn
    Left = 8
    Top = 8
    Width = 147
    Height = 161
    Caption = 'btn1'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 6
    OnClick = btn1Click
  end
  object btn2: TBitBtn
    Left = 175
    Top = 8
    Width = 147
    Height = 161
    Caption = 'btn2'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 7
    OnClick = btn2Click
  end
  object tmr1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = btn1Click
    Left = 432
    Top = 192
  end
end
