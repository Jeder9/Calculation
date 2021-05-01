unit Unit12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm12 = class(TForm)
    ComboBox1: TComboBox;
    Button2: TButton;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation
  Uses Unit1,Unit13;
{$R *.dfm}

procedure TForm12.Button1Click(Sender: TObject);
begin
Form12.Close;
Form1.Show;
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
Form12.Hide;
Form13.ShowModal;
end;

end.
