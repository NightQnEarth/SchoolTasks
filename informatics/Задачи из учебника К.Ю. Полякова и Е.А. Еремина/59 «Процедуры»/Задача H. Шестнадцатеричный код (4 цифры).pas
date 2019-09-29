Program Den;
var
  N:longint;
  
procedure print(m:longint);
begin

  if m < 10 then
    write(m)
  else
  if m = 10 then
    write('A')
  else
  if m = 11 then
    write('B')
  else
  if m = 12 then
    write('C')
  else
  if m = 13 then
    write('D')
  else
  if m = 14 then
    write('E')
  else
  if m = 15 then
    write('F');
    
end;

procedure hex (N:longint);
var g, i, m:longint;
begin

  g:= 1;

  for i:= 1 to 3 do
    g:= g * 16;

  while g > 0 do
    begin
      m:= N div g;
      
      print(m);

      N:= N mod g;

      g:= g div 16;
    end;

end;

begin

  read(N);

  hex(N);

end.