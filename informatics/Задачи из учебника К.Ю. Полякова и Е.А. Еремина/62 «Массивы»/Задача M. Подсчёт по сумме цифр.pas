Program Den;
var
  A, B, N, i, K, c, s:longint;
  m:array [1..10000] of longint;
begin

  read(A,B,N,K);
  
  c:=0;
  
  randomize;
  
  for i:=1 to N do
    begin
    
      m[i]:=random(B - A + 1) + A;
      write(m[i],' ');
      
      s:=0;
      
      while m[i] <> 0 do
        begin
          s:= s + m[i] mod 10;
          m[i]:= m[i] div 10;
        end;
        
      if s = K then
        c:= c + 1;
        
    end;

    writeln;
    
    write(c);
    
end.