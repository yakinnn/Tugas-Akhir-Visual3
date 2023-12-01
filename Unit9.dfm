object Form9: TForm9
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Form Supplier'
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
    Top = 24
    Width = 77
    Height = 13
    Caption = 'KODE SUPPLIER'
  end
  object Label3: TLabel
    Left = 40
    Top = 56
    Width = 79
    Height = 13
    Caption = 'NAMA SUPPLIER'
  end
  object Label4: TLabel
    Left = 40
    Top = 88
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object Label5: TLabel
    Left = 40
    Top = 120
    Width = 31
    Height = 13
    Caption = 'NO HP'
  end
  object Label6: TLabel
    Left = 40
    Top = 152
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object Edit1: TEdit
    Left = 176
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 176
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 176
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 176
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 176
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Button1: TButton
    Left = 56
    Top = 192
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 192
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 56
    Top = 232
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 7
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 328
    Top = 24
    Width = 473
    Height = 161
    DataSource = DataSource1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Button4: TButton
    Left = 200
    Top = 232
    Width = 75
    Height = 25
    Caption = 'KEMBALI'
    TabOrder = 9
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
    Top = 200
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tbl_supplier')
    Params = <>
    Left = 408
    Top = 200
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 472
    Top = 200
  end
end
