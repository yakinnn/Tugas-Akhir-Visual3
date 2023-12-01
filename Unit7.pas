unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids, ComCtrls,
  frxClass, frxDBSet;

type
  TForm7 = class(TForm)
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
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    DateTimePicker1: TDateTimePicker;
    Button4: TButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
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
  Form7: TForm7;
  id : string;

implementation

uses Unit12;

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into tbl_pembelian values(null,"'+Edit1.Text+'","'+Edit2.Text+'","'+FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date)+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'")');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tbl_pembelian');
  ZQuery1.Open;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('update tbl_pembelian set kd_pembelian="'+Edit1.Text+'", kd_supplier="'+Edit2.Text+'", no_faktur="'+Edit3.Text+'", jmlh_barang="'+Edit4.Text+'", total_harga="'+Edit5.Text+'" where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tbl_pembelian');
  ZQuery1.Open;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from tbl_pembelian where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tbl_pembelian');
  ZQuery1.Open;
end;

procedure TForm7.DBGrid1CellClick(Column: TColumn);
begin
  id:=ZQuery1.Fields[0].AsString;
  Edit1.Text:=ZQuery1.Fields[1].AsString;
  Edit2.Text:=ZQuery1.Fields[2].AsString;
  DateTimePicker1.Date:=ZQuery1.Fields[3].AsDateTime;
  Edit3.Text:=ZQuery1.Fields[4].AsString;
  Edit4.Text:=ZQuery1.Fields[5].AsString;
  Edit5.Text:=ZQuery1.Fields[6].AsString;
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
  frxReport1.ShowReport();
end;

procedure TForm7.Button5Click(Sender: TObject);
begin
  Form12.show;
end;

end.
