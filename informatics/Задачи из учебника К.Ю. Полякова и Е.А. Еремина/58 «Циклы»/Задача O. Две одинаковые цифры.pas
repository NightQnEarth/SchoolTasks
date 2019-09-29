Program Den;
var
  n, k, g, h, s:longint;
begin

  read(n);
 
  k:=0;
  
  h:=n;
  
  g:=n div 10;
  
  if g = 0 then
    write('NO')
  else
    begin
    
      while g <> 0 do
        begin
          s:=g;
          while g <> 0 do
          
            begin
          
              if h mod 10 = g mod 10 then
                  k:=1;
              g:=g div 10;
              
            end;
         
          h:=h div 10;
          g:=s div 10;
     
        end;
    
      if k = 0 then write('NO') else write('YES');
      
    end;
    
end.

   

         
           

