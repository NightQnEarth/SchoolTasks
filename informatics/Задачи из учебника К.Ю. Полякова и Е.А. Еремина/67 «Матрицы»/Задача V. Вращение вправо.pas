Program Den;
var
  a, b:array [1..100, 1..100] of longint;
  i, j, N, h:longint;
begin

  read(N); h:= 0;

  for i:= 1 to N do
    for j:= 1 to N do
      read(a[i,j]);

  for i:= N downto 1 do
    begin
      h:= h + 1;
      
      for j:= 1 to N do
        b[j,h]:= a[i,j]
    end;

  for i:= 1 to N do
    begin
      for j:= 1 to N do
        write(b[i,j],' ');

      writeln
    end

end.