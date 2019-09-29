Program Den;
var
  a, b, k, g:longint;
begin

  read(a,b);
  
  k:=0;

  while (a * b) <> 0 do
    begin
    
      if a > b then
        a:= a mod b
      else
        b:= b mod a;
        
      k:=k+1;
      
    end;
      
  g:=a + b;

  write(g,' ',k);

end.