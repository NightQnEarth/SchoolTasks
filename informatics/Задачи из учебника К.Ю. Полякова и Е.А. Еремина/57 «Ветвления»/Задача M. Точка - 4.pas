Program Den;
var
  x,y:real;
begin

  read(x,y);

  if ((y >= sqr(x) - 2) and (y <= x)) or ((y >= sqr(x) - 2) and (y >= x) and (y <= -x)) then
    write('YES')
  else
    write('NO');

end.