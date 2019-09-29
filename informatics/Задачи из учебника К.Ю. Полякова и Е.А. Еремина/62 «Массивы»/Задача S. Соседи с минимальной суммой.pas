Program Den;
var
  A, B, N, i, g, min:longint;
  m:array [1..10000] of longint;
begin

  read(A,B,N);
  
  randomize;
  
  for i:=1 to N do
    begin
      m[i]:=random(B - A + 1) + A;
      write(m[i],' ');
    end;
    
  writeln;
    
  min:= 2 * B + 1;
    
  for i:=1 to N - 1 do
    if m[i] + m[i+1] <= min then
      begin
        min:= m[i] + m[i+1];
        g:=i;
      end;
      
  write(g,' ',g + 1);
  
end.