unit Unit15;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm15 = class(TForm)
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
  Form15: TForm15;
   Lof,L,b,br:real;
  s:string;
implementation
    uses Unit1,Unit12,Unit13;
{$R *.dfm}

procedure TForm15.Button1Click(Sender: TObject);
begin
  L:=StrToFloat(Form1.Edit1.Text);
  if Form12.ComboBox1.ItemIndex=0 then
    br:=100
    else
       br:=70;
  Lof:=0.725*L;
  b:=Lof/3.88;
  Form15.Edit1.Text:=FloatToStr(b);
end;

procedure TForm15.Button2Click(Sender: TObject);
begin
Form15.Close;
Form13.Show;
end;

procedure TForm15.Button3Click(Sender: TObject);
begin
 if b<br then
Form15.Edit2.Text:='Да'
else
 Form15.Edit2.Text:='Нет';
end;

end.
