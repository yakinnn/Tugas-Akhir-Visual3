object Form11: TForm11
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Form Daftar Akun'
  Color = clMedGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 288
    Top = 64
    Width = 64
    Height = 16
    Caption = 'Username'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 288
    Top = 104
    Width = 63
    Height = 16
    Caption = 'Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 288
    Top = 144
    Width = 32
    Height = 16
    Caption = 'Email'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 288
    Top = 184
    Width = 34
    Height = 16
    Caption = 'Level'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 288
    Top = 224
    Width = 43
    Height = 16
    Caption = 'Status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 416
    Top = 64
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 416
    Top = 104
    Width = 153
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 416
    Top = 144
    Width = 153
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 416
    Top = 224
    Width = 153
    Height = 21
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 416
    Top = 184
    Width = 153
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      'Karyawan'
      'Staff')
  end
  object Button1: TButton
    Left = 360
    Top = 272
    Width = 129
    Height = 25
    Caption = 'Daftar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 360
    Top = 312
    Width = 129
    Height = 25
    Caption = 'Kembali'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Button2Click
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_partkomputer'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\akin\KULIAH\Semester 5\Visual 3\Projek Akhir\libmysql.dll'
    Left = 624
    Top = 128
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tbl_user')
    Params = <>
    Left = 624
    Top = 184
  end
end
