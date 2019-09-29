Program Den;
var
  a:array [1..100, 1..100] of longint;
  i, j, N, M, sum:longint;
  sr:real;
begin

  read(N, M);
  
  sum:= 0;
  
  for i:= 1 to N do
    for j:= 1 to M do
      begin
        read(a[i,j]);
        sum:= sum + a[i,j]
      end;
      
  sr:= sum / (N * M);
  
  writeln(sr:0:4);
  
  for i:= 1 to N do
    begin
      for j:= 1 to M do
        begin
          if a[i,j] < sr then
            a[i,j]:= 0
          else
            a[i,j]:= 255;
            
          write(a[i,j]:6,' ')
        end;
        
      writeln
    end
end.