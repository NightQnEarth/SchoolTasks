Program Den;
var
  a, b:array [1..10000] of longint;
  i, j, N, R, t: longint;
begin

  readln(N);

  for i:= 1 to N do
    read(a[i]);

  readln;

  read(R);

  for i:= 1 to R do
    b[i]:= a[i];

  for i:= 1 to N - R do
    a[i]:= a[i+R];

  j:= 1;

  for i:= N - R + 1 to N do
    begin
      a[i]:= b[j];
      j:= j + 1;
    end;

  for i:= 1 to N do
    write(a[i],' ');

end.