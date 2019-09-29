Program Den;
var
  A, B, i, N, s:longint;
  sr:real;
  m:array [1..10000] of longint;
begin

  read(A,B,N);
  
  randomize;
  
  s:=0;
  
  for i:=1 to N do
    begin
      m[i]:=random(B - A + 1) + A;
      write(m[i],' ');
      s:= s + m[i];
    end;
    
  sr:= s / N;
  
  writeln;
  
  write(sr:0:3);
  
end.