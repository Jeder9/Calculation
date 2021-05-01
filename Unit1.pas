unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  L: integer;
  A: integer;

implementation
 uses Unit12;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Form1.Hide;
Form12.ShowModal;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
 L:=StrToInt(Form1.Edit1.Text);
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
A:=StrToInt(Form1.Edit2.Text);
end;

end.
