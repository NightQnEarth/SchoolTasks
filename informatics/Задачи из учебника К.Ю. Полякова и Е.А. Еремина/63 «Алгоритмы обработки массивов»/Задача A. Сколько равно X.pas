Program Den;
var
  X, i, N, k:longint;
  m:array [1..10000] of longint;
begin

  read(N);
  
  k:= 0;
  
  for i:=1 to N do
    read(m[i]);
    
  read(X);
  
  for i:=1 to N do
    if m[i] = X then
      k:= k + 1;
      
  write(k);
  
end.
      
  