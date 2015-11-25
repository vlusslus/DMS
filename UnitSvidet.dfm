object FormSvidet: TFormSvidet
  Left = 315
  Top = 277
  Width = 600
  Height = 400
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' "'#1057#1074#1080#1076#1077#1090#1077#1083#1080'"'
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
    Left = 32
    Top = 56
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
    Top = 88
    Width = 82
    Height = 13
    Caption = #1040#1076#1088#1077#1089' '#1087#1088#1086#1087#1080#1089#1082#1080
  end
  object Label4: TLabel
    Left = 32
    Top = 152
    Width = 104
    Height = 13
    Caption = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
  end
  object Label5: TLabel
    Left = 32
    Top = 248
    Width = 79
    Height = 13
    Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
  end
  object Label6: TLabel
    Left = 32
    Top = 184
    Width = 72
    Height = 13
    Caption = #1052#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099
  end
  object Label7: TLabel
    Left = 32
    Top = 120
    Width = 96
    Height = 13
    Caption = #1040#1076#1088#1077#1089' '#1087#1088#1086#1078#1080#1074#1072#1085#1080#1103
  end
  object Label8: TLabel
    Left = 32
    Top = 208
    Width = 99
    Height = 13
    Caption = #1056#1086#1076#1089#1090#1074#1077#1085#1085#1072#1103' '#1089#1074#1103#1079#1100
  end
  object Label9: TLabel
    Left = 32
    Top = 224
    Width = 74
    Height = 13
    Caption = #1089' '#1087#1086#1076#1089#1091#1076#1080#1084#1099#1084
  end
  object Label10: TLabel
    Left = 32
    Top = 280
    Width = 61
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1076#1077#1083#1072
  end
  object DBEditFioSvidet: TDBEdit
    Left = 144
    Top = 48
    Width = 409
    Height = 21
    DataField = 'fio'
    DataSource = DataModuleSud.DataSourceSvidet
    TabOrder = 1
  end
  object DBEditAdres1: TDBEdit
    Left = 144
    Top = 80
    Width = 409
    Height = 21
    DataField = 'adres1'
    DataSource = DataModuleSud.DataSourceSvidet
    TabOrder = 2
  end
  object DBEditPassport: TDBEdit
    Left = 144
    Top = 144
    Width = 409
    Height = 21
    DataField = 'passportd'
    DataSource = DataModuleSud.DataSourceSvidet
    TabOrder = 4
  end
  object DBEditKodSud: TDBEdit
    Left = 144
    Top = 16
    Width = 41
    Height = 21
    DataField = 'kodsv'
    DataSource = DataModuleSud.DataSourceSvidet
    Enabled = False
    TabOrder = 0
  end
  object DBEditDataR: TDBEdit
    Left = 144
    Top = 240
    Width = 121
    Height = 21
    DataField = 'datar'
    DataSource = DataModuleSud.DataSourceSvidet
    TabOrder = 7
  end
  object DBEditMestRab: TDBEdit
    Left = 144
    Top = 176
    Width = 409
    Height = 21
    DataField = 'mestr'
    DataSource = DataModuleSud.DataSourceSvidet
    TabOrder = 5
  end
  object DBNavigator1: TDBNavigator
    Left = 48
    Top = 320
    Width = 240
    Height = 25
    DataSource = DataModuleSud.DataSourceSvidet
    TabOrder = 9
  end
  object DBEditAdres2: TDBEdit
    Left = 144
    Top = 112
    Width = 409
    Height = 21
    DataField = 'adres2'
    DataSource = DataModuleSud.DataSourceSvidet
    TabOrder = 3
  end
  object DBEditRodstv: TDBEdit
    Left = 144
    Top = 208
    Width = 409
    Height = 21
    DataField = 'rodstv'
    DataSource = DataModuleSud.DataSourceSvidet
    TabOrder = 6
  end
  object DBEditNom: TDBEdit
    Left = 144
    Top = 272
    Width = 121
    Height = 21
    DataField = 'nomdel'
    DataSource = DataModuleSud.DataSourceSvidet
    TabOrder = 8
  end
end
