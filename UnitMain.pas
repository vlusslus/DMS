unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons;

type
  TFormMain = class(TForm)
    ButtonSudya: TButton;
    ButtonProcuror: TButton;
    ButtonAdvokat: TButton;
    ButtonStatyi: TButton;
    ButtonSecretari: TButton;
    ButtonRedaktorDel: TButton;
    ButtonPoiskDela: TButton;
    Button1: TButton;
    BitBtnZapros: TBitBtn;
    ButtonSvidet: TButton;
    ButtonVeshDok: TButton;
    procedure ButtonSudyaClick(Sender: TObject);
    procedure ButtonProcurorClick(Sender: TObject);
    procedure ButtonRedaktorDelClick(Sender: TObject);
    procedure ButtonAdvokatClick(Sender: TObject);
    procedure ButtonStatyiClick(Sender: TObject);
    procedure ButtonSecretariClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ButtonPoiskDelaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtnZaprosClick(Sender: TObject);
    procedure ButtonSvidetClick(Sender: TObject);
    procedure ButtonVeshDokClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

uses UnitSudiya, UnitProcuror, UnitDelo, UnitAdvokat, UnitStatii,
  UnitSecretar, UnitConnect, UnitDM, UnitPoiskDela, UnitReportSud,
  UnitZaprosi, UnitSvidet, UnitVechDok;

{$R *.dfm}

procedure TFormMain.ButtonSudyaClick(Sender: TObject);
begin
   FormSudya:= TFormSudya.Create(Self);
   FormSudya.ShowModal;
end;

procedure TFormMain.ButtonProcurorClick(Sender: TObject);
begin
   FormProcuror:= TFormProcuror.Create(Self);
   FormProcuror.ShowModal;

end;

procedure TFormMain.ButtonRedaktorDelClick(Sender: TObject);
begin
//    DataModuleSud.ADOTableDelo.Refresh;
    FormDelo.ShowModal;

end;

procedure TFormMain.ButtonAdvokatClick(Sender: TObject);
begin
   FormAdvokat:= TFormAdvokat.Create(Self);
   FormAdvokat.ShowModal;
end;

procedure TFormMain.ButtonStatyiClick(Sender: TObject);
begin
   FormStatii:= TFormStatii.Create(Self);
   FormStatii.ShowModal;
end;

procedure TFormMain.ButtonSecretariClick(Sender: TObject);
begin
FormSectretar:= TFormSectretar.Create(Self);
   FormSectretar.ShowModal;
end;

procedure TFormMain.FormShow(Sender: TObject);
begin
SetThreadLocale(1049);
    //FormConnect:= TFormConnect.Create(Self);
    // FormConnect.ShowModal;
if (DataModuleSud.ADOConnectionSUD.ConnectionString<>'')
  then begin
     try
     DataModuleSud.ADOConnectionSUD.Connected:=true;
     except
      Application.MessageBox('Не возможно подключиться к серверу!', 'Сообщение', 64);
     end;
      DataModuleSud.ADOTableSudya.Active:=true;
      DataModuleSud.ADOTableProcuror.Active:=true;
      DataModuleSud.ADOTableDelo.Active:=true;
      DataModuleSud.ADOTableSecretar.Active:=true;
      DataModuleSud.ADOTablePodsydim.Active:=true;
      DataModuleSud.ADOTableAdvokat.Active:=true;
      DataModuleSud.ADOTableStatii.Active:=true;
      DataModuleSud.ADOTableSvidet.Active:=true;
      DataModuleSud.ADOTableVechDok.Active:=true;

      FormDelo:= TFormDelo.Create(Self); //Форма РЕДАКТОР ДЕЛ
    end
   else begin
     Application.MessageBox('Настройте подключение к серверу!', 'Сообщение', 64);
     Close;
     Exit;
    end
end;

procedure TFormMain.ButtonPoiskDelaClick(Sender: TObject);
begin
FormPoiskDela:= TFormPoiskDela.Create(Self);
FormPoiskDela.ShowModal;

end;

procedure TFormMain.Button1Click(Sender: TObject);
begin
  DataModuleSud.ADOQueryReportSUD.Active:=false;
  DataModuleSud.ADOQueryReportSUD.SQL.Clear;
  DataModuleSud.ADOQueryReportSUD.SQL.Add
  (
  'Select  '+
  'sud=s.fio, d.nomdel,d.dataot, d.formul, d.datazak, '+
  'pro=p.fio,sec=r.fio '+
  'from Delo d  '+
  'inner join Sydia s on d.kodsyd=s.kodsyd '+
  'inner join Sekretar r on d.kodsek=r.kodsek '+
  'inner join Procyror p on d.kodproc=p.kodproc '+
  'where '+
  'year(d.dataot)=year(getdate()) '+
  'and '+
  'month(d.dataot)=month(getdate()) '+
  'order by s.fio'
  );
  DataModuleSud.ADOQueryReportSUD.Active:=true;

  QuickReportSud.PreviewModal;  //Просмотр отчета

end;

procedure TFormMain.BitBtnZaprosClick(Sender: TObject);
begin    //Кнопка Запросы
FormZaprosi:= TFormZaprosi.Create(Self);
FormZaprosi.ShowModal;
end;

procedure TFormMain.ButtonSvidetClick(Sender: TObject);
begin    //Форма справочник "Свидетели"
FormSvidet:=TFormSvidet.Create(Self);
FormSvidet.ShowModal;
end;

procedure TFormMain.ButtonVeshDokClick(Sender: TObject);
begin     //Форма справочник "Вещественные доказательства"
FormVechDok:=TFormVechDok.Create(Self);
FormVechDok.ShowModal;
end;

end.
