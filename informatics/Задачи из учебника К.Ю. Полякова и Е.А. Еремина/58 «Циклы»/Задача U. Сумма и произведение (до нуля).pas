Program Den;
var
  a, s, p:longint;
begin

  s:=0;
  
  p:=1;
  
  a:=100;
  
  while a <> 0 do
    begin

      read(a);
      
      if a <> 0 then
      
        begin

          s:=s+a;
      
          p:=p*a;
          
        end;
      
    end;

  write(s,' ',p);
  
end.
  
  