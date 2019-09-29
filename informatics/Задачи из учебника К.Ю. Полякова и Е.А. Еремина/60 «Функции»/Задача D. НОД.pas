Program Den;
var
  a, b:longint;

function NOD(a, b:longint):longint;

begin

  while (a * b) <> 0 do
    begin

      if a > b then
        a:= a mod b
      else
        b:= b mod a;

    end;

  if a = 0 then
    NOD:= b
  else
    NOD:= a;

end;

begin

  read(a,b);

  write(NOD(a,b));

end.