
unit laporanbarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB, StdCtrls, Buttons,
  DBCtrls;

type
  TFormLapBrg = class(TForm)
    ADOConn: TADOConnection;
    GroupBox1: TGroupBox;
    RBSemua: TRadioButton;
    RBTgl: TRadioButton;
    DBTgl: TDBComboBox;
    BitBtnCetak: TBitBtn;
    BitBtn2: TBitBtn;
    ADOQuery1: TADOQuery;
    ReportBrg: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    procedure BitBtnCetakClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLapBrg: TFormLapBrg;

implementation
uses utama;
{$R *.dfm}

procedure TFormLapBrg.BitBtnCetakClick(Sender: TObject);
begin
  ReportBrg.Preview;
end;

procedure TFormLapBrg.BitBtn2Click(Sender: TObject);
begin
  FormUtama.Visible:=True;
  Close;
end;

end.
