program OOP4;

uses
  Forms,
  uOO in 'uOO.pas',
  fOOP in 'fOOP.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
