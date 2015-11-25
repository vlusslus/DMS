object FormDobPrig: TFormDobPrig
  Left = 333
  Top = 471
  Width = 533
  Height = 222
  Caption = #1042#1099#1085#1077#1089#1077#1085#1080#1077' '#1087#1086#1076#1089#1091#1076#1080#1084#1086#1084#1091' '#1087#1088#1080#1075#1086#1074#1086#1088#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 78
    Height = 13
    Caption = #1060#1086#1088#1084#1091#1083#1080#1088#1086#1074#1082#1072
  end
  object Label3: TLabel
    Left = 16
    Top = 80
    Width = 84
    Height = 13
    Caption = #1052#1077#1088#1072' '#1085#1072#1082#1072#1079#1072#1085#1080#1103
  end
  object Label4: TLabel
    Left = 16
    Top = 16
    Width = 85
    Height = 13
    Caption = #1044#1072#1090#1072' '#1074#1099#1085#1077#1089#1077#1085#1080#1103
  end
  object Label5: TLabel
    Left = 16
    Top = 112
    Width = 70
    Height = 13
    Caption = #1042#1086#1079#1084#1086#1078#1085#1086#1089#1090#1100
  end
  object Label1: TLabel
    Left = 16
    Top = 125
    Width = 68
    Height = 13
    Caption = #1086#1073#1078#1072#1083#1086#1074#1072#1085#1080#1103
  end
  object EditFormul: TEdit
    Left = 119
    Top = 40
    Width = 393
    Height = 21
    TabOrder = 1
  end
  object EditMeraNak: TEdit
    Left = 119
    Top = 80
    Width = 393
    Height = 21
    TabOrder = 2
  end
  object EditObjal: TEdit
    Left = 119
    Top = 112
    Width = 393
    Height = 21
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 192
    Top = 152
    Width = 153
    Height = 25
    Caption = #1042#1099#1085#1077#1089#1090#1080' '#1087#1088#1080#1075#1086#1074#1086#1088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object EditDatav: TMaskEdit
    Left = 120
    Top = 8
    Width = 65
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 0
    Text = '  .  .    '
  end
end
