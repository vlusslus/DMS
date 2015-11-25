object FormStatii: TFormStatii
  Left = 367
  Top = 293
  Width = 600
  Height = 304
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' "'#1057#1090#1072#1090#1100#1080'"'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 64
    Width = 78
    Height = 13
    Caption = #1060#1086#1088#1084#1091#1083#1080#1088#1086#1074#1082#1072
  end
  object Label2: TLabel
    Left = 32
    Top = 24
    Width = 39
    Height = 13
    Caption = #1053#1054#1052#1045#1056
  end
  object Label4: TLabel
    Left = 32
    Top = 144
    Width = 106
    Height = 13
    Caption = #1055#1088#1077#1076#1091#1089#1084#1072#1090#1088#1080#1074#1072#1077#1084#1086#1077
  end
  object Label3: TLabel
    Left = 32
    Top = 160
    Width = 54
    Height = 13
    Caption = #1085#1072#1082#1072#1079#1072#1085#1080#1077
  end
  object DBNavigatorStatii: TDBNavigator
    Left = 32
    Top = 232
    Width = 240
    Height = 25
    DataSource = DataModuleSud.DataSourceStatii
    TabOrder = 0
  end
  object DBEditNomer: TDBEdit
    Left = 144
    Top = 16
    Width = 41
    Height = 21
    DataField = 'nomstat'
    DataSource = DataModuleSud.DataSourceStatii
    Enabled = False
    TabOrder = 1
  end
  object DBMemo1: TDBMemo
    Left = 144
    Top = 48
    Width = 401
    Height = 57
    DataField = 'formul'
    DataSource = DataModuleSud.DataSourceStatii
    TabOrder = 2
  end
  object DBMemo2: TDBMemo
    Left = 144
    Top = 128
    Width = 401
    Height = 65
    DataField = 'prednak'
    DataSource = DataModuleSud.DataSourceStatii
    TabOrder = 3
  end
end
