unit uOO;

interface
uses
  SysUtils, DateUtils;

type

  TPerson = class(TObject)
  private
    FFirstName: string;
    FLastName: string;
    FBirthDate: TDateTime;
    procedure SetBirthDate(const Value: TDateTime);
    procedure SetFirstName(const Value: string);
    procedure SetLastName(const Value: string);
    function GetAge: integer;
  public
    property FirstName: string read FFirstName write SetFirstName;
    property LastName: string read FLastName write SetLastName;
    property BirthDate: TDateTime read FBirthDate write SetBirthDate;

    property Age: integer read GetAge;
    function GetFullName: string;
  end;

implementation

{ TPerson }

function TPerson.GetFullName: string;
begin
  result := FirstName + ' ' + LastName;
end;


procedure TPerson.SetFirstName(const Value: string);
begin
  FFirstName := Value;
end;

procedure TPerson.SetLastName(const Value: string);
begin
  FLastName := Value;
end;

procedure TPerson.SetBirthDate(const Value: TDateTime);
begin
  FBirthDate := Value;
end;

function TPerson.GetAge: integer;
begin
  result := Round(YearSpan(Now, BirthDate));
end;

end.
