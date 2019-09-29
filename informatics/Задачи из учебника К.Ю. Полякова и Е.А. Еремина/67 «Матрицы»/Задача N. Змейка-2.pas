Program Den;
var
  a:array [1..100, 1..100] of longint;
  i, j, N, M, g, k:longint;
begin

  read(N, M);

  for i:= 1 to N do
    a[i,1]:= i;

  for j:= 2 to M do
    if j mod 2 = 0 then
      for i:= 1 to N do
        a[i,j]:= j * N - i + 1
    else
      for i:= 1 to N do
        a[i,j]:= i + a[1,j-1];

  for i:= 1 to N do
    begin
      for j:= 1 to M do
        write(a[i,j]:6);

        writeln
    end

end.