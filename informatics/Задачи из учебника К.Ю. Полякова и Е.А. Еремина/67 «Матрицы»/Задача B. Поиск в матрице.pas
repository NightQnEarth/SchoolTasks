Program Den;
var
  a:array [1..100, 1..100] of longint;
  i, j, N, M, K, t:longint;
begin

  read(N,M);
  
  for i:= 1 to N do
    for j:= 1 to M do
      read(a[i,j]);
      
  read(K);
  
  t:= 0;
  
  for i:= 1 to N do
    for j:= 1 to M do
      if a[i,j] = K then
        t:= t + 1;
        
  write(t)
  
end.