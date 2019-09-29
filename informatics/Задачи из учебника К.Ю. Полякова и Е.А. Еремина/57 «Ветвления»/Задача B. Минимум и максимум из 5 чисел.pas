Program Den;
var
  a, b, c, d, e, min, max:longint;
begin

  read(a, b, c, d, e);
  
  if a < b then
    min:= a
  else min:= b;
  if c < min then
    min:= c;

  if a > b then
    max:= a
  else
    max:= b;
  if c > max then
    max:= c;
    
  if d < e then
    begin
      if d < min then
        min:= d
    end
  else
    if e < min then
      min:= e;
      
  if d > e then
    begin
      if d > max then
        max:= d
    end
  else
    if e > max then
      max:= e;
      
  write(min,' ',max)

end.