unit databarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, DBTables, ComCtrls, ADODB;

type
  TFormDataBrg = class(TForm)
    DataSource1: TDataSource;
    ADOConn: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    BitBtnKeluar: TBitBtn;
    Edit6: TEdit;
    Edit5: TEdit;
    Edit4: TEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    BitBtnEdit: TBitBtn;
    BitBtnHapus: TBitBtn;
    BitBtnSimpan: TBitBtn;
    BitBtnBatal: TBitBtn;
    Label8: TLabel;
    Edit7: TEdit;
    DBGrid1: TDBGrid;
    ButtonTambah: TButton;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    BitBtnReset: TBitBtn;
    ADOQuery3: TADOQuery;
    GroupBox3: TGroupBox;
    procedure BitBtnKeluarClick(Sender: TObject);
    procedure BitBtnSimpanClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtnEditClick(Sender: TObject);
    procedure BitBtnHapusClick(Sender: TObject);
    procedure BitBtnBatalClick(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnResetClick(Sender: TObject);
    procedure ButtonTambahClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDataBrg: TFormDataBrg;

implementation
uses utama;
{$R *.dfm}

procedure TFormDataBrg.BitBtnKeluarClick(Sender: TObject);
begin
  FormUtama.Visible:=True;
  Close;
end;

procedure TFormDataBrg.BitBtnSimpanClick(Sender: TObject);
begin
if length(Edit1.Text) < 3 then //kode kurang dari 3 karakter, berarti barang ilegal :P
  begin
    showmessage('Kode Anda belum lengkap! Minimal 3 karakter.');
    Exit;
  end;
if ButtonTambah.Enabled=False then
begin
if messagedlg('Data barang baru akan disimpan?',mtConfirmation, [mbYes,mbNo], 0)=mrYes then
  begin
    with ADOQuery3 do
    begin
      SQL.Clear;
      SQL.Add('select kdbrg from d_barang where kdbrg="'+Edit1.Text+'"');
      Open;
    end;
    if not ADOQuery3.Eof then
      begin
        ShowMessage('Kode barang sama dengan barang yang sudah ada! Silakan diganti!');
        Exit;
      end;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('insert into d_barang (kdbrg,nmbrg,satuan,'+
    'hargabeli,hargajual,stok) values ("'+Edit1.Text+'","'+Edit2.Text+'",'+
    '"'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit6.Text+'")');
    ADOQuery1.ExecSQL;

    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('select * from d_barang');
    ADOQuery2.Open;
    DBGrid1.Enabled:=True;
    Edit1.Text:='';
    Edit2.Text:='';
    Edit3.Text:='';
    Edit4.Text:='';
    Edit5.Text:='';
    Edit6.Text:='';
    Edit1.Enabled:=False;
    Edit2.Enabled:=False;
    Edit3.Enabled:=False;
    Edit4.Enabled:=False;
    Edit5.Enabled:=False;
    Edit6.Enabled:=False;
    BitBtnEdit.Enabled:=True;
    ButtonTambah.Enabled:=True;
    BitBtnHapus.Enabled:=True;
    BitBtnSimpan.Enabled:=False;
    BitBtnReset.Enabled:=False;
    BitBtnBatal.Enabled:=False;
  end;
end;
if BitBtnEdit.Enabled=False then
  begin
    if messagedlg('Apakah Anda yakin akan mengedit data barang?',
      mtInformation, [mbYes,mbNo], 0)=mrYes then
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('update d_barang set nmbrg="'+Edit2.Text+'", satuan="'+Edit3.Text+'",hargabeli="'+Edit4.Text+'",hargajual="'+Edit5.Text+'",stok="'+Edit6.Text+'" where kdbrg="'+Edit1.Text+'"');
      ADOQuery1.ExecSQL;

      ADOQuery2.SQL.Clear;
      ADOQuery2.SQL.Add('select * from d_barang');
      ADOQuery2.Open;
      DBGrid1.Enabled:=True;
      Edit1.Text:='';
      Edit2.Text:='';
      Edit3.Text:='';
      Edit4.Text:='';
      Edit5.Text:='';
      Edit6.Text:='';
      Edit1.Enabled:=False;
      Edit2.Enabled:=False;
      Edit3.Enabled:=False;
      Edit4.Enabled:=False;
      Edit5.Enabled:=False;
      Edit6.Enabled:=False;
      BitBtnEdit.Enabled:=True;
      ButtonTambah.Enabled:=True;
      BitBtnHapus.Enabled:=True;
      BitBtnSimpan.Enabled:=False;
      BitBtnReset.Enabled:=False;
      BitBtnBatal.Enabled:=False;
  end;
end;

procedure TFormDataBrg.Edit1Change(Sender: TObject);
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from d_barang where kdbrg="'+Edit1.Text+'"');
  ADOQuery1.Open;

if not ADOQuery1.Eof then
  begin
    Edit2.Text:=ADOQuery1.FieldValues['nmbrg'];
    Edit3.Text:=ADOQuery1.FieldValues['satuan'];
    Edit4.Text:=ADOQuery1.FieldValues['hargabeli'];
    Edit5.Text:=ADOQuery1.FieldValues['hargajual'];
    Edit6.Text:=ADOQuery1.FieldValues['stok'];
  end;

end;

procedure TFormDataBrg.BitBtnEditClick(Sender: TObject);
begin
if ButtonTambah.Enabled=False then
  begin
    ShowMessage('Untuk mengedit, klik batal terlebih dahulu.');
    Exit;
  end;
if Edit1.Text='' then
  begin
    ShowMessage('Silakan pilih dahulu barang yang akan diedit.');
    Exit;
  end;
//if length(Edit1.Text) > 2 then
{  begin
    if messagedlg('Apakah Anda yakin akan menyimpan data?',
      mtInformation, [mbYes,mbNo], 0)=mrYes then
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('update d_barang set nmbrg="'+Edit2.Text+'", satuan="'+Edit3.Text+'",hargabeli="'+Edit4.Text+'",hargajual="'+Edit5.Text+'",stok="'+Edit6.Text+'" where kdbrg="'+Edit1.Text+'"');
      ADOQuery1.ExecSQL;
      ShowMessage('Update berhasil!');
      ADOQuery2.SQL.Clear;
      ADOQuery2.SQL.Add('select * from d_barang');
      ADOQuery2.Open;
  end;}
Edit2.Enabled:=True;
Edit3.Enabled:=True;
Edit4.Enabled:=True;
Edit5.Enabled:=True;
Edit6.Enabled:=True;
ButtonTambah.Enabled:=True;
BitBtnBatal.Enabled:=True;
//BitBtnReset.Enabled:=True;
BitBtnSimpan.Enabled:=True;
BitBtnEdit.Enabled:=False;
BitBtnHapus.Enabled:=False;
end;

procedure TFormDataBrg.BitBtnHapusClick(Sender: TObject);
begin
if Edit1.Text= '' then
  begin
  ShowMessage('Pilih dahulu barang yang ingin Anda hapus!');
  Exit;
  end;
if Edit1.Text<> '' then
begin
if messagedlg('Apakah Anda yakin akan menghapus barang?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    {ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('delete from d_barang where kdbrg="'+Edit1.Text+'"');
    ADOQuery1.ExecSQL;

    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('select * from d_barang');
    ADOQuery2.Open;}
    ADOQuery2.Delete;
  end;
end;
end;

procedure TFormDataBrg.BitBtnBatalClick(Sender: TObject);
begin
  DBGrid1.Enabled:=True;
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
  Edit5.Text:='';
  Edit6.Text:='';
  Edit1.Enabled:=False;
  Edit2.Enabled:=False;
  Edit3.Enabled:=False;
  Edit4.Enabled:=False;
  Edit5.Enabled:=False;
  Edit6.Enabled:=False;
  BitBtnEdit.Enabled:=True;
  ButtonTambah.Enabled:=True;
  BitBtnHapus.Enabled:=True;
  BitBtnSimpan.Enabled:=False;
  BitBtnReset.Enabled:=False;
  BitBtnBatal.Enabled:=False;
end;

procedure TFormDataBrg.Edit7Change(Sender: TObject);
begin
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('select * from d_barang where nmbrg like "'+Edit7.Text+'%"');
  ADOQuery2.Open;
end;

procedure TFormDataBrg.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  Edit5.SetFocus;
if not (((key>='0') and (key<='9') or (key=#8))) then
  key:=#0;
end;

procedure TFormDataBrg.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  Edit2.SetFocus;
end;

procedure TFormDataBrg.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  Edit6.SetFocus;
if not (((key>='0') and (key<='9') or (key=#8))) then
  key:=#0;
end;

procedure TFormDataBrg.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  BitBtnSimpan.SetFocus;
if not (((key>='0') and (key<='9') or (key=#8))) then
  key:='0';
end;

procedure TFormDataBrg.BitBtnResetClick(Sender: TObject);
begin
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
  Edit5.Text:='';
  Edit6.Text:='';
end;

procedure TFormDataBrg.ButtonTambahClick(Sender: TObject);
begin
  DBGrid1.Enabled:=False;
  Edit1.Enabled:=True;
  Edit2.Enabled:=True;
  Edit3.Enabled:=True;
  Edit4.Enabled:=True;
  Edit5.Enabled:=True;
  Edit6.Enabled:=True;
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
  Edit5.Text:='';
  Edit6.Text:='';
  Edit1.SetFocus;
  BitBtnSimpan.Enabled:=True;
  BitBtnEDit.Enabled:=True;
  BitBtnReset.Enabled:=True;
  BitBtnBatal.Enabled:=True;
  ButtonTambah.Enabled:=False;
  BitBtnHapus.Enabled:=False;
end;

procedure TFormDataBrg.DBGrid1CellClick(Column: TColumn);
begin
  Edit1.Text:=ADOQuery2.FieldValues['kdbrg'];
end;

end.
