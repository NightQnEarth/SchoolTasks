Program Den;
var
  s, wOld, wNew:string;

procedure zam(s:string);
var
  str:string;
  i:longint;
begin

  str:= '';

  while pos(wOld, s) <> 0 do
    begin
      for i:= 1 to pos(wOld, s) - 1 do
        str:= str + s[i];

      str:= str + wNew;
    
      delete(s, 1, pos(wOld, s) + length(wOld) - 1)
    end;

  if length(s) <> 0 then
    str:= str + s;
    
  write(str)
  
end;

begin

  readln(s);
  readln(wOld);
  read(wNew);
  
  zam(s);
  
end.