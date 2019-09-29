Program Den;
var
  x,y:real;
begin
  read(x,y);

  if y<=1 then
    write (1)
  else
    write(0);

  if y<=-x then
    write (1)
  else
    write(0);

  if (sqr(y)+sqr(x)) <= 1 then
    write(1)
  else
    write(0);

  if (sqr(x-1)+sqr(y)) <= 1 then
    write(1)
  else
    write(0);

end.