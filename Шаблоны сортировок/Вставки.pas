procedure vst(L, R:longint);
var
  i, t, j, nmin:longint;
begin

  for i:= L to R - 1 do
      begin

        nmin:= i;

        for j:= i + 1 to R do
          if a[j] < a[nmin] then
            nmin:= j;

        if i <> nmin then
          begin
            t:= a[i];
            a[i]:= a[nmin];
            a[nmin]:= t;
          end;
      end;
end;