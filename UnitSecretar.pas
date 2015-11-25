unit UnitSecretar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TFormSectretar = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    DBNavigator1: TDBNavigator;
    DBEditFioSec: TDBEdit;
    DBEditStajSec: TDBEdit;
    DBEditKodSec: TDBEdit;
    DBEditDataR: TDBEdit;
    procedure DBEditFioSecKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSectretar: TFormSectretar;

implementation
   uses UnitDM;
{$R *.dfm}

procedure TFormSectretar.DBEditFioSecKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['à'..'ÿ','À'..'ß',' ']) then Key := #0;
end;

procedure TFormSectretar.FormPaint(Sender: TObject);
begin
DBEditDataR.Field.EditMask:='!99/99/0000;1;_';
end;

end.
