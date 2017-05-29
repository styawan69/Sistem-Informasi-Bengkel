program sib;

uses
  Forms,
  customer in 'customer.pas' {FormCust},
  databarang in 'databarang.pas' {FormDataBrg},
  dmdb in 'dmdb.pas' {dm: TDataModule},
  utama in 'utama.pas' {FormUtama},
  transaksi in 'transaksi.pas' {FormTrx},
  faktur in 'faktur.pas' {FormFaktur},
  laporanbarang in 'laporanbarang.pas' {FormLapBrg},
  laporankonsumen in 'laporankonsumen.pas' {FormLapKons};
  

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Sistem Informasi Bengkel';
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TFormUtama, FormUtama);
  Application.Run;
end.
