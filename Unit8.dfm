object Form8: TForm8
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Form Penjualan'
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
    Width = 87
    Height = 13
    Caption = 'KODE PENJUALAN'
  end
  object Label3: TLabel
    Left = 40
    Top = 56
    Width = 84
    Height = 13
    Caption = 'KODE KUSTOMER'
  end
  object Label4: TLabel
    Left = 40
    Top = 88
    Width = 71
    Height = 13
    Caption = 'KODE BARANG'
  end
  object Label5: TLabel
    Left = 40
    Top = 120
    Width = 87
    Height = 13
    Caption = 'KODE KARYAWAN'
  end
  object Label6: TLabel
    Left = 40
    Top = 152
    Width = 106
    Height = 13
    Caption = 'TANGGAL PENJUALAN'
  end
  object Label7: TLabel
    Left = 40
    Top = 184
    Width = 57
    Height = 13
    Caption = 'NO FAKTUR'
  end
  object Label8: TLabel
    Left = 40
    Top = 216
    Width = 70
    Height = 13
    Caption = 'TOTAL HARGA'
  end
  object Label9: TLabel
    Left = 40
    Top = 248
    Width = 111
    Height = 13
    Caption = 'METODE PEMBAYARAN'
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
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 176
    Top = 216
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit7: TEdit
    Left = 176
    Top = 248
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Button1: TButton
    Left = 64
    Top = 288
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 192
    Top = 288
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 8
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 64
    Top = 328
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 9
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 336
    Top = 24
    Width = 489
    Height = 217
    DataSource = DataSource1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object DateTimePicker1: TDateTimePicker
    Left = 176
    Top = 152
    Width = 121
    Height = 21
    Date = 45259.882693298610000000
    Time = 45259.882693298610000000
    TabOrder = 11
  end
  object Button4: TButton
    Left = 192
    Top = 328
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 12
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 128
    Top = 368
    Width = 75
    Height = 25
    Caption = 'KEMBALI'
    TabOrder = 13
    OnClick = Button5Click
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 472
    Top = 264
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
    Top = 264
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tbl_penjualan')
    Params = <>
    Left = 408
    Top = 264
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ZQuery1
    BCDToCurrency = False
    Left = 552
    Top = 264
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45260.589790162000000000
    ReportOptions.LastChange = 45260.589790162000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      '<frxDBDataset1."kd_penjualan">begin'
      ''
      'end.')
    Left = 632
    Top = 264
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
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        object Memo1: TfrxMemoView
          Left = 362.834880000000000000
          Top = 11.338590000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN  PENJUAlAN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 30.236240000000000000
        Top = 86.929190000000000000
        Width = 980.410082000000000000
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 11.338590000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kode Penjualan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 136.063080000000000000
          Top = 11.338590000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kode Kustomer')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 264.567100000000000000
          Top = 11.338590000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
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
        object Memo5: TfrxMemoView
          Left = 366.614410000000000000
          Top = 11.338590000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kode Karyawan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 476.220780000000000000
          Top = 11.338590000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tanggal Penjualan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 604.724800000000000000
          Top = 11.338590000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No Faktur')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 718.110700000000000000
          Top = 11.338590000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
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
        object Memo9: TfrxMemoView
          Left = 839.055660000000000000
          Top = 11.338590000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Metode Pembayaran')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 177.637910000000000000
        Width = 980.410082000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1kd_penjualan: TfrxMemoView
          Left = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kd_penjualan'
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
            '[frxDBDataset1."kd_penjualan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1kd_kustomer: TfrxMemoView
          Left = 136.063080000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kd_kustomer'
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
            '[frxDBDataset1."kd_kustomer"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1kd_barang: TfrxMemoView
          Left = 264.567100000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
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
        object frxDBDataset1kd_karyawan: TfrxMemoView
          Left = 366.614410000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kd_karyawan'
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
            '[frxDBDataset1."kd_karyawan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1tgl_penjualan: TfrxMemoView
          Left = 476.220780000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl_penjualan'
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
            '[frxDBDataset1."tgl_penjualan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1no_faktur: TfrxMemoView
          Left = 604.724800000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'no_faktur'
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
            '[frxDBDataset1."no_faktur"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1total_harga: TfrxMemoView
          Left = 718.110700000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
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
        object frxDBDataset1metode_pembayaran: TfrxMemoView
          Left = 839.055660000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'metode_pembayaran'
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
            '[frxDBDataset1."metode_pembayaran"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
