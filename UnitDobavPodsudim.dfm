object FormDobavPodsudim: TFormDobavPodsudim
  Left = 443
  Top = 273
  Width = 554
  Height = 537
  Caption = #1044#1073#1072#1074#1083#1077#1085#1080#1077' '#1087#1086#1076#1089#1091#1076#1080#1084#1086#1075#1086' '#1082' '#1076#1077#1083#1091
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
    Left = 16
    Top = 80
    Width = 27
    Height = 13
    Caption = #1060#1048#1054
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 88
    Height = 13
    Caption = #1050#1086#1076' '#1087#1086#1076#1089#1091#1076#1080#1084#1086#1075#1086
  end
  object Label3: TLabel
    Left = 16
    Top = 104
    Width = 82
    Height = 13
    Caption = #1040#1076#1088#1077#1089' '#1087#1088#1086#1087#1080#1089#1082#1080
  end
  object Label4: TLabel
    Left = 16
    Top = 128
    Width = 96
    Height = 13
    Caption = #1040#1076#1088#1077#1089' '#1087#1088#1086#1078#1080#1074#1072#1085#1080#1103
  end
  object Label5: TLabel
    Left = 16
    Top = 152
    Width = 104
    Height = 13
    Caption = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
  end
  object Label6: TLabel
    Left = 16
    Top = 176
    Width = 75
    Height = 13
    Caption = #1053#1072#1083#1080#1095#1080#1077' '#1076#1077#1090#1077#1081
  end
  object Label7: TLabel
    Left = 16
    Top = 200
    Width = 106
    Height = 13
    Caption = #1053#1072#1083#1080#1095#1080#1077' '#1089#1091#1076#1080#1084#1086#1089#1090#1077#1081
  end
  object Label8: TLabel
    Left = 16
    Top = 224
    Width = 72
    Height = 13
    Caption = #1052#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099
  end
  object Label9: TLabel
    Left = 16
    Top = 248
    Width = 68
    Height = 13
    Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
  end
  object Label10: TLabel
    Left = 16
    Top = 272
    Width = 79
    Height = 13
    Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
  end
  object Label11: TLabel
    Left = 80
    Top = 440
    Width = 42
    Height = 13
    Caption = #1040#1076#1074#1086#1082#1072#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ButtonPoisk: TButton
    Left = 16
    Top = 16
    Width = 169
    Height = 25
    Caption = #1053#1072#1081#1090#1080' '#1074' '#1073#1072#1079#1077
    TabOrder = 0
    OnClick = ButtonPoiskClick
  end
  object EditKod: TEdit
    Left = 136
    Top = 48
    Width = 49
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object EditFio: TEdit
    Left = 136
    Top = 72
    Width = 393
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object EditAdres1: TEdit
    Left = 136
    Top = 96
    Width = 393
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object EditAdres2: TEdit
    Left = 136
    Top = 120
    Width = 393
    Height = 21
    Enabled = False
    TabOrder = 4
  end
  object EditPassport: TEdit
    Left = 136
    Top = 144
    Width = 393
    Height = 21
    Enabled = False
    TabOrder = 5
  end
  object EditDeti: TEdit
    Left = 136
    Top = 168
    Width = 177
    Height = 21
    Enabled = False
    TabOrder = 6
  end
  object EditSudim: TEdit
    Left = 136
    Top = 192
    Width = 177
    Height = 21
    Enabled = False
    TabOrder = 7
  end
  object EditMestorab: TEdit
    Left = 136
    Top = 216
    Width = 393
    Height = 21
    Enabled = False
    TabOrder = 8
  end
  object EditObrazov: TEdit
    Left = 136
    Top = 240
    Width = 177
    Height = 21
    Enabled = False
    TabOrder = 9
  end
  object EditDatar: TEdit
    Left = 136
    Top = 264
    Width = 177
    Height = 21
    Enabled = False
    TabOrder = 10
  end
  object ButtonStat: TButton
    Left = 16
    Top = 304
    Width = 161
    Height = 25
    Caption = #1048#1085#1082#1088#1077#1084#1077#1085#1080#1088#1091#1077#1084#1099#1077' '#1089#1090#1072#1090#1100#1080
    TabOrder = 11
    OnClick = ButtonStatClick
  end
  object DBLookupComboBoxAdvokat: TDBLookupComboBox
    Left = 128
    Top = 432
    Width = 409
    Height = 21
    KeyField = 'kodadv'
    ListField = 'fio'
    ListSource = DataModuleSud.DataSourceAdvokat
    TabOrder = 12
    OnExit = DBLookupComboBoxAdvokatExit
  end
  object StringGridStatyi: TStringGrid
    Left = 8
    Top = 344
    Width = 529
    Height = 81
    ColCount = 2
    DefaultColWidth = 100
    DefaultRowHeight = 18
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 13
  end
  object BitBtn1: TBitBtn
    Left = 152
    Top = 472
    Width = 225
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1074#1077#1088#1085#1091#1090#1100#1089#1103' '#1074' '#1044#1077#1083#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = BitBtn1Click
  end
end
