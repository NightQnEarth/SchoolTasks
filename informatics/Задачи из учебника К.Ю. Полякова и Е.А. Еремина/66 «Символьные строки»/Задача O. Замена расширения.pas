Program Den;
var
  s, ras:string;
  i:longint;
begin

  readln(s);
  read(ras);
  
  i:= length(s);
  
  while (s[i] <> '.') and (i > 0) do
    i:= i - 1;

  if i = length(s) then
    write(s,'.',ras)
  else
    begin
      delete(s, i, length(s) - i + 1);

      write(s,'.',ras)
    end
end.