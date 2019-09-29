Program Den;
var
  x,y:real;
begin

  read(x,y);

  if (((sqr(x) + sqr(y)) <= 1) and (y >= x)) or (((sqr(x) + sqr(y)) <= 1) and (y <= x) and (x <= 0)) then
    write('YES')
  else
    write('NO');

end.