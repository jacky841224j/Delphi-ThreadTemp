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
  object lbl1: TLabel
    Left = 8
    Top = 182
    Width = 64
    Height = 24
    Caption = 'Progress'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Noto Sans TC Regular'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 8
    Top = 240
    Width = 64
    Height = 24
    Caption = 'Progress'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Noto Sans TC Regular'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 8
    Top = 304
    Width = 64
    Height = 24
    Caption = 'Progress'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Noto Sans TC Regular'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 8
    Top = 368
    Width = 64
    Height = 24
    Caption = 'Progress'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Noto Sans TC Regular'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 8
    Top = 424
    Width = 64
    Height = 24
    Caption = 'Progress'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Noto Sans TC Regular'
    Font.Style = []
    ParentFont = False
  end
  object pb1: TProgressBar
    Left = 168
    Top = 184
    Width = 684
    Height = 33
    Max = 10000
    Smooth = True
    SmoothReverse = True
    TabOrder = 1
  end
  object mmo1: TMemo
    Left = 328
    Top = 8
    Width = 524
    Height = 161
    TabOrder = 0
  end
  object pb2: TProgressBar
    Left = 168
    Top = 240
    Width = 684
    Height = 33
    Max = 10000
    Smooth = True
    SmoothReverse = True
    TabOrder = 2
  end
  object pb3: TProgressBar
    Left = 168
    Top = 304
    Width = 684
    Height = 33
    Max = 10000
    Smooth = True
    SmoothReverse = True
    TabOrder = 3
  end
  object pb4: TProgressBar
    Left = 168
    Top = 368
    Width = 684
    Height = 33
    Max = 5000
    Smooth = True
    SmoothReverse = True
    TabOrder = 4
  end
  object pb5: TProgressBar
    Left = 168
    Top = 424
    Width = 684
    Height = 33
    Max = 5000
    Smooth = True
    SmoothReverse = True
    TabOrder = 5
  end
  object btn1: TBitBtn
    Left = 8
    Top = 8
    Width = 147
    Height = 81
    Caption = 'Action'
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
    Caption = 'ReSet'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 7
    OnClick = btn2Click
  end
  object btn3: TBitBtn
    Left = 8
    Top = 95
    Width = 147
    Height = 81
    Caption = 'AutoAction/Stop'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 8
    OnClick = btn3Click
  end
  object tmr1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = btn1Click
    Left = 120
    Top = 104
  end
end
