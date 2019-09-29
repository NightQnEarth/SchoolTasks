Program Den;
var
  N, i, j, W, t, c:longint;
  a:array [1..100, 1..2] of string;
  s, s1, s2:string;
  f:boolean;

function sr(m:string):longint;
var
  e:longint;
begin
  val(m, e, c);

  sr:= e
end;

begin

  readln(N);

  W:= 0;

  for i:= 1 to 100 do
    a[i,2]:= '0';

  for j:= 1 to N do
    begin
      readln(s);

      f:= true;

      i:= 1;

      while (a[i,1] <> s) and (i <= W) do
        i:= i + 1;

      if i <= W then
        begin
          val(a[i,2], t, c);
          t:= t + 1;
          str(t, a[i,2]);
          f:= false
        end;

      if f then
        begin
          W:= W + 1;
          a[W,1]:= s;
          a[W,2]:= '1'
        end
    end;

  for i:= 1 to W - 1 do
    for j:= W - 1 downto i do
      if ( sr(a[j,2]) < sr(a[j+1,2]) ) or ( (sr(a[j,2]) = sr(a[j+1,2])) and (a[j,1] > a[j+1,1]) ) then
        begin
          s1:= a[j,1];
          s2:= a[j,2];
          a[j,1]:= a[j+1,1];
          a[j,2]:= a[j+1,2];
          a[j+1,1]:= s1;
          a[j+1,2]:= s2
        end;

  for i:= 1 to W do
    writeln(a[i,1])
end.