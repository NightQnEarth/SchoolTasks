Program Den;
var
  a, b, N, i, g:longint;
begin

  read(a,b,N);
  
  for i:=1 to N do
    begin
      g:=random(b-a)+a;
      write(g,' ');
    end;

end.
