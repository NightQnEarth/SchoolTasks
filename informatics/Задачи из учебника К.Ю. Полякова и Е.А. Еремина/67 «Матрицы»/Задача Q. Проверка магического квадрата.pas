Program Den;
var
  a:array [1..100, 1..100] of longint;
  i, j, N, sum, sum1:longint;
  f:boolean;
begin

  read(N);

  for i:= 1 to N do
    for j:= 1 to N do
      begin
        read(a[i,j]);

        if (a[i,j] > 0) and (a[i,j] <= sqr(N)) and (frac(a[i,j]) = 0) then
          f:= true
        else
          f:= false;

        if not f then
          break
      end;

  sum:= 0;

  if f then
    begin
      for i:= 1 to N do
        sum:= sum + a[i,i];

      for i:= 1 to N do
        sum1:= sum1 + a[i,N-i+1];

      if sum = sum1 then
        f:= true
      else
        f:= false
    end;

  if f then
    begin

      i:= 1;

      while (i <= N) and f do
        begin

          sum1:= 0; f:= false;

          for j:= 1 to N do
            sum1:= sum1 + a[i,j];

          if sum1 = sum then
            begin
              f:= true;
              i:= i + 1
            end
        end;

      j:= 1;

      while (j <= N) and f do
        begin

          sum1:= 0; f:= false;

          for i:= 1 to N do
            sum1:= sum1 + a[i,j];

          if sum1 = sum then
            begin
              f:= true;
              j:= j + 1
            end
        end;

      if f then
        write('YES')

    end
  else
    write('NO')

end.