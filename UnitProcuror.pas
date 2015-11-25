unit UnitProcuror;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  TFormProcuror = class(TForm)
    DBNavigator1: TDBNavigator;
    DBEditFioProc: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEditZvan: TDBEdit;
    DBEditPassport: TDBEdit;
    DBEditKodProc: TDBEdit;
    DBEditDatar: TDBEdit;
    procedure DBEditFioProcKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProcuror: TFormProcuror;

implementation

uses UnitDM;

{$R *.dfm}

procedure TFormProcuror.DBEditFioProcKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['à'..'ÿ','À'..'ß',' ']) then Key := #0;
end;

procedure TFormProcuror.FormPaint(Sender: TObject);
begin
DBEditDataR.Field.EditMask:='!99/99/0000;1;_';
end;

end.
