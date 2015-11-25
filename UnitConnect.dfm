object FormConnect: TFormConnect
  Left = 416
  Top = 412
  Width = 395
  Height = 175
  Caption = #1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077' '#1082' '#1089#1077#1088#1074#1077#1088#1091
  Color = clInactiveCaption
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
    Left = 24
    Top = 24
    Width = 40
    Height = 16
    Caption = 'Server'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object EditServer: TEdit
    Left = 80
    Top = 16
    Width = 289
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = 'ANNA\SQLEXPRESS'
  end
  object BitBtnConnect: TBitBtn
    Left = 128
    Top = 80
    Width = 129
    Height = 25
    Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100#1089#1103
    TabOrder = 1
  end
end
