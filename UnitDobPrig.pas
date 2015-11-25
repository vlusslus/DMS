unit UnitDobPrig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask;

type
  TFormDobPrig = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditFormul: TEdit;
    EditMeraNak: TEdit;
    Label5: TLabel;
    EditObjal: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    EditDatav: TMaskEdit;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDobPrig: TFormDobPrig;

implementation

uses UnitDM, UnitDelo;

{$R *.dfm}

procedure TFormDobPrig.BitBtn1Click(Sender: TObject);
var
kodp,nomdel:String;
datav,formul,mernakaz,lastchance:String;
begin
  kodp:=DataModuleSud.ADOQueryPodsDelo.Fields[0].Text;//Код подсудимого
  nomdel:=FormDelo.DBEditNomDel.Text;        //Номер дела

  datav:=EditDatav.Text;
  formul:=EditFormul.Text;
  mernakaz:=EditMeraNak.Text;
  lastchance:=EditObjal.Text ;

  if  ((datav='') or (formul='') or (mernakaz='') or (lastchance=''))
  then
  Application.MessageBox('Заполните все поля!', 'Сообщение', 64)
  else
        begin
        //Сначала удаляем  из Prigovor
        DataModuleSud.ADOCommandDobPrig.CommandText:=''+
        'delete from Prigovor where '+
        'nomdel='+nomdel+' and kodp='+kodp+'';
        DataModuleSud.ADOCommandDobPrig.Execute;
        //Затем вставляем в таблицу Prigovor
        DataModuleSud.ADOCommandDobPrig.CommandText:=''+
        'insert into Prigovor (datav,formul,mernakaz,lastchance,nomdel,kodp)'+
        ' select '+
        ''''+datav+''', '''+formul+''', '''+mernakaz+''', '''+lastchance+''', '+
        nomdel+', '+kodp+'';
        DataModuleSud.ADOCommandDobPrig.Execute;

        Close;

        end;


end;

end.
