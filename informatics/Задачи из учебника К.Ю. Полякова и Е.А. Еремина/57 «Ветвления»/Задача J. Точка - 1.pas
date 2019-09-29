Program Den;
var
  x,y:real;
begin

  read(x,y);

  if ((sqr(x) + sqr(y)) >= 4) and (y <= x) and (x <= 2) and (y >= 0) then
    write('YES')
  else
    write ('NO');

end.