unit UnitReportSud;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TQuickReportSud = class(TQuickRep)
    QRBandPageHeader: TQRBand;
    QRGroupHeader: TQRGroup;
    QRBandGroupFooter: TQRBand;
    QRBandDetail: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel6: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
  private

  public

  end;

var
  QuickReportSud: TQuickReportSud;

implementation
  uses UnitDM;
{$R *.DFM}

end.
