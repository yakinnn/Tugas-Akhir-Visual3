unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm11 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Unit10;

{$R *.dfm}

procedure TForm11.Button2Click(Sender: TObject);
begin
  Form10.Show;
end;

procedure TForm11.Button1Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into tbl_user values(null, "'+Edit1.Text+'", "'+Edit2.Text+'", "'+Edit3.Text+'", "'+ComboBox1.Text+'", "'+Edit4.Text+'")');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tbl_user');
  ZQuery1.Open;
  Showmessage('Akun Berhasil Didaftarkan...')
end;

end.
 