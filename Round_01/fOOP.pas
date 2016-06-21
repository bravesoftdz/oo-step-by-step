unit fOOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  protected

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  FirstName: string;
  LastName: string;
  BirthDate: TDateTime;

begin

  FirstName := 'Ahmad';
  LastName := 'Hamza';
  BirthDate := EncodeDate(1980, 3, 15);

  Canvas.TextOut(10, 10, FirstName);
  Canvas.TextOut(10, 30, LastName);
  Canvas.TextOut(10, 50, DateToStr(BirthDate));

end;

end.
