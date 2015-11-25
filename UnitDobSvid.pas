unit UnitDobSvid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask;

type
  TFormDobSvid = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    EditFio: TEdit;
    EditAdres1: TEdit;
    EditAdres2: TEdit;
    EditPassport: TEdit;
    EditRods: TEdit;
    EditMestorab: TEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    EditDatar: TMaskEdit;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDobSvid: TFormDobSvid;

implementation

uses UnitDelo, UnitDM;

{$R *.dfm}

procedure TFormDobSvid.BitBtn1Click(Sender: TObject);
var

fio,passportd,adres1, adres2,mestr,rodstv,datar,nomdel: String;
begin
        nomdel:=FormDelo.DBEditNomDel.Text; //Номер дела
        fio:=EditFio.Text;
        passportd:=EditPassport.Text;
        adres1:=EditAdres1.Text;
        adres2:=EditAdres2.Text;
        mestr:=EditMestorab.Text;
        rodstv:=EditRods.Text;
        datar:=EditDatar.Text;

        if (
        (fio='') or (passportd='') or (adres1='') or (adres2='')or
        (mestr='') or (rodstv='') or (datar='') )
        then
        Application.MessageBox('Заполните все поля!', 'Сообщение', 64)
        else
        begin
        //Вставляем в таблицу Svidetel
        DataModuleSud.ADOCommandDobSvid.CommandText:=''+
        'insert into Svidetel '+
        '(fio,passportd,adres1,adres2,mestr,rodstv,datar,nomdel)'+
        ' select '+
        ''''+fio+''', '''+passportd+''', '''+adres1+''', '''+adres2+''', '+
        ''''+mestr+''', '''+rodstv+''', '''+datar+''','+nomdel+'';
        DataModuleSud.ADOCommandDobSvid.Execute;

        DataModuleSud.RefreshSvid;
        Close;
        end;
end;

end.
