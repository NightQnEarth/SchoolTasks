Program Den;
var
  a, b, c:array [1..10000] of longint;
  N, K, M, R, i, j, g:longint;
begin

  read(N);
  
  for i:= 1 to N do
    read(a[i]);
    
  read(K,M,R);
  
  if R > (M - K + 1) then
    R:= R mod (M - K + 1);
  
  j:= 1;
  
  for i:= K to M do
    begin
      b[j]:= a[i];
      j:= j + 1;
    end;

  g:= j - 1;
  
  for j:= 1 to R do
    c[j]:= b[j];
    
  for j:= 1 to g - R do
    b[j]:= b[j+R];
    
  i:= 1;
    
  for j:= g - R + 1 to g do
    begin
      b[j]:= c[i];
      i:= i + 1;
    end;
    
  j:= 1;

  for i:= K to M do
    begin
      a[i]:= b[j];
      j:= j + 1;
    end;
    
  for i:= 1 to N do
    write(a[i],' ');
    
end.
    
    
  