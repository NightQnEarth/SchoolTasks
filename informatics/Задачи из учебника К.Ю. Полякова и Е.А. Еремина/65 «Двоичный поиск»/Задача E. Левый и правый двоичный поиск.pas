Program Den1;
var
  a, b:array [0..20000] of longint;
  N, M, i:longint;

procedure binpos(X:longint);
var
  L, R, c, min, max, g, min1:longint;
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
    begin
      min:= L;
      
      max:= 0;

      L:= L + 1;
    
      while (a[L] = X) and (L <= N) do
        begin
          max:= max + 1;
          L:= L + 1;
        end;

      max:= max + min;
        
      g:= 0; min1:= min - 1;
        
      while (min1 >= 0) and (a[min1] = X) do
        begin
          g:= g + 1;
          min1:= min1 - 1;
        end;
        
      min:= min - g;

      writeln(min,' ',max);
    end
  else
    writeln(0);
    
end;
        
begin

  read(N,M); a[0]:= -1;
  
  for i:= 1 to N do
    read(a[i]);
    
  for i:= 1 to M do
    read(b[i]);
    
  for i:= 1 to M do
    binpos(b[i]);

end.