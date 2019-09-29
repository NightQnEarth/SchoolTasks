Program Den;
var
  a, b, c, d, e, k, max, min, t:longint; sr:real;

function max3 (h1, h2, h3:longint):longint;
var
  m:longint;
begin
  if h1 > h2 then
    m:= h1
  else
    m:= h2;

  if h3 > m then
    m:= h3;

  max3:= m;
end;

function min3 (h1, h2, h3:longint):longint;
var
  m:longint;
begin
  if h1 < h2 then
    m:= h1
  else
    m:= h2;

  if h3 < m then
    m:= h3;

  min3:= m;
end;

function sum (a, b, c, d, e:longint):longint;
var
  s:longint;
begin
  s:= 0;

  if (a <> max) and (a <> min) then
    s:= s + a;
  if (b <> max) and (b <> min) then
    s:= s + b;
  if (c <> max) and (c <> min) then
    s:= s + c;
  if (d <> max) and (d <> min) then
    s:= s + d;
  if (e <> max) and (e <> min) then
    s:= s + e;

  sum:= s;
end;

begin

  read(a,b,c,d,e);

  t:= max3(a, b, c);

  max:= max3(t, d, e);

  t:= min3(a, b, c);

  min:= min3(t, d, e);

  sr:= sum (a,b,c,d,e) / 3;

  writeln(min,' ',max);

  write(sr:0:2);

end.