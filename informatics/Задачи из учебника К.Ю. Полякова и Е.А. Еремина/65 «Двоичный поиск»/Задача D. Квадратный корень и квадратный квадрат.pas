Program Den;
var
  C:real;
  
function binpos(C:real):real;
var
  L, R, x:real;
  i:longint;
begin

  L:= 0; R:= 1;
  
  for i:= 1 to 10 do
    R:= R * 10;
    
  while (R - L) > 0.000001 do
    begin

      x:= (L + R) / 2;
      
      if sqr(x) + sqrt(x) > C then
        R:= x
      else
        L:= x;
    end;

  binpos:= L;

end;

begin

  read(C);
  
  if frac(   sqr(  round( binpos(C) )  ) + sqrt(  round( binpos(C) ) )   ) = 0 then
    write(round(binpos(C)),'.0000000')
  else
    write(binpos(C));
  
end.