Program Den;
var
  N, i, x1, y1, x2, y2, x3, y3, s, x, y, f:longint;
  max:real;
  
function ss(a1,b1,a2,b2,a3,b3:longint):real;
var
  r1, r2, r3, p:real;
begin

  r1:= sqrt( sqr(a1-a2) + sqr(b1-b2) );
  r2:= sqrt( sqr(a1-a3) + sqr(b1-b3) );
  r3:= sqrt( sqr(a2-a3) + sqr(b2-b3) );
  
  p:= (r1 + r2 + r3) / 2;

  if (p - r1 > 0) and (p - r2 > 0) and (p - r3 > 0) then
    ss:= sqrt( p*(p-r1)*(p-r2)*(p-r3) )
  else
    ss:= 0
end;

begin

  read(N);
  
  max:= 0;
  
  read(x1, y1); read(x2, y2); read(x3, y3);
  
  for i:= 1 to N - 3 do
    begin
      read(x, y);
      
      if (y = 0) and (y1 = 0) and (y2 <> 0) and ( ss(x,y,x1,y1,x2,y2) > max ) then
        begin
          max:= ss(x,y,x1,y1,x2,y2);
          f:= 1
        end;
        
      if (y = 0) and (y2 = 0) and (y3 <> 0) and ( ss(x,y,x2,y2,x3,y3) > max ) then
        begin
          max:= ss(x,y,x2,y2,x3,y3);
          f:= 2
        end;
        
      if (y1 = 0) and (y2 = 0) and (y3 <> 0) and ( ss(x1,y1,x2,y2,x3,y3) > max ) then
        begin
          max:= ss(x1,y1,x2,y2,x3,y3);
          f:= 3
        end;
        
      if (y = 0) and (y1 = 0) and (y3 <> 0) and ( ss(x,y,x1,y1,x3,y3) > max ) then
        begin
          max:= ss(x,y,x1,y1,x3,y3);
          f:= 4
        end;
        
      if f = 1 then
        begin
          x3:= x;
          y3:= y
        end
      else
      if f = 2 then
        begin
          x1:= x;
          y2:= y
        end
      else
      if f = 4 then
        begin
          x2:= x;
          y3:= y
        end
    end;
    
  if N - 3 = 0 then
    write(ss(x1,y1,x2,y2,x3,y3))
  else
    write(max)
end.

        
        


      

      
      
      
