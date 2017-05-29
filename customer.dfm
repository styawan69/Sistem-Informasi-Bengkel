object FormCust: TFormCust
  Left = 214
  Top = 112
  BorderStyle = bsNone
  Caption = 'Customer'
  ClientHeight = 508
  ClientWidth = 602
  Color = clMenuHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 602
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Data Konsumen'
    Color = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object GroupBox2: TGroupBox
    Left = 24
    Top = 312
    Width = 561
    Height = 185
    Caption = 'Form Customer'
    TabOrder = 2
    object Label2: TLabel
      Left = 16
      Top = 28
      Width = 78
      Height = 13
      Caption = 'Kode Konsumen'
    end
    object Label3: TLabel
      Left = 16
      Top = 68
      Width = 28
      Height = 13
      Caption = 'Nama'
    end
    object Label4: TLabel
      Left = 16
      Top = 108
      Width = 32
      Height = 13
      Caption = 'Alamat'
    end
    object Label5: TLabel
      Left = 16
      Top = 148
      Width = 59
      Height = 13
      Caption = 'Telepon/HP'
    end
    object GroupBox1: TGroupBox
      Left = 340
      Top = 16
      Width = 189
      Height = 153
      Caption = 'Menu'
      TabOrder = 0
      object Button1: TButton
        Left = 104
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Simpan'
        Enabled = False
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 16
        Top = 72
        Width = 75
        Height = 25
        Caption = 'Edit'
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 104
        Top = 72
        Width = 75
        Height = 25
        Caption = 'Hapus'
        TabOrder = 2
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 16
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Tambah'
        TabOrder = 3
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 16
        Top = 120
        Width = 75
        Height = 25
        Caption = 'Reset'
        Enabled = False
        TabOrder = 4
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 104
        Top = 120
        Width = 75
        Height = 25
        Caption = 'Batal'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = Button6Click
      end
    end
    object Edit1: TEdit
      Left = 104
      Top = 28
      Width = 200
      Height = 21
      Enabled = False
      TabOrder = 1
      OnChange = Edit1Change
    end
    object Edit4: TEdit
      Left = 104
      Top = 148
      Width = 200
      Height = 21
      Enabled = False
      TabOrder = 2
      OnKeyPress = Edit4KeyPress
    end
    object Edit3: TEdit
      Left = 104
      Top = 108
      Width = 200
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 104
      Top = 68
      Width = 200
      Height = 21
      Enabled = False
      TabOrder = 4
    end
  end
  object BitBtn1: TBitBtn
    Left = 504
    Top = 40
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Keluar'
    ModalResult = 2
    TabOrder = 0
    OnClick = BitBtn1Click
    NumGlyphs = 2
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 88
    Width = 569
    Height = 217
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'kdcus'
        Title.Caption = 'Kode'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nmcus'
        Title.Caption = 'Nama'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Title.Caption = 'Alamat'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telepon'
        Title.Caption = 'Telepon/HP'
        Width = 100
        Visible = True
      end>
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 24
    Width = 249
    Height = 57
    Caption = 'Cari'
    TabOrder = 3
    object Label6: TLabel
      Left = 8
      Top = 24
      Width = 49
      Height = 13
      Caption = 'Cari Nama'
    end
    object Edit5: TEdit
      Left = 64
      Top = 24
      Width = 169
      Height = 21
      TabOrder = 0
      OnChange = Edit5Change
    end
  end
  object ADOConn: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=db.mdb;Persist Secu' +
      'rity Info=False;Jet OLEDB:Database Password=adi'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 892
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConn
    Parameters = <>
    Left = 924
    Top = 8
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from d_customer')
    Left = 956
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery2
    Left = 988
    Top = 8
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConn
    Parameters = <>
    Left = 936
    Top = 56
  end
end
