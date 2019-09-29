Program Den;
var
  a:array [1..10000] of longint;
  i, j, N, g, k, t:longint;
begin

  read(N);
  
  k:= 0;
  
  for i:= 1 to N do
    read(a[i]);
    
  for i:= 1 to N - 1 do
    for j:= 1 to N - i do
      if a[j] > a[j+1] then
        begin
          t:= a[j];
          a[j]:= a[j+1];
          a[j+1]:= t;
        end;

  for i:= 1 to N - 1 do
    if a[i] = a[i+1] then
      k:= k + 1;

  g:= N - k;
      
  for i:= 1 to N do
    write(a[i],' ');
    
  writeln;
  
  write(g);

end.
      
      