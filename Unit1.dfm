object Form1: TForm1
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Form Barang'
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
    Left = 56
    Top = 48
    Width = 71
    Height = 13
    Caption = 'KODE BARANG'
  end
  object Label3: TLabel
    Left = 56
    Top = 80
    Width = 81
    Height = 13
    Caption = 'KODE KATEGORI'
  end
  object Label4: TLabel
    Left = 56
    Top = 112
    Width = 73
    Height = 13
    Caption = 'NAMA BARANG'
  end
  object Label5: TLabel
    Left = 56
    Top = 144
    Width = 59
    Height = 13
    Caption = 'HARGA BELI'
  end
  object Label6: TLabel
    Left = 56
    Top = 176
    Width = 62
    Height = 13
    Caption = 'HARGA JUAL'
  end
  object Label7: TLabel
    Left = 56
    Top = 208
    Width = 26
    Height = 13
    Caption = 'STOK'
  end
  object Edit1: TEdit
    Left = 176
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 176
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 176
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 176
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 176
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 176
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Button1: TButton
    Left = 72
    Top = 248
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 248
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 72
    Top = 288
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 344
    Top = 48
    Width = 457
    Height = 185
    DataSource = DataSource1
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Button4: TButton
    Left = 200
    Top = 288
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 10
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 136
    Top = 328
    Width = 75
    Height = 25
    Caption = 'KEMBALI'
    TabOrder = 11
    OnClick = Button5Click
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
    Top = 272
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select*from tbl_barang')
    Params = <>
    Left = 400
    Top = 272
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 464
    Top = 272
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ZQuery1
    BCDToCurrency = False
    Left = 536
    Top = 272
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45260.658377812500000000
    ReportOptions.LastChange = 45260.658377812500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 608
    Top = 272
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 253.228510000000000000
          Top = 18.897650000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN  BARANG')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 30.236240000000000000
        Top = 98.267780000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 26.456710000000000000
          Width = 113.385900000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kode Barang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 139.842610000000000000
          Width = 113.385900000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kode Kategori')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 253.228510000000000000
          Width = 124.724490000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Barang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 377.953000000000000000
          Width = 113.385900000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Harga Beli')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 491.338900000000000000
          Width = 113.385900000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Harga Jual')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 604.724800000000000000
          Width = 113.385900000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Stok')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 34.015770000000000000
        Top = 188.976500000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1kd_barang: TfrxMemoView
          Left = 26.456710000000000000
          Width = 113.385900000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'kd_barang'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."kd_barang"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1kd_kategori: TfrxMemoView
          Left = 139.842610000000000000
          Width = 113.385900000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'kd_kategori'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."kd_kategori"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1nm_barang: TfrxMemoView
          Left = 253.228510000000000000
          Width = 124.724490000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'nm_barang'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nm_barang"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1hrg_beli: TfrxMemoView
          Left = 377.953000000000000000
          Width = 113.385900000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'hrg_beli'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."hrg_beli"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1harga_jual: TfrxMemoView
          Left = 491.338900000000000000
          Width = 113.385900000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'harga_jual'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."harga_jual"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1stok: TfrxMemoView
          Left = 604.724800000000000000
          Width = 113.385900000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'stok'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."stok"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
