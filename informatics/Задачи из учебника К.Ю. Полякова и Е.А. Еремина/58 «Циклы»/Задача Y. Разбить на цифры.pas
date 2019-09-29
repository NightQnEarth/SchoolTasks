Program Den;
var
  N, i, k, g, h, j:longint;
begin

  read(N);
  
  h:=N;
  
  k:=0;
  
  g:=1;
  
  while h <> 0 do
    begin
      k:=k+1;
      h:=h div 10;
    end;
    
  h:=k;
  
  j:=k;

  while j <> 0 do
    begin
    
      h:=j-1;
      
      g:=1;
      
      while h <> 0 do
        begin
          g:=g*10;
          h:=h-1;
        end;
        
      write(N div g,' ');
      
      N:=N mod g;
      
      j:=j-1;
      
    end;
      
end.