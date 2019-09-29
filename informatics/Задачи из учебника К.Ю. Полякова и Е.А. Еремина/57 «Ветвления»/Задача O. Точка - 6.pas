Program Den;
var
  x,y:real;
begin

  read(x,y);

  if (((sqr(x) + sqr(y)) <= 1) and (y >= x) and (y <= -x)) or ((sqr(x) + sqr(y)) >= 1) then
    write('NO')
  else
    write('YES');

end.