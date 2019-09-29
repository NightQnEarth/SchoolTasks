Program Den;
var
  a, b, i, j, f, s:longint;

function del(N:longint):longint;
var
  v, sum:longint;
begin

  sum:= 0; v:= 1;

  if N mod 2 <> 0 then
    while v <= N div 2 do
      begin
        if N mod v = 0 then
          sum:= sum + v;
        v:= v + 2;
      end
  else
    while v <= N div 2 do
      begin
        if N mod v = 0 then
          sum:= sum + v;
        v:= v + 1;
      end;

  del:= sum;

end;

begin

  read(a,b); f:= 0;

  for i:= a to b do
    begin
      s:= 0;
      j:= i + 2;
      while (j <= b) and (s = 0) do
        if  (del(i) = j) and (i = del(j)) and (i <> j) then
          begin
            if f = 0 then
              begin
                s:= 1;
                write('(',i,',',j,')');
                f:= 1;
              end
            else
              begin
                s:= 1;
                write(' ');
                write('(',i,',',j,')');
              end;
          end
        else
          j:= j + 2;
    end;

    if f = 0 then
      write(0);

end.