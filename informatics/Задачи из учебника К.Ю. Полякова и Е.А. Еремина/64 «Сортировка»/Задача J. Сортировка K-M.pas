Program Den;
var
  a, b:array [1..10000] of longint;
  N, i, j, t, K, M, D, g: longint;
begin

  read(N);
  
  for i:= 1 to N do
    read(a[i]);
    
  read(K,M,D);
  
  j:= 0;
  
  for i:= K to M do
    begin
      j:= j + 1;
      b[j]:= a[i];
    end;
    
  if D = 1 then
    begin
      for i:= 1 to j - 1 do
        for g:= 1 to j - i do
          if b[g] > b[g+1] then
            begin
              t:= b[g];
              b[g]:= b[g+1];
              b[g+1]:= t;
            end;
    end
  else
    for i:= 1 to j - 1 do
        for g:= 1 to j - i do
          if b[g] < b[g+1] then
            begin
              t:= b[g];
              b[g]:= b[g+1];
              b[g+1]:= t;
            end;
            
  j:= 0;
            
  for i:= K to M do
    begin
      j:= j + 1;
      a[i]:= b[j];
    end;
    
  for i:= 1 to N do
    write(a[i],' ');
    
end.
          
          
