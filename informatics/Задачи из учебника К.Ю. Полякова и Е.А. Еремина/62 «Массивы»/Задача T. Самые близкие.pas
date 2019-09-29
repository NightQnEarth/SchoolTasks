Program Den;
var
  A, B, N, i, min, j, g:longint;
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
  
  min:= B - A + 1;
  
  for i:= 1 to N - 1 do
    for j:= i + 1 to N do
      if abs(m[i] - m[j]) <= min then
        begin
          min:= abs(m[i] - m[j]);
          g:= i;
        end;

  write(g,' ',g + 1);
  
end.

  
  