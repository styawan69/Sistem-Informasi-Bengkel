
unit transaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DB, ADODB, Mask, DBCtrls, Buttons, Grids,
  DBGrids, ExtCtrls, QuickRpt, QRCtrls;

type
  TFormTrx = class(TForm)
    PageControl1: TPageControl;
    Label1: TLabel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Button1: TButton;
    sg: TStringGrid;
    Button2: TButton;
    Button3: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    ADOConn: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Edit2: TEdit;
    DateTimePicker1: TDateTimePicker;
    ADOQuery3: TADOQuery;
    ADOQuery4: TADOQuery;
    Label5: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    Label8: TLabel;
    ADOQuery5: TADOQuery;
    ADOQuery6: TADOQuery;
    ADOQuery7: TADOQuery;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    GroupBox3: TGroupBox;
    BitBtn1: TBitBtn;
    Label16: TLabel;
    Label17: TLabel;
    Label6: TLabel;
    DataSource6: TDataSource;
    Label7: TLabel;
    ADOQuery8: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTrx: TFormTrx;

implementation
  uses utama;
{$R *.dfm}

procedure TFormTrx.FormCreate(Sender: TObject);
begin
sg.RowCount:=1;
sg.ColCount:=8;
sg.Cells[0,0]:='No';
sg.Cells[1,0]:='Kode Barang';
sg.Cells[2,0]:='Nama Barang';
sg.Cells[3,0]:='Satuan';
sg.Cells[4,0]:='Harga Satuan';
sg.Cells[5,0]:='Jumlah';
sg.Cells[6,0]:='Total';
sg.Cells[7,0]:='Sisa Stok';

sg.ColWidths[0]:=20;
sg.ColWidths[1]:=80;
sg.ColWidths[2]:=100;
sg.ColWidths[3]:=80;
sg.ColWidths[4]:=100;
sg.ColWidths[5]:=80;
sg.ColWidths[6]:=80;
sg.ColWidths[7]:=80;

end;

procedure TFormTrx.Button1Click(Sender: TObject);
var
stk,hrg,qty,total:real;
i:integer;
tot:currency;
begin
if Edit2.Text='' then
  begin
    showmessage('Jumlah belum diisi!');
    Edit2.SetFocus;
    Exit;
  end;
if DBLookUpComboBox2.Text='' then
  begin
    ShowMessage('Pilih barang terlebih dahulu');
    DBLookUpComboBox2.SetFocus;
    Exit;
  end;
if Edit2.Text <> '' then
  begin
    hrg:=strtofloat(DBEdit4.Text);
    qty:=strtofloat(edit2.Text);
    total:=hrg*qty;
    stk:=strtofloat(DBEdit5.Text)-qty;
if stk < 0 then
    begin
      MessageDlg('Maaf...'+#13+'Stok barang tidak mencukupi.',
      mtInformation, [mbOK],0);
      Exit;
    end;
    sg.RowCount:=sg.RowCount+1;
    sg.Cells[1,sg.RowCount-1]:=DBEdit2.Text;
    sg.Cells[2,sg.RowCount-1]:=DBLookUpComboBox2.Text;
    sg.Cells[3,sg.RowCount-1]:=DBEdit3.Text;
    sg.Cells[4,sg.RowCount-1]:=DBEDit4.Text;

    sg.Cells[5,sg.RowCount-1]:=Edit2.Text;
    sg.Cells[6,sg.RowCount-1]:=floattostr(total);
    sg.Cells[7,sg.RowCount-1]:=floattostr(stk);

    tot:=0;
for i:=1 to sg.RowCount-1 do
  begin
    tot:=tot+strtocurr(sg.Cells[6,i]);
    sg.Cells[0,i]:=inttostr(i);
  end;
  Edit2.Text:='';
  Label17.Caption:='Rp '+currtostr(tot)+',-';
  DBEdit5.Text:=floattostr(stk);
  end;
end;

procedure TFormTrx.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (((key>='0') and (key<='9') or (key=#8))) then
  key:=#0;
end;

procedure TFormTrx.Button2Click(Sender: TObject);
var i:integer;
begin
if DBLookUpComboBox1.Text='' then
  begin
    ShowMessage('Nama Konsumen belum dipilih!');
    DBLookUpComboBox1.SetFocus;
    Exit;
  end;
if Edit1.Text='' then
  begin
    ShowMessage('Nomor faktur belum diisi! Silakan diisi dahulu');
    Edit1.SetFocus;
    Exit;
  end;
if sg.RowCount=1 then
  begin
    ShowMessage('Tidak barang yang dibeli! Silakan tambahkan barang.');
    Edit2.SetFocus;
    Exit;
  end;
if Edit1.Text<>'' then
  begin
    if messagedlg('Apakah Anda akan menyimpan data?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      with ADOQuery8 do
        begin
          SQL.Clear;
          SQL.Add('select nofak from d_transaksi where nofak='+
          QuotedStr(Edit1.Text));
          Open;
        end;
      if not ADOQuery8.Eof then
        begin
          ShowMessage('No. Faktur sudah ada! Silakan diganti.');
          Edit1.SetFocus;
          Exit;
        end;
    end;
    for i:=1 to sg.RowCount-1 do
      begin
        ADOQuery3.SQL.Clear;
        ADOQuery3.SQL.Add('insert into d_transaksi (nofak,tgl,nmcus,kdbrg,jumlah,total,nmbrg,harga) '+
        'values ("'+Edit1.Text+'","'+datetostr(datetimepicker1.Date)+'","'+DBLookUpComboBox1.Text+'","'+sg.Cells[1,i]+'","'+sg.Cells[5,i]+'","'+sg.Cells[6,i]+'","'+sg.Cells[2,i]+'","'+sg.Cells[4,i]+'")');
        ADOQuery3.ExecSQL;
        ADOQuery3.SQL.Clear;
        ADOQuery3.SQL.Add('update d_barang set stok="'+sg.Cells[7,i]+'" where kdbrg="'+sg.Cells[1,i]+'"');
        ADOQuery3.ExecSQL;
      end;
    ShowMessage('Transaksi Disimpan!');
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('select * from d_barang');
    ADOQuery2.Open;
    ADOQuery4.SQL.Clear;
    ADOQuery4.SQL.Add('select distinct nofak from d_transaksi');
    ADOQuery4.Open;
    ADOQuery5.SQL.Clear;
    ADOQuery5.SQL.Add('select distinct nofak,tgl,nmcus from d_transaksi');
    ADOQuery5.Open;
    sg.RowCount:=1;
  end;
end;

procedure TFormTrx.DBLookupComboBox3Click(Sender: TObject);
var
  tot:string;
begin
if DBLookUpComboBox3.Text='' then
  begin
    Exit;
  end;
  ADOQuery5.SQL.Clear;
  ADOQuery5.SQL.Add('select distinct nofak,tgl,nmcus from d_transaksi where nofak="'+DBLookUpComboBox3.Text+'"');
  ADOQuery5.Open;
{if not ADOQuery5.Eof then
  begin
    Label18.Caption:=ADOQuery5.FieldValues['nmcus'];
    DateTimePicker2.Date:=ADOQuery5.FieldValues['tgl'];
  end;}
  //ini query tambahan...
  ADOQuery6.SQL.Clear;
  ADOQuery6.SQL.Add('select kdbrg,nmbrg,jumlah,total from d_transaksi where nofak="'+DBLookUpComboBox3.Text+'"');
  ADOQuery6.Open;

  ADOQuery7.SQL.Clear;
  ADOQuery7.SQL.Add('select sum(total) as tottrans from d_transaksi where nofak="'+DBLookUpComboBox3.Text+'"');
  ADOQuery7.Open;
  tot:=floattostr(ADOQuery7.FieldValues['tottrans']);
  Label6.Caption:='Rp '+tot+',-';
end;

procedure TFormTrx.BitBtn1Click(Sender: TObject);
begin
  FormUtama.Visible:=True;
  Close;
end;

procedure TFormTrx.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if not (((key>='0') and (key<='9') or (key=#8))) then
  key:=#0;
end;

procedure TFormTrx.Button3Click(Sender: TObject);
begin
  sg.RowCount:=1;
end;

end.
