object FormPoiskDela: TFormPoiskDela
  Left = 348
  Top = 233
  Width = 692
  Height = 560
  Caption = #1055#1054#1048#1057#1050' '#1044#1045#1051#1040
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
    Left = 24
    Top = 16
    Width = 98
    Height = 13
    Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099' '#1087#1086#1080#1089#1082#1072':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 48
    Width = 30
    Height = 13
    Caption = #1057#1091#1076#1100#1103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 24
    Top = 80
    Width = 49
    Height = 13
    Caption = #1055#1088#1086#1082#1091#1088#1086#1088
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 24
    Top = 112
    Width = 54
    Height = 13
    Caption = #1057#1077#1082#1088#1077#1090#1072#1088#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 144
    Width = 63
    Height = 13
    Caption = #1057#1086#1076#1077#1088#1078#1072#1085#1080#1077
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 176
    Width = 70
    Height = 13
    Caption = #1040#1082#1090#1091#1072#1083#1100#1085#1086#1089#1090#1100
  end
  object Label5: TLabel
    Left = 24
    Top = 208
    Width = 114
    Height = 13
    Caption = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1087#1088#1080#1075#1086#1074#1086#1088#1077
  end
  object EditSoder: TEdit
    Left = 160
    Top = 136
    Width = 377
    Height = 21
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object BitBtnPoisk: TBitBtn
    Left = 280
    Top = 232
    Width = 115
    Height = 25
    Caption = #1053#1072#1081#1090#1080' '#1076#1077#1083#1086
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtnPoiskClick
  end
  object DBGridResultPoisk: TDBGrid
    Left = 0
    Top = 264
    Width = 684
    Height = 225
    DataSource = DataModuleSud.DataSourcePoiskDela
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nomdel'
        Title.Caption = #1053#1086#1084#1077#1088
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'formul'
        Title.Caption = #1060#1086#1088#1084#1091#1083#1080#1088#1086#1074#1082#1072
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dataot'
        Title.Caption = #1044#1072#1090#1072' '#1086#1090#1082
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'datazak'
        Title.Caption = #1044#1072#1090#1072' '#1079#1072#1082
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sud'
        Title.Caption = #1057#1091#1076#1100#1103
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro'
        Title.Caption = #1055#1088#1086#1082#1091#1088#1086#1088
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sec'
        Title.Caption = #1057#1077#1082#1088#1077#1090#1072#1088#1100
        Width = 86
        Visible = True
      end>
  end
  object EditSudiya: TEdit
    Left = 160
    Top = 40
    Width = 377
    Height = 21
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object EditProkuror: TEdit
    Left = 160
    Top = 72
    Width = 377
    Height = 21
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object EditSecretar: TEdit
    Left = 160
    Top = 104
    Width = 377
    Height = 21
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object BitBtnRedakt: TBitBtn
    Left = 264
    Top = 496
    Width = 153
    Height = 25
    Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1102
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtnRedaktClick
  end
  object ComboBoxAktual: TComboBox
    Left = 160
    Top = 168
    Width = 201
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    OnKeyPress = ComboBoxAktualKeyPress
    Items.Strings = (
      #1042' '#1088#1072#1073#1086#1090#1077
      #1047#1072#1082#1088#1099#1090#1099#1077)
  end
  object ComboBoxPrig: TComboBox
    Left = 160
    Top = 200
    Width = 201
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    OnKeyPress = ComboBoxPrigKeyPress
    Items.Strings = (
      #1042#1099#1085#1077#1089#1077#1085' '#1076#1083#1103' '#1074#1089#1077#1093
      #1053#1077' '#1074#1099#1085#1077#1089#1077#1085' '#1076#1083#1103' '#1074#1089#1077#1093)
  end
  object BitBtnClear: TBitBtn
    Left = 160
    Top = 8
    Width = 75
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 9
    OnClick = BitBtnClearClick
  end
end
