Program Den;
var
  A, B, i, j, u, s1, s2, k, N:longint;
  m:array [1..10000] of longint;
  sr1, sr2:real;
begin

  read(A,B,N);
  
  k:=0; s1:=0; s2:=0;
  
  randomize;
  
  for i:=1 to N do
    begin
    
      m[i]:=random(B - A + 1) + A;
      write(m[i],' ');
      write;
      
      if m[i] < 50 then
        begin
          s1:= s1 + m[i];
          k:= k + 1;
        end
      else
        s2:=s2 + m[i];
        
    end;
    
  writeln;
  
  if k = 0 then
    begin
      sr2:= s2 / (N - k);
      write('0.000 ',sr2:0:3);
    end
  else
    if N - k = 0 then
      begin
        sr1:= s1 / k;
        write(sr1:0:3,' 0.000');
      end
  else
    begin
    
      sr1:= s1 / k;
  
      sr2:= s2 / (N - k);
  
      write(sr1:0:3,' ',sr2:0:3);
      
    end;
  
end.
  
    
    
        
