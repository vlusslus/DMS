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
if RadioGroupZap.ItemIndex=0 //Вывод списка дел, котрые рассматривает данный судья
then
begin
   Par:= EditParam.Text;
   DataModuleSud.ADOQuery.Active:=false;
   DataModuleSud.ADOQuery.SQL.Clear;
   DataModuleSud.ADOQuery.SQL.Add
   (
  'Select Номер=d.nomdel, Формулировка=d.formul,Судья=s.fio '+
  ' from Delo d '+
  'inner  join Sydia s '+
  'on d.kodsyd=s.kodsyd '+
  'where s.fio like  ''%'+Par+'%''  '+
   '  '
   );
   DataModuleSud.ADOQuery.Active:=true;
end

else if RadioGroupZap.ItemIndex=1  //Данные о свидетелях по номеру дела
then
begin
   Par:= EditParam.Text; //Номер дела
   if ((Par<>'') and (TryStrToInt(Par,Nom))) then
   begin
   DataModuleSud.ADOQuery.Active:=false;
   DataModuleSud.ADOQuery.SQL.Clear;
   DataModuleSud.ADOQuery.SQL.Add
   (
   ' select Код=kodsv, ФИО=fio,Пасспорт=passportd, '+
   ' АдресПрописки=adres1,АдресПроживания=adres2,' +
   ' ДатаРождения=datar  from Svidetel'+
   ' where nomdel='+Par+''
    );
    DataModuleSud.ADOQuery.Active:=true;
    end
    else
   Application.MessageBox('Введите номер дела!', 'Сообщение', 64);
end
else if RadioGroupZap.ItemIndex=3 //Вывод информации об участниках процесса
then                               //если мера наказания включает указанный срок
begin
   Par:= EditParam.Text; //Мера наказания
   DataModuleSud.ADOQuery.Active:=false;
   DataModuleSud.ADOQuery.SQL.Clear;
   DataModuleSud.ADOQuery.SQL.Add
   (
   ' Select Подсудимый=pd.fio, НомерДела=d.nomdel, '+
   ' Судья=s.fio, Адвокат=ad.fio, Формулировка=d.formul, '+
   ' МераНаказания=pr.mernakaz from Delo d  '+
   ' inner join Sydia s on d.kodsyd=s.kodsyd '+
   ' inner join AdvPodsDelo a on d.nomdel=a.nomdel  '+
   ' inner join Advokat ad on a.kodadv=ad.kodadv '+
   ' inner join Podsydim pd on a.kodp=pd.kodp  '+
   ' inner join Prigovor pr on d.nomdel=pr.nomdel and a.kodp=pr.kodp '+
   ' where pr.mernakaz like  ''%'+Par+'%''  '
   ) ;
   DataModuleSud.ADOQuery.Active:=true;

end
else if RadioGroupZap.ItemIndex=2 //Поиск дел, по которым не вынесен приговор
then
begin
   DataModuleSud.ADOQuery.Active:=false;
   DataModuleSud.ADOQuery.SQL.Clear;
   DataModuleSud.ADOQuery.SQL.Add
   (
   'Select Номер=d.nomdel, Формулировка=d.formul,'+
   ' ДатаОтк=d.dataot, ДатаЗак=d.datazak, '  +
   ' Приговор=g.formul from Delo d  ' +
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
  LabelParam.Caption:='ФИО Судьи';
  EditParam.Visible:=true;
  MemoText.Lines.Add('Вывод списка дел, котрые рассматривает данный судья');
end

else if RadioGroupZap.ItemIndex=1
then
begin
  LabelParam.Caption:='Номер дела';
  EditParam.Visible:=true;
  MemoText.Lines.Add('Данные о свидетелях по номеру дела');
end

else if RadioGroupZap.ItemIndex=3
then
begin
  LabelParam.Caption:='Мера наказания';
  EditParam.Visible:=true;
   MemoText.Lines.Add('Вывод информации об участниках процесса, ');
   MemoText.Lines.Add('если мера наказания включает указанный срок');
end
else if RadioGroupZap.ItemIndex=2
then
begin
  EditParam.Visible:=false;
  LabelParam.Caption:='';
  MemoText.Lines.Add('Поиск дел, по которым не вынесен приговор');
end;
end;

end.
