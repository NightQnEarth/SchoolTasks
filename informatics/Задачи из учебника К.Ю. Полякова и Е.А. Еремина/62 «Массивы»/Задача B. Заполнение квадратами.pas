Program Den;
var
  a:array[1..10000] of longint; i, N:longint;
begin

  read(N);
  
  for i:=1 to N do
    a[i]:=sqr(i);
    
  for i:=1 to N do
    write(a[i],' ');
    
end.
    