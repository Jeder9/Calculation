unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm13 = class(TForm)
    Button7: TButton;
    Button6: TButton;
    Button5: TButton;
    Button4: TButton;
    Button3: TButton;
    Button2: TButton;
    Button1: TButton;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation
  uses Unit12,Unit14,Unit15,Unit16,Unit17,Unit18,Unit19;
{$R *.dfm}

procedure TForm13.Button1Click(Sender: TObject);
begin
Form13.Hide;
Form14.ShowModal;
end;

procedure TForm13.Button2Click(Sender: TObject);
begin
Form13.Hide;
Form15.ShowModal;
end;

procedure TForm13.Button3Click(Sender: TObject);
begin
Form13.Hide;
Form16.ShowModal;
end;

procedure TForm13.Button4Click(Sender: TObject);
begin
Form13.Hide;
Form17.ShowModal;
end;

procedure TForm13.Button5Click(Sender: TObject);
begin
Form13.Hide;
Form18.ShowModal;
end;

procedure TForm13.Button6Click(Sender: TObject);
begin
Form13.Hide;
Form19.ShowModal;
end;

procedure TForm13.Button7Click(Sender: TObject);
begin
Form13.Close;
Form12.Show;
end;

end.
