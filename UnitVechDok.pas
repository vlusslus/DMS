unit UnitVechDok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  TFormVechDok = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVechDok: TFormVechDok;

implementation
    uses UnitDM;
{$R *.dfm}

procedure TFormVechDok.FormPaint(Sender: TObject);
begin
DBEdit2.Field.EditMask:='!99/99/0000;1;_';
end;

end.
