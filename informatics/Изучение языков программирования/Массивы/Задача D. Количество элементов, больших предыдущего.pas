Program Den;
var
  a:array [1..10000] of longint;
  i, N, k:longint;
begin

  read(N);
  
  k:= 0;
  
  for i:= 1 to N do
    read(a[i]);
    
  for i:= 2 to N do
    if a[i] > a[i-1] then
      k:= k + 1;
      
  write(k)
  
end.