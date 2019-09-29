Program Den;
var
  a, b:array [1..10000] of longint;
  K, M, N, i, j:longint;
begin

  read(N);
  
  for i:= 1 to N do
    read(a[i]);
    
  read(K,M);
  
  j:= 0;
  
  for i:= 1 to N do
    if (abs(a[i]) mod K = 0) and (abs(a[i]) mod M <> 0) and (abs(a[i]) <= 999) and (abs(a[i]) >= 100) then
      begin
        j:= j + 1;
        b[j]:= a[i];
      end;
      
  if j = 0 then
    write(0)
  else
    for i:= 1 to j do
      write(b[i],' ');
    
end.