Program Den;
var
  a:array [1..100, 1..100] of longint;
  i, j, N, M, min, sum, imin:longint;
begin

  read(N, M);
  
  for i:= 1 to N do
    for j:= 1 to M do
      read(a[i,j]);

  min:= 0;
  
  imin:= 1;
      
  for j:= 1 to M do
    min:= min + a[1,j];
    
  for i:= 2 to N do
    begin
      sum:= 0;
      
      for j:= 1 to M do
        sum:= sum + a[i,j];
        
      if sum < min then
        begin
          min:= sum;
          imin:= i
        end
    end;
    
  for j:= 1 to M do
    write(a[imin,j],' ')
  
end.