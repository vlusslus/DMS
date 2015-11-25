object FormVechDok: TFormVechDok
  Left = 309
  Top = 299
  Width = 600
  Height = 400
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' "'#1042#1077#1097#1077#1089#1090#1074#1077#1085#1085#1099#1077' '#1076#1086#1082#1072#1079#1072#1090#1077#1083#1100#1089#1090#1074#1072'"'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 119
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1076#1086#1082#1072#1079#1072#1090#1077#1083#1100#1089#1090#1074#1072
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 141
    Height = 13
    Caption = #1044#1072#1090#1072' '#1086#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086#1074#1072#1085#1080#1103
  end
  object Label3: TLabel
    Left = 16
    Top = 104
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  object Label4: TLabel
    Left = 16
    Top = 144
    Width = 50
    Height = 13
    Caption = #1054#1087#1080#1089#1072#1085#1080#1077
  end
  object Label5: TLabel
    Left = 16
    Top = 184
    Width = 61
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1076#1077#1083#1072
  end
  object DBEdit1: TDBEdit
    Left = 168
    Top = 16
    Width = 121
    Height = 21
    DataField = 'nomdok'
    DataSource = DataModuleSud.DataSourceVechDok
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 168
    Top = 56
    Width = 121
    Height = 21
    DataField = 'dataosv'
    DataSource = DataModuleSud.DataSourceVechDok
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 168
    Top = 96
    Width = 401
    Height = 21
    DataField = 'naimen'
    DataSource = DataModuleSud.DataSourceVechDok
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 168
    Top = 136
    Width = 401
    Height = 21
    DataField = 'opisanie'
    DataSource = DataModuleSud.DataSourceVechDok
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 168
    Top = 176
    Width = 121
    Height = 21
    DataField = 'nomdel'
    DataSource = DataModuleSud.DataSourceVechDok
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 328
    Width = 240
    Height = 25
    DataSource = DataModuleSud.DataSourceVechDok
    TabOrder = 5
  end
end
