Program Den;
var
  a, d, t, max:longint;
  f:boolean;
begin

  read(a);

  d:= 1;

  max:= 1;

  f:= true;

  while a > 0 do
    begin
      t:= a;

      read(a);

      if a > t then
        begin
          if f then
            d:= d + 1
          else
            d:= 2;

          if d > max then
            max:= d;
          f:= true
        end
      else
      if (a < t) and (a > 0) then
        begin
          if f then
            d:= 2
          else
            d:= d + 1;

          if d > max then
            max:= d;
          f:= false
        end
      else
        d:= 1
    end;

  write(max)

end.