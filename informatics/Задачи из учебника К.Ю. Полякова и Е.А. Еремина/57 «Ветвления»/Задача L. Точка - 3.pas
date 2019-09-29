Program Den;
var
  x,y:real;
begin

  read(x,y);

  if ((y <= 2 - sqr(x)) and (y >= x)) or ((y <= 2 - sqr(x)) and (y <= x) and (y >= 0)) then
    write('YES')
  else
    write('NO');

end.