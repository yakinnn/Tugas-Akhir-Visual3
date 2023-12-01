unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TForm10 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label4: TLabel;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
  nama, password, level, loginLevel, querylogin, userid : string;
  sts : Integer;

implementation

uses Unit8, Unit12, Unit11;

{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
begin
  //cukup jelas
  nama := Edit1.Text;
  password := Edit2.Text;

  //assign kueri ke variabel querylogin
  querylogin := 'SELECT * FROM tbl_user WHERE username = :nama AND password = :password';

  //clear properti SQL dan tambahkan querylogin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add(querylogin);

  //bandingkan variabel 'nama' dan 'password' dengan kolom `nama` dan `password` di database
  ZQuery1.ParamByName('nama').AsString := nama; //assign var 'nama' ke :nama di kueri
  ZQuery1.ParamByName('password').AsString := password; //cukup jelas
  ZQuery1.Open; //jalankan kueri dan cocokan dengan parameter di atas

  if (ZQuery1.RecordCount > 0) then //jika kueri di atas mengembalikan hasil
    begin
      sts := ZQuery1.FieldValues['status']; //ambil value dari kolom `status`
      if (sts = 1) then //memeriksa sts
        begin
          loginLevel := ZQuery1.FieldValues['level']; //ambil value dari kolom `level` sebagai string
          if (loginLevel = 'Karyawan') then //memeriksa loginLevel
            begin
              userid := ZQuery1.FieldValues['user_id']; //set userid berdasarkan sintaks di kanan
              //l1.Caption := userid; //assign userid sebagai value di Label4.Caption
              ShowMessage('Anda Login sebagai Karyawan');
              Form8.Show;
            end
          else if (loginLevel = 'Staff') then
            begin
              userid := ZQuery1.FieldValues['user_id'];
              //lblId.Caption := userid;
              ShowMessage('Anda Login sebagai Staff');
              Form12.Show;
            end;
        end
      else //jika tidak
        begin
          ShowMessage('Login Gagal'); //jalankan ini
        end;
    end;
//  frConnection.ZqLogin.Close;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
  Form11.Show;
end;

end.
