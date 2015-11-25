unit UnitSudiya;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  TFormSudya = class(TForm)
    DBEditFioSudiya: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEditDoljn: TDBEdit;
    DBEditPassport: TDBEdit;
    DBEditKodSud: TDBEdit;
    DBEditDataR: TDBEdit;
    DBEditStaj: TDBEdit;
    Label6: TLabel;
    DBNavigator1: TDBNavigator;
    procedure DBEditFioSudiyaKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSudya: TFormSudya;

implementation
uses   UnitDM;
{$R *.dfm}

procedure TFormSudya.DBEditFioSudiyaKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['à'..'ÿ','À'..'ß',' ']) then Key := #0;
end;

procedure TFormSudya.FormPaint(Sender: TObject);
begin
DBEditDataR.Field.EditMask:='!99/99/0000;1;_';
end;

end.
