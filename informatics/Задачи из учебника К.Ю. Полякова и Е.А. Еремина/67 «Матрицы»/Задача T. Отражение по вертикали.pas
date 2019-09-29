Program Den;
var
  a:array [1..100, 1..100] of longint;
  i, j, N, M, t, g:longint;
begin

  read(N, M);

  for i:= 1 to N do
    for j:= 1 to M do
      read(a[i,j]);

  g:= N;

  for j:= 1 to M do
    begin
      i:= 1; N:= g;

      while i < N do
        begin
          t:= a[i,j];

          a[i,j]:= a[N,j];

          a[N,j]:= t;

          i:= i + 1;

          N:= N - 1
        end
    end;

  N:= g;

  for i:= 1 to N do
    begin
      for j:= 1 to M do
        write(a[i,j],' ');

      writeln
    end
end.