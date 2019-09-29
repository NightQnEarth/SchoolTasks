Program Den;
var
  a:array [0..1000000] of longint;
  N, K, i:longint;


function DL(v:longint):longint;
var
  j1, j2, m:longint;
  f:boolean;
begin

  m:= K; j2:= 1;

  while (m <> 0) and (j2 <= N) do
    begin
      j1:= j2;
      f:= true;
      while (j2 <= N) and f do
        begin
          j2:= j2 + 1;
          if (j2 <= N) and (a[j2] - a[j1] >= v) then
            begin
              m:= m - 1;
              f:= false
            end
        end
    end;
    
  if m < 2 then
    DL:= 1
  else
    DL:= 0
    
end;

function binpos(N:longint):longint;
var
  L, R, s:longint;
begin

  L:= 1; R:= a[N] + 1;
  
  while L < R - 1 do
    begin
      s:= (L + R) div 2;
      
      if DL(s) = 0 then
        R:= s
      else
        L:= s;
    end;
    
  binpos:= L;
  
end;

begin

  read(N, K);

  for i:= 1 to N do
    read(a[i]);
    
  write(binpos(N))

end.