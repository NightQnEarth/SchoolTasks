Program Den;
var
  N, i, s, p, a:longint;
begin

  readln(N);
  
  s:=0;
  
  p:=1;
  
  for i:=1 to N do
    begin
    
      readln(a);
      
      s:= s + a;
      
      p:= p * a;
      
    end;
    
  write(s,' ',p);
  
end.

    
    