Program Den;
var
  a:array [1..100, 1..100] of longint;
  i, j, N, M, min, max, imax, jmax, imin, jmin:longint;
begin

  read(N, M);
  
  for i:= 1 to N do
    for j:= 1 to M do
      read(a[i,j]);
      
  min:= a[1,1]; imin:= 1; jmin:= 1;
  max:= min; imax:= 1; jmax:= 1;
  
  for i:= 1 to N do
    for j:= 1 to M do
      if a[i,j] > max then
        begin
          max:= a[i,j];
          imax:= i;
          jmax:= j
        end
      else
      if a[i,j] < min then
        begin
          min:= a[i,j];
          imin:= i;
          jmin:= j
        end;

  writeln(imin,' ',jmin,' ',min);
  write(imax,' ',jmax,' ',max)
  
end.