Program Den;
var
  a:array [1..100000] of longint;
  N, i:longint;
  
function binpos(first:longint):longint;
var
  L, R, c, k:longint;
begin

  L:= 1; R:= N + 1; k:= 0;
  
  while L < R - 1 do
    begin
    
      c:= (L + R) div 2;
      
      k:= k + 1;

      if a[c] < 1 then
        R:= c
      else
        L:= c;
    end;
    
  binpos:= k;
  
end;

  
begin

  read(N);
  
  for i:= 1 to N do
    a[i]:= i;
    
  write(binpos(N));
  
end.
  