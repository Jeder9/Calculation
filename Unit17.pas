unit Unit17;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm17 = class(TForm)
    Button2: TButton;
    Button3: TButton;
    Edit2: TEdit;
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
  Form17: TForm17;
  fd,fr,Wm,A,L,c:real;
  s:string;
  Float:real;
implementation
  Uses Unit1,Unit12,Unit13;
{$R *.dfm}

procedure TForm17.Button1Click(Sender: TObject);
begin
L:=StrToFloat(Form1.Edit1.Text);
A:=StrToFloat(Form1.Edit3.Text);
 fd:=L/300;
    if Form12.ComboBox1.ItemIndex = 0 then
 c:=0.8;
if Form12.ComboBox1.ItemIndex = 1 then
      c:=0.6;
if Form12.ComboBox1.ItemIndex= 2 then
      c:=0.2;
Wm:=15*c;
fr:=0.01302*((Wm*A*L*L*L*L)/(7.1*100000*11.81*10000));
     Form17.Edit1.Text:=FloatToStr(fr);
end;

procedure TForm17.Button2Click(Sender: TObject);
begin
Form17.Close;
Form13.Show;
end;

procedure TForm17.Button3Click(Sender: TObject);
begin
 if fr<fd then
   Form17.Edit2.Text:='��'
   else
    Form17.Edit2.Text:='���';
end;

end.
