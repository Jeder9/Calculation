unit Unit19;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm19 = class(TForm)
    Button2: TButton;
    Button5: TButton;
    Button4: TButton;
    Edit4: TEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    Button3: TButton;
    Button1: TButton;
    Edit1: TEdit;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form19: TForm19;
  M,A,x,L,y,Wm,c:real;
  float:real;
implementation
  Uses Unit1,Unit12,Unit13;
{$R *.dfm}

procedure TForm19.Button1Click(Sender: TObject);
begin
A:=StrToFloat(Form1.Edit2.Text);
   M:=A*55.125;
 x:=M/12.93;
 Form19.Edit1.Text:=FloatToStr(x);
end;

procedure TForm19.Button2Click(Sender: TObject);
begin
Form19.Close;
Form13.Show;
end;

procedure TForm19.Button3Click(Sender: TObject);
begin
 if x<=1000 then
     Form19.Edit2.Text:='Да'
   else
    Form19.Edit2.Text:='Нет';
end;

procedure TForm19.Button4Click(Sender: TObject);
begin
 L:=StrToFloat(Form1.Edit1.Text);
A:=StrToFloat(Form1.Edit4.Text);
if Form12.ComboBox1.ItemIndex = 0 then
 c:=0.8;
if Form12.ComboBox1.ItemIndex = 1 then
      c:=0.6;
if Form12.ComboBox1.ItemIndex= 2 then
      c:=0.2;
Wm:=15*c;
 M:=0.125*Wm*A/100*L/100*L/100;
y:= M*100/2.95;
Form19.Edit3.Text:=FloatToStr(y);
end;

procedure TForm19.Button5Click(Sender: TObject);
begin
 if y<=1000 then
     Form19.Edit4.Text:='Да'
   else
    Form19.Edit4.Text:='Нет';
end;

end.
