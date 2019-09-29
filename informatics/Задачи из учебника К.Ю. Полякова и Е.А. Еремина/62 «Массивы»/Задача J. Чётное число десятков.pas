Program Den;
var
  A, B, i, N, k:longint;
  m:array [1..10000] of longint;
begin

  read(A,B,N);
  
  k:=0;
  
  randomize;
  
  for i:=1 to N do
    begin
      m[i]:=random(B - A + 1) + A;
      write(m[i],' ');
      if ((m[i] mod 100) div 10) mod 2 = 0 then
        k:= k + 1;
    end;
    
  writeln;
   
  write(k);
  
end.
    