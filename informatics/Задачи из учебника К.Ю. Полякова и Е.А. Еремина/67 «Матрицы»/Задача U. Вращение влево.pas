Program Den;
var
  a, b:array [1..100, 1..100] of longint;
  i, j, N, h:longint;
begin

  read(N);
  
  for i:= 1 to N do
    for j:= 1 to N do
      read(a[i,j]);
      
  for i:= 1 to N do
    begin
      h:= 1;
      for j:= N downto 1 do
        begin
          b[h,i]:= a[i,j];
          h:= h + 1
        end
    end;
      
  for i:= 1 to N do
    begin
      for j:= 1 to N do
        write(b[i,j],' ');
        
      writeln
    end
    
end.