Program Den;
var
  a:array [1..10000] of longint;
  i, N, max:longint;
begin

  read(N);
  
  for i:= 1 to N do
    read(a[i]);
    
  max:= a[1];
    
  for i:= 2 to N do
    if a[i] > max then
      max:= a[i];
      
  write(max)
  
end.