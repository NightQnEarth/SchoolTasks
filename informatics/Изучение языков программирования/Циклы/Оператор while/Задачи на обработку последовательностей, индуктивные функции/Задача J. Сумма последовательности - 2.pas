Program Den;
var
  a, t, sum:longint;
begin

  read(a);

  sum:= 0;

  t:= 1;

  while (a > 0) or (t > 0) do
    begin
      t:= a;

      sum:= sum + a;

      read(a)
    end;

  write(sum)

end.