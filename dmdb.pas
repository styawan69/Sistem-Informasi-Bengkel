unit dmdb;

interface

uses
  SysUtils, Classes, DB, ADODB, Dialogs;

type
  Tdm = class(TDataModule)
    ADOConn: TADOConnection;
    QTemp: TADOQuery;
    QLogin: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    function info(apa:string):word;
  end;

var
  dm: Tdm;

implementation

uses utama;

{$R *.dfm}
function Tdm.info(apa:string):word;
begin
  result:=MessageDlg(apa,mtInformation,[mbOK],0);
end;

end.
