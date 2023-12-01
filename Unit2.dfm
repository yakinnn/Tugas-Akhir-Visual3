object Form2: TForm2
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Form Detail Pembelian'
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
    Top = 40
    Width = 123
    Height = 13
    Caption = 'KODE DETAIL PEMBELIAN'
  end
  object Label3: TLabel
    Left = 48
    Top = 72
    Width = 71
    Height = 13
    Caption = 'KODE BARANG'
  end
  object Label4: TLabel
    Left = 48
    Top = 104
    Width = 85
    Height = 13
    Caption = 'KODE PEMBELIAN'
  end
  object Label5: TLabel
    Left = 48
    Top = 136
    Width = 73
    Height = 13
    Caption = 'NAMA BARANG'
  end
  object Label6: TLabel
    Left = 48
    Top = 168
    Width = 78
    Height = 13
    Caption = 'HARGA SATUAN'
  end
  object Label7: TLabel
    Left = 48
    Top = 200
    Width = 83
    Height = 13
    Caption = 'JUMLAH BARANG'
  end
  object Label8: TLabel
    Left = 48
    Top = 232
    Width = 70
    Height = 13
    Caption = 'TOTAL HARGA'
  end
  object Edit1: TEdit
    Left = 216
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 216
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 216
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 216
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 216
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 216
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit7: TEdit
    Left = 216
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Button1: TButton
    Left = 72
    Top = 272
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 72
    Top = 312
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 200
    Top = 272
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 9
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 376
    Top = 40
    Width = 441
    Height = 185
    DataSource = DataSource1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Button4: TButton
    Left = 200
    Top = 312
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 11
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 136
    Top = 352
    Width = 75
    Height = 25
    Caption = 'KEMBALI'
    TabOrder = 12
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
    Left = 384
    Top = 248
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tbl_dtl_pembelian')
    Params = <>
    Left = 456
    Top = 248
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 520
    Top = 248
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ZQuery1
    BCDToCurrency = False
    Left = 592
    Top = 248
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45260.633937407400000000
    ReportOptions.LastChange = 45260.633937407400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 664
    Top = 248
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
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        object Memo1: TfrxMemoView
          Left = 309.921460000000000000
          Top = 15.118120000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'LAPORAN DETAIL PEMBELIAN')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 102.047310000000000000
        Width = 980.410082000000000000
        object Memo2: TfrxMemoView
          Left = 15.118120000000000000
          Top = 7.559060000000000000
          Width = 151.181200000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kode Detail Pembelian')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 166.299320000000000000
          Top = 7.559060000000000000
          Width = 98.267780000000000000
          Height = 26.456710000000000000
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
        object Memo4: TfrxMemoView
          Left = 264.567100000000000000
          Top = 7.559060000000000000
          Width = 120.944960000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kode Pembelian')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 385.512060000000000000
          Top = 7.559060000000000000
          Width = 147.401670000000000000
          Height = 26.456710000000000000
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
        object Memo6: TfrxMemoView
          Left = 532.913730000000000000
          Top = 7.559060000000000000
          Width = 132.283550000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Harga Satuan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 665.197280000000000000
          Top = 7.559060000000000000
          Width = 128.504020000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah Barang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 793.701300000000000000
          Top = 7.559060000000000000
          Width = 162.519790000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total Harga')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 37.795300000000000000
        Top = 196.535560000000000000
        Width = 980.410082000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1kd_dtl_pembelian: TfrxMemoView
          Left = 15.118120000000000000
          Width = 151.181200000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'kd_dtl_pembelian'
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
            '[frxDBDataset1."kd_dtl_pembelian"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1kd_barang: TfrxMemoView
          Left = 166.299320000000000000
          Width = 98.267780000000000000
          Height = 37.795300000000000000
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
        object frxDBDataset1kd_pembelian: TfrxMemoView
          Left = 264.567100000000000000
          Width = 120.944960000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'kd_pembelian'
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
            '[frxDBDataset1."kd_pembelian"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1nm_barang: TfrxMemoView
          Left = 385.512060000000000000
          Width = 147.401670000000000000
          Height = 37.795300000000000000
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
        object frxDBDataset1harga_satuan: TfrxMemoView
          Left = 532.913730000000000000
          Width = 132.283550000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'harga_satuan'
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
            '[frxDBDataset1."harga_satuan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1jmlh_barang: TfrxMemoView
          Left = 665.197280000000000000
          Width = 128.504020000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'jmlh_barang'
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
            '[frxDBDataset1."jmlh_barang"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1total_harga: TfrxMemoView
          Left = 793.701300000000000000
          Width = 162.519790000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'total_harga'
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
            '[frxDBDataset1."total_harga"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
