unit Unit16;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm16 = class(TForm)
    Button2: TButton;
    Edit2: TEdit;
    Button3: TButton;
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;
   M,A,L,Wn,x,Wt,c:real;
   Float:real;
implementation
  Uses Unit1,Unit12,Unit13;
{$R *.dfm}

procedure TForm16.Button1Click(Sender: TObject);
begin
 L:=StrToFloat(Form1.Edit1.Text);
 A:=StrToFloat(Form1.Edit4.Text);
 if Form12.ComboBox1.ItemIndex = 0 then
 c:=0.8;
if Form12.ComboBox1.ItemIndex = 1 then
      c:=0.6;
if Form12.ComboBox1.ItemIndex= 2 then
      c:=0.2;
 Wt:=15*c;
  M:=0.125*Wt*1.4*(A/100)*(L/100)*(L/100);
 Wn:=M*100/1000;
 x:=M*100/Wn;
 Form16.Edit1.text:=FloatToStr(x);
end;

procedure TForm16.Button2Click(Sender: TObject);
begin
Form16.Close;
Form13.Show;
end;

procedure TForm16.Button3Click(Sender: TObject);
begin
 if x<=1000 then
Form16.Edit2.Text:='Да'
else
Form16.Edit2.Text:='Нет';
end;

end.
