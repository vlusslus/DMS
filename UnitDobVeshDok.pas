unit UnitDobVeshDok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask;

type
  TFormDobVeshDok = class(TForm)
    BitBtn1: TBitBtn;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    EditNaim: TEdit;
    EditOpis: TEdit;
    Label1: TLabel;
    EditDataOsv: TMaskEdit;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDobVeshDok: TFormDobVeshDok;

implementation

uses UnitDM, UnitDelo;

{$R *.dfm}

procedure TFormDobVeshDok.BitBtn1Click(Sender: TObject);
var
nomdel,dataosv,naimen, opisanie: String;
begin
        nomdel:=FormDelo.DBEditNomDel.Text; //Номер дела
        dataosv:=EditDataOsv.Text;
        naimen:=EditNaim.Text;
        opisanie:=EditOpis.Text;

        if ((dataosv='') or (naimen='') or (opisanie=''))
        then
        Application.MessageBox('Заполните все поля!', 'Сообщение', 64)
        else
        begin
        //Вставляем в таблицу VechDok
        DataModuleSud.ADOCommandVechDok.CommandText:=''+
        'insert into VechDok '+
        '(dataosv,naimen, opisanie,nomdel)'+
        ' select '+
        ''''+dataosv+''', '''+naimen+''', '''+opisanie+''', '+nomdel+'';
        DataModuleSud.ADOCommandVechDok.Execute;

        DataModuleSud.RefreshVeshDok();
        Close;
        end;
end;

end.
