Program Den;
var
  A, B, N, i, p1, p2, max, g1, g2:longint;
  m:array [1..10000] of longint;
begin

  read(A,B,N);
  
  p1:= 0;  p2:= N + 1;
  
  max:= A * 2 - 1;
  
  g1:= 0; g2:= 0;
  
  randomize;
  
  for i:=1 to N do
    begin
      m[i]:= random(B - A + 1) + A;
      write(m[i],' ');
    end;

  writeln;
  
  if N mod 2 = 0 then
    while p1 + 1 <> p2 do
      begin
        p1:= p1 + 1;
        p2:= p2 - 1;
        if ((m[p1] + m[p2]) mod 2 = 0) and ((m[p1] + m[p2]) >= max) then
          begin
            max:= m[p1] + m[p2];
            g1:= p1;
            g2:= p2;
          end;
      end
  else
    if N mod 2 <> 0 then
    while p1 + 2 <> p2 do
      begin
        p1:= p1 + 1;
        p2:= p2 - 1;
        if ((m[p1] + m[p2]) mod 2 = 0) and ((m[p1] + m[p2]) >= max) then
          begin
            max:= m[p1] + m[p2];
            g1:= p1;
            g2:= p2;
          end;
      end;
      
  if g1 <> 0 then
    write(g1,' ',g2)
  else
    write('0 0');
    
end.


  
  