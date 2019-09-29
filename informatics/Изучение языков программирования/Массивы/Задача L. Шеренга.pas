Program Den;
var
  a:array [1..10000] of longint;
  i, N, P:longint;
begin

  read(N);
  
  for i:= 1 to N do
    read(a[i]);
    
  read(P);
  
  i:= 1;
  
  while P <= a[i] do
    i:= i + 1;
    
  write(i)
  
end.
  
  