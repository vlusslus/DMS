object FormZaprosi: TFormZaprosi
  Left = 389
  Top = 218
  Width = 604
  Height = 474
  Caption = #1047#1072#1087#1088#1086#1089#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabelParam: TLabel
    Left = 16
    Top = 120
    Width = 15
    Height = 13
    Caption = '     '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ButtonZap: TButton
    Left = 264
    Top = 112
    Width = 75
    Height = 25
    Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = ButtonZapClick
  end
  object RadioGroupZap: TRadioGroup
    Left = 16
    Top = 8
    Width = 569
    Height = 97
    Caption = #1047#1072#1087#1088#1086#1089#1099':'
    Items.Strings = (
      #1047#1072#1087#1088#1086#1089' 1'
      #1047#1072#1087#1088#1086#1089' 2'
      #1047#1072#1087#1088#1086#1089' 3'
      #1047#1072#1087#1088#1086#1089' 4')
    TabOrder = 1
    OnClick = RadioGroupZapClick
  end
  object EditParam: TEdit
    Left = 104
    Top = 112
    Width = 153
    Height = 21
    TabOrder = 2
    Visible = False
  end
  object MemoText: TMemo
    Left = 152
    Top = 24
    Width = 417
    Height = 65
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 144
    Width = 596
    Height = 296
    Align = alBottom
    DataSource = DataModuleSud.DataSource
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
