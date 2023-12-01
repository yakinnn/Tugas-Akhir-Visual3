unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, ComCtrls;

type
  TForm4 = class(TForm)
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
    DBGrid1: TDBGrid;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  id : string;

implementation

uses Unit12;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into tbl_karyawan values(null,"'+Edit1.Text+'","'+Edit2.Text+'","'+ComboBox1.Text+'","'+FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date)+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'")');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tbl_karyawan');
  ZQuery1.Open;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('update tbl_karyawan set kd_karyawan="'+Edit1.Text+'", nm_karyawan="'+Edit2.Text+'", jk="'+ComboBox1.Text+'", alamat="'+Edit3.Text+'", no_hp="'+Edit4.Text+'", email="'+Edit5.Text+'" where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tbl_karyawan');
  ZQuery1.Open;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from tbl_karyawan where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tbl_karyawan');
  ZQuery1.Open;
end;

procedure TForm4.DBGrid1CellClick(Column: TColumn);
begin
  id:=ZQuery1.Fields[0].AsString;
  Edit1.Text:=ZQuery1.Fields[1].AsString;
  Edit2.Text:=ZQuery1.Fields[2].AsString;
  ComboBox1.Text:=ZQuery1.Fields[3].AsString;
  DateTimePicker1.Date:=ZQuery1.Fields[4].AsDateTime;
  Edit3.Text:=ZQuery1.Fields[5].AsString;
  Edit4.Text:=ZQuery1.Fields[6].AsString;
  Edit5.Text:=ZQuery1.Fields[7].AsString;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
  Form12.show;
end;

end.
