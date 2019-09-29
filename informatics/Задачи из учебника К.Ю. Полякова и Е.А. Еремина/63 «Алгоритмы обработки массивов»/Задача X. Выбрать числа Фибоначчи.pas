Program Den;
var
  a, b, c:array [1..10000] of longint;
  i, j, h, N:longint;
begin

  read(N);
  
  for i:= 1 to N do
    read(a[i]);
    
  b[1]:=1;
  b[2]:=2;

  for i:=3 to 39 do
    b[i]:= b[i-1] + b[i-2];
    
  for i:= 1 to N do
    for j:= 1 to 40 do
      if a[i] = b[j] then
        begin
          h:= h + 1;
          c[h]:= a[i];
        end;
        
  if h = 0 then
    write(0)
  else
    for i:= 1 to h do
      write(c[i],' ');

end.