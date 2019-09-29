Program Den;
var
  a, max1, max2:longint;
begin

  read(a);

  max1:= a;

  while a > 0 do
    begin
      read(a);

      if a > max1 then
        begin
          max2:= max1;
          max1:= a
        end
      else
      if a > max2 then
        max2:= a
    end;

  write(max2)

end.