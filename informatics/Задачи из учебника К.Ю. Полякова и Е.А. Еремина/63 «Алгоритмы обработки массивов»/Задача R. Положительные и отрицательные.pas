Program Den;
var
  a, b, c, d:array [1..10000] of longint;
  N, i, j, v, g, k, j1, v1:longint;
begin

  read(N);
  
  j:= 0; v:= 0; k:= 0;
  
  for i:= 1 to N do
    begin
    
      read(a[i]);
      
      if a[i] = 0 then
        k:= k + 1
      else
      if a[i] > 0 then
        begin
          j:= j + 1;
          b[j]:= a[i];
        end
      else
        begin
          v:= v + 1;
          c[v]:= a[i];
        end;
        
    end;
    
  j1:= j; v1:= v; j:= 0; v:= 0;
    
  for  g:= 1 to j1 do
    begin
      j:= j + 1;
      d[g]:= b[j];
    end;

  for g:= j1 + 1 to k + j1 do
    d[g]:= 0;

  for g:= k + j1 + 1 to v1 + k + j1 do
    begin
      v:= v + 1;
      d[g]:= c[v];
    end;

  for g:= 1 to v1 + k + j1 do
    write(d[g],' ');

end.