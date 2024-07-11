program FactorialCalculator;
uses crt;

function Factorial(n: integer): longint;
var
  i: integer;
  result: longint;
begin
  result := 1;
  for i := 1 to n do
    result := result * i;
  Factorial := result;
end;

var
  number: integer;
  fact: longint;

begin
  clrscr;
  writeln('Enter a number to calculate its factorial:');
  readln(number);

  if number < 0 then
    writeln('Factorial is not defined for negative numbers.')
  else
  begin
    fact := Factorial(number);
    writeln('The factorial of ', number, ' is ', fact);
  end;

  readln;
end.
