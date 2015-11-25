program ProjectSud;

uses
  Windows,
  Forms,
  UnitMain in 'UnitMain.pas' {FormMain},
  UnitSudiya in 'UnitSudiya.pas' {FormSudya},
  UnitProcuror in 'UnitProcuror.pas' {FormProcuror},
  UnitDM in 'UnitDM.pas' {DataModuleSud: TDataModule},
  UnitDelo in 'UnitDelo.pas' {FormDelo},
  UnitAdvokat in 'UnitAdvokat.pas' {FormAdvokat},
  UnitPodsudim in 'UnitPodsudim.pas' {FormPodsudim},
  UnitPoiskPodsud in 'UnitPoiskPodsud.pas' {FormPoiskPodsudim},
  UnitDobavPodsudim in 'UnitDobavPodsudim.pas' {FormDobavPodsudim},
  UnitDobStat in 'UnitDobStat.pas' {FormDobStat},
  UnitDobSvid in 'UnitDobSvid.pas' {FormDobSvid},
  UnitDobVeshDok in 'UnitDobVeshDok.pas' {FormDobVeshDok},
  UnitDobPrig in 'UnitDobPrig.pas' {FormDobPrig},
  UnitAllAdv in 'UnitAllAdv.pas' {FormFAllAdv},
  UnitStatii in 'UnitStatii.pas' {FormStatii},
  UnitSecretar in 'UnitSecretar.pas' {FormSectretar},
  UnitConnect in 'UnitConnect.pas' {FormConnect},
  UnitReportDelo in 'UnitReportDelo.pas' {QuickReportDelo: TQuickRep},
  UnitPoiskDela in 'UnitPoiskDela.pas' {FormPoiskDela},
  UnitReportSud in 'UnitReportSud.pas' {QuickReportSud: TQuickRep},
  UnitZaprosi in 'UnitZaprosi.pas' {FormZaprosi},
  UnitSvidet in 'UnitSvidet.pas' {FormSvidet},
  UnitVechDok in 'UnitVechDok.pas' {FormVechDok};

{$R *.res}

begin
	
  SetThreadLocale(1049);
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormSudya, FormSudya);
  Application.CreateForm(TFormProcuror, FormProcuror);
  Application.CreateForm(TDataModuleSud, DataModuleSud);
  Application.CreateForm(TFormDelo, FormDelo);
  Application.CreateForm(TFormAdvokat, FormAdvokat);
  Application.CreateForm(TFormPodsudim, FormPodsudim);
  Application.CreateForm(TFormPoiskPodsudim, FormPoiskPodsudim);
  Application.CreateForm(TFormDobavPodsudim, FormDobavPodsudim);
  Application.CreateForm(TFormDobStat, FormDobStat);
  Application.CreateForm(TFormDobSvid, FormDobSvid);
  Application.CreateForm(TFormDobVeshDok, FormDobVeshDok);
  Application.CreateForm(TFormDobPrig, FormDobPrig);
  Application.CreateForm(TFormFAllAdv, FormFAllAdv);
  Application.CreateForm(TFormStatii, FormStatii);
  Application.CreateForm(TFormSectretar, FormSectretar);
  Application.CreateForm(TFormConnect, FormConnect);
  Application.CreateForm(TQuickReportDelo, QuickReportDelo);
  Application.CreateForm(TFormPoiskDela, FormPoiskDela);
  Application.CreateForm(TQuickReportSud, QuickReportSud);
  Application.CreateForm(TFormZaprosi, FormZaprosi);
  Application.CreateForm(TFormSvidet, FormSvidet);
  Application.CreateForm(TFormVechDok, FormVechDok);
  Application.Run;
end.
