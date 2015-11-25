object FormDelo: TFormDelo
  Left = 306
  Top = 151
  Width = 803
  Height = 679
  Caption = #1056#1045#1044#1040#1050#1058#1054#1056' '#1044#1045#1051
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 296
    Top = 72
    Width = 30
    Height = 13
    Caption = #1057#1091#1076#1100#1103
  end
  object Label2: TLabel
    Left = 16
    Top = 152
    Width = 78
    Height = 13
    Caption = #1044#1072#1090#1072' '#1079#1072#1082#1088#1099#1090#1080#1103
  end
  object Label3: TLabel
    Left = 16
    Top = 112
    Width = 77
    Height = 13
    Caption = #1044#1072#1090#1072' '#1086#1090#1082#1088#1099#1090#1080#1103
  end
  object Label4: TLabel
    Left = 16
    Top = 192
    Width = 50
    Height = 13
    Caption = #1054#1087#1080#1089#1072#1085#1080#1077
  end
  object Label5: TLabel
    Left = 16
    Top = 72
    Width = 34
    Height = 13
    Caption = #1053#1086#1084#1077#1088
  end
  object Label6: TLabel
    Left = 296
    Top = 112
    Width = 49
    Height = 13
    Caption = #1055#1088#1086#1082#1091#1088#1086#1088
  end
  object Label7: TLabel
    Left = 296
    Top = 152
    Width = 54
    Height = 13
    Caption = #1057#1077#1082#1088#1077#1090#1072#1088#1100
  end
  object Label8: TLabel
    Left = 128
    Top = 232
    Width = 68
    Height = 13
    Caption = #1055#1086#1076#1089#1091#1076#1080#1084#1099#1077':'
  end
  object Label9: TLabel
    Left = 16
    Top = 432
    Width = 57
    Height = 13
    Caption = #1057#1074#1080#1076#1077#1090#1077#1083#1080':'
  end
  object Label10: TLabel
    Left = 416
    Top = 432
    Width = 165
    Height = 13
    Caption = #1042#1077#1097#1077#1089#1090#1074#1077#1085#1085#1099#1077' '#1076#1086#1082#1072#1079#1072#1090#1077#1083#1100#1089#1090#1074#1072':'
  end
  object Label11: TLabel
    Left = 544
    Top = 232
    Width = 137
    Height = 13
    Caption = #1048#1085#1082#1088#1077#1084#1077#1085#1080#1088#1091#1077#1084#1099#1077' '#1089#1090#1072#1090#1100#1080':'
  end
  object Label12: TLabel
    Left = 56
    Top = 384
    Width = 49
    Height = 13
    Caption = #1055#1088#1080#1075#1086#1074#1086#1088
  end
  object DBLookupComboBoxSudiya: TDBLookupComboBox
    Left = 408
    Top = 64
    Width = 377
    Height = 21
    DataField = 'kodsyd'
    DataSource = DataModuleSud.DataSourceDelo
    KeyField = 'kodsyd'
    ListField = 'fio'
    ListSource = DataModuleSud.DataSourceSudya
    TabOrder = 0
  end
  object DBMemoDelo: TDBMemo
    Left = 128
    Top = 184
    Width = 657
    Height = 33
    DataField = 'formul'
    DataSource = DataModuleSud.DataSourceDelo
    TabOrder = 1
  end
  object DBEditDataOtk: TDBEdit
    Left = 128
    Top = 104
    Width = 121
    Height = 21
    DataField = 'dataot'
    DataSource = DataModuleSud.DataSourceDelo
    TabOrder = 2
  end
  object DBEditDataZak: TDBEdit
    Left = 128
    Top = 144
    Width = 121
    Height = 21
    DataField = 'datazak'
    DataSource = DataModuleSud.DataSourceDelo
    Enabled = False
    TabOrder = 3
    OnChange = DBEditDataZakChange
  end
  object DBEditNomDel: TDBEdit
    Left = 128
    Top = 64
    Width = 121
    Height = 21
    DataField = 'nomdel'
    DataSource = DataModuleSud.DataSourceDelo
    Enabled = False
    TabOrder = 4
    OnChange = DBEditNomDelChange
  end
  object DBLookupComboBoxProkuror: TDBLookupComboBox
    Left = 408
    Top = 104
    Width = 377
    Height = 21
    DataField = 'kodproc'
    DataSource = DataModuleSud.DataSourceDelo
    KeyField = 'kodproc'
    ListField = 'fio'
    ListSource = DataModuleSud.DataSourceProcuror
    TabOrder = 5
  end
  object DBLookupComboBoxSektetar: TDBLookupComboBox
    Left = 408
    Top = 144
    Width = 377
    Height = 21
    DataField = 'kodsek'
    DataSource = DataModuleSud.DataSourceDelo
    KeyField = 'kodsek'
    ListField = 'fio'
    ListSource = DataModuleSud.DataSourceSecretar
    TabOrder = 6
  end
  object DBNavigatorDelo: TDBNavigator
    Left = 16
    Top = 8
    Width = 240
    Height = 25
    DataSource = DataModuleSud.DataSourceDelo
    TabOrder = 7
  end
  object ButtonDobPods: TButton
    Left = 8
    Top = 248
    Width = 97
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 8
    OnClick = ButtonDobPodsClick
  end
  object DBGridPosudim: TDBGrid
    Left = 128
    Top = 248
    Width = 401
    Height = 121
    DataSource = DataModuleSud.DataSourcePodsDelo
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 9
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
        Width = 139
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adres1'
        Title.Caption = #1040#1076#1088#1077#1089' '#1087#1088#1086#1087#1080#1089#1082#1080
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adres2'
        Title.Caption = #1040#1076#1088#1077#1089' '#1087#1088#1086#1078#1080#1074#1072#1085#1080#1103
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'passport'
        Title.Caption = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'deti'
        Title.Caption = #1053#1072#1083#1080#1095#1080#1077' '#1076#1077#1090#1077#1081
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sydim'
        Title.Caption = #1053#1072#1083#1080#1095#1080#1077' '#1089#1091#1076#1080#1084#1086#1089#1090#1077#1081
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mestrab'
        Title.Caption = #1052#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'obraz'
        Title.Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'datar'
        Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        Width = 87
        Visible = True
      end>
  end
  object ButtonUdalPods: TButton
    Left = 8
    Top = 280
    Width = 97
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 10
    OnClick = ButtonUdalPodsClick
  end
  object ButtonPrigovor: TButton
    Left = 8
    Top = 312
    Width = 97
    Height = 25
    Caption = #1042#1099#1085#1077#1089#1090#1080' '#1087#1088#1080#1075#1086#1074#1086#1088
    TabOrder = 11
    OnClick = ButtonPrigovorClick
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 456
    Width = 370
    Height = 145
    DataSource = DataModuleSud.DataSourceSvidDela
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'kodsv'
        Title.Caption = #1050#1054#1044
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fio'
        Title.Caption = #1060#1048#1054
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adres1'
        Title.Caption = #1040#1076#1088#1077#1089' '#1087#1088#1086#1087#1080#1089#1082#1080
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adres2'
        Title.Caption = #1040#1076#1088#1077#1089' '#1087#1088#1086#1078#1080#1074#1072#1085#1080#1103
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'passportd'
        Title.Caption = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mestrab'
        Title.Caption = #1052#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'datar'
        Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rodstv'
        Title.Caption = #1056#1086#1076#1089#1090#1074' '#1089#1074#1103#1079#1100' '#1089' '#1087#1086#1076#1089
        Width = 115
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 416
    Top = 456
    Width = 370
    Height = 145
    DataSource = DataModuleSud.DataSourceVeshDok
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nomdok'
        Title.Caption = #1053#1086#1084#1077#1088
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dataosv'
        Title.Caption = #1044#1072#1090#1072' '#1086#1089#1074#1080#1076
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'naimen'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'opisanie'
        Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        Width = 77
        Visible = True
      end>
  end
  object ButtonUdalSvid: TButton
    Left = 112
    Top = 616
    Width = 97
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 14
    OnClick = ButtonUdalSvidClick
  end
  object ButtonDobavSvid: TButton
    Left = 8
    Top = 616
    Width = 97
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 15
    OnClick = ButtonDobavSvidClick
  end
  object DBGridStstii: TDBGrid
    Left = 544
    Top = 248
    Width = 233
    Height = 120
    DataSource = DataModuleSud.DataSourceStatPods
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 16
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nomstat'
        Title.Caption = #1053#1086#1084#1077#1088
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'formul'
        Title.Caption = #1060#1086#1088#1084#1091#1083#1080#1088#1086#1074#1082#1072
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prednak'
        Title.Caption = #1055#1088#1077#1076#1091#1089#1084#1072#1090#1088#1080#1074#1072#1077#1084#1086#1077' '#1085#1072#1082#1072#1079#1072#1085#1080#1077
        Width = 182
        Visible = True
      end>
  end
  object ButtonUdalitDok: TButton
    Left = 520
    Top = 616
    Width = 97
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 17
    OnClick = ButtonUdalitDokClick
  end
  object ButtonDobavDok: TButton
    Left = 416
    Top = 616
    Width = 97
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 18
    OnClick = ButtonDobavDokClick
  end
  object BitBtnOtchet: TBitBtn
    Left = 8
    Top = 344
    Width = 97
    Height = 25
    Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1076#1077#1083#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
    OnClick = BitBtnOtchetClick
  end
  object BitBtnZakrDelo: TBitBtn
    Left = 408
    Top = 8
    Width = 100
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100' '#1076#1077#1083#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
    OnClick = BitBtnZakrDeloClick
  end
  object DBMemo2: TDBMemo
    Left = 128
    Top = 384
    Width = 657
    Height = 33
    DataField = 'prig'
    DataSource = DataModuleSud.DataSourcePrigPods
    Enabled = False
    TabOrder = 21
  end
  object BitBtnVozob: TBitBtn
    Left = 520
    Top = 8
    Width = 100
    Height = 25
    Caption = #1042#1086#1079#1086#1073#1085#1086#1074#1080#1090#1100' '#1076#1077#1083#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 22
    OnClick = BitBtnVozobClick
  end
end
