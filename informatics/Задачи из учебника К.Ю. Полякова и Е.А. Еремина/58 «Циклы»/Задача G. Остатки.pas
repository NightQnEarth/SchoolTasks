Program Den;
var
  a, b, c, d, i, k:longint;
begin

  readln(a,b);
  
  read(c,d);
  
  k:=0;
  
  for i:=10000 to 99999 do
    if (i mod a = b) and (i mod c = d) then
      begin
        write(i,' ');
        k:=1;
      end;
      
  if k=0 then write(-1);

end.
