Program Den;
var
  a, b, i, k, j, m:longint;
begin

  read(a,b);
  
  k:=0;
  
  m:=0;
  
  for i:=a to b do
    begin
    
      for j:= 2 to trunc(sqrt(i)) do
        if i mod j = 0 then
            m:=1;
            
      if m = 0 then
        begin
          write(i,' ');
          k:=1;
        end
      else
        m:=0;
        
    end;
    
  if k = 0 then write(0);
  
end.
        
    