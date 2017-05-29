object FormTrx: TFormTrx
  Left = 266
  Top = 206
  ActiveControl = BitBtn1
  BorderStyle = bsNone
  Caption = 'Transaksi'
  ClientHeight = 445
  ClientWidth = 774
  Color = clMenuHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 774
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Transaksi Barang'
    Color = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 24
    Width = 705
    Height = 417
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Masukan'
      object Label2: TLabel
        Left = 368
        Top = 24
        Width = 50
        Height = 13
        Caption = 'No. Faktur'
      end
      object Label3: TLabel
        Left = 368
        Top = 56
        Width = 39
        Height = 13
        Caption = 'Tanggal'
      end
      object Label16: TLabel
        Left = 576
        Top = 344
        Width = 56
        Height = 13
        Caption = 'Total Harga'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 576
        Top = 360
        Width = 42
        Height = 16
        Caption = 'Rp 0,-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 16
        Top = 176
        Width = 142
        Height = 13
        Caption = 'Daftar Pembelian Barang'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox1: TGroupBox
        Left = 16
        Top = 8
        Width = 289
        Height = 73
        Caption = 'Data Konsumen'
        TabOrder = 0
        object Label9: TLabel
          Left = 8
          Top = 24
          Width = 72
          Height = 13
          Caption = 'Pilih Konsumen'
        end
        object Label10: TLabel
          Left = 160
          Top = 24
          Width = 32
          Height = 13
          Caption = 'Alamat'
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 8
          Top = 40
          Width = 145
          Height = 21
          KeyField = 'nmcus'
          ListField = 'nmcus'
          ListSource = DataSource1
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 160
          Top = 40
          Width = 121
          Height = 21
          DataField = 'alamat'
          DataSource = DataSource1
          ReadOnly = True
          TabOrder = 1
        end
      end
      object GroupBox2: TGroupBox
        Left = 16
        Top = 88
        Width = 529
        Height = 73
        Caption = 'Barang'
        TabOrder = 1
        object Label11: TLabel
          Left = 8
          Top = 24
          Width = 56
          Height = 13
          Caption = 'Pilih Barang'
        end
        object Label12: TLabel
          Left = 160
          Top = 24
          Width = 62
          Height = 13
          Caption = 'Kode Barang'
        end
        object Label13: TLabel
          Left = 248
          Top = 24
          Width = 34
          Height = 13
          Caption = 'Satuan'
        end
        object Label14: TLabel
          Left = 352
          Top = 24
          Width = 29
          Height = 13
          Caption = 'Harga'
        end
        object Label15: TLabel
          Left = 448
          Top = 24
          Width = 71
          Height = 13
          Caption = 'Stok Sekarang'
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 8
          Top = 40
          Width = 145
          Height = 21
          KeyField = 'nmbrg'
          ListField = 'nmbrg'
          ListSource = DataSource2
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 160
          Top = 40
          Width = 81
          Height = 21
          DataField = 'kdbrg'
          DataSource = DataSource2
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 248
          Top = 40
          Width = 97
          Height = 21
          DataField = 'satuan'
          DataSource = DataSource2
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 352
          Top = 40
          Width = 89
          Height = 21
          DataField = 'hargajual'
          DataSource = DataSource2
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 448
          Top = 40
          Width = 73
          Height = 21
          DataField = 'stok'
          DataSource = DataSource2
          ReadOnly = True
          TabOrder = 4
        end
      end
      object Edit1: TEdit
        Left = 424
        Top = 24
        Width = 121
        Height = 21
        TabOrder = 2
        OnKeyPress = Edit1KeyPress
      end
      object sg: TStringGrid
        Left = 16
        Top = 192
        Width = 673
        Height = 146
        DefaultColWidth = 75
        DefaultRowHeight = 16
        TabOrder = 3
      end
      object Button2: TButton
        Left = 16
        Top = 344
        Width = 75
        Height = 25
        Caption = 'Simpan'
        TabOrder = 4
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 104
        Top = 344
        Width = 75
        Height = 25
        Caption = 'Reset'
        TabOrder = 5
        OnClick = Button3Click
      end
      object DateTimePicker1: TDateTimePicker
        Left = 424
        Top = 56
        Width = 121
        Height = 21
        BevelOuter = bvNone
        Date = 41255.911575694440000000
        Time = 41255.911575694440000000
        TabOrder = 6
      end
      object GroupBox3: TGroupBox
        Left = 552
        Top = 88
        Width = 137
        Height = 73
        Caption = 'Tambah Barang'
        TabOrder = 7
        object Label4: TLabel
          Left = 12
          Top = 20
          Width = 53
          Height = 13
          Caption = 'Jumlah Beli'
        end
        object Edit2: TEdit
          Left = 8
          Top = 36
          Width = 57
          Height = 21
          TabOrder = 0
          OnKeyPress = Edit2KeyPress
        end
        object Button1: TButton
          Left = 70
          Top = 32
          Width = 59
          Height = 25
          Caption = 'Tambah'
          TabOrder = 1
          OnClick = Button1Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cari'
      ImageIndex = 1
      object Label5: TLabel
        Left = 24
        Top = 16
        Width = 50
        Height = 13
        Caption = 'No. Faktur'
      end
      object Label8: TLabel
        Left = 432
        Top = 48
        Width = 156
        Height = 16
        Caption = 'Total Yang Harus Dibayar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 432
        Top = 64
        Width = 50
        Height = 20
        Caption = 'Rp 0,-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 88
        Top = 16
        Width = 145
        Height = 21
        KeyField = 'nofak'
        ListField = 'nofak'
        ListSource = DataSource3
        TabOrder = 0
        OnClick = DBLookupComboBox3Click
      end
      object DBGrid1: TDBGrid
        Left = 8
        Top = 48
        Width = 417
        Height = 249
        DataSource = DataSource4
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'nofak'
            Title.Caption = 'No. Faktur'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tgl'
            Title.Caption = 'Tanggal Transaksi'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nmcus'
            Title.Caption = 'Nama Konsumen'
            Width = 150
            Visible = True
          end>
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 632
    Top = 8
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Keluar'
    ModalResult = 2
    TabOrder = 0
    OnClick = BitBtn1Click
    NumGlyphs = 2
  end
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
    Left = 508
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from d_customer')
    Left = 52
    Top = 72
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from d_barang')
    Left = 4
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 84
    Top = 72
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 28
    Top = 136
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConn
    Parameters = <>
    Left = 12
    Top = 416
  end
  object ADOQuery4: TADOQuery
    Active = True
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select distinct nofak from d_transaksi')
    Left = 252
    Top = 48
  end
  object ADOQuery5: TADOQuery
    Active = True
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select distinct nofak,tgl,nmcus from d_transaksi')
    Left = 96
    Top = 184
  end
  object ADOQuery6: TADOQuery
    Active = True
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from d_transaksi')
    Left = 224
    Top = 408
  end
  object ADOQuery7: TADOQuery
    Active = True
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(total) as tottrans from d_transaksi')
    Left = 568
    Top = 408
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery4
    Left = 220
    Top = 48
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery5
    Left = 132
    Top = 184
  end
  object DataSource5: TDataSource
    DataSet = ADOQuery6
    Left = 396
    Top = 384
  end
  object DataSource6: TDataSource
    DataSet = ADOQuery7
    Left = 428
    Top = 384
  end
  object ADOQuery8: TADOQuery
    Connection = ADOConn
    Parameters = <>
    Left = 604
    Top = 80
  end
end
