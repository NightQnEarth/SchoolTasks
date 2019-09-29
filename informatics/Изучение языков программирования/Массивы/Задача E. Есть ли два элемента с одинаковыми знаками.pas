Program Den;
var
  a:array [1..10000] of longint;
  i, N:longint;
  f:boolean;
begin

  read(N);
  
  f:= false;
  
  for i:= 1 to N do
    read(a[i]);
    
  for i:= 1 to N - 1 do
    if (a[i] <> 0) and (a[i+1] <> 0) and (a[i] * a[i+1] > 0) then
      f:= true;
      
  if f then
    write('YES')
  else
    write('NO')
    
end.

    



