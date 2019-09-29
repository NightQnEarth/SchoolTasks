Program Den;
var
  s:string;
  i:longint;
begin

  read(s);
  
  i:= 0;
  
  while i < length(s) do
    begin
      i:= i + 1;
      if s[i] <> '\' then
        write(s[i])
      else
        writeln
    end;
    
end.