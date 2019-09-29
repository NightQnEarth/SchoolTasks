Program Den;
var
  a:array [1..10000] of longint;
  N, i, j, t, k:longint;
begin

  read(N);
  
  for i:= 1 to N do
    read(a[i]);
    
  for i:= 1 to N - 1 do
    for j:= i + 1 to N do
      if a[i] > a[j] then
        begin
          t:= a[i];
          a[i]:= a[j];
          a[j]:= t;
        end;
        
  for i:= 1 to 3 do
    write(a[i],' ');
    
end.
  
