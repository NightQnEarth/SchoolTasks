Program Den;
var
  a, b:array[1..100001] of longint;
  N, K, i:longint;
  
  
function binpos(X:longint):string;
var L, R, c:longint;
begin

  L:= 1; R:= N + 1;
  
  while L <> R - 1 do
    begin
      c:= (L + R) div 2;
      
      if X < a[c] then
        R:= c
      else
        L:= c;
        
    end;
    
  if a[L] = X then
    binpos:= 'YES'
  else
    binpos:= 'NO';

end;

begin

  read(N,K);
  
  for i:= 1 to N do
    read(a[i]);
    
  for i:= 1 to K do
    begin
      read(b[i]);
      writeln(binpos(b[i]));
    end;
    
end.
    