object FormAdvokat: TFormAdvokat
  Left = 440
  Top = 283
  Width = 600
  Height = 400
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' "'#1040#1076#1074#1086#1082#1072#1090#1099'"'
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
    Width = 68
    Height = 13
    Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
  end
  object Label4: TLabel
    Left = 32
    Top = 144
    Width = 98
    Height = 13
    Caption = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099
  end
  object Label5: TLabel
    Left = 32
    Top = 184
    Width = 79
    Height = 13
    Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
  end
  object Label6: TLabel
    Left = 32
    Top = 224
    Width = 26
    Height = 13
    Caption = #1057#1090#1072#1078
  end
  object DBEditFioAdv: TDBEdit
    Left = 144
    Top = 56
    Width = 409
    Height = 21
    DataField = 'fio'
    DataSource = DataModuleSud.DataSourceAdvokat
    TabOrder = 0
    OnKeyPress = DBEditFioAdvKeyPress
  end
  object DBEditObraz: TDBEdit
    Left = 144
    Top = 96
    Width = 409
    Height = 21
    DataField = 'obraz'
    DataSource = DataModuleSud.DataSourceAdvokat
    TabOrder = 1
  end
  object DBEditPassport: TDBEdit
    Left = 144
    Top = 136
    Width = 409
    Height = 21
    DataField = 'passportd'
    DataSource = DataModuleSud.DataSourceAdvokat
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 144
    Top = 16
    Width = 41
    Height = 21
    DataField = 'kodadv'
    DataSource = DataModuleSud.DataSourceAdvokat
    Enabled = False
    TabOrder = 5
  end
  object DBEditDataR: TDBEdit
    Left = 144
    Top = 176
    Width = 121
    Height = 21
    DataField = 'datar'
    DataSource = DataModuleSud.DataSourceAdvokat
    TabOrder = 3
  end
  object DBEditStaj: TDBEdit
    Left = 144
    Top = 216
    Width = 41
    Height = 21
    DataField = 'staj'
    DataSource = DataModuleSud.DataSourceAdvokat
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 32
    Top = 320
    Width = 240
    Height = 25
    DataSource = DataModuleSud.DataSourceAdvokat
    TabOrder = 6
  end
end
