unit customer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, Buttons, StdCtrls, ComCtrls, QRCtrls,
  QuickRpt, ExtCtrls;

type
  TFormCust = class(TForm)
    Label1: TLabel;
    ADOConn: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    Edit5: TEdit;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    GroupBox2: TGroupBox;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    ADOQuery3: TADOQuery;
    GroupBox3: TGroupBox;
    procedure Edit5Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCust: TFormCust;

implementation
uses utama;
{$R *.dfm}

procedure TFormCust.Edit5Change(Sender: TObject);
begin
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('select * from d_customer where nmcus like "'+Edit5.Text+'%"');
  ADOQuery2.Open;
end;

procedure TFormCust.BitBtn1Click(Sender: TObject);
begin
  FormUtama.Visible:=True;
  Close;
end;

procedure TFormCust.Button2Click(Sender: TObject);
begin
if Button4.Enabled=False then
  begin
    ShowMessage('Untuk mengedit klik Batal terlebih dahulu.');
  end;
if Edit1.Text = '' then
  begin
    ShowMessage('Silakan klik dahulu Nama Konsumen yang ingin Anda edit.');
    Button2.SetFocus;
    Exit;
  end;
{if length(Edit1.Text) > 2 then
begin
if MessageDlg('Apakah Anda yakin akan mengedit data ini?',
mtConfirmation,[mbYes,mbNo], 0)=mrYes then
  begin
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('update d_customer nmcus="'+Edit2.Text+'",'+
    'alamat="'+Edit3.Text+'",telepon="'+Edit4.Text+'" where kdcus="'+Edit1.Text+'"');
    ADOQuery1.ExecSQL;

    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('select * from d_customer');
    ADOQuery2.Open;
  end;
end;}
  Edit1.Enabled:=False;
  Button2.Enabled:=False;
  Button1.Enabled:=True;
  Button4.Enabled:=True;
  //Button5.Enabled:=True;
  Button6.Enabled:=True;
  Edit2.Enabled:=True;
  Edit3.Enabled:=True;
  Edit4.Enabled:=True;
  Edit2.SetFocus;
end;

procedure TFormCust.Button3Click(Sender: TObject);
begin
{if Edit1.Text='' then
  begin
  ShowMessage('Kode barang yang akan dihapus masih kosong.');
  Edit1.SetFocus;
  Exit;
  end;
if length(Edit1.Text) > 2 then
begin}
if Edit1.Text='' then
  begin
    ShowMessage('Silakan pilih dahulu nama konsumen yang ingin dihapus!');
    Exit;
  end;
if MessageDlg('Apakah Anda yakin akan menghapus konsumen ini?',
mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      {ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('delete from d_customer where kdcus="'+Edit1.Text+'"');
      ADOQuery1.ExecSQL;

      ADOQuery2.SQL.Clear;
      ADOQuery2.SQL.Add('select * from d_customer');
      ADOQuery2.Open;
    end;}
    ADOQuery2.Delete;
end;
end;

procedure TFormCust.Button1Click(Sender: TObject);
begin
{if length(Edit1.Text) < 3 then
  begin
  ShowMessage('Kode Customer belum lengkap! Minimal 3 karakter.');
  //Edit1.SetFocus;
  Exit;
  end;}
//if length(Edit1.Text) > 2 then
if Edit1.Text='' then
  begin
    ShowMessage('Kode Konsumen belum diisi!');
    Exit;
  end;
if Button4.Enabled=False then
  begin
    if MessageDlg('Apakah anda yakin akan menyimpan data?',
    mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
      with ADOQuery3 do
        begin
          SQL.Clear;
          SQL.Add('select kdcus from d_customer where kdcus='+QuotedStr(Edit1.Text));
          Open;
        end;
      if not ADOQuery3.Eof then
        begin
          ShowMessage('Kode Konsumen sudah ada! Silakan diganti.');
          Exit;
        end;
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Add('insert into d_customer (kdcus,nmcus,alamat,telepon) '+
        'values ("'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'")');
        ADOQuery1.ExecSQL;

        ADOQuery2.SQL.Clear;
        ADOQuery2.SQL.Add('select * from d_customer');
        ADOQuery2.Open;
        DBGrid1.Enabled:=True;
        Button2.Enabled:=True;
        Button3.Enabled:=True;
        Button4.Enabled:=True;
        Edit1.Enabled:=False;
        Edit2.Enabled:=False;
        Edit3.Enabled:=False;
        Edit4.Enabled:=False;
        Button1.Enabled:=False;
        Button5.Enabled:=False;
        Button6.Enabled:=False;
        Edit1.Text:='';
        Edit2.Text:='';
        Edit3.Text:='';
        Edit4.Text:='';
      end;
  end;
if Button2.Enabled=False then
begin
if MessageDlg('Apakah Anda yakin akan mengedit data ini?',
mtConfirmation,[mbYes,mbNo], 0)=mrYes then
  begin
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('update d_customer set nmcus="'+Edit2.Text+'",'+
    'alamat="'+Edit3.Text+'",telepon="'+Edit4.Text+'" where kdcus="'+Edit1.Text+'"');
    ADOQuery1.ExecSQL;

    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('select * from d_customer');
    ADOQuery2.Open;
    DBGrid1.Enabled:=True;
    Button2.Enabled:=True;
    Button3.Enabled:=True;
    Button4.Enabled:=True;
    Edit1.Enabled:=False;
    Edit2.Enabled:=False;
    Edit3.Enabled:=False;
    Edit4.Enabled:=False;
    Button1.Enabled:=False;
    Button5.Enabled:=False;
    Button6.Enabled:=False;
    Edit1.Text:='';
    Edit2.Text:='';
    Edit3.Text:='';
    Edit4.Text:='';
  end;
end;
end;

procedure TFormCust.Edit1Change(Sender: TObject);
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from d_customer where kdcus="'+Edit1.Text+'"');
  ADOQuery1.Open;

  if not ADOQuery1.Eof then
  begin
    Edit2.Text:=ADOQuery1.FieldValues['nmcus'];
    EDit3.Text:=ADOQuery1.FieldValues['alamat'];
    EDit4.Text:=ADOQuery1.FieldValues['telepon'];
  end;
end;

procedure TFormCust.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if not(((key>='0') and (key<='9') or (key=#8))) then
  key:=#0;
end;

procedure TFormCust.DBGrid1CellClick(Column: TColumn);
begin
  Edit1.Text:=ADOQuery2.FieldValues['kdcus'];
end;

procedure TFormCust.Button5Click(Sender: TObject);
begin
  Edit2.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
  Edit1.SetFocus;
end;

procedure TFormCust.Button4Click(Sender: TObject);
begin
  DBGrid1.Enabled:=False;
  Edit1.Enabled:=True;
  Edit2.Enabled:=True;
  Edit3.Enabled:=True;
  Edit4.Enabled:=True;
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
  Edit1.SetFocus;
  //Button2.Enabled:=False;
  Button1.Enabled:=True;
  Button2.Enabled:=True;
  Button5.Enabled:=True;
  Button6.Enabled:=True;
  Button3.Enabled:=False;
  Button4.Enabled:=False;
end;

procedure TFormCust.Button6Click(Sender: TObject);
begin
  DBGrid1.Enabled:=True;
  Button2.Enabled:=True;
  Button3.Enabled:=True;
  Button4.Enabled:=True;
  Edit1.Enabled:=False;
  Edit2.Enabled:=False;
  Edit3.Enabled:=False;
  Edit4.Enabled:=False;
  Button1.Enabled:=False;
  Button5.Enabled:=False;
  Button6.Enabled:=False;
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
end;

end.
