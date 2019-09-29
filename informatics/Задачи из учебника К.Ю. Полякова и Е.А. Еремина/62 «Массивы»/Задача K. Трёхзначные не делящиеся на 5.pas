Program Den;
var
  A, B, N, i, k:longint;
  m:array [1..10000] of longint;
begin

  read(A,B,N);
  
  randomize;
  
  for i:=1 to N do
  
    begin
      m[i]:=random(B - A + 1) + A;
      write(m[i],' ');
      if (m[i] div 100 < 10) and (m[i] div 100 > 0) and (m[i] mod 5 <> 0) then
        k:= k + 1;
    end;

    writeln;
    
    write(k);
    
end.

  
  