Program Den;
var
  x,y:real;
begin

  read(x,y);

  if (y <= sin(x)) and (y <= 0.5) and (y >= 0) and (x >= 0) and (x <= pi) then
    write('YES')
  else
    write('NO');

end.