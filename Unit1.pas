unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    memo1: TMemo;
    Bevel1: TBevel;
    Label5: TLabel;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  n,i,x:byte;
  m,a:real;
  e:double;

const
  h=6.62e-34;
  ev=1.6e+19;

implementation

{$R *.dfm}

procedure TForm1.Button3Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
    n:=strtoint(edit1.Text);
    m:=strtofloat(edit2.Text);
    a:=strtofloat(edit3.Text);
    for i:=1 to n do
    begin
        e:=(sqr(h)*sqr(i))/(8*m*sqr(a));
        e:=e*ev;
        memo1.lines.add('Lintasan= '+inttostr(i)+' maka E = '+floattostr(E)+' eV ');
        memo1.lines.add('');
    end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
memo1.lines.Clear;
edit1.SetFocus;
end;

end.
