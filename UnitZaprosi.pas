unit UnitZaprosi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, DBCtrls, ExtCtrls;

type
  TFormZaprosi = class(TForm)
    ButtonZap: TButton;
    RadioGroupZap: TRadioGroup;
    EditParam: TEdit;
    LabelParam: TLabel;
    MemoText: TMemo;
    DBGrid1: TDBGrid;
    procedure ButtonZapClick(Sender: TObject);
    procedure RadioGroupZapClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormZaprosi: TFormZaprosi;

implementation
  uses UnitDM;
{$R *.dfm}

procedure TFormZaprosi.ButtonZapClick(Sender: TObject);
var
Par:String;
Nom:Integer;
begin
if RadioGroupZap.ItemIndex=0 //����� ������ ���, ������ ������������� ������ �����
then
begin
   Par:= EditParam.Text;
   DataModuleSud.ADOQuery.Active:=false;
   DataModuleSud.ADOQuery.SQL.Clear;
   DataModuleSud.ADOQuery.SQL.Add
   (
  'Select �����=d.nomdel, ������������=d.formul,�����=s.fio '+
  ' from Delo d '+
  'inner  join Sydia s '+
  'on d.kodsyd=s.kodsyd '+
  'where s.fio like  ''%'+Par+'%''  '+
   '  '
   );
   DataModuleSud.ADOQuery.Active:=true;
end

else if RadioGroupZap.ItemIndex=1  //������ � ���������� �� ������ ����
then
begin
   Par:= EditParam.Text; //����� ����
   if ((Par<>'') and (TryStrToInt(Par,Nom))) then
   begin
   DataModuleSud.ADOQuery.Active:=false;
   DataModuleSud.ADOQuery.SQL.Clear;
   DataModuleSud.ADOQuery.SQL.Add
   (
   ' select ���=kodsv, ���=fio,��������=passportd, '+
   ' �������������=adres1,���������������=adres2,' +
   ' ������������=datar  from Svidetel'+
   ' where nomdel='+Par+''
    );
    DataModuleSud.ADOQuery.Active:=true;
    end
    else
   Application.MessageBox('������� ����� ����!', '���������', 64);
end
else if RadioGroupZap.ItemIndex=3 //����� ���������� �� ���������� ��������
then                               //���� ���� ��������� �������� ��������� ����
begin
   Par:= EditParam.Text; //���� ���������
   DataModuleSud.ADOQuery.Active:=false;
   DataModuleSud.ADOQuery.SQL.Clear;
   DataModuleSud.ADOQuery.SQL.Add
   (
   ' Select ����������=pd.fio, ���������=d.nomdel, '+
   ' �����=s.fio, �������=ad.fio, ������������=d.formul, '+
   ' �������������=pr.mernakaz from Delo d  '+
   ' inner join Sydia s on d.kodsyd=s.kodsyd '+
   ' inner join AdvPodsDelo a on d.nomdel=a.nomdel  '+
   ' inner join Advokat ad on a.kodadv=ad.kodadv '+
   ' inner join Podsydim pd on a.kodp=pd.kodp  '+
   ' inner join Prigovor pr on d.nomdel=pr.nomdel and a.kodp=pr.kodp '+
   ' where pr.mernakaz like  ''%'+Par+'%''  '
   ) ;
   DataModuleSud.ADOQuery.Active:=true;

end
else if RadioGroupZap.ItemIndex=2 //����� ���, �� ������� �� ������� ��������
then
begin
   DataModuleSud.ADOQuery.Active:=false;
   DataModuleSud.ADOQuery.SQL.Clear;
   DataModuleSud.ADOQuery.SQL.Add
   (
   'Select �����=d.nomdel, ������������=d.formul,'+
   ' �������=d.dataot, �������=d.datazak, '  +
   ' ��������=g.formul from Delo d  ' +
   'inner join StatPodsDelo p on d.nomdel=p.nomdel  '  +
   'left join Prigovor g on p.nomdel=g.nomdel and p.kodp=g.kodp '+
   'where g.formul is NULL or g.formul='''' '+
   'group by d.nomdel, d.dataot,d.formul, '+
   'd.datazak,d.kodproc, d.kodsyd, d.kodsek,g.formul '
   );
   DataModuleSud.ADOQuery.Active:=true;
end;



end;

procedure TFormZaprosi.RadioGroupZapClick(Sender: TObject);
begin
MemoText.Clear;
if RadioGroupZap.ItemIndex=0
then
begin
  LabelParam.Caption:='��� �����';
  EditParam.Visible:=true;
  MemoText.Lines.Add('����� ������ ���, ������ ������������� ������ �����');
end

else if RadioGroupZap.ItemIndex=1
then
begin
  LabelParam.Caption:='����� ����';
  EditParam.Visible:=true;
  MemoText.Lines.Add('������ � ���������� �� ������ ����');
end

else if RadioGroupZap.ItemIndex=3
then
begin
  LabelParam.Caption:='���� ���������';
  EditParam.Visible:=true;
   MemoText.Lines.Add('����� ���������� �� ���������� ��������, ');
   MemoText.Lines.Add('���� ���� ��������� �������� ��������� ����');
end
else if RadioGroupZap.ItemIndex=2
then
begin
  EditParam.Visible:=false;
  LabelParam.Caption:='';
  MemoText.Lines.Add('����� ���, �� ������� �� ������� ��������');
end;
end;

end.
