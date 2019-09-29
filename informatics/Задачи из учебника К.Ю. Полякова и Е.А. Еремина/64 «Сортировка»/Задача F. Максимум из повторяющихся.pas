Program Den;
var
  a, b, c:array [1..10000] of longint;
  N, i, j, t, h, k, x, max:longint;
begin

  read(N);
  
  for i:= 1 to N do
    read(a[i]);
    
  for i:= 1 to N do
    for j:= 1 to N - i do
      if a[j] > a[j+1] then
        begin
          t:= a[j];
          a[j]:= a[j+1];
          a[j+1]:= t;
        end;
        
  i:= 1; j:= 0; h:= 0;
        
  while i <= N do
    begin

      x:= a[i]; k:= 0;

      while (i <= N) and (a[i] = x) do
        begin
          i:= i + 1;
          k:= k + 1;
        end;
        
      if k > 1 then
        begin
          j:= j + 1;
      
          c[j]:= i - 1;
          
        end;
      
    end;
    
  if j = 0 then
    write(-1)
  else
    begin
    
      max:= c[1];
    
      for i:= 1 to j do
        if c[i] > max then
          max:= c[i];
          
      write(a[max]);
          
    end;
    
end.
    