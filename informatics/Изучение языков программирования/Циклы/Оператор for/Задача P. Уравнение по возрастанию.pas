Program Den;
var
  m:array [1..100000] of longint;
  i, a, b, c, d, j:longint;
begin

  read(a, b, c, d);

  j:= 0;

  for i:= 0 to 1000 do
    if  a*( i * i * i ) + b * sqr(i) + c * i + d = 0 then
      begin
        j:= j + 1;
        m[j]:= i;
      end;

  if j > 0 then
    for i:= 1 to j do
      write(m[i],' ')

end.