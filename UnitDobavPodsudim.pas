unit UnitDobavPodsudim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DBCtrls, Buttons;

type
  TFormDobavPodsudim = class(TForm)
    ButtonPoisk: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EditKod: TEdit;
    EditFio: TEdit;
    EditAdres1: TEdit;
    EditAdres2: TEdit;
    EditPassport: TEdit;
    EditDeti: TEdit;
    EditSudim: TEdit;
    EditMestorab: TEdit;
    EditObrazov: TEdit;
    EditDatar: TEdit;
    ButtonStat: TButton;
    Label11: TLabel;
    DBLookupComboBoxAdvokat: TDBLookupComboBox;
    StringGridStatyi: TStringGrid;
    BitBtn1: TBitBtn;
    procedure ButtonPoiskClick(Sender: TObject);
    procedure DBLookupComboBoxAdvokatExit(Sender: TObject);
    procedure ButtonStatClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDobavPodsudim: TFormDobavPodsudim;

implementation

uses UnitDM,UnitPodsudim, UnitPoiskPodsud, UnitDobStat, UnitDelo;

{$R *.dfm}

procedure TFormDobavPodsudim.ButtonPoiskClick(Sender: TObject);
begin
   FormPoiskPodsudim:= TFormPoiskPodsudim.Create(Self);
   FormPoiskPodsudim.ShowModal;
end;

procedure TFormDobavPodsudim.DBLookupComboBoxAdvokatExit(Sender: TObject);
begin
 // Label12.Caption:=DBLookupComboBoxAdvokat.KeyValue;
end;

procedure TFormDobavPodsudim.ButtonStatClick(Sender: TObject);
begin
FormDobStat:= TFormDobStat.Create(Self);
FormDobStat.ShowModal;
end;

procedure TFormDobavPodsudim.BitBtn1Click(Sender: TObject);
var
i:integer; //���������� �����
kodp,nomstat,nomdel,kodadv: String; //��� ������, ����� ������, ����� ����
begin
if  EditKod.Text<>''
then
begin
  if  StringGridStatyi.Cells[0,0]<>''
  then begin
    if DBLookupComboBoxAdvokat.KeyValue<>NULL
    then begin
    //��������� �������  StatPodsDelo
    for  i:=0 to StringGridStatyi.RowCount do //���� �� �������
    begin
    kodp:=EditKod.Text;                    //��� �����������
    nomstat:=StringGridStatyi.Cells[0,i];    //����� ������
    nomdel:=FormDelo.DBEditNomDel.Text;        //����� ����
    kodadv:=DBLookupComboBoxAdvokat.KeyValue; //��� ��������
    if  nomstat<>'' then
      begin
        //������� �������
        DataModuleSud.ADOCommandDobPodsud.CommandText:=''+
        'delete from StatPodsDelo where '+
        'nomdel='+nomdel+' and kodp='+kodp+' and nomstat='+nomstat+'';
        DataModuleSud.ADOCommandDobPodsud.Execute;
        //����� ��������� � ������� StatPodsDelo
        DataModuleSud.ADOCommandDobPodsud.CommandText:=''+
        'insert into StatPodsDelo select '+
        'nomdel='+nomdel+' , kodp='+kodp+' , nomstat='+nomstat+'';
        DataModuleSud.ADOCommandDobPodsud.Execute;
      end;
    end;//����� �����
      //������� �������   �������� �� ��������, ���� ��� ���� �����
      DataModuleSud.ADOCommandDobPodsud.CommandText:=''+
      'delete from AdvPodsDelo where '+
      'nomdel='+nomdel+' and kodp='+kodp+' and kodadv='+kodadv+'';
      DataModuleSud.ADOCommandDobPodsud.Execute;
      //����� ��������� � ������� AdvPodsDelo
      DataModuleSud.ADOCommandDobPodsud.CommandText:=''+
      'insert into AdvPodsDelo select '+
      'nomdel='+nomdel+' , kodp='+kodp+' , kodadv='+kodadv+'';
      DataModuleSud.ADOCommandDobPodsud.Execute;

      DataModuleSud.RefreshPods;
      DataModuleSud.RefreshStat;

      Close;
    end
    else     Application.MessageBox('�������� �������� �� ��������!', '���������', 64);
  end
  else    Application.MessageBox('�������� �������� � �������!', '���������', 64);
end
else Application.MessageBox('�������� �������� � ����������!', '���������', 64);
end;

end.
