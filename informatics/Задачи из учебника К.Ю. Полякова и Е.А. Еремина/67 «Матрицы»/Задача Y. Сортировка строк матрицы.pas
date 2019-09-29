Program Den;
var
  a:array [1..100, 1..100] of longint;
  c:array [1..100] of longint;
  i, j, N, M, K, t, h:longint;
begin

  read(N, M);
  
  for i:= 1 to N do
    for j:= 1 to M do
      read(a[i,j]);
      
  read(K);
  
  for h:= 1 to N - 1 do
    for i:= N - 1 downto h do
      if a[i+1,K] > a[i,K] then
        begin
          for t:= 1 to M do
            c[t]:= a[i,t];
            
          for t:= 1 to M do
            a[i,t]:= a[i+1,t];
            
          for t:= 1 to M do
            a[i+1,t]:= c[t]
        end;
        
  for i:= 1 to N do
    begin
      for j:= 1 to M do
        write(a[i,j],' ');
        
      writeln
    end
end.