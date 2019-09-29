Program Den;
var
  a, b:array [1..100001] of int64;
  N, K, i:longint;
  
  
function binpos(X:int64):int64;
var
  L, R, c:int64;
begin

  L:= 1; R:= N + 1;
  
  while L < R - 1 do
    begin
    
      c:= (L + R) div 2;
      
      if a[c] > X then
        R:= c
      else
        L:= c;
    end;
    
  if (abs(a[L] - X) <= abs(a[R] - X)) then
    binpos:=a[L]
  else
  if abs(a[L] - X) > abs(a[R] - X) then
    binpos:=a[R];
    
end;

    
begin

  read(N,K);

  for i:= 1 to N do
    read(a[i]);
  if N = 1 then
    for i:= 1 to K do
      begin
        read(b[i]);
        writeln(a[N])
      end
  else
    for i:= 1 to K do
      begin
        read(b[i]);
    
        writeln(binpos(b[i]));
      end;
    
end.