unit UnitSvidet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  TFormSvidet = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEditFioSvidet: TDBEdit;
    DBEditAdres1: TDBEdit;
    DBEditPassport: TDBEdit;
    DBEditKodSud: TDBEdit;
    DBEditDataR: TDBEdit;
    DBEditMestRab: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label7: TLabel;
    DBEditAdres2: TDBEdit;
    DBEditRodstv: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEditNom: TDBEdit;
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSvidet: TFormSvidet;

implementation
   uses UnitDM;
{$R *.dfm}

procedure TFormSvidet.FormPaint(Sender: TObject);
begin
DBEditDataR.Field.EditMask:='!99/99/0000;1;_';
end;

end.
