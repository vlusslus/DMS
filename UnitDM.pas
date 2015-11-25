unit UnitDM;

interface

uses
  SysUtils, Classes, DB, ADODB, Windows, Messages,Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ComCtrls, Mask, ExtCtrls, Grids, DBGrids,
  Buttons;

type
  TDataModuleSud = class(TDataModule)
    ADOConnectionSUD: TADOConnection;
    ADOTableSudya: TADOTable;
    DataSourceSudya: TDataSource;
    ADOTableProcuror: TADOTable;
    DataSourceProcuror: TDataSource;
    ADOTableDelo: TADOTable;
    DataSourceDelo: TDataSource;
    ADOTableSecretar: TADOTable;
    DataSourceSecretar: TDataSource;
    ADOTablePodsydim: TADOTable;
    DataSourcePodsudim: TDataSource;
    ADOTableAdvokat: TADOTable;
    DataSourceAdvokat: TDataSource;
    ADOQueryPodsDelo: TADOQuery;
    DataSourcePodsDelo: TDataSource;
    ADOQueryPoiskPodsud: TADOQuery;
    DataSourcePoiskPodsudim: TDataSource;
    ADOQueryStatPods: TADOQuery;
    DataSourceStatPods: TDataSource;
    ADOQueryPoiskStatyi: TADOQuery;
    DataSourcePoiskStatyi: TDataSource;
    ADOCommandDobPodsud: TADOCommand;
    ADOCommandDobSvid: TADOCommand;
    ADOQuerySvidDela: TADOQuery;
    DataSourceSvidDela: TDataSource;
    ADOCommandVechDok: TADOCommand;
    ADOQueryVeshDok: TADOQuery;
    DataSourceVeshDok: TDataSource;
    ADOCommandUdalPods: TADOCommand;
    ADOCommandDobPrig: TADOCommand;
    ADOQueryPrigPods: TADOQuery;
    DataSourcePrigPods: TDataSource;
    ADOQueryVozmZakr: TADOQuery;
    ADOTableStatii: TADOTable;
    DataSourceStatii: TDataSource;
    ADOQueryDeloReport: TADOQuery;
    ADOQueryReportSUD: TADOQuery;
    ADOQueryPoiskDela: TADOQuery;
    DataSourcePoiskDela: TDataSource;
    ADOCommandDelRec: TADOCommand;
    ADOQuery: TADOQuery;
    DataSource: TDataSource;
    ADOTableSvidet: TADOTable;
    DataSourceSvidet: TDataSource;
    ADOTableVechDok: TADOTable;
    DataSourceVechDok: TDataSource;
    procedure ADOTableDeloAfterScroll(DataSet: TDataSet);
    procedure ADOTableDeloAfterInsert(DataSet: TDataSet);
    procedure ADOQueryPodsDeloAfterScroll(DataSet: TDataSet);
    procedure RefreshPods();
    procedure RefreshStat();
    procedure RefreshPrig();
    procedure RefreshSvid();
    procedure RefreshVeshDok();
    procedure ADOTableDeloBeforeDelete(DataSet: TDataSet);
    procedure ADOTableSudyaBeforeDelete(DataSet: TDataSet);
    procedure ADOTableProcurorBeforeDelete(DataSet: TDataSet);
    procedure ADOTableSecretarBeforeDelete(DataSet: TDataSet);
    procedure ADOTableAdvokatBeforeDelete(DataSet: TDataSet);
    procedure ADOTableStatiiBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleSud: TDataModuleSud;

implementation
uses UnitDelo, UnitReportDelo;
{$R *.dfm}

//Application.MessageBox('Вы уверены?', '', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES


procedure TDataModuleSud.ADOTableDeloAfterScroll(DataSet: TDataSet);
begin
RefreshPods();
RefreshPrig();
RefreshSvid();
RefreshVeshDok();
RefreshStat();


end;

procedure TDataModuleSud.ADOQueryPodsDeloAfterScroll(DataSet: TDataSet);
begin
RefreshStat();
RefreshPrig();
end;


procedure   TDataModuleSud.RefreshPods();  //Обновление данных о подсудимых
begin
        if (ADOTableDelo.FieldByName('nomdel').Text<>'') //Номер дела не пустой
         then begin
         DataModuleSud.ADOQueryPodsDelo.Active:=false;
         DataModuleSud.ADOQueryPodsDelo.SQL.Clear;
         DataModuleSud.ADOQueryPodsDelo.SQL.Add
         (
          'Select distinct p.* from Delo d ' +
          'inner join StatPodsDelo x on d.nomdel=x.nomdel '+
          'inner join Podsydim p on x.kodp=p.kodp '+
          'inner join Statia  s on x.nomstat=s.nomstat ' +
          'where d.nomdel='+ ADOTableDelo.FieldByName('nomdel').Text+
          '  '
          );
         DataModuleSud.ADOQueryPodsDelo.Active:=true;
         end;

end;


procedure   TDataModuleSud.RefreshStat();   //Обновление данных о статьях
begin
     if (ADOTableDelo.FieldByName('nomdel').Text<>'') then begin
       if ((ADOQueryPodsDelo.Fields.Count<>0) and  (ADOQueryPodsDelo.Fields[0].Text<>'')) then  //Код подсудимого не пустой
         begin
         DataModuleSud.ADOQueryStatPods.Active:=false;
         DataModuleSud.ADOQueryStatPods.SQL.Clear;
         DataModuleSud.ADOQueryStatPods.SQL.Add
         (
          'Select s.nomstat, s.formul, s.prednak from Delo d ' +
          'inner join StatPodsDelo x on d.nomdel=x.nomdel '+
          'inner join Podsydim p on x.kodp=p.kodp '+
          'inner join Statia  s on x.nomstat=s.nomstat ' +
          'where d.nomdel='+ ADOTableDelo.FieldByName('nomdel').Text+ ' '+
          'and p.kodp='+    ADOQueryPodsDelo.Fields[0].Text + ' '
          );
         DataModuleSud.ADOQueryStatPods.Active:=true;
         end
         else
         DataModuleSud.ADOQueryStatPods.Close;
    end;
end;

procedure   TDataModuleSud.RefreshPrig();   //Обновление данных о Приговоре
begin
 if (ADOTableDelo.FieldByName('nomdel').Text<>'') then begin
       if ADOQueryPodsDelo.Fields[0].Text<>'' then  //Код подсудимого не пустой
         begin
         DataModuleSud.ADOQueryPrigPods.Active:=false;
         DataModuleSud.ADOQueryPrigPods.SQL.Clear;
         DataModuleSud.ADOQueryPrigPods.SQL.Add
         (
          'Select prig=convert(nchar(12),datav)+''  ''+formul+''  ''+mernakaz from Prigovor ' +
          'where nomdel='+ ADOTableDelo.FieldByName('nomdel').Text+ ' '+
          'and kodp='+    ADOQueryPodsDelo.Fields[0].Text + ' '
          );
         DataModuleSud.ADOQueryPrigPods.Active:=true;
         end
         else
         DataModuleSud.ADOQueryPrigPods.Close;
 end;
end;


procedure   TDataModuleSud.RefreshSvid();   //Обновление данных о свидетелях
begin
         DataModuleSud.ADOQuerySvidDela.Active:=false;
        if (ADOTableDelo.FieldByName('nomdel').Text<>'') //Номер дела не пустой
         then begin

         DataModuleSud.ADOQuerySvidDela.SQL.Clear;
         DataModuleSud.ADOQuerySvidDela.SQL.Add
         (
          'select * from Svidetel ' +
          'where nomdel='+ ADOTableDelo.FieldByName('nomdel').Text+
          '  '
          );
         DataModuleSud.ADOQuerySvidDela.Active:=true;
         end;

end;

procedure   TDataModuleSud.RefreshVeshDok();
begin
        DataModuleSud.ADOQueryVeshDok.Active:=false;
        if (ADOTableDelo.FieldByName('nomdel').Text<>'') //Номер дела не пустой
         then begin

         DataModuleSud.ADOQueryVeshDok.SQL.Clear;
         DataModuleSud.ADOQueryVeshDok.SQL.Add
         (
          'select * from VechDok ' +
          'where nomdel='+ ADOTableDelo.FieldByName('nomdel').Text+
          '  '
          );
         DataModuleSud.ADOQueryVeshDok.Active:=true;
         end;
end;
procedure TDataModuleSud.ADOTableDeloAfterInsert(DataSet: TDataSet);
begin
          DataModuleSud.ADOQueryPodsDelo.Active:=false;
          DataModuleSud.ADOQueryStatPods.Active:=false;
          DataModuleSud.ADOQueryPrigPods.Active:=false;
          DataModuleSud.ADOQuerySvidDela.Active:=false;
          DataModuleSud.ADOQueryVeshDok.Active:=false;
end;





procedure TDataModuleSud.ADOTableDeloBeforeDelete(DataSet: TDataSet);
var         //КАСКАДНОЕ УДАЛЕНИЕ ДЕЛА
nomdel:String;
begin

      nomdel:=FormDelo.DBEditNomDel.Text;        //Номер дела
      //Удаляем все подсудимых, привязанных к делу
      DataModuleSud.ADOCommandUdalPods.CommandText:=''+
      'delete from StatPodsDelo where '+
      'nomdel='+nomdel+'';
      DataModuleSud.ADOCommandUdalPods.Execute;

      //Удаляем приявязку Адвокатов
      DataModuleSud.ADOCommandUdalPods.CommandText:=''+
      'delete from AdvPodsDelo where '+
      'nomdel='+nomdel+'';
      DataModuleSud.ADOCommandUdalPods.Execute;

      //Удаляем привязку приговора
      DataModuleSud.ADOCommandUdalPods.CommandText:=''+
      'delete from Prigovor where '+
      'nomdel='+nomdel+'';
      DataModuleSud.ADOCommandUdalPods.Execute;

      //Удаляем всех свиделетелей по ДЕЛУ
      DataModuleSud.ADOCommandUdalPods.CommandText:=''+
      'delete from Svidetel where '+
      'nomdel='+nomdel+'';
      DataModuleSud.ADOCommandUdalPods.Execute;

      //Удаляем все вещественные доказательства
      DataModuleSud.ADOCommandUdalPods.CommandText:=''+
      'delete from VechDok where '+
      'nomdel='+nomdel+'';
      DataModuleSud.ADOCommandUdalPods.Execute;

end;

//УДАЛЕНИЕ СУДЬИ:
procedure TDataModuleSud.ADOTableSudyaBeforeDelete(DataSet: TDataSet);
var
kodsyd:String;
begin
kodsyd:=ADOTableSudya.FieldByName('kodsyd').Text;
//Перед тем как удалить судью, удаляем все дела с его участием
//Вызываем хранимую процедуру
ADOCommandDelRec.CommandText:='exec BeforeDelSudiya '+kodsyd+'';
ADOCommandDelRec.Execute;
ADOTableDelo.First;
Application.MessageBox('Все дела с участием указанного судьи будут также удалены', '', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
end;

//УДАЛЕНИЕ ПРОКУРОРА
procedure TDataModuleSud.ADOTableProcurorBeforeDelete(DataSet: TDataSet);
var
kodproc:String;
begin
kodproc:=ADOTableProcuror.FieldByName('kodproc').Text;
//Перед тем как удалить прокурора, удаляем все дела с его участием
//Вызываем хранимую процедуру
ADOCommandDelRec.CommandText:='exec BeforeDelProc '+kodproc+'';
ADOCommandDelRec.Execute;
ADOTableDelo.First;
Application.MessageBox('Все дела с участием указанного прокурора будут также удалены', '', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
end;

//ПЕРЕД УДАЛЕНИЕМ СЕКРЕТРАЯ:
procedure TDataModuleSud.ADOTableSecretarBeforeDelete(DataSet: TDataSet);
var
kodsek:String;
begin
kodsek:=ADOTableSecretar.FieldByName('kodsek').Text;
//Перед тем как удалить  секретаря, удаляем все дела с его участием
//Вызываем хранимую процедуру
ADOCommandDelRec.CommandText:='exec BeforeDelSec '+kodsek+'';
ADOCommandDelRec.Execute;
ADOTableDelo.First;
Application.MessageBox('Все дела с участием указанного секретаря будут также удалены', '', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
end;

//ПЕРЕД УДАЛЕНИЕМ АДВОКАТА:
procedure TDataModuleSud.ADOTableAdvokatBeforeDelete(DataSet: TDataSet);
var
kodadv:String;
begin
kodadv:=ADOTableAdvokat.FieldByName('kodadv').Text;
//Перед тем как удалить адвоката, удаляем его привязку к делам
ADOCommandDelRec.CommandText:='delete from AdvPodsDelo where kodadv='+kodadv+'';
ADOCommandDelRec.Execute;
ADOTableDelo.First;
Application.MessageBox('Все привязки к делам этого адвоката будут также удалены', '', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
end;

procedure TDataModuleSud.ADOTableStatiiBeforeDelete(DataSet: TDataSet);
var
nomstat:String;
begin
nomstat:=ADOTableStatii.FieldByName('nomstat').Text;
//Перед тем как удалить статью, удаляем его привязку к подсудимому
ADOCommandDelRec.CommandText:='delete from StatPodsDelo where nomstat='+nomstat+'';
ADOCommandDelRec.Execute;
ADOTableDelo.First;
Application.MessageBox('Все привязки к подсудимым для этой статьи будут также удалены', '', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
end;

end.
