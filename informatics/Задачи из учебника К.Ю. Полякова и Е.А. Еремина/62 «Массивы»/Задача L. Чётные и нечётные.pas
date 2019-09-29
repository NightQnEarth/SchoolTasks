Program Den;
var
  A, B, i, N, k1, k2:longint;
  m:array [1..10000] of longint;
begin

  read(A,B,N);
  
  k1:=0; k2:=0;
  
  randomize;
  
  for i:=1 to N do
    begin
      m[i]:=random(B - A) + A;
      write(m[i],' ');
      if m[i] mod 2 = 0 then
        k1:= k1 + 1
      else
        k2:= k2 + 1;
    end;
    
    writeln;
    
    write(k1,' ',k2);
    
end.