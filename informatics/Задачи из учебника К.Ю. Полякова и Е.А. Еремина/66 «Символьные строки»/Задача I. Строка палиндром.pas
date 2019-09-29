Program Den;
var
  s, s1:string;
  i:longint;
begin

  read(s); i:= 0;
  
  while i <= length(s) do
    begin
      if s[i] = ' ' then
        delete(s,i,1)
      else
        i:= i + 1
    end;
    
  if length(s) = 0 then
    write('NO')
  else
    begin

      for i:= length(s) div 2 downto 1 do
        s1:= s1 + s[i];

      if length(s) mod 2 = 0 then
        delete(s, 1, length(s) div 2)
      else
        delete(s, 1, length(s) div 2 + 1);

      if s1 = s then
        write('YES')
      else
        write('NO')
    end

end.