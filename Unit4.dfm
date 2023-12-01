object Form4: TForm4
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Form Karyawan'
  Color = clMedGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 40
    Top = 40
    Width = 87
    Height = 13
    Caption = 'KODE KARYAWAN'
  end
  object Label3: TLabel
    Left = 40
    Top = 72
    Width = 89
    Height = 13
    Caption = 'NAMA KARYAWAN'
  end
  object Label4: TLabel
    Left = 40
    Top = 104
    Width = 74
    Height = 13
    Caption = 'JENIS KELAMIN'
  end
  object Label5: TLabel
    Left = 40
    Top = 136
    Width = 79
    Height = 13
    Caption = 'TANGGAL LAHIR'
  end
  object Label6: TLabel
    Left = 40
    Top = 168
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object Label7: TLabel
    Left = 40
    Top = 200
    Width = 31
    Height = 13
    Caption = 'NO HP'
  end
  object Label8: TLabel
    Left = 40
    Top = 232
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object Edit1: TEdit
    Left = 160
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 160
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 160
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 160
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 160
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 328
    Top = 40
    Width = 481
    Height = 193
    DataSource = DataSource1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Button1: TButton
    Left = 56
    Top = 272
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 56
    Top = 312
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 184
    Top = 272
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 8
    OnClick = Button3Click
  end
  object ComboBox1: TComboBox
    Left = 160
    Top = 104
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Items.Strings = (
      'Laki-laki'
      'Perempuan')
  end
  object DateTimePicker1: TDateTimePicker
    Left = 160
    Top = 136
    Width = 121
    Height = 21
    Date = 45259.881108148150000000
    Time = 45259.881108148150000000
    TabOrder = 10
  end
  object Button4: TButton
    Left = 184
    Top = 312
    Width = 75
    Height = 25
    Caption = 'KEMBALI'
    TabOrder = 11
    OnClick = Button4Click
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
    Left = 344
    Top = 256
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tbl_karyawan')
    Params = <>
    Left = 416
    Top = 256
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 488
    Top = 256
  end
end
