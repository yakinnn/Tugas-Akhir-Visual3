object Form3: TForm3
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Form Detail Penjualan'
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
    Width = 125
    Height = 13
    Caption = 'KODE DETAIL PENJUALAN'
  end
  object Label3: TLabel
    Left = 40
    Top = 72
    Width = 71
    Height = 13
    Caption = 'KODE BARANG'
  end
  object Label4: TLabel
    Left = 40
    Top = 104
    Width = 87
    Height = 13
    Caption = 'KODE PENJUALAN'
  end
  object Label5: TLabel
    Left = 40
    Top = 136
    Width = 73
    Height = 13
    Caption = 'NAMA BARANG'
  end
  object Label6: TLabel
    Left = 40
    Top = 168
    Width = 78
    Height = 13
    Caption = 'HARGA SATUAN'
  end
  object Label7: TLabel
    Left = 40
    Top = 200
    Width = 83
    Height = 13
    Caption = 'JUMLAH BARANG'
  end
  object Label8: TLabel
    Left = 40
    Top = 232
    Width = 70
    Height = 13
    Caption = 'TOTAL HARGA'
  end
  object Edit1: TEdit
    Left = 208
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 208
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 208
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 208
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 208
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 208
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit7: TEdit
    Left = 208
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Button1: TButton
    Left = 48
    Top = 272
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 272
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 8
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 48
    Top = 312
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 9
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 368
    Top = 40
    Width = 457
    Height = 193
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
    Left = 176
    Top = 312
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 11
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 112
    Top = 352
    Width = 75
    Height = 25
    Caption = 'KEMBALI'
    TabOrder = 12
    OnClick = Button5Click
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 504
    Top = 256
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
    Left = 376
    Top = 256
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tbl_dtl_penjualan')
    Params = <>
    Left = 440
    Top = 256
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ZQuery1
    BCDToCurrency = False
    Left = 584
    Top = 256
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45260.649526620400000000
    ReportOptions.LastChange = 45260.649526620400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 656
    Top = 256
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
          Left = 283.464750000000000000
          Top = 15.118120000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DETAIL PENJUALAN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 26.456710000000000000
        Top = 102.047310000000000000
        Width = 980.410082000000000000
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Width = 143.622140000000000000
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
            'Kode Detail Penjualan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 154.960730000000000000
          Width = 109.606370000000000000
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
          Width = 117.165430000000000000
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
            'Kode Penjualan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 381.732530000000000000
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
            'Nama Barang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 544.252320000000000000
          Width = 139.842610000000000000
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
          Left = 684.094930000000000000
          Width = 139.842610000000000000
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
          Left = 823.937540000000000000
          Width = 139.842610000000000000
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
        Height = 22.677180000000000000
        Top = 188.976500000000000000
        Width = 980.410082000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1kd_dtl_penjualan: TfrxMemoView
          Left = 11.338590000000000000
          Width = 143.622140000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'kd_dtl_penjualan'
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
            '[frxDBDataset1."kd_dtl_penjualan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1kd_barang: TfrxMemoView
          Left = 154.960730000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
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
        object frxDBDataset1kd_penjualan: TfrxMemoView
          Left = 264.567100000000000000
          Width = 117.165430000000000000
          Height = 22.677180000000000000
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
        object frxDBDataset1nm_barang: TfrxMemoView
          Left = 381.732530000000000000
          Width = 162.519790000000000000
          Height = 22.677180000000000000
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
          Left = 544.252320000000000000
          Width = 139.842610000000000000
          Height = 22.677180000000000000
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
          Left = 684.094930000000000000
          Width = 139.842610000000000000
          Height = 22.677180000000000000
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
          Left = 823.937540000000000000
          Width = 139.842610000000000000
          Height = 22.677180000000000000
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
