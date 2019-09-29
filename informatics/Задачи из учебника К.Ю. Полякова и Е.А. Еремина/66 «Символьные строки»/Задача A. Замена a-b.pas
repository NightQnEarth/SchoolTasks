Program Den;
var
  s:string;
  i, k:longint;
begin

  read(s);
  
  k:= 0;
  
  for i:= 1 to length(s) do
    if s[i] = 'a' then
      begin
        s[i]:= 'b';
        k:= k + 1
      end;
      
  writeln(s);
  write(k)
  
end.