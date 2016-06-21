unit uOO;

interface
uses
  SysUtils;

type

  TPerson = class(TObject)
    FirstName: string;
    LastName: string;
    BirthDate: TDateTime;
    function GetFullName: string;
  end;

implementation

{ TPerson }

function TPerson.GetFullName: string;
begin
  result := FirstName + ' ' + LastName;
end;


end.
 