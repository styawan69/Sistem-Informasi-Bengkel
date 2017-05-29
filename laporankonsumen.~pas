unit laporankonsumen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBCtrls, ExtCtrls, ADODB, QRCtrls,
  QuickRpt;

type
  TFormLapKons = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    QuickRepKonsumen: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRExpr1: TQRExpr;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    ADOConn: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    DBAlamat: TDBLookupComboBox;
    DataSource1: TDataSource;
    procedure BitBtn2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure DBAlamatClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLapKons: TFormLapKons;

implementation
uses utama;
{$R *.dfm}

procedure TFormLapKons.BitBtn2Click(Sender: TObject);
begin
  FormUtama.Visible:=True;
  Close
end;

procedure TFormLapKons.RadioButton1Click(Sender: TObject);
begin
  if RadioButton1.Checked=True then
  begin
    DBAlamat.Enabled:=False;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select * from d_customer');
    ADOQuery1.Open;
  end;
end;

procedure TFormLapKons.RadioButton2Click(Sender: TObject);
begin
  if RadioButton2.Checked=True then
    DBAlamat.Enabled:=True;
end;

procedure TFormLapKons.DBAlamatClick(Sender: TObject);
begin
  with ADOQuery1 do
    begin
      SQL.Clear;
      SQL.Add('select * from d_customer where alamat='
      +QuotedStr(DBAlamat.Text));
      Open;
    end;
end;

procedure TFormLapKons.BitBtn1Click(Sender: TObject);
begin
if RadioButton2.Checked=True then
  begin
    if DBAlamat.Text='' then
      begin
        ShowMessage('Pilihan alamat masih kosong!');
        Exit;
      end;
  end;
  QuickRepKonsumen.Preview;
end;

procedure TFormLapKons.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormUtama.Visible:=True;
end;

end.
