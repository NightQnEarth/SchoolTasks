Program Den;
var
  s, sp, str:string;
  k:longint;
begin

  readln(s);
  read(sp);
  
  k:= 0; str:= '';
  
  while pos(sp, s) <> 0 do
    begin
      k:= k + 1;
      delete(s, 1, pos(sp, s) + length(sp) - 1)
    end;

  write(k);
  
end.