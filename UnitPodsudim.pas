unit UnitPodsudim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  TFormPodsudim = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEditFioPods: TDBEdit;
    DBEditAdres1: TDBEdit;
    DBEditPassport: TDBEdit;
    DBEditKodP: TDBEdit;
    DBEditDataR: TDBEdit;
    DBEditSudim: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label7: TLabel;
    DBEditAdres2: TDBEdit;
    Label8: TLabel;
    DBEditDeti: TDBEdit;
    Label9: TLabel;
    DBEditMestRab: TDBEdit;
    Label10: TLabel;
    DBEditObraz: TDBEdit;
    procedure DBEditFioPodsKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPodsudim: TFormPodsudim;

implementation

uses UnitDM;
{$R *.dfm}

procedure TFormPodsudim.DBEditFioPodsKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['a'..'z','A'..'Z','à'..'ÿ','À'..'ß',' ']) then Key := #0;
end;

procedure TFormPodsudim.FormPaint(Sender: TObject);
begin
DBEditDataR.Field.EditMask:='!99/99/0000;1;_';
end;

end.
