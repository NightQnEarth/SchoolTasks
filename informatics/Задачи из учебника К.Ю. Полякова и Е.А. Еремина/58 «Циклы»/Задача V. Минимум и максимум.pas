Program Den;
var
  a, min, max:longint;
begin

  read(a);
  
  min:=a;
  
  max:=a;

  while a <> 0 do
    begin
      read(a);
      
      if a <> 0 then
        if a > max then
          max:=a
        else
          if a < min then
            min:=a;
    end;
    
  write(min,' ',max);
  
end.