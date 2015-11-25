unit UnitAdvokat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TFormAdvokat = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEditFioAdv: TDBEdit;
    DBEditObraz: TDBEdit;
    DBEditPassport: TDBEdit;
    DBEdit4: TDBEdit;
    DBEditDataR: TDBEdit;
    DBEditStaj: TDBEdit;
    Label6: TLabel;
    DBNavigator1: TDBNavigator;
    procedure DBEditFioAdvKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAdvokat: TFormAdvokat;

implementation

uses UnitDM;
{$R *.dfm}

procedure TFormAdvokat.DBEditFioAdvKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['à'..'ÿ','À'..'ß',' ']) then Key := #0;
end;

procedure TFormAdvokat.FormPaint(Sender: TObject);
begin
DBEditDataR.Field.EditMask:='!99/99/0000;1;_';
end;

end.
