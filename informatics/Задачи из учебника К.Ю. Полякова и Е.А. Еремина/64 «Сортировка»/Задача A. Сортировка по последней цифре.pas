Program Den;
var
  a:array [1..10000] of longint;
  i, N, t, j:longint;
begin

  read(N);

  for i:= 1 to N do
    read(a[i]);

  for i:= 1 to N - 1 do
    for j:= 1 to N - i do
      if a[j] mod 10 > a[j+1] mod 10 then
        begin
          t:= a[j];
          a[j]:= a[j+1];
          a[j+1]:= t;
        end;

  for i:= 1 to N do
    write(a[i],' ');

end.