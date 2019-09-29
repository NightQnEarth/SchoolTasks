Program Den;
var
  N, i, sum, k, k1:longint;
begin

  read(N);

  sum:= 0;

  k:= 1; i:= 1; k1:= 0;

  while k1 < N do
    begin
      while (k <= i) and (k1 < N) do
        begin
          write(i,' ');
          k:= k + 1;
          k1:= k1 + 1
        end;

      k:= 1;

      i:= i + 1
    end

end.
