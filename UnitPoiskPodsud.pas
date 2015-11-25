unit UnitPoiskPodsud;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons;

type
  TFormPoiskPodsudim = class(TForm)
    DBGridPods: TDBGrid;
    EditFio: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EditAdres: TEdit;
    Label3: TLabel;
    EditPassport: TEdit;
    Button1: TButton;
    Button2: TButton;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPoiskPodsudim: TFormPoiskPodsudim;

implementation
uses UnitDM, UnitPodsudim, UnitDobavPodsudim;
{$R *.dfm}

procedure TFormPoiskPodsudim.Button1Click(Sender: TObject);
begin    //ѕоиск подсудимого в базе по заданным реквизитам
         DataModuleSud.ADOQueryPoiskPodsud.Active:=false;
         DataModuleSud.ADOQueryPoiskPodsud.SQL.Clear;
         DataModuleSud.ADOQueryPoiskPodsud.SQL.Add
         (
          'select * from Podsydim' +
          ' where fio like ''%'+EditFio.Text+'%'''+
          ' and adres1 like ''%'+EditAdres.Text+'%'''+
          ' and passport like ''%'+EditPassport.Text+'%'''+
          '');
         DataModuleSud.ADOQueryPoiskPodsud.Active:=true;
end;

procedure TFormPoiskPodsudim.Button2Click(Sender: TObject);
begin
   FormPodsudim:= TFormPodsudim.Create(Self);
   FormPodsudim.ShowModal;
  // Close;
end;



procedure TFormPoiskPodsudim.BitBtn1Click(Sender: TObject);
begin

if DataModuleSud.ADOQueryPoiskPodsud.IsEmpty = false
then begin
FormDobavPodsudim.EditKod.Text:=DataModuleSud.ADOQueryPoiskPodsud.FieldByName('kodp').AsString;
FormDobavPodsudim.EditFio.Text:=DataModuleSud.ADOQueryPoiskPodsud.FieldByName('fio').AsString;
FormDobavPodsudim.EditAdres1.Text:=DataModuleSud.ADOQueryPoiskPodsud.FieldByName('adres1').AsString;
FormDobavPodsudim.EditAdres2.Text:=DataModuleSud.ADOQueryPoiskPodsud.FieldByName('adres2').AsString;
FormDobavPodsudim.EditPassport.Text:=DataModuleSud.ADOQueryPoiskPodsud.FieldByName('passport').AsString;
FormDobavPodsudim.EditDeti.Text:=DataModuleSud.ADOQueryPoiskPodsud.FieldByName('deti').AsString;
FormDobavPodsudim.EditSudim.Text:=DataModuleSud.ADOQueryPoiskPodsud.FieldByName('sydim').AsString;
FormDobavPodsudim.EditMestorab.Text:= DataModuleSud.ADOQueryPoiskPodsud.FieldByName('mestrab').AsString;
FormDobavPodsudim.EditObrazov.Text:=DataModuleSud.ADOQueryPoiskPodsud.FieldByName('sydim').AsString;
FormDobavPodsudim.EditDatar.Text:=DataModuleSud.ADOQueryPoiskPodsud.FieldByName('datar').AsString;
Close;
end;
end;




end.
