object FormPoiskPodsudim: TFormPoiskPodsudim
  Left = 439
  Top = 373
  Width = 625
  Height = 425
  Caption = #1055#1086#1080#1089#1082' '#1087#1086#1076#1089#1091#1076#1080#1084#1086#1075#1086
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 27
    Height = 13
    Caption = #1060#1048#1054
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 31
    Height = 13
    Caption = #1040#1076#1088#1077#1089
  end
  object Label3: TLabel
    Left = 8
    Top = 88
    Width = 43
    Height = 13
    Caption = #1055#1072#1089#1087#1086#1088#1090
  end
  object DBGridPods: TDBGrid
    Left = 0
    Top = 168
    Width = 617
    Height = 182
    DataSource = DataModuleSud.DataSourcePoiskPodsudim
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'kodp'
        Title.Caption = #1050#1054#1044
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fio'
        Title.Caption = #1060#1048#1054
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'datar'
        Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adres1'
        Title.Caption = #1040#1076#1088#1077#1089' '#1087#1088#1086#1087#1080#1089#1082#1080
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adres2'
        Title.Caption = #1040#1076#1088#1077#1089' '#1087#1088#1086#1078#1080#1074#1072#1085#1080#1103
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'passport'
        Title.Caption = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'deti'
        Title.Caption = #1053#1072#1083#1080#1095#1080#1077' '#1076#1077#1090#1077#1081
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sydim'
        Title.Caption = #1053#1072#1083#1080#1095#1080#1077' '#1089#1091#1076#1080#1084#1086#1089#1090#1077#1081
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mestrab'
        Title.Caption = #1052#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'obraz'
        Title.Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
        Width = 79
        Visible = True
      end>
  end
  object EditFio: TEdit
    Left = 80
    Top = 16
    Width = 497
    Height = 21
    TabOrder = 1
  end
  object EditAdres: TEdit
    Left = 80
    Top = 48
    Width = 497
    Height = 21
    TabOrder = 2
  end
  object EditPassport: TEdit
    Left = 80
    Top = 80
    Width = 497
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 80
    Top = 120
    Width = 161
    Height = 25
    Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1073#1072#1079#1077
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 416
    Top = 120
    Width = 161
    Height = 25
    Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' "'#1055#1086#1076#1089#1091#1076#1080#1084#1099#1077'"'
    TabOrder = 5
    OnClick = Button2Click
  end
  object BitBtn1: TBitBtn
    Left = 240
    Top = 360
    Width = 137
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1076#1077#1083#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn1Click
  end
end
