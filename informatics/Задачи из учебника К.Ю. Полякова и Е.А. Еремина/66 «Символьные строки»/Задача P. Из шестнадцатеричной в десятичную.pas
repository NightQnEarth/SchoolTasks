Program Den;
var
  s:string;

function hex(s:string):longint;
var
  i, d, sum, c, f:longint;
begin

  d:= 1; sum:= 0;
  
  for i:= length(s) downto 1 do
    begin
      case s[i] of
        '0'..'9': begin val(s[i], f, c); sum:= sum + d * f end;
        'A': sum:= sum + d * 10;
        'B': sum:= sum + d * 11;
        'C': sum:= sum + d * 12;
        'D': sum:= sum + d * 13;
        'E': sum:= sum + d * 14;
        'F': sum:= sum + d * 15
      end;
      
      d:= d * 16
      
    end;
      
  hex:= sum

end;

begin

  read(s);
  
  if s[1] = '-' then
    begin
      delete(s, 1, 1);
      write(hex(s) * (-1))
    end
  else
    write(hex(s))
  
end.