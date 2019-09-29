Program Den;
var
  a:array [1..10000] of longint;
  i, N, j, t:longint;
begin

  read(N);
  
  for i:= 1 to N do
    read(a[i]);
    
  i:= 1; j:= N;
    
  while i <= N div 2 do
    begin
      t:= a[i];
      a[i]:= a[j];
      a[j]:= t;
      i:= i + 1;
      j:= j - 1
    end;
    
  for i:= 1 to N do
    write(a[i],' ')
    
end.