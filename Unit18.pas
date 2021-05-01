unit Unit18;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm18 = class(TForm)
    Button2: TButton;
    Edit2: TEdit;
    Button3: TButton;
    Button1: TButton;
    Edit1: TEdit;
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
  Form18: TForm18;
  fd,fr,A,L:real;
  float:real;
implementation
  uses Unit1,Unit13;
{$R *.dfm}

procedure TForm18.Button1Click(Sender: TObject);
begin
L:=StrToFloat(Form1.Edit3.Text);
A:=StrToFloat(Form1.Edit2.Text);
  fd:=L/300;
     fr:=110.25*A/(48*7.1*100000*68.19)*(3*L*L-4*A*A);
     Form18.Edit1.Text:=FloatToStr(fr);
end;

procedure TForm18.Button2Click(Sender: TObject);
begin
Form18.Close;
Form13.Show;
end;

procedure TForm18.Button3Click(Sender: TObject);
begin
 if fr<fd then
   Form18.Edit2.Text:='Да'
   else
    Form18.Edit2.Text:='Нет';
end;

end.
