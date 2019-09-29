Program Den;
var
  s:string;
  i, j:longint;
begin

  read(s);
  
  i:= length(s);
  
  while (s[i] = ' ') and (i > 0) do
    i:= i - 1;

  if i < length(s) then
    delete(s, i + 1, length(s) - i + 1);
  
  for i:= length(s) downto 1 do
    if s[i] = ' ' then
      break;
  if i > 1 then
    delete(s, 1, i);
  
  write(s);
  
end.