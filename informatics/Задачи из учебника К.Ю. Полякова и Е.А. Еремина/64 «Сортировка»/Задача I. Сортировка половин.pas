Program Den;
var
  a, p1, p2:array [1..10000] of longint;
  N, i, j, t, g1, g2:longint;
begin

  read(N); t:= 0;
  
  for i:= 1 to N do
    read(a[i]);
    
  for i:= 1 to N div 2 do
    p1[i]:= a[i];
    
  g1:= i;
    
  for i:= N div 2 + 1 to N do
    begin
      t:= t + 1;
      p2[t]:= a[i];
    end;

  g2:= t;
    
  for i:= 1 to g1 - 1 do
    for j:= 1 to g1 - i do
      if p1[j] > p1[j+1] then
        begin
          t:= p1[j];
          p1[j]:= p1[j+1];
          p1[j+1]:= t;
        end;
        
  for i:= 1 to g2 - 1 do
    for j:= 1  to g2 - i do
      if p2[j] < p2[j+1] then
        begin
          t:= p2[j];
          p2[j]:= p2[j+1];
          p2[j+1]:= t;
        end;
        
  for i:= 1 to g1 do
    write(p1[i],' ');
    
  for i:= 1 to g2 do
    write(p2[i],' ');

end.