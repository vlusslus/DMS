unit UnitStatii;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TFormStatii = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    DBNavigatorStatii: TDBNavigator;
    DBEditNomer: TDBEdit;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    Label3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormStatii: TFormStatii;

implementation
   uses UnitDM;
{$R *.dfm}

end.
