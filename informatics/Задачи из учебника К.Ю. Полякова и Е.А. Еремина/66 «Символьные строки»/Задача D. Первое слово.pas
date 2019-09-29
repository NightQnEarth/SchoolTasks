Program Den;
var
  s:string;
  i:longint;
begin

  read(s);
  
  for i:= 1 to length(s) do
    if s[i] <> ' ' then
      break;

  delete(s, 1, i - 1);
  
  delete(s, pos(' ',s), length(s) - pos(' ',s) + 1);
  
  write(s);
  
end.
  
