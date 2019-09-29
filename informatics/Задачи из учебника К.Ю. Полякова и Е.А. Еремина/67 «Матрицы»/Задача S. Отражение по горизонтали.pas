Program Den;
var
  a:array [1..100, 1..100] of longint;
  i, j, N, M, t, g:longint;
begin

  read(N, M);
  
  for i:= 1 to N do
    for j:= 1 to M do
      read(a[i,j]);
      
  g:= M;
      
  for i:= 1 to N do
    begin
      j:= 1; M:= g;

      while j < M do
        begin
          t:= a[i,j];
      
          a[i,j]:= a[i,M];
        
          a[i,M]:= t;
          
          j:= j + 1;
          
          M:= M - 1
        end
    end;
    
  M:= g;
      
  for i:= 1 to N do
    begin
      for j:= 1 to M do
        write(a[i,j],' ');
      
      writeln
    end
end.