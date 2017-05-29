object dm: Tdm
  OldCreateOrder = False
  Left = 196
  Top = 193
  Height = 163
  Width = 219
  object ADOConn: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=db.md' +
      'b;Mode=Share Deny None;Extended Properties="";Persist Security I' +
      'nfo=False;Jet OLEDB:System database="";Jet OLEDB:Registry Path="' +
      '";Jet OLEDB:Database Password=adi;Jet OLEDB:Engine Type=5;Jet OL' +
      'EDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;' +
      'Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Pass' +
      'word="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt' +
      ' Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet' +
      ' OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 88
    Top = 8
  end
  object QTemp: TADOQuery
    Connection = ADOConn
    Parameters = <>
    Left = 64
    Top = 64
  end
  object QLogin: TADOQuery
    Active = True
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from d_login')
    Left = 112
    Top = 64
  end
end
