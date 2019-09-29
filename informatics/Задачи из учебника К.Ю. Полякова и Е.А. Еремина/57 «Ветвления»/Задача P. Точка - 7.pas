Program Den;
var
  x,y:real;
begin

  read(x,y);

  if ((y >= 2 * sqr(x)) and (y >= 1 - x) and (x <= 1)) or ((x > 0) and (x <= 1) and (y <= 2 * sqr(x)) and (y >= 1 - x)) then
    write('YES')
  else
    write('NO');

end.