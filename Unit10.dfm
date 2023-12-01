object Form10: TForm10
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Form Login'
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
    Left = 208
    Top = 32
    Width = 431
    Height = 25
    Caption = 'Silahkan Login Sesuai Dengan Akun Anda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 320
    Top = 96
    Width = 73
    Height = 16
    Caption = 'Username :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 320
    Top = 136
    Width = 72
    Height = 16
    Caption = 'Password :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 320
    Top = 224
    Width = 305
    Height = 16
    Caption = 'Jika tidak memiliki akun silahkan klik tombol dibawah!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 424
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 424
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 320
    Top = 176
    Width = 97
    Height = 25
    Caption = 'Login'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 320
    Top = 248
    Width = 97
    Height = 25
    Caption = 'Daftar Akun'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
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
    Left = 328
    Top = 296
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tbl_user')
    Params = <>
    Left = 400
    Top = 296
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 472
    Top = 296
  end
end
