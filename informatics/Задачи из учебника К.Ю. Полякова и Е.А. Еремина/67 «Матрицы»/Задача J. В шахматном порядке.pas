Program Den;
var
  a:array [1..100, 1..100] of byte;
  N, M, i, j:longint;
begin

  read(N, M);
  
  a[1,1]:= 0;
  
  for i:= 2 to N do
    if a[i-1,1] = 0 then
      a[i,1]:= 1
    else
      a[i,1]:= 0;
      
  for i:= 1 to N do
    for j:= 2 to M do
      if a[i,j-1] = 0 then
        a[i,j]:= 1
      else
        a[i,j]:= 0;
        
  for i:= 1 to N do
    begin
      for j:= 1 to M do
        write(a[i,j],' ');
        
      writeln
    end
    
end.
