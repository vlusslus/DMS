object FormDobSvid: TFormDobSvid
  Left = 381
  Top = 209
  Width = 579
  Height = 323
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1074#1080#1076#1077#1090#1077#1083#1103
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
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 27
    Height = 13
    Caption = #1060#1048#1054
  end
  object Label3: TLabel
    Left = 16
    Top = 56
    Width = 82
    Height = 13
    Caption = #1040#1076#1088#1077#1089' '#1087#1088#1086#1087#1080#1089#1082#1080
  end
  object Label4: TLabel
    Left = 16
    Top = 88
    Width = 96
    Height = 13
    Caption = #1040#1076#1088#1077#1089' '#1087#1088#1086#1078#1080#1074#1072#1085#1080#1103
  end
  object Label5: TLabel
    Left = 16
    Top = 120
    Width = 104
    Height = 13
    Caption = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
  end
  object Label7: TLabel
    Left = 16
    Top = 144
    Width = 105
    Height = 13
    Caption = #1056#1086#1076#1089#1090#1074#1077#1085#1085#1072#1103' '#1089#1074#1079#1103#1079#1100
  end
  object Label8: TLabel
    Left = 16
    Top = 184
    Width = 72
    Height = 13
    Caption = #1052#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099
  end
  object Label10: TLabel
    Left = 16
    Top = 216
    Width = 79
    Height = 13
    Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
  end
  object Label2: TLabel
    Left = 16
    Top = 160
    Width = 74
    Height = 13
    Caption = #1089' '#1087#1086#1076#1089#1091#1076#1080#1084#1099#1084
  end
  object EditFio: TEdit
    Left = 136
    Top = 16
    Width = 393
    Height = 21
    TabOrder = 0
  end
  object EditAdres1: TEdit
    Left = 136
    Top = 48
    Width = 393
    Height = 21
    TabOrder = 1
  end
  object EditAdres2: TEdit
    Left = 136
    Top = 80
    Width = 393
    Height = 21
    TabOrder = 2
  end
  object EditPassport: TEdit
    Left = 136
    Top = 112
    Width = 393
    Height = 21
    TabOrder = 3
  end
  object EditRods: TEdit
    Left = 136
    Top = 144
    Width = 393
    Height = 21
    TabOrder = 4
  end
  object EditMestorab: TEdit
    Left = 136
    Top = 176
    Width = 393
    Height = 21
    TabOrder = 5
  end
  object BitBtn1: TBitBtn
    Left = 208
    Top = 248
    Width = 137
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1076#1077#1083#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object EditDatar: TMaskEdit
    Left = 136
    Top = 208
    Width = 65
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 7
    Text = '  .  .    '
  end
end
