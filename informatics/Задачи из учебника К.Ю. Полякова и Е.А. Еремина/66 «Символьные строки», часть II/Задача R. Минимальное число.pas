Program Den;
var
  s, ss:string;
  i:longint;
begin

  read(s);
  
  ss:= '123456789';
  
  for i:= 1 to length(s) do
    if pos(s[i], ss) <> 0 then
      delete(ss, pos(s[i], ss), 1);
  if length(ss) = 0 then
    write(0)
  else
    write(ss)
  
end.