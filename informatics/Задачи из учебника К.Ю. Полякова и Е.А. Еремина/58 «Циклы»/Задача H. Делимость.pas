Program Den;
var
  a, b, i, k, d, c, n:longint;
begin

  read(a,b);
  
  for i:=a to b do
  
    begin
    
      n:=i;
    
      k:=0;
      
      d:=i;

      while n <> 0 do
        begin
          c:=n mod 10;
          n:=n div 10;
          if c = 0 then
            begin
              k:=1;
              break;
            end
          else
            if d mod c <> 0 then
              begin
                k:=1;
                break;
              end;
        end;
        
      if k = 0 then
        write(d,' ');
        
    end;

end.
