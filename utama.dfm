object FormUtama: TFormUtama
  Left = 191
  Top = 111
  ActiveControl = EditUsername
  AlphaBlendValue = 200
  BorderIcons = []
  BorderStyle = bsNone
  BorderWidth = 2
  Caption = 'Sistem Informasi Bengkel'
  ClientHeight = 550
  ClientWidth = 560
  Color = clMenuHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object LabelJudul: TLabel
    Left = 0
    Top = 0
    Width = 560
    Height = 29
    Align = alTop
    Alignment = taCenter
    Caption = 'Sistem Informasi Bengkel'
    Color = cl3DDkShadow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentColor = False
    ParentFont = False
  end
  object LabelLogin: TLabel
    Left = 184
    Top = 200
    Width = 63
    Height = 13
    Alignment = taCenter
    Caption = 'Login Form'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelMainMenu: TLabel
    Left = 224
    Top = 48
    Width = 118
    Height = 24
    Caption = 'Menu Utama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object GroupOption: TGroupBox
    Left = 368
    Top = 368
    Width = 100
    Height = 87
    Caption = 'Option'
    Color = cl3DDkShadow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    Visible = False
    object BitBtnClose: TBitBtn
      Left = 8
      Top = 16
      Width = 80
      Height = 25
      Caption = 'Logout'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 5
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnClick = BitBtnCloseClick
      NumGlyphs = 2
    end
    object BitBtnKeluar: TBitBtn
      Left = 8
      Top = 48
      Width = 80
      Height = 25
      Cancel = True
      Caption = 'Keluar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtnKeluarClick
      NumGlyphs = 2
    end
  end
  object GroupAdm: TGroupBox
    Left = 144
    Top = 104
    Width = 100
    Height = 80
    Caption = 'Administrasi'
    Color = cl3DDkShadow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Button2: TButton
      Left = 8
      Top = 48
      Width = 80
      Height = 25
      Caption = 'Konsumen'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button2Click
    end
    object BitBtnDataBarang: TBitBtn
      Left = 8
      Top = 16
      Width = 80
      Height = 25
      Caption = 'Barang'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnClick = BitBtnDataBarangClick
    end
  end
  object PanelLogin: TPanel
    Left = 208
    Top = 224
    Width = 217
    Height = 121
    Color = cl3DDkShadow
    TabOrder = 0
    object LabelUsername: TLabel
      Left = 8
      Top = 16
      Width = 58
      Height = 13
      Caption = 'Username'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelPassword: TLabel
      Left = 8
      Top = 48
      Width = 54
      Height = 13
      Caption = 'Password'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditUsername: TEdit
      Left = 72
      Top = 16
      Width = 129
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object EditPassword: TEdit
      Left = 72
      Top = 48
      Width = 129
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
    end
    object BitBtnLogin: TBitBtn
      Left = 64
      Top = 80
      Width = 65
      Height = 25
      Caption = 'Login'
      Default = True
      ModalResult = 1
      TabOrder = 2
      OnClick = BitBtnLoginClick
      NumGlyphs = 2
    end
    object BitBtnExit: TBitBtn
      Left = 136
      Top = 80
      Width = 65
      Height = 25
      Cancel = True
      Caption = 'Keluar'
      ModalResult = 2
      TabOrder = 3
      OnClick = BitBtnExitClick
      NumGlyphs = 2
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 531
    Width = 560
    Height = 19
    Color = cl3DDkShadow
    Panels = <>
    SimpleText = 'Selamat Datang di Sistem Informasi Barang'
  end
  object GroupBoxTrx: TGroupBox
    Left = 352
    Top = 104
    Width = 100
    Height = 80
    Caption = 'Transaksi'
    Color = cl3DDkShadow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    Visible = False
    object ButtonPenj: TButton
      Left = 8
      Top = 48
      Width = 80
      Height = 25
      Caption = 'Cetak Faktur'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnClick = ButtonPenjClick
    end
    object BitBtnTrx: TBitBtn
      Left = 8
      Top = 16
      Width = 80
      Height = 25
      Caption = 'Transaksi'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnClick = BitBtnTrxClick
    end
  end
  object GroupBoxLaporan: TGroupBox
    Left = 144
    Top = 376
    Width = 100
    Height = 87
    Caption = 'Laporan'
    Color = cl3DDkShadow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 5
    Visible = False
    object ButtonLapBrg: TButton
      Left = 8
      Top = 16
      Width = 80
      Height = 25
      Caption = 'Barang'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnClick = ButtonLapBrgClick
    end
    object ButtonLapKons: TButton
      Left = 8
      Top = 48
      Width = 80
      Height = 25
      Caption = 'Konsumen'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnClick = ButtonLapKonsClick
    end
  end
end
