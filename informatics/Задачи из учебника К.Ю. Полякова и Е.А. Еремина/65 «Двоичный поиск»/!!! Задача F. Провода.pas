Program Den;
var
  a, b:array [0..10000] of longint;
  N, K, i, maxn, sum, s, j: longint;

function binpos(maxn: longint): longint;
var
  L, R, c, f: longint;
begin

  L:= 1; R:= maxn + 1; c:= 1; f:= 0;

  while (L <= R - 1) and (f < 1) do
    begin

      c:= (L + R) div 2;

      s:= 0; j:= 0;

      while j <= N do
        begin
          j:= j + 1;
          s:= s + a[j] div c;
          a[j]:= b[j]
        end;

      if (s < K) then
        R:= c
      else
        L:= c;
        
      if L = R - 1 then
        f:= f + 1;
    end;

  s:= 0; j:= 0;

  while j <= N do
    begin
      j:= j + 1;
      s:= s + a[j] div c;
      a[j]:= b[j]
    end;

  if s >= K then
    binpos:= c
  else
    begin
      if c > 1 then
        begin
          j:= 0; s:= 0;
          while j <= N do
            begin
              j:= j + 1;
              s:= s + a[j] div (c - 1);
              a[j]:= b[j]
            end;
        
          if s >= K then
            binpos:= c - 1
          else
            binpos:= 0
        end
      else
        binpos:= 0
    end
        
end;
  
begin

  read(N,K);
  
  sum:= 0;
  
  for i:= 1 to N do
    begin
      read(a[i]);
      sum:= sum + a[i];
      b[i]:= a[i]
    end;

  maxn:= trunc(sum / K);

  write(binpos(maxn))
  
end.