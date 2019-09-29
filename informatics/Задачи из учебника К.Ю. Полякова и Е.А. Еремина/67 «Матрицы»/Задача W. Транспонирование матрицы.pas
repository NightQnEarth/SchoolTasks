Program Den;
var
  a, b:array [1..100, 1..100] of longint;
  i, j, N, M, h:longint;
begin

  read(N, M);
  
  for i:= 1 to N do
    for j:= 1 to M do
      read(a[i,j]);
      
  h:= 0;
      
  for i:= 1 to N do
    begin
      h:= h + 1;
      for j:= 1 to M do
        b[j,h]:= a[i,j]
    end;
    
  for i:= 1 to M do
    begin
      for j:= 1 to N do
        write(b[i,j],' ');
        
      writeln
    end
end.