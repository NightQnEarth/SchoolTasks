Program Den;
var
  A, B, i, max, N:longint;
  m:array [1..10000] of longint;
begin

  read(A,B,N);
  
  max:= A - 1;
  
  randomize;
  
  for i:=1 to N do
    begin
      m[i]:=random(B - A + 1) + A;
      write(m[i],' ');
      if (m[i] > max) and (m[i] > 0) and (m[i] mod 2 = 0) then
        max:=m[i];
    end;
    
  writeln;

  if max = A - 1 then
    write(-1)
  else
    write(max);

end.