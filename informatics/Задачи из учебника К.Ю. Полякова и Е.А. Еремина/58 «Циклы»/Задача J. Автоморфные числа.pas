Program Den;
var
  a, b, i, g, m, k, h, s:longint;
begin

  read(a,b);
  
  h:=0;
  
  for i:= a to b do
  
    begin
  
      k:=0;
  
      g:=i;
      
      s:=sqr(i);
  
      while g <> 0 do

        begin
          if (s mod 10) <> (g mod 10) then
            k:= 1;
          g:= g div 10;
          s:= s div 10;
        end;
    
      if k = 0 then
        begin
          write(i,' ');
          h:=1;
        end;
    end;
    
  if h = 0 then write(-1);

end.
    
  


