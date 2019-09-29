Program Den;
var
  a, b, c:array[1..100000] of longint;
  i, N, j, g, nmin, t:longint;

  
procedure Quicksort (nStart, nEnd:longint);
var
  R, L, X, t:longint;
begin

  if nStart < nEnd then
    begin

      L:= nStart; R:= nEnd;

      X:= b[random (R - L + 1) + L];

      while L <= R do
        begin

          while b[L] < X do
            L:= L + 1;

          while b[R] > X do
            R:= R - 1;

          if L <= R then
            begin
              t:= b[L];
              b[L]:= b[R];
              b[R]:= t;
              L:= L + 1;
              R:= R - 1;
            end;
        end;

      Quicksort(nStart, R);

      Quicksort(L, nEnd);

    end;
end;
  
begin

  read(N);

  j:= 0;

  for i:= 1 to N do
    begin
      read(a[i]);
      if i mod 2 <> 0 then
        begin
          j:= j + 1;
          b[j]:= a[i];
          c[j]:= i;
        end;
    end;

  g:= j;

  Quicksort(1, g);

  for i:= 1 to g do
    a[c[i]]:= b[i];

  for i:= 1 to N do
    write(a[i],' ');

end.