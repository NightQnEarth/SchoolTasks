Program Den;
var
  matrix:array [1..100, 1..100] of longint;
  N, M, i, j, sum:longint;
begin

  read(N, M);
  
  sum:= 0;
  
  for i:= 1 to N do
    for j:= 1 to M do
      begin
        read(matrix[i, j]);
        sum:= sum + matrix[i, j]
      end;
      
  write(sum)
  
end.