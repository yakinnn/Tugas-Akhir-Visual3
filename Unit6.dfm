object Form6: TForm6
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Form Kustomer'
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
    Top = 32
    Width = 84
    Height = 13
    Caption = 'KODE KUSTOMER'
  end
  object Label3: TLabel
    Left = 40
    Top = 64
    Width = 86
    Height = 13
    Caption = 'NAMA KUSTOMER'
  end
  object Label4: TLabel
    Left = 40
    Top = 96
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object Label5: TLabel
    Left = 40
    Top = 128
    Width = 31
    Height = 13
    Caption = 'NO HP'
  end
  object Label6: TLabel
    Left = 40
    Top = 160
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object Edit1: TEdit
    Left = 184
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 184
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 184
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 184
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 184
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 352
    Top = 32
    Width = 457
    Height = 161
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
    Left = 64
    Top = 200
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 192
    Top = 200
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 64
    Top = 240
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 192
    Top = 240
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
    Left = 368
    Top = 208
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tbl_kustomer')
    Params = <>
    Left = 440
    Top = 208
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 504
    Top = 208
  end
end
