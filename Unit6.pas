unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TForm6 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
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
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  id : string;

implementation

uses Unit12;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into tbl_kustomer values(null,"'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'")');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tbl_kustomer');
  ZQuery1.Open;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('update tbl_kustomer set kd_kustomer="'+Edit1.Text+'", nm_kustomer="'+Edit2.Text+'", alamat="'+Edit3.Text+'", no_hp="'+Edit4.Text+'", email="'+Edit5.Text+'" where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tbl_kustomer');
  ZQuery1.Open;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from tbl_kustomer where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tbl_kustomer');
  ZQuery1.Open;
end;

procedure TForm6.DBGrid1CellClick(Column: TColumn);
begin
  id:=ZQuery1.Fields[0].AsString;
  Edit1.Text:=ZQuery1.Fields[1].AsString;
  Edit2.Text:=ZQuery1.Fields[2].AsString;
  Edit3.Text:=ZQuery1.Fields[3].AsString;
  Edit4.Text:=ZQuery1.Fields[4].AsString;
  Edit5.Text:=ZQuery1.Fields[5].AsString;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
  Form12.show;
end;

end.
