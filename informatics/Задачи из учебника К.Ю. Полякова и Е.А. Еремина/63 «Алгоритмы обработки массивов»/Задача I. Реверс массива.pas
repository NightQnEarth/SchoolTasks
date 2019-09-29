Program Den;
var
  a:array [1..10000] of longint;
  i, N, t, g:longint;
begin

  read(N);
  
  for i:= 1 to N do
    read(a[i]);
    
  i:= 1;
  g:= N;
    
  if N mod 2 = 0 then
      while i + 1 <= N do
        begin
          t:= a[i];
          a[i]:= a[N];
          a[N]:= t;
          i:= i + 1;
          N:= N - 1;
        end
  else
    while i <> N do
        begin
          t:= a[i];
          a[i]:= a[N];
          a[N]:= t;
          i:= i + 1;
          N:= N - 1;
        end;
        
  for i:= 1 to g do
    write(a[i],' ');

end.
        