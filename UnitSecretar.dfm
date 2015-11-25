object FormSectretar: TFormSectretar
  Left = 352
  Top = 263
  Width = 600
  Height = 287
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' "'#1057#1077#1082#1088#1077#1090#1072#1088#1080'"'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 64
    Width = 27
    Height = 13
    Caption = #1060#1048#1054
  end
  object Label2: TLabel
    Left = 32
    Top = 24
    Width = 24
    Height = 13
    Caption = #1050#1054#1044
  end
  object Label3: TLabel
    Left = 32
    Top = 104
    Width = 26
    Height = 13
    Caption = #1057#1090#1072#1078
  end
  object Label5: TLabel
    Left = 32
    Top = 144
    Width = 79
    Height = 13
    Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
  end
  object DBNavigator1: TDBNavigator
    Left = 32
    Top = 200
    Width = 240
    Height = 25
    DataSource = DataModuleSud.DataSourceSecretar
    TabOrder = 4
  end
  object DBEditFioSec: TDBEdit
    Left = 144
    Top = 56
    Width = 409
    Height = 21
    DataField = 'fio'
    DataSource = DataModuleSud.DataSourceSecretar
    TabOrder = 0
    OnKeyPress = DBEditFioSecKeyPress
  end
  object DBEditStajSec: TDBEdit
    Left = 144
    Top = 96
    Width = 73
    Height = 21
    DataField = 'stajr'
    DataSource = DataModuleSud.DataSourceSecretar
    TabOrder = 1
  end
  object DBEditKodSec: TDBEdit
    Left = 144
    Top = 16
    Width = 41
    Height = 21
    DataField = 'kodsek'
    DataSource = DataModuleSud.DataSourceSecretar
    Enabled = False
    TabOrder = 3
  end
  object DBEditDataR: TDBEdit
    Left = 144
    Top = 136
    Width = 121
    Height = 21
    DataField = 'datar'
    DataSource = DataModuleSud.DataSourceSecretar
    TabOrder = 2
  end
end
