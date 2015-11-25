object FormDobVeshDok: TFormDobVeshDok
  Left = 331
  Top = 333
  Width = 553
  Height = 225
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1074#1077#1097#1077#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1076#1086#1082#1072#1079#1072#1090#1077#1083#1100#1089#1090#1074#1072
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
  object Label7: TLabel
    Left = 16
    Top = 56
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  object Label8: TLabel
    Left = 16
    Top = 88
    Width = 50
    Height = 13
    Caption = #1054#1087#1080#1089#1072#1085#1080#1077
  end
  object Label10: TLabel
    Left = 16
    Top = 8
    Width = 26
    Height = 13
    Caption = #1044#1072#1090#1072
  end
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 112
    Height = 13
    Caption = #1086#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086#1074#1072#1085#1080#1103
  end
  object BitBtn1: TBitBtn
    Left = 200
    Top = 152
    Width = 145
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1076#1077#1083#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object EditNaim: TEdit
    Left = 143
    Top = 48
    Width = 393
    Height = 21
    TabOrder = 1
  end
  object EditOpis: TEdit
    Left = 143
    Top = 80
    Width = 393
    Height = 21
    TabOrder = 2
  end
  object EditDataOsv: TMaskEdit
    Left = 144
    Top = 10
    Width = 65
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 3
    Text = '  .  .    '
  end
end
