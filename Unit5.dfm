object Form5: TForm5
  Left = 254
  Top = 150
  Width = 870
  Height = 450
  Caption = 'Form Kategori'
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
    Left = 48
    Top = 64
    Width = 81
    Height = 13
    Caption = 'KODE KATEGORI'
  end
  object Label3: TLabel
    Left = 48
    Top = 96
    Width = 83
    Height = 13
    Caption = 'NAMA KATEGORI'
  end
  object Edit1: TEdit
    Left = 152
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 152
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 64
    Top = 136
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 184
    Top = 136
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 64
    Top = 176
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 320
    Top = 40
    Width = 473
    Height = 137
    DataSource = DataSource1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Button4: TButton
    Left = 184
    Top = 176
    Width = 75
    Height = 25
    Caption = 'KEMBALI'
    TabOrder = 6
    OnClick = Button4Click
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 464
    Top = 192
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
    Left = 336
    Top = 192
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tbl_kategori')
    Params = <>
    Left = 400
    Top = 192
  end
end
