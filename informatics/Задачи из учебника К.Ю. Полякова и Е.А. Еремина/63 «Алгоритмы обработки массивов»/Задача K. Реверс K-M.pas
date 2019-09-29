Program Den;
var
  a:array [1..10000] of longint;
  K, M, N, i, t, g:longint;
begin

  read(N);
  
  for i:= 1 to N do
    read(a[i]);
    
  read(K,M);
  
  g:= M - K + 1;
  
  if g mod 2 = 0 then
    while K + 1 <= M do
      begin
        t:= a[K];
        a[K]:= a[M];
        a[M]:= t;
        K:= K + 1;
        M:= M - 1;
      end
  else
    while K <> M do
      begin
        t:= a[K];
        a[K]:= a[M];
        a[M]:= t;
        K:= K + 1;
        M:= M - 1;
      end;
      
  for i:= 1 to N do
    write(a[i],' ');

end.

      

      