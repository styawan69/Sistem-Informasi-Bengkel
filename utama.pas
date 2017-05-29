
unit utama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, jpeg, Mask, DBCtrls, DB,
  DBTables, ADODB;

type
  TFormUtama = class(TForm)
    PanelLogin: TPanel;
    EditUsername: TEdit;
    EditPassword: TEdit;
    BitBtnLogin: TBitBtn;
    LabelUsername: TLabel;
    LabelPassword: TLabel;
    BitBtnClose: TBitBtn;
    BitBtnTrx: TBitBtn;
    LabelJudul: TLabel;
    GroupAdm: TGroupBox;
    LabelLogin: TLabel;
    GroupOption: TGroupBox;
    LabelMainMenu: TLabel;
    StatusBar1: TStatusBar;
    BitBtnExit: TBitBtn;
    BitBtnKeluar: TBitBtn;
    Button2: TButton;
    ButtonPenj: TButton;
    GroupBoxTrx: TGroupBox;
    GroupBoxLaporan: TGroupBox;
    ButtonLapBrg: TButton;
    ButtonLapKons: TButton;
    BitBtnDataBarang: TBitBtn;
    procedure BitBtnCloseClick(Sender: TObject);
    procedure BitBtnLoginClick(Sender: TObject);
    procedure BitBtnExitClick(Sender: TObject);
    procedure BitBtnDataBarangClick(Sender: TObject);
    procedure BitBtnKeluarClick(Sender: TObject);
    procedure BitBtnTrxClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ButtonPenjClick(Sender: TObject);
    procedure ButtonLapBrgClick(Sender: TObject);
    procedure ButtonLapKonsClick(Sender: TObject);

    

  private
    { Private declarations }
    procedure ubahwarna(Sender: TObject);
  public
    { Public declarations }
  end;

var
  FormUtama: TFormUtama;
  si : shortint;
  KomponenControl : TComponent;
implementation
uses dmdb, databarang, customer, laporanbarang, laporankonsumen,
 transaksi,  faktur;
{$R *.dfm}

procedure TFormUtama.ubahwarna(Sender : Tobject);
begin
  if Assigned(KomponenControl) then begin
    (KomponenControl as TEdit).Color := clWhite;
    (KomponenControl as TEdit).Font.Color := clBlack;
  end;

    if ActiveControl is TEdit then begin
      (ActiveControl as TEdit).Color := clInfoBk;
      (ActiveControl as TEdit).Font.Color := clBlue;
      KomponenControl := ActiveControl as TEdit;
    end;
end;

procedure TFormUtama.BitBtnCloseClick(Sender: TObject);
begin
if MessageDlg('Apakah anda yakin akan melakukan Logout?', mtConfirmation,
[mbYes,mbNo], 0)=mrYes then
  begin
    GroupAdm.Visible:=False;
    GroupOption.Visible:=False;
    BitBtnClose.Visible:=False;
    BitBtnDataBarang.Visible:=False;
    BitBtnTrx.Visible:=False;
    BitBtnKeluar.Visible:=False;
    LabelMainMenu.Visible:=False;
    GroupBoxTrx.Visible:=False;
    BitBtnTrx.Visible:=False;
    ButtonPenj.Visible:=False;
    GroupBoxLaporan.Visible:=False;
    ButtonLapBrg.Visible:=False;
    ButtonLapKons.Visible:=False;
    PanelLogin.Visible:=True;
    BitBtnExit.Visible:=True;
    BitBtnLogin.Visible:=True;
    LabelUsername.Visible:=True;
    LabelPassword.Visible:=True;
    LabelLogin.Visible:=True;
    EditUsername.Text:='';
    EditPassword.Text:='';
    EditUsername.SetFocus;
  end
  else
    FormUtama.SetFocus;
end;

procedure TFormUtama.BitBtnLoginClick(Sender: TObject);
begin
with dm.QLogin do
  begin
    Close;
    SQL.Clear;
    SQL.Text:='select * from d_login where username='+quotedstr(EditUsername.Text);
    Open;
  end;
if dm.QLogin.RecordCount = 0 then
  begin
    MessageDlg('Username tidak ada!'+#13+
    'Silakan ulangi.', mtWarning, [mbOK], 0);
    EditUsername.Text:='';
    EditPassword.Text:='';
    EditUsername.SetFocus;
  end
else
if dm.QLogin.FieldByName('pass').AsString <> EditPassword.Text then
  begin
    MessageDlg('Username atau Password salah!'+#13+
    'Silakan Ulangi.', mtWarning, [mbOK], 0);
    EditUsername.Text:='';
    EditPassword.Text:='';
    EditUsername.SetFocus;
  end
else
  begin
    MessageDlg('Login berhasil!'+#13+
    'Jangan lupa Logout setelah selesai.',
    mtInformation, [mbOK], 0);
    GroupAdm.Visible:=True;
    GroupOption.Visible:=True;
    BitBtnClose.Visible:=True;
    BitBtnDataBarang.Visible:=True;
    BitBtnTrx.Visible:=True;
    LabelMainMenu.Visible:=True;
    BitBtnKeluar.Visible:=True;
    GroupBoxTrx.Visible:=True;
    BitBtnTrx.Visible:=True;
    GroupBoxLaporan.Visible:=True;
    ButtonLapBrg.Visible:=True;
    ButtonLapKons.Visible:=True;
    
    ButtonPenj.Visible:=True;
    PanelLogin.Visible:=False;
    BitBtnExit.Visible:=False;
    BitBtnLogin.Visible:=False;
    LabelUsername.Visible:=False;
    LabelPassword.Visible:=False;
    LabelLogin.Visible:=False;
  end
end;

procedure TFormUtama.BitBtnExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormUtama.BitBtnDataBarangClick(Sender: TObject);
begin
  Application.CreateForm(TFormDataBrg, FormDataBrg);
  FormDataBrg.Show;
  FormUtama.Visible:=False;
end;




procedure TFormUtama.BitBtnKeluarClick(Sender: TObject);
begin

  Application.Terminate;
end;

procedure TFormUtama.BitBtnTrxClick(Sender: TObject);
begin
  Application.CreateForm(TFormTrx, FormTrx);
  FormTrx.Show;
  FormUtama.Visible:=False;
end;



procedure TFormUtama.Button2Click(Sender: TObject);
begin
  Application.CreateForm(TFormCust, FormCust);
  FormCust.Show;
  FormUtama.Visible:=False;
end;

procedure TFormUtama.ButtonPenjClick(Sender: TObject);
begin
  Application.CreateForm(TFormFaktur, FormFaktur);
  FormFaktur.Show;
  FormUtama.Visible:=False;  
end;

procedure TFormUtama.ButtonLapBrgClick(Sender: TObject);
begin
  Application.CreateForm(TFormLapBrg, FormLapBrg);
  FormLapBrg.Hide;
  FormLapBrg.ReportBrg.Preview;
//  FormUtama.Visible:=False;
end;

procedure TFormUtama.ButtonLapKonsClick(Sender: TObject);
begin
  Application.CreateForm(TFormLapKons, FormLapKons);
  FormLapKons.Show;
  FormUtama.Visible:=False;
end;


end.
