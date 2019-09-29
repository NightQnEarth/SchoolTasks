Program Den;
var 
  a, b, s, i:longint;
begin

  read(a,b);
  
  s:=0;
   
  if (a>0) and (b<0) then
    begin
      for i:=1 to a do
        s:=s+b;
        write(s);
    end    
  else
    if (a<0) and (b>0) then
      begin
        for i:=1 to b do
          s:=s+a;
        write(s);
      end
  else 
    if (a=0) or (b=0) then
      write(0)
  else
    begin
      for i:=1 to abs(a) do
          s:=s+abs(b);
          write(s);
    end;      
end.       
    