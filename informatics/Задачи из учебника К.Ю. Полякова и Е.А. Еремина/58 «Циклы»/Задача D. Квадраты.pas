Program Den;
var
  a, b, i:longint;
begin

  read(a,b);
  
  for i:=a to b do
    writeln(i,'*',i,'=',sqr(i));

end.