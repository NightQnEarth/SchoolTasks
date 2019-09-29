Program Den;
var
  a, b, c:array [1..100000] of longint;
  i, t, N, K, j, h:longint;
begin

  read(N);
  
  for i:= 1 to N do
    read(a[i]);
    
  read(K);
  
  K:= K mod N; j:= 0; h:= 0;
    
  if K = 0 then
    for i:= 1 to N do
      write(a[i],' ')
  else
  if K > 0 then
    begin
        
      for i:= 1 to N - K do
        c[i]:= a[i];
        
      for i:= N - K + 1 to N do
        begin
          h:= h + 1;
          b[h]:= a[i]
        end;
        
      for i:= 1 to h do
        a[i]:= b[i];
        
      for i:= h + 1 to N do
        begin
          j:= j + 1;
          a[i]:= c[j]
        end;
        
      for i:= 1 to N do
        write(a[i],' ')
    end
  else
    begin
      K:= abs(K);
    
      for i:= 1 to K do
        b[i]:= a[i];

      for i:= K + 1 to N do
        begin
          j:= j + 1;
          c[j]:= a[i]
        end;

      for i:= 1 to j do
        a[i]:= c[i];

      for i:= j + 1 to N do
        begin
          h:= h + 1;
          a[i]:= b[h]
        end;
        
      for i:= 1 to N do
        write(a[i],' ')
    end;
end.