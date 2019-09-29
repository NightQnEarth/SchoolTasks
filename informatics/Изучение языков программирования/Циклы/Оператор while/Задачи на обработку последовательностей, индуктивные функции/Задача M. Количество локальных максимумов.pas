Program Den;
var
  one, two, a, k:longint;
begin

  read(a);

  one:= a;

  if one > 0 then
    read(a);

  two:= a;

  k:= 0;

  while a > 0 do
    begin
      read(a);

      if (one < two) and (two > a) and (a > 0) then
        k:= k + 1;

      one:= two;

      two:= a

    end;

  write(k)

end.