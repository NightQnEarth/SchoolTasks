Program Den;
var
  a, b:array [1..10000] of longint;
  N, i, j, v, c, h:longint;
begin

  read(N);

  for i:= 1 to N do
    read(a[i]);

  j:= 0;

  for i:= 1 to N do
    begin
      c:= 0;
      h:= 2;
      
      if (a[i] = 2) or (a[i] = 3) then
        begin
          j:= j + 1;
          b[j]:= a[i];
        end
      else
        if a[i] <> 1 then
          begin
            while ( h <= trunc(sqrt(a[i])) ) and (c = 0) do
              if a[i] mod h = 0 then
                c:= 1
              else
                h:= h + 1;
              if c = 0 then
                begin
                  j:= j + 1;
                  b[j]:= a[i];
                end;
          end;
    end;

  if j = 0 then
    write(0)
  else
    for i:= 1 to j do
      write(b[i],' ');

end.