unit UnitDelo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ComCtrls, Mask, ExtCtrls, Grids, DBGrids,
  Buttons;

type
  TFormDelo = class(TForm)
    DBLookupComboBoxSudiya: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBMemoDelo: TDBMemo;
    Label4: TLabel;
    DBEditDataOtk: TDBEdit;
    DBEditDataZak: TDBEdit;
    DBEditNomDel: TDBEdit;
    Label5: TLabel;
    DBLookupComboBoxProkuror: TDBLookupComboBox;
    Label6: TLabel;
    Label7: TLabel;
    DBLookupComboBoxSektetar: TDBLookupComboBox;
    DBNavigatorDelo: TDBNavigator;
    ButtonDobPods: TButton;
    DBGridPosudim: TDBGrid;
    ButtonUdalPods: TButton;
    Label8: TLabel;
    ButtonPrigovor: TButton;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Label9: TLabel;
    ButtonUdalSvid: TButton;
    ButtonDobavSvid: TButton;
    DBGridStstii: TDBGrid;
    ButtonUdalitDok: TButton;
    ButtonDobavDok: TButton;
    Label10: TLabel;
    Label11: TLabel;
    BitBtnOtchet: TBitBtn;
    BitBtnZakrDelo: TBitBtn;
    DBMemo2: TDBMemo;
    Label12: TLabel;
    BitBtnVozob: TBitBtn;
    procedure ButtonDobPodsClick(Sender: TObject);
    procedure ButtonDobavSvidClick(Sender: TObject);
    procedure ButtonDobavDokClick(Sender: TObject);
    procedure ButtonUdalPodsClick(Sender: TObject);
    procedure ButtonUdalSvidClick(Sender: TObject);
    procedure ButtonUdalitDokClick(Sender: TObject);
    procedure ButtonPrigovorClick(Sender: TObject);
    procedure RefreshButtons();
    procedure DBEditDataZakChange(Sender: TObject);
    procedure BitBtnZakrDeloClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure BitBtnOtchetClick(Sender: TObject);
    procedure DBEditNomDelChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnVozobClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDelo: TFormDelo;

implementation
uses UnitDM, UnitPodsudim, UnitDobavPodsudim, UnitDobSvid, UnitDobVeshDok,
  UnitDobPrig, UnitReportDelo;

{$R *.dfm}


procedure TFormDelo.ButtonDobPodsClick(Sender: TObject);
begin   //����� - ���������� ����������
if DBEditNomDel.Text<>'' then begin
   FormDobavPodsudim:= TFormDobavPodsudim.Create(Self);
   FormDobavPodsudim.ShowModal;
end
else
Application.MessageBox('��������� ��������� ����!', '���������', 64);
end;

procedure TFormDelo.ButtonDobavSvidClick(Sender: TObject);
begin  //����� - ���������� ���������
if DBEditNomDel.Text<>'' then begin
FormDobSvid:= TFormDobSvid.Create(Self);
FormDobSvid.ShowModal;
end
else
Application.MessageBox('��������� ��������� ����!', '���������', 64);
end;

procedure TFormDelo.ButtonDobavDokClick(Sender: TObject);
begin  //����� - ���������� ������������ �������������
if DBEditNomDel.Text<>'' then begin
FormDobVeshDok:= TFormDobVeshDok.Create(Self);
FormDobVeshDok.ShowModal;
end
else
Application.MessageBox('��������� ��������� ����!', '���������', 64);
end;

procedure TFormDelo.ButtonUdalPodsClick(Sender: TObject); //������� ����������� �� ����
var
kodp,nomdel:String;
begin //���� ��� ����������� �� ������
      if ((DataModuleSud.ADOQueryPodsDelo.Fields.Count<>0) and
          (DataModuleSud.ADOQueryPodsDelo.Fields[0].Text<>''))
      then
      begin   //��������� �������� �����������
      kodp:= DataModuleSud.ADOQueryPodsDelo.Fields[0].Text;//��� �����������
      nomdel:=FormDelo.DBEditNomDel.Text;        //����� ����
      //�������  �� ����  ���������� �����������
      DataModuleSud.ADOCommandUdalPods.CommandText:=''+
      'delete from StatPodsDelo where '+
      'nomdel='+nomdel+' and kodp='+kodp+'';
      DataModuleSud.ADOCommandUdalPods.Execute;

      DataModuleSud.ADOCommandUdalPods.CommandText:=''+
      'delete from AdvPodsDelo where '+
      'nomdel='+nomdel+' and kodp='+kodp+'';
      DataModuleSud.ADOCommandUdalPods.Execute;

      DataModuleSud.ADOCommandUdalPods.CommandText:=''+
      'delete from Prigovor where '+
      'nomdel='+nomdel+' and kodp='+kodp+'';
      DataModuleSud.ADOCommandUdalPods.Execute;

      DataModuleSud.RefreshPods;
      DataModuleSud.RefreshStat;

      end
      else
     Application.MessageBox('�������� ������ � ����������!', '���������', 64);
end;

procedure TFormDelo.ButtonUdalSvidClick(Sender: TObject);
var    //�������� ���������� ��������� �� ���������� ����
kodsv:String;
begin
if ((DataModuleSud.ADOQuerySvidDela.Fields.Count<>0)and
    (DataModuleSud.ADOQuerySvidDela.Fields[0].Text<>''))
then
begin
      kodsv:= DataModuleSud.ADOQuerySvidDela.Fields[0].Text;//��� ���������
      DataModuleSud.ADOCommandUdalPods.CommandText:=''+
      'delete from Svidetel where '+
      'kodsv='+kodsv+'';
      DataModuleSud.ADOCommandUdalPods.Execute;

      DataModuleSud.RefreshSvid();
end;
end;

procedure TFormDelo.ButtonUdalitDokClick(Sender: TObject);
var  //�������� ���������� ������������� �������������� �� ���������� ����
nomdok:String;
begin
if ((DataModuleSud.ADOQueryVeshDok.Fields.Count>0)and
     (DataModuleSud.ADOQueryVeshDok.Fields[0].Text<>''))
then
begin
      nomdok:= DataModuleSud.ADOQueryVeshDok.Fields[0].Text;//��� ��� ���-��
      DataModuleSud.ADOCommandUdalPods.CommandText:=''+
      'delete from VechDok where '+
      'nomdok='+nomdok+'';
      DataModuleSud.ADOCommandUdalPods.Execute;

      DataModuleSud.RefreshVeshDok();
end;
end;

procedure TFormDelo.ButtonPrigovorClick(Sender: TObject);
begin
//��� ����������� �� ������
if ((DataModuleSud.ADOQueryPodsDelo.Fields.Count<>0) and
    (DataModuleSud.ADOQueryPodsDelo.Fields[0].Text<>''))
then
begin
FormDobPrig:= TFormDobPrig.Create(Self);
FormDobPrig.ShowModal;
DataModuleSud.RefreshPrig;
end;
end;

procedure   TFormDelo.RefreshButtons();
begin
if (DBEditDataZak.Text='') //���� �������� �� �����
then
begin
FormDelo.ButtonDobPods.Enabled:=true;
FormDelo.ButtonUdalPods.Enabled:=true;
FormDelo.ButtonPrigovor.Enabled:=true;
FormDelo.ButtonUdalSvid.Enabled:=true;
FormDelo.ButtonDobavSvid.Enabled:=true;
FormDelo.ButtonUdalitDok.Enabled:=true;
FormDelo.ButtonDobavDok.Enabled:=true;
FormDelo.BitBtnZakrDelo.Enabled:=true;
DBEditDataOtk.Enabled:=true;
DBLookupComboBoxSudiya.Enabled:=true;
DBLookupComboBoxProkuror.Enabled:=true;
DBLookupComboBoxSektetar.Enabled:=true;
DBMemoDelo.Enabled:=true;
FormDelo.BitBtnVozob.Enabled:=false;
end
else
begin
FormDelo.ButtonDobPods.Enabled:=false;
FormDelo.ButtonUdalPods.Enabled:=false;
FormDelo.ButtonPrigovor.Enabled:=false;
FormDelo.ButtonUdalSvid.Enabled:=false;
FormDelo.ButtonDobavSvid.Enabled:=false;
FormDelo.ButtonUdalitDok.Enabled:=false;
FormDelo.ButtonDobavDok.Enabled:=false;
FormDelo.BitBtnZakrDelo.Enabled:=false;
DBEditDataOtk.Enabled:=false;
DBLookupComboBoxSudiya.Enabled:=false;
DBLookupComboBoxProkuror.Enabled:=false;
DBLookupComboBoxSektetar.Enabled:=false;
DBMemoDelo.Enabled:=false;
FormDelo.BitBtnVozob.Enabled:=true;  //���� ����� �����������!
end;

end;


procedure TFormDelo.DBEditDataZakChange(Sender: TObject);
begin
RefreshButtons(); //���������� ��������� ������
end;

procedure TFormDelo.BitBtnZakrDeloClick(Sender: TObject);
var      //�������� ����
nomdel:String;
begin
nomdel:=DBEditNomDel.Text;
if nomdel<>'' then begin
  DataModuleSud.ADOQueryVozmZakr.Active:=false;
  DataModuleSud.ADOQueryVozmZakr.SQL.Clear;
  DataModuleSud.ADOQueryVozmZakr.SQL.Add
  (
  'Select * from Delo d  '+
  'inner join StatPodsDelo p on d.nomdel=p.nomdel '+
  'left join Prigovor g on p.nomdel=g.nomdel and p.kodp=g.kodp '+
  'where g.formul is NULL and d.nomdel='+nomdel+''
  );
  DataModuleSud.ADOQueryVozmZakr.Active:=true;

  if  DataModuleSud.ADOQueryVozmZakr.Fields[0].Text<>''
  then begin
    Application.MessageBox('���� ���������� ��� ����������� ���������!', '���������', 64);
  end
  else
  begin
    DataModuleSud.ADOTableDelo.Edit;
    DBEditDataZak.Text:=DateToStr(Date);
  end;
end;
end;

procedure TFormDelo.FormPaint(Sender: TObject);
begin
DBEditDataOtk.Field.EditMask:='!99/99/0000;1;_';
//DBEditDataZak.Field.EditMask:='!99/99/0000;1;_';
//DataModuleSud.ADOTableDelo.Refresh;
RefreshButtons;
end;

procedure TFormDelo.BitBtnOtchetClick(Sender: TObject);
var
nomdel,kodp:String;
begin
nomdel:=DBEditNomDel.Text;
if nomdel<>'' then begin
kodp:=DataModuleSud.ADOQueryPodsDelo.Fields[0].Text;
if kodp<>'' then  //��� ����������� �� ������
begin
  DataModuleSud.ADOQueryDeloReport.Active:=false;
  DataModuleSud.ADOQueryDeloReport.SQL.Clear;
  DataModuleSud.ADOQueryDeloReport.SQL.Add
    (
    'Select '+
    'd.nomdel,d.dataot, d.formul, d.datazak, '+
    'sud=s.fio,pro=p.fio,sec=r.fio, '+
    'pods=m.fio,m.adres1, m.adres2, m.passport, '+
    'm.datar,m.deti, m.mestrab,m.obraz, m.sydim, '+
    't.nomstat,stat=t.formul,t.prednak,adv=a.fio, '+
    'g.datav,prig=g.formul,g.mernakaz,g.lastchance '+
    'from Delo d  '+
    'inner join Sydia s on d.kodsyd=s.kodsyd  '+
    'inner join Sekretar r on d.kodsek=r.kodsek '+
    'inner join Procyror p on d.kodproc=p.kodproc '+
    'inner join StatPodsDelo x on d.nomdel=x.nomdel '+
    'inner join Podsydim m on x.kodp=m.kodp '+
    'inner join Statia  t on x.nomstat=t.nomstat '+
    'inner join AdvPodsDelo v on d.nomdel=v.nomdel and m.kodp=v.kodp '+
    'inner join Advokat a on v.kodadv=a.kodadv '+
    'left join Prigovor g on d.nomdel=g.nomdel and m.kodp=g.kodp '+
    'where d.nomdel='+nomdel+' and m.kodp='+kodp+''
    );
  DataModuleSud.ADOQueryDeloReport.Active:=true;
  QuickReportDelo.PreviewModal;  //�������� ������
 end
 else
    Application.MessageBox('�������� �����������!', '���������', 64);
end;

end;



procedure TFormDelo.DBEditNomDelChange(Sender: TObject);
begin
RefreshButtons;
end;

procedure TFormDelo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DataModuleSud.ADOTableDelo.First;
end;

procedure TFormDelo.BitBtnVozobClick(Sender: TObject);
begin //������������� ����
   DataModuleSud.ADOTableDelo.Edit;
   DBEditDataZak.Text:='';
end;

end.
