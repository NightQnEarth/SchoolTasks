procedure Quicksort (var nStart, nEnd:longint);
var
  R, L, X, t:longint;
begin

  if nStart >= nEnd then
    exit;

  L:= nStart; R:= nEnd;

  X:= a[random(R - L + 1) + L];

  while L <= R do
    begin

      while a[L] < X do
        L:= L + 1;

      while a[R] > X do
        R:= R - 1;

      if L <= R then
        begin
          t:= a[L];
          a[L]:= a[R];
          a[R]:= t;
          L:= L + 1;  R:= R - 1;
        end;
    end;

      Quicksort(nStart, R);

      Quicksort(L, nEnd);
      
end;