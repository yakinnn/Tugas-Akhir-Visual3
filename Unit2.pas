unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, frxClass, frxDBSet;

type
  TForm2 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label8: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    Button4: TButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  id : string;

implementation

uses Unit12;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into tbl_dtl_pembelian values(null,"'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit6.Text+'","'+Edit7.Text+'")');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tbl_dtl_pembelian');
  ZQuery1.Open;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('update tbl_dtl_pembelian set kd_dtl_pembelian="'+Edit1.Text+'", kd_barang="'+Edit2.Text+'", kd_pembelian="'+Edit3.Text+'", nm_barang="'+Edit4.Text+'", harga_satuan="'+Edit5.Text+'", jmlh_barang="'+Edit6.Text+'", total_harga="'+Edit7.Text+'" where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tbl_dtl_pembelian');
  ZQuery1.Open;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from tbl_dtl_pembelian where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tbl_dtl_pembelian');
  ZQuery1.Open;
end;

procedure TForm2.DBGrid1CellClick(Column: TColumn);
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

procedure TForm2.Button4Click(Sender: TObject);
begin
  frxReport1.ShowReport();
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  Form12.show;
end;

end.
