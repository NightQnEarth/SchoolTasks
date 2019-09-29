Program Den;
var
  a:array [1..10000] of longint;
  N, i, j, R, t:longint;
begin

  readln(N);

  for i:= 1 to N do
    read(a[i]);

  readln;

  read(R);

  for j:= 1 to R do
    begin

      t:= a[N];

      for i:= N downto 2 do
        a[i]:= a[i-1];

      a[1]:= t;

    end;

  for i:= 1 to N do
    write(a[i],' ');

end.