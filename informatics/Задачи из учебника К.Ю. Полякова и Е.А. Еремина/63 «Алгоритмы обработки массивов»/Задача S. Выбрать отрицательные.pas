Program Den;
var
  a, b:array [1..10000] of longint;
  i, j, N:longint;
begin

  read(N);
  
  j:= 0;
  
  for i:= 1 to N do
    begin
      read(a[i]);
      if a[i] < 0 then
        begin
          j:= j + 1;
          b[j]:= a[i];
        end;
    end;
    
  if j = 0 then
    write(0)
  else
    begin
      i:= j;
  
      for j:= 1 to i do
        write(b[j],' ');
    end;
    
end.
