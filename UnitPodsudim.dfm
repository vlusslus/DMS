object FormPodsudim: TFormPodsudim
  Left = 339
  Top = 166
  Width = 801
  Height = 728
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' "'#1055#1086#1076#1089#1091#1076#1080#1084#1099#1077'"'
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
    Width = 82
    Height = 13
    Caption = #1040#1076#1088#1077#1089' '#1087#1088#1086#1087#1080#1089#1082#1080
  end
  object Label4: TLabel
    Left = 32
    Top = 184
    Width = 104
    Height = 13
    Caption = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
  end
  object Label5: TLabel
    Left = 32
    Top = 376
    Width = 79
    Height = 13
    Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
  end
  object Label6: TLabel
    Left = 32
    Top = 264
    Width = 106
    Height = 13
    Caption = #1053#1072#1083#1080#1095#1080#1077' '#1089#1091#1076#1080#1084#1086#1089#1090#1077#1081
  end
  object Label7: TLabel
    Left = 32
    Top = 144
    Width = 96
    Height = 13
    Caption = #1040#1076#1088#1077#1089' '#1087#1088#1086#1078#1080#1074#1072#1085#1080#1103
  end
  object Label8: TLabel
    Left = 32
    Top = 224
    Width = 80
    Height = 13
    Caption = #1053#1072#1095#1083#1080#1095#1080#1077' '#1076#1077#1090#1077#1081
  end
  object Label9: TLabel
    Left = 32
    Top = 304
    Width = 72
    Height = 13
    Caption = #1052#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099
  end
  object Label10: TLabel
    Left = 32
    Top = 344
    Width = 74
    Height = 13
    Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077#1077
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 432
    Width = 793
    Height = 262
    Align = alBottom
    DataSource = DataModuleSud.DataSourcePodsudim
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBEditFioPods: TDBEdit
    Left = 144
    Top = 56
    Width = 409
    Height = 21
    DataField = 'fio'
    DataSource = DataModuleSud.DataSourcePodsudim
    TabOrder = 0
    OnKeyPress = DBEditFioPodsKeyPress
  end
  object DBEditAdres1: TDBEdit
    Left = 144
    Top = 96
    Width = 409
    Height = 21
    DataField = 'adres1'
    DataSource = DataModuleSud.DataSourcePodsudim
    TabOrder = 1
  end
  object DBEditPassport: TDBEdit
    Left = 144
    Top = 176
    Width = 409
    Height = 21
    DataField = 'passport'
    DataSource = DataModuleSud.DataSourcePodsudim
    TabOrder = 3
  end
  object DBEditKodP: TDBEdit
    Left = 144
    Top = 16
    Width = 41
    Height = 21
    DataField = 'kodp'
    DataSource = DataModuleSud.DataSourcePodsudim
    Enabled = False
    TabOrder = 11
  end
  object DBEditDataR: TDBEdit
    Left = 144
    Top = 368
    Width = 121
    Height = 21
    DataField = 'datar'
    DataSource = DataModuleSud.DataSourcePodsudim
    TabOrder = 8
  end
  object DBEditSudim: TDBEdit
    Left = 144
    Top = 256
    Width = 137
    Height = 21
    DataField = 'sydim'
    DataSource = DataModuleSud.DataSourcePodsudim
    TabOrder = 5
  end
  object DBNavigator1: TDBNavigator
    Left = 32
    Top = 400
    Width = 240
    Height = 25
    DataSource = DataModuleSud.DataSourcePodsudim
    TabOrder = 9
  end
  object DBEditAdres2: TDBEdit
    Left = 144
    Top = 136
    Width = 409
    Height = 21
    DataField = 'adres2'
    DataSource = DataModuleSud.DataSourcePodsudim
    TabOrder = 2
  end
  object DBEditDeti: TDBEdit
    Left = 144
    Top = 216
    Width = 137
    Height = 21
    DataField = 'deti'
    DataSource = DataModuleSud.DataSourcePodsudim
    TabOrder = 4
  end
  object DBEditMestRab: TDBEdit
    Left = 144
    Top = 296
    Width = 409
    Height = 21
    DataField = 'mestrab'
    DataSource = DataModuleSud.DataSourcePodsudim
    TabOrder = 6
  end
  object DBEditObraz: TDBEdit
    Left = 144
    Top = 336
    Width = 409
    Height = 21
    DataField = 'obraz'
    DataSource = DataModuleSud.DataSourcePodsudim
    TabOrder = 7
  end
end
