unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TForm3 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  id : string;

implementation

uses Unit12;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into tbl_dtl_penjualan values(null,"'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit6.Text+'","'+Edit7.Text+'")');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tbl_dtl_penjualan');
  ZQuery1.Open;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('update tbl_dtl_penjualan set kd_dtl_pembelian="'+Edit1.Text+'", kd_barang="'+Edit2.Text+'", kd_penjualan="'+Edit3.Text+'", nm_barang="'+Edit4.Text+'", harga_satuan="'+Edit5.Text+'", jmlh_barang="'+Edit6.Text+'", total_harga="'+Edit7.Text+'" where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tbl_dtl_penjualan');
  ZQuery1.Open;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from tbl_dtl_penjualan where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tbl_dtl_penjualan');
  ZQuery1.Open;
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
  id:=ZQuery1.Fields[0].AsString;
  Edit1.Text:=ZQuery1.Fields[1].AsString;
  Edit2.Text:=ZQuery1.Fields[2].AsString;
  Edit3.Text:=ZQuery1.Fields[3].AsString;
  Edit4.Text:=ZQuery1.Fields[4].AsString;
  Edit5.Text:=ZQuery1.Fields[5].AsString;
  Edit6.Text:=ZQuery1.Fields[6].AsString; 
  Edit7.Text:=ZQuery1.Fields[7].AsString;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  frxReport1.ShowReport();
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
  Form12.show;
end;

end.
