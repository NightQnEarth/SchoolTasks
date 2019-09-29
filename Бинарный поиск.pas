function binpos(X:longint):boolean;
var L, R, c:longint;
begin

  L:= 1; R:= N + 1;
  
  while L < R - 1 do
    begin
      c:= (L + R) div 2;
      
      if X < a[c] then
        R:= c
      else
        L:= c;
        
    end;
    
  if a[L] = X then
    binpos:= true
  else
    binpos:= false

end;