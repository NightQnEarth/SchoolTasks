Program Den;
var
  m, t, j, s, i:longint;
  a:array [1..100000] of longint;
begin

assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);

  read(m);

  i:= 0;

  a[1]:= m;

  while m > 1 do
    begin
      i:= i + 1;
      a[i]:= m mod 2;
      m:= m div 2
    end;

  a[i+1]:= m;

  t:= 1; s:= 0;

  for j:= i + 1 downto 1 do
    begin
      s:= s + a[j] * t;
      t:= t * 2
    end;

  write(s)

end.