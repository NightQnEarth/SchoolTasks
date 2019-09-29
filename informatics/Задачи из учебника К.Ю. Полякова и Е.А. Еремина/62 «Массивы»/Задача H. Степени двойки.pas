Program Den;
var
  N, i, j:longint;
  a:array [1..30] of longint;
begin

  read(N);
  
  for i:=1 to N do
    begin
    
      a[i]:=1;
    
      for j:=1 to N do
        a[i]:=a[i]*2;
      
      write(a[i],' ');
      
      N:=N-1;
      
    end;

end.