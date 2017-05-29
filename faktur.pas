unit faktur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, ExtCtrls, QuickRpt, QRCtrls,
  Buttons, jpeg;

type
  TFormFaktur = class(TForm)
    QuickRep1: TQuickRep;
    Label1: TLabel;
    CBFaktur: TDBLookupComboBox;
    Button1: TButton;
    ADOConn: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    DataSource1: TDataSource;
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
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel7: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel8: TQRLabel;
    QRExpr1: TQRExpr;
    BitBtn1: TBitBtn;
    QRLabel9: TQRLabel;
    QRDBText5: TQRDBText;
    ADOQuery3: TADOQuery;
    ADOQuery4: TADOQuery;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel11: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    ADOQuery5: TADOQuery;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText7: TQRDBText;
    QRImage1: TQRImage;
    QRLabel16: TQRLabel;
    QRShape1: TQRShape;
    procedure CBFakturClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFaktur: TFormFaktur;

implementation
uses utama;
{$R *.dfm}

procedure TFormFaktur.CBFakturClick(Sender: TObject);
begin
  with ADOQuery2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from d_transaksi where nofak like'+
    QuotedStr(CBFaktur.Text));
    Open;
  end;

  with ADOQuery3 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select distinct nmcus from d_transaksi where nofak like'+
    QuotedStr(CBFaktur.Text));
    Open;
  end;

  with ADoQuery5 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select sum(total) as totpemb from d_transaksi where nofak like'+
    QuotedStr(CBFaktur.Text));
    Open;
  end;
end;

procedure TFormFaktur.Button1Click(Sender: TObject);
begin
if CBFaktur.Text='' then
  begin
  ShowMessage('Nomor Faktur belum dipilih!');
  Exit;
  end;
  QuickRep1.Preview;
end;

procedure TFormFaktur.BitBtn1Click(Sender: TObject);
begin
  FormUtama.Visible:=True;
  Close;
end;

procedure TFormFaktur.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormUtama.Visible:=True;
end;

end.
