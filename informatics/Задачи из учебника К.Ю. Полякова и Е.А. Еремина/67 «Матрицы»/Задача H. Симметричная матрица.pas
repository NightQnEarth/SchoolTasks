Program Den;
var
  a:array [1..100, 1..100] of longint;
  i, j, N:longint;
  f:boolean;
begin

  read(N);
  
  for i:= 1 to N do
    for j:= 1 to N do
      read(a[i,j]);
      
  f:= true;
      
  for i:= 1 to N do
    for j:= i + 1 to N do
      if a[i,j] <> a[j,i] then
        begin
          f:= false;
          break
        end;
        
  if f then
    write('YES')
  else
    write('NO')
    
end.