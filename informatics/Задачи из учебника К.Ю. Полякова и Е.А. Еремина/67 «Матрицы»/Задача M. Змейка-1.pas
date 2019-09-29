Program Den;
var
  a:array [1..100, 1..100] of longint;
  i, j, N, M:longint;
begin

  read(N, M);
    
  for j:= 1 to M do
    a[1,j]:= j;
  
  for i:= 2 to N do
    if i mod 2 = 0 then
      for j:= 1 to M do
        a[i,j]:= i * M - j + 1
    else
      for j:= 1 to M do
        a[i,j]:= j + a[i-1,1];
        
  for i:= 1 to N do
    begin
      for j:= 1 to M do
        write(a[i,j]:6);
      
        writeln
    end
    
end.