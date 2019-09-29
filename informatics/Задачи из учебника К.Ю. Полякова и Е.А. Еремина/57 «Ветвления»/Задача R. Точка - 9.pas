Program Den;
var
  x,y:real;
begin

  read(x,y);

  if ((sqr(x) + sqr(y)) <= 1) or (((sqr(x) + sqr(y)) >= 1) and (y <= 1) and (x <= 1) and (x >= 0) and (y >= 0)) then
    write('YES')
  else
    write('NO');

end.