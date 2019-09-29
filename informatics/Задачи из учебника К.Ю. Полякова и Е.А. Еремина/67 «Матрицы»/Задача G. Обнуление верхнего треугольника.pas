Program Den;
var
  a:array [1..100, 1..100] of longint;
  i, j, N:longint;
begin

  read(N);
  
  for i:= 1 to N do
    for j:= 1 to N do
      read(a[i,j]);
      
  for i:= 1 to N do
    for j:= i + 1 to N do
      a[i,j]:= 0;
      
  for i:= 1 to N do
    begin
      for j:= 1 to N do
        write(a[i,j],' ');
        
      writeln
    end
    
end.