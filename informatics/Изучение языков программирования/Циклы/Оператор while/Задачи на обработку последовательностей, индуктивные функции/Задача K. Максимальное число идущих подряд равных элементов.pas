Program Den;
var
  a, k, t, max:longint;
begin

  read(a);

  k:= 1;

  max:= 1;

  while a > 0 do
    begin
      t:= a;

      read(a);

      if t = a then
        begin
          k:= k + 1;
          if k > max then
            max:= k
        end
      else
      k:= 1;
    end;

  write(max)

end.