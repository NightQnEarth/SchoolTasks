Program Den;
var
  a, b, i, s:longint;
begin

  read(a,b);
  
  s:=0;
  
  for i:= a to b do
    s:=s + sqr(i);

  write(s);
  
end.