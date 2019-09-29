Program Den;
var
  a:array [1..100, 1..100] of longint;
  i, j, N, M:longint;
begin

  read(N, M);
  
  for i:= 1 to N do
    for j:= 1 to M do
      a[i,j]:= abs(j - i);
      
  for i:= 1 to N do
    begin
      for j:= 1 to M do
        write(a[i,j],' ');
        
      writeln
    end
    
end.