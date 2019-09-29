Program Den;
var
  a, b:array [1..10000] of longint;
  i, j, N, K, x, m, t, f:longint;
begin

  read(N);

  for i:= 1 to N do
    read(a[i]);

  read(K);

  for i:= 1 to N - 1 do
    for j:= 1 to N - i do
      if a[j] > a[j+1] then
        begin
          t:= a[j+1];
          a[j+1]:= a[j];
          a[j]:= t;
        end;

  i:= 1; f:= 0;

  while i <= N do
    begin
      m:= 0; x:= a[i];

      while (i <= N) and (a[i] = x) do
        begin
          m:= m + 1;
          i:= i + 1;
        end;

      if m = k then
        begin
          write(x,' ');
          f:= 1;
        end;

    end;

  if f = 0 then
    write(0);

end.