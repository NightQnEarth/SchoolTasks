Program Den;
var
  a:array [1..100, 1..100] of longint;
  c:array [1..100] of longint;
  i, j, N, M, max, h:longint;
  f:boolean;
begin

  read(N, M);
  
  max:= 0;
  
  for i:= 1 to N do
    for j:= 1 to M do
      begin
        read(a[i,j]);
        if a[i,j] > max then
          max:= a[i,j]
      end;
      
  h:= 0;
      
  {for j:= 1 to M do
    begin
      i:= 1; f:= true;
      
      while (i <= N) and f do
        begin
          if a[i,j] = max then
            begin
              h:= h + 1;
              c[h]:= j;
              f:= false
            end;
            
          i:= i + 1
        end
    end;}
    
  for j:= 1 to M do
    for i:= 1 to N do
      if a[i,j] = max then
        begin
          h:= h + 1;
          c[h]:= j
        end;
        
  for max:= 1 to h do
    begin
      for i:= 1 to N do
        write(a[i,c[max]],' ');
        
      writeln
    end
    
end.