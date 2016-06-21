unit fOOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,
  uOO;

type

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  protected
    procedure ShowPerson(P: TPerson);
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Person: TPerson;
begin

  Person.FirstName := 'Ahmad';
  Person.LastName := 'Hamza';
  Person.BirthDate := EncodeDate(1980, 3, 15);


  ShowPerson(Person);

end;


procedure TForm1.ShowPerson(P: TPerson);
begin
  Canvas.TextOut(10, 10, P.FirstName);
  Canvas.TextOut(10, 30, P.LastName);
  Canvas.TextOut(10, 50, DateToStr(P.BirthDate));

end;


end.
