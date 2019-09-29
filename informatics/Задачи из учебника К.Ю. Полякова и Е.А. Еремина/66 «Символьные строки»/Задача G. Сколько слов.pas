Program Den;
var
  s:string;
  i, k:longint;
  f:boolean;
begin

  read(s);
  
  f:= true;
  
  if s[1] <> ' ' then
    k:= 1
  else
    k:= 0;
  
  for i:= 1 to length(s) -  1 do
    if (s[i] = ' ') and (s[i+1] <> ' ') then
      k:= k + 1;
  
  for i:= 1 to length(s) do
    if s[i] <> ' ' then
      begin
        f:= false;
        break
      end;
      
  if f then
    k:= 0;
  
  write(k);
  
end.