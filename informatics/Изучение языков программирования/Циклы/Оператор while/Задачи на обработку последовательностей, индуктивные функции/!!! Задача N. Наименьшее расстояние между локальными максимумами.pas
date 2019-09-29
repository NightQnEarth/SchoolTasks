Program Den;
var
  one, two, a, k, s, min:longint;
begin

  read(a);

  one:= a;

  if one > 0 then
    read(a);

  two:= a;

  k:= 0; min:= 0;

  while a > 0 do
    begin
      read(a);

      if (one < two) and (two > a) and (a > 0) and (k = 0) then
        begin
          k:= 1;
          s:= 1
        end
      else
      if (one < two) and (two > a) and (a > 0) and (k = 1) then
        begin
          min:= s;
          s:= 1
        end
      else
      if (one < two) and (two > a) and (a > 0) then
        begin
          if s < min then
            min:= s;
          s:= 1
        end
      else
      if k > 0 then
        s:= s + 1;

      one:= two;

      two:= a

    end;

  write(min)

end.