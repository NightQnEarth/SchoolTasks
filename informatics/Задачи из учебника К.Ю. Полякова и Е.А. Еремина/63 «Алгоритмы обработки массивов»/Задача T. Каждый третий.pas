Program Den;
var
  a, b:array [1..10000] of longint;
  N, i, j:longint;
begin

  read(N);
  
  for i:= 1 to N do
    read(a[i]);

  i:= 1; j:= 0;
    
  while i <= N do
    begin
      j:= j + 1;
      b[j]:= a[i];
      i:= i + 3;
    end;
    
  for i:= 1 to j do
    write(b[i],' ');
    
end.
