Program Den;
var
  N:longint;

procedure del (N:longint);
var i:longint;
begin

  for i:= 1 to N do
    if N mod i = 0 then
      write(i,' ');

end;

begin

  read(N);
  
  del(N);
  
end.