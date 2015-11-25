object FormFAllAdv: TFormFAllAdv
  Left = 315
  Top = 246
  Width = 635
  Height = 452
  Caption = 'FormFAllAdv'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 248
    Width = 553
    Height = 153
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 224
    Top = 64
    Width = 121
    Height = 21
    DataField = 'fio'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 224
    Top = 104
    Width = 121
    Height = 21
    DataField = 'passportd'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 224
    Top = 136
    Width = 121
    Height = 21
    DataField = 'obraz'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 216
    Top = 176
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 4
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Provider = 'SQLNCLI.1'
    Left = 40
    Top = 24
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Advokat'
    Left = 40
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 80
    Top = 64
  end
end
