object Form1: TForm1
  Left = 800
  Top = 125
  Width = 387
  Height = 256
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 32
    Width = 114
    Height = 13
    Caption = 'Try to guess the number'
  end
  object Edit1: TEdit
    Left = 216
    Top = 32
    Width = 129
    Height = 21
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 208
    Top = 72
    Width = 137
    Height = 33
    Caption = 'result'
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 112
    Width = 89
    Height = 49
    TabOrder = 2
    OnClick = BitBtn1Click
    Kind = bkRetry
  end
  object BitBtn2: TBitBtn
    Left = 136
    Top = 112
    Width = 97
    Height = 49
    Caption = 'Try'
    TabOrder = 3
    OnClick = BitBtn2Click
    Kind = bkOK
  end
  object BitBtn3: TBitBtn
    Left = 256
    Top = 112
    Width = 89
    Height = 49
    Caption = 'Abrechnen'
    TabOrder = 4
    OnClick = BitBtn3Click
    Kind = bkNo
  end
  object Panel2: TPanel
    Left = 16
    Top = 72
    Width = 129
    Height = 33
    Alignment = taLeftJustify
    Caption = 'Your attempts: '
    TabOrder = 5
  end
end
