unit UnitAllAdv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask, DB, ADODB, Grids, DBGrids;

type
  TFormFAllAdv = class(TForm)
    ADOConnection1: TADOConnection;
    DBGrid1: TDBGrid;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFAllAdv: TFormFAllAdv;

implementation

{$R *.dfm}

end.
