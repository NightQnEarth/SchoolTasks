Program Den;
var
  x,y:real;
begin

  read(x,y);

  if ((x >= 0) and (y <= 1) and (y >= x - 1)) or (((sqr(x) + sqr(y)) < 1) and  (y <= x - 1) ) then
    write('YES')
  else
    write('NO');

end.