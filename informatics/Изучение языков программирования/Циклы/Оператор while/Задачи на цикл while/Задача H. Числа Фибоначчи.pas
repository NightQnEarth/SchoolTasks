Program Den;
var
  n, f1, f2, f, i:longint;
begin

  read(n);

  if n = 0 then
    write(0)
  else
  if (n = 1) or (n = 2) then
    write(1)
  else
    begin
      f1:= 1;

      f2:= 1;

      for i:= 3 to n do
        begin
          f:= f1 + f2;

          f1:= f2;

          f2:= f
        end;

      write(f)
    end;
end.