unit UnitPoiskDela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DBCtrls, IWControl,
  IWCompListbox, IWDBStdCtrls;

type
  TFormPoiskDela = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    EditSoder: TEdit;
    BitBtnPoisk: TBitBtn;
    DBGridResultPoisk: TDBGrid;
    EditSudiya: TEdit;
    EditProkuror: TEdit;
    EditSecretar: TEdit;
    BitBtnRedakt: TBitBtn;
    ComboBoxAktual: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    ComboBoxPrig: TComboBox;
    BitBtnClear: TBitBtn;
    procedure BitBtnPoiskClick(Sender: TObject);
    procedure BitBtnRedaktClick(Sender: TObject);
    procedure ComboBoxAktualKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxPrigKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPoiskDela: TFormPoiskDela;

implementation
  uses UnitDM, UnitDelo;
{$R *.dfm}

procedure TFormPoiskDela.BitBtnPoiskClick(Sender: TObject);
var         //Кнопка Поиск Дела
sud,prok,secr,soder:String;
begin
sud:=EditSudiya.Text;
prok:=EditProkuror.Text;
secr:=EditSecretar.Text;
soder:=EditSoder.Text;
   DataModuleSud.ADOQueryPoiskDela.Active:=false;
   DataModuleSud.ADOQueryPoiskDela.SQL.Clear;
   DataModuleSud.ADOQueryPoiskDela.SQL.Add
   (
  'Select distinct  '+
  'd.nomdel,d.dataot, d.formul, d.datazak, '+
  'sud=s.fio,pro=p.fio,sec=r.fio '+
  'from Delo d  '+
  'inner join Sydia s on d.kodsyd=s.kodsyd '+
  'inner join Sekretar r on d.kodsek=r.kodsek  '+
  'inner join Procyror p on d.kodproc=p.kodproc '+
  'left join StatPodsDelo x on d.nomdel=x.nomdel '+
  'left join Prigovor g on d.nomdel=g.nomdel and x.kodp=g.kodp '+
  'where '+
  's.fio like    ''%'+sud+'%'' and '+
  'p.fio like    ''%'+prok+'%'' and '+
  'r.fio like    ''%'+secr+'%'' and '+
  'd.formul like ''%'+soder+'%'''+
  '  '
  );
  if  ComboBoxAktual.Text='В работе'
  then
     DataModuleSud.ADOQueryPoiskDela.SQL.Add(' and d.datazak is null');
  if ComboBoxAktual.Text='Закрытые'
  then
     DataModuleSud.ADOQueryPoiskDela.SQL.Add(' and d.datazak is not null');

  if ComboBoxPrig.Text= 'Не вынесен для всех'
  then
     DataModuleSud.ADOQueryPoiskDela.SQL.Add(' and (g.formul is null or g.formul='''') ');
  if ComboBoxPrig.Text= 'Вынесен для всех'
  then
  DataModuleSud.ADOQueryPoiskDela.SQL.Add(' and (g.formul is not null or g.formul!='''') ');

  DataModuleSud.ADOQueryPoiskDela.Active:=true;
end;

procedure TFormPoiskDela.BitBtnRedaktClick(Sender: TObject);
var       //Переход к редактированию дела
nomdel,poisknom: Integer;
begin
if  DataModuleSud.ADOQueryPoiskDela.Fields.Count>0 then
begin
poisknom:=DataModuleSud.ADOQueryPoiskDela.FieldByName('nomdel').Value;
nomdel:=DataModuleSud.ADOTableDelo.FieldByName('nomdel').Value;
  while  poisknom<>nomdel
  do begin
    if   poisknom>nomdel
    then
    DataModuleSud.ADOTableDelo.Next
    else
    DataModuleSud.ADOTableDelo.Prior;
  nomdel:=DataModuleSud.ADOTableDelo.FieldByName('nomdel').Value;
  end;
 //FormDelo:= TFormDelo.Create(Self);//Форма РЕДАКТОР ДЕЛ
 FormDelo.ShowModal;

end;
end;

procedure TFormPoiskDela.ComboBoxAktualKeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TFormPoiskDela.ComboBoxPrigKeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TFormPoiskDela.BitBtnClearClick(Sender: TObject);
begin
EditSoder.Text:='';
EditSudiya.Text:='';
EditProkuror.Text:='';
EditSecretar.Text:='';
ComboBoxAktual.Text:='';
ComboBoxPrig.Text:='';
end;

end.
