Program Den;
var
  a, b:array [1..10000] of longint;
  N, i, j, k, g:longint;
begin

  read(N);
  
  for i:= 1 to N do
    read(a[i]);
    
  for i:= 1 to N - 1 do
    for j:= i + 1 to N do
      if a[i] = a[j] then
        a[j]:= 0;
        
  j:= 1; k:= 1;

  for i:= 1 to N do
    if a[i] <> 0 then
      begin
        b[j]:= a[i];
        j:= j + 1;
      end
    else
      k:= k + 1;

  g:= j - 1;

  for j:= g + 1 to g + k - 1 do
    b[j]:= 0;

  for j:= 1 to g + k - 1 do
    write(b[j],' ');

end.