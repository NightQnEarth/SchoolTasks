Program Den;
var
  a, max, k:longint;
begin

  max:= -1;

  k:= 1;

  a:= 1;

  while a > 0 do
    begin
      read(a);

      if a > max then
        begin
          max:= a;
          k:= 1
        end
      else
      if a = max then
        k:= k + 1
    end;

  write(k)

end.