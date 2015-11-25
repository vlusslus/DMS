unit UnitDobStat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls;

type
  TFormDobStat = class(TForm)
    Button1: TButton;
    EditFormul: TEdit;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDobStat: TFormDobStat;

implementation
uses UnitDM, UnitDobavPodsudim;
{$R *.dfm}

procedure TFormDobStat.Button1Click(Sender: TObject);
begin    //Поиск статьи в базе по заданным реквизитам
         DataModuleSud.ADOQueryPoiskStatyi.Active:=false;
         DataModuleSud.ADOQueryPoiskStatyi.SQL.Clear;
         DataModuleSud.ADOQueryPoiskStatyi.SQL.Add
         (
          'select * from Statia' +
          ' where formul like ''%'+EditFormul.Text+'%'''+
          '');
         DataModuleSud.ADOQueryPoiskStatyi.Active:=true;
end;

procedure TFormDobStat.BitBtn1Click(Sender: TObject);
var
countst: integer;
begin
if DataModuleSud.ADOQueryPoiskStatyi.IsEmpty = false
then begin
countst:=FormDobavPodsudim.StringGridStatyi.RowCount;
FormDobavPodsudim.StringGridStatyi.Cells[0,countst-1]:=DataModuleSud.ADOQueryPoiskStatyi.FieldByName('nomstat').AsString;
FormDobavPodsudim.StringGridStatyi.Cells[1,countst-1]:=DataModuleSud.ADOQueryPoiskStatyi.FieldByName('formul').AsString;
FormDobavPodsudim.StringGridStatyi.RowCount:=countst+1;
end;




end;

end.
