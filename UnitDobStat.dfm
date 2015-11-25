object FormDobStat: TFormDobStat
  Left = 373
  Top = 414
  Width = 553
  Height = 457
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1089#1090#1072#1090#1077#1081' '#1087#1086#1076#1089#1091#1076#1080#1084#1086#1084#1091
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PrintScale = poNone
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 16
    Width = 63
    Height = 13
    Caption = #1057#1086#1076#1077#1088#1078#1072#1085#1080#1077
  end
  object Button1: TButton
    Left = 208
    Top = 48
    Width = 150
    Height = 25
    Caption = #1053#1072#1081#1090#1080' '#1089#1090#1072#1090#1100#1102
    TabOrder = 0
    OnClick = Button1Click
  end
  object EditFormul: TEdit
    Left = 80
    Top = 8
    Width = 305
    Height = 21
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 88
    Width = 545
    Height = 281
    DataSource = DataModuleSud.DataSourcePoiskStatyi
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nomstat'
        Title.Caption = #1053#1054#1052#1045#1056
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'formul'
        Title.Caption = #1060#1086#1088#1084#1091#1083#1080#1088#1086#1074#1082#1072
        Width = 229
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prednak'
        Title.Caption = #1055#1088#1077#1076#1091#1089#1084#1072#1090#1088#1080#1074#1072#1077#1084#1086#1077' '#1085#1072#1082#1072#1079#1072#1085#1080#1077
        Width = 246
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 208
    Top = 384
    Width = 150
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082' '#1087#1086#1076#1089#1091#1076#1080#1084#1086#1084#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
end
