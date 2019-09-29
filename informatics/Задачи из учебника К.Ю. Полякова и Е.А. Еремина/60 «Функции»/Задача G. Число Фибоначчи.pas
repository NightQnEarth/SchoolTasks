Program Den;
var
  N:longint;

function  Fib(N:longint):longint;
var
  i, a, b, t:longint;
begin

  a:= 1;

  b:= 1;

  if (N = 1) or (N = 2) then
    Fib:= 1
  else
    begin

      N:= N - 2;

      while N <> 0 do
        begin
          t:= a;
          a:= b;
          b:= a + t;
          N:= N - 1;
        end;

      Fib:= b;
    end;

end;

begin

  read(N);

  write(Fib(N));

end.