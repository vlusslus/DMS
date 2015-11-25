unit UnitConnect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFormConnect = class(TForm)
    EditServer: TEdit;
    Label1: TLabel;
    BitBtnConnect: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConnect: TFormConnect;

implementation

{$R *.dfm}

end.
