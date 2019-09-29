Program Den;
var
  a:array [1..100, 1..100] of longint;
  i, j, N, M, R, K, t:longint;

function one (h:longint):boolean;
var
  g:longint;
begin

  g:= 0;

  while h <> 0 do
    begin
      h:= h div 10;
      g:= g + 1
    end;

  if g = K then
    one:= true
  else
    one:= false
end;

function two (w:longint):boolean;
var
  sum:longint;
begin

  sum:= 0;

  while w <> 0 do
    begin
      sum:= sum + w mod 10;
      w:= w div 10
    end;

  if sum mod R = 0 then
    two:= true
  else
    two:= false

end;

begin

  read(N, M);

  for i:= 1 to N do
    for j:= 1 to M do
      read(a[i,j]);

  read(K, R);

  t:= 0;

  for i:= 1 to N do
    for j:= 1 to M do
      if one(a[i,j]) and two(a[i,j]) then
        t:= t + 1;

  write(t)

end.