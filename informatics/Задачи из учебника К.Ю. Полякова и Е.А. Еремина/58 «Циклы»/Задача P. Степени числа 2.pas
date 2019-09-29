Program Den;
var
  N, i, g, j, d:longint;
begin

  read(N);
  
  d:=0;
  
  for i:=N downto 2 do
    if i mod 2 = 0 then
      begin
        g:=1;
        d:=1;
        for j:=1 to i do
          g:=g*2;
        write(g,' ');
      end;
      
  if d = 0 then write(0);

end.