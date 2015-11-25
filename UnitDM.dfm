object DataModuleSud: TDataModuleSud
  OldCreateOrder = False
  Left = 287
  Top = 227
  Height = 746
  Width = 821
  object ADOConnectionSUD: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI.1;Integrated Security=SSPI;Persist Security Inf' +
      'o=False;Initial Catalog=Sud;Data Source=ANNA\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLNCLI.1'
    Left = 56
  end
  object ADOTableSudya: TADOTable
    Connection = ADOConnectionSUD
    CursorLocation = clUseServer
    BeforeDelete = ADOTableSudyaBeforeDelete
    TableName = 'Sydia'
    Left = 48
    Top = 48
  end
  object DataSourceSudya: TDataSource
    DataSet = ADOTableSudya
    Left = 160
    Top = 48
  end
  object ADOTableProcuror: TADOTable
    Connection = ADOConnectionSUD
    CursorLocation = clUseServer
    BeforeDelete = ADOTableProcurorBeforeDelete
    TableName = 'Procyror'
    Left = 48
    Top = 96
  end
  object DataSourceProcuror: TDataSource
    DataSet = ADOTableProcuror
    Left = 168
    Top = 96
  end
  object ADOTableDelo: TADOTable
    Connection = ADOConnectionSUD
    CursorLocation = clUseServer
    AfterInsert = ADOTableDeloAfterInsert
    BeforeDelete = ADOTableDeloBeforeDelete
    AfterScroll = ADOTableDeloAfterScroll
    TableName = 'Delo'
    Left = 48
    Top = 152
  end
  object DataSourceDelo: TDataSource
    DataSet = ADOTableDelo
    Left = 176
    Top = 160
  end
  object ADOTableSecretar: TADOTable
    Connection = ADOConnectionSUD
    CursorLocation = clUseServer
    BeforeDelete = ADOTableSecretarBeforeDelete
    TableName = 'Sekretar'
    Left = 48
    Top = 208
  end
  object DataSourceSecretar: TDataSource
    DataSet = ADOTableSecretar
    Left = 176
    Top = 208
  end
  object ADOTablePodsydim: TADOTable
    Connection = ADOConnectionSUD
    CursorLocation = clUseServer
    TableName = 'Podsydim'
    Left = 48
    Top = 264
  end
  object DataSourcePodsudim: TDataSource
    DataSet = ADOTablePodsydim
    Left = 176
    Top = 264
  end
  object ADOTableAdvokat: TADOTable
    Connection = ADOConnectionSUD
    CursorLocation = clUseServer
    BeforeDelete = ADOTableAdvokatBeforeDelete
    TableName = 'Advokat'
    Left = 48
    Top = 320
  end
  object DataSourceAdvokat: TDataSource
    DataSet = ADOTableAdvokat
    Left = 176
    Top = 320
  end
  object ADOQueryPodsDelo: TADOQuery
    Connection = ADOConnectionSUD
    AfterScroll = ADOQueryPodsDeloAfterScroll
    Parameters = <>
    Left = 376
    Top = 64
  end
  object DataSourcePodsDelo: TDataSource
    AutoEdit = False
    DataSet = ADOQueryPodsDelo
    Left = 512
    Top = 64
  end
  object ADOQueryPoiskPodsud: TADOQuery
    Connection = ADOConnectionSUD
    Parameters = <>
    Left = 384
    Top = 120
  end
  object DataSourcePoiskPodsudim: TDataSource
    DataSet = ADOQueryPoiskPodsud
    Left = 520
    Top = 120
  end
  object ADOQueryStatPods: TADOQuery
    Connection = ADOConnectionSUD
    Parameters = <>
    Left = 376
    Top = 176
  end
  object DataSourceStatPods: TDataSource
    DataSet = ADOQueryStatPods
    Left = 520
    Top = 176
  end
  object ADOQueryPoiskStatyi: TADOQuery
    Connection = ADOConnectionSUD
    Parameters = <>
    Left = 376
    Top = 280
  end
  object DataSourcePoiskStatyi: TDataSource
    DataSet = ADOQueryPoiskStatyi
    Left = 520
    Top = 280
  end
  object ADOCommandDobPodsud: TADOCommand
    Connection = ADOConnectionSUD
    Parameters = <>
    Left = 48
    Top = 504
  end
  object ADOCommandDobSvid: TADOCommand
    Connection = ADOConnectionSUD
    Parameters = <>
    Left = 48
    Top = 552
  end
  object ADOQuerySvidDela: TADOQuery
    Connection = ADOConnectionSUD
    Parameters = <>
    Left = 376
    Top = 336
  end
  object DataSourceSvidDela: TDataSource
    DataSet = ADOQuerySvidDela
    Left = 520
    Top = 336
  end
  object ADOCommandVechDok: TADOCommand
    Connection = ADOConnectionSUD
    Parameters = <>
    Left = 48
    Top = 608
  end
  object ADOQueryVeshDok: TADOQuery
    Connection = ADOConnectionSUD
    Parameters = <>
    Left = 376
    Top = 384
  end
  object DataSourceVeshDok: TDataSource
    DataSet = ADOQueryVeshDok
    Left = 520
    Top = 384
  end
  object ADOCommandUdalPods: TADOCommand
    Connection = ADOConnectionSUD
    Parameters = <>
    Left = 176
    Top = 504
  end
  object ADOCommandDobPrig: TADOCommand
    Connection = ADOConnectionSUD
    Parameters = <>
    Left = 48
    Top = 664
  end
  object ADOQueryPrigPods: TADOQuery
    Connection = ADOConnectionSUD
    Parameters = <>
    Left = 376
    Top = 232
  end
  object DataSourcePrigPods: TDataSource
    DataSet = ADOQueryPrigPods
    Left = 512
    Top = 232
  end
  object ADOQueryVozmZakr: TADOQuery
    Connection = ADOConnectionSUD
    Parameters = <>
    Left = 376
    Top = 440
  end
  object ADOTableStatii: TADOTable
    Connection = ADOConnectionSUD
    CursorLocation = clUseServer
    BeforeDelete = ADOTableStatiiBeforeDelete
    TableName = 'Statia'
    Left = 48
    Top = 368
  end
  object DataSourceStatii: TDataSource
    DataSet = ADOTableStatii
    Left = 176
    Top = 368
  end
  object ADOQueryDeloReport: TADOQuery
    Connection = ADOConnectionSUD
    Parameters = <>
    Left = 384
    Top = 560
  end
  object ADOQueryReportSUD: TADOQuery
    Connection = ADOConnectionSUD
    Parameters = <>
    Left = 384
    Top = 616
  end
  object ADOQueryPoiskDela: TADOQuery
    Connection = ADOConnectionSUD
    Parameters = <>
    Left = 376
    Top = 16
  end
  object DataSourcePoiskDela: TDataSource
    DataSet = ADOQueryPoiskDela
    Left = 512
    Top = 8
  end
  object ADOCommandDelRec: TADOCommand
    Connection = ADOConnectionSUD
    Parameters = <>
    Left = 176
    Top = 552
  end
  object ADOQuery: TADOQuery
    Connection = ADOConnectionSUD
    Parameters = <>
    Left = 384
    Top = 680
  end
  object DataSource: TDataSource
    DataSet = ADOQuery
    Left = 456
    Top = 680
  end
  object ADOTableSvidet: TADOTable
    Connection = ADOConnectionSUD
    CursorLocation = clUseServer
    TableName = 'Svidetel'
    Left = 48
    Top = 416
  end
  object DataSourceSvidet: TDataSource
    DataSet = ADOTableSvidet
    Left = 176
    Top = 416
  end
  object ADOTableVechDok: TADOTable
    Connection = ADOConnectionSUD
    CursorLocation = clUseServer
    TableName = 'VechDok'
    Left = 48
    Top = 464
  end
  object DataSourceVechDok: TDataSource
    DataSet = ADOTableVechDok
    Left = 176
    Top = 464
  end
end
