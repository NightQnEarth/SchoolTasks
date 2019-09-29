Program Den;
var
  a, b, c, d, e, i, k:longint;
begin

  read(a, b, c, d, e);

  k:= 0;

  for i:= 0 to 1000 do
    if (i <> e) and ( (a * (i*i*i) + b * sqr(i) + c * i + d) / (i - e) = 0 ) then
      k:= k + 1;

  write(k)

end.