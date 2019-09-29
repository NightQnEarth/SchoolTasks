Program Den;
var
  a, t, k:longint;
begin

  k:= 0;

  read(a);

  t:= a;

  while a > 0 do
    begin
      read(a);
      if a > t then
        k:= k + 1;

      t:= a
    end;

  write(k)

end.