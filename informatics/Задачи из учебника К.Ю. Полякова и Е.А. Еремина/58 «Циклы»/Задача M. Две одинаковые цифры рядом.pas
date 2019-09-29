Program Den;
var
  N, g, k:longint;
begin

  read(N);
  
  if N div 10 = 0 then
    write('NO')

  else
  
    begin
  
    g:= N mod 10;
  
    N:= N div 10;
  
    k:=0;
  
    while N <> 0 do

      begin
  
        if g = (N mod 10) then

          begin
        
            k:=1;
      
            write('YES');
        
            break;
        
          end;
      
        g:= N mod 10;
      
        N:= N div 10;
      
      end;
    
    if k = 0 then write('NO');
    
  end;
  
end.
    
    
