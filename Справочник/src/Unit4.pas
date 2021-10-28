unit Unit4; //Заставка

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1, Unit5;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject); //Запустить
begin
  Form1.Show;
  Form4.Hide;
  //Form4.Hide;
end;

procedure TForm4.Button2Click(Sender: TObject);  //Советы
begin
  Form5.Show;
  Form4.Hide;
end;

end.
