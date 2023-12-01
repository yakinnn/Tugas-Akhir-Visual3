unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls;

type
  TForm12 = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Barang1: TMenuItem;
    DetailPembelian1: TMenuItem;
    DetailPenjualan1: TMenuItem;
    Karyawan1: TMenuItem;
    Kategori1: TMenuItem;
    Kustomer1: TMenuItem;
    Pembelian1: TMenuItem;
    Penjualan1: TMenuItem;
    Supplier1: TMenuItem;
    Image1: TImage;
    procedure Barang1Click(Sender: TObject);
    procedure DetailPembelian1Click(Sender: TObject);
    procedure DetailPenjualan1Click(Sender: TObject);
    procedure Karyawan1Click(Sender: TObject);
    procedure Kategori1Click(Sender: TObject);
    procedure Kustomer1Click(Sender: TObject);
    procedure Pembelian1Click(Sender: TObject);
    procedure Penjualan1Click(Sender: TObject);
    procedure Supplier1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit1;

{$R *.dfm}

procedure TForm12.Barang1Click(Sender: TObject);
begin
  Form1.Show;
end;

procedure TForm12.DetailPembelian1Click(Sender: TObject);
begin
  Form2.show;
end;

procedure TForm12.DetailPenjualan1Click(Sender: TObject);
begin
  Form3.show;
end;

procedure TForm12.Karyawan1Click(Sender: TObject);
begin
  Form4.show;
end;

procedure TForm12.Kategori1Click(Sender: TObject);
begin
  Form5.show;
end;

procedure TForm12.Kustomer1Click(Sender: TObject);
begin
  Form6.show;
end;

procedure TForm12.Pembelian1Click(Sender: TObject);
begin
  Form7.show;
end;

procedure TForm12.Penjualan1Click(Sender: TObject);
begin
  Form8.show;
end;

procedure TForm12.Supplier1Click(Sender: TObject);
begin
  Form9.show;
end;

end.
 