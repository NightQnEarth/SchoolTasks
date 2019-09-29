Program Den;
var
  a, sum, k, x:int64;
begin

  read(a);

  sum:= a; k:= 0; x:= sqr(a);

  while a > 0 do
    begin
      read(a);

      sum:= sum + a;

      k:= k + 1;

      x:= x + sqr(a)
    end;

  if k - 1 > 0 then
    write(sqrt(  (x - sqr(sum)/k ) / (k - 1)  ))

end.