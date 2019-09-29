Program Den;
var
  a:array [1..10000] of longint;
  N, i, t, j, h, f:longint;
begin

  read(N); f:= 0;
  
  for i:= 1 to N do
    read(a[i]);
    
  for i:= 1 to N - 1 do
    for j:= 1 to N - i do
      if a[j] > a[j+1] then
        begin
          t:= a[j];
          a[j]:= a[j+1];
          a[j+1]:= t;
          for h:= 1 to N do
            write(a[h],' ');
          writeln;
          f:= 1;
        end;
        
  if f = 0 then
    write(0);

end.
    
