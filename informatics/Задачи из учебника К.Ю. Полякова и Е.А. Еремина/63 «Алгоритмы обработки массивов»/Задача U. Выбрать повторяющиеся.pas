Program Den;
var
  a, b, c:array [1..10000] of longint;
  N, i, j, v, t, h, g, w:longint;
begin

  read(N);
  
  for i:= 1 to N do
    read(a[i]);

  v:= 0; i:= 1; g:= N;

  while i <= N - 1 do
    begin
      j:= i + 1;
      while j <= N do
        if a[i] = a[j] then
          begin
            v:= v + 1;
            b[v]:= a[i];
            t:= a[j];
            h:= j;
            while h <= N - 1 do
              begin
                a[h]:= a[h+1];
                h:= h + 1;
              end;
            a[N]:= t;
            N:= N - 1;
          end
        else
          j:= j + 1;
      i:= i + 1;
    end;
    
    N:= v; i:= 1;
    
    while i <= N - 1 do
    begin
      j:= i + 1;
      while j <= N do
        if b[i] = b[j] then
          begin
            t:= b[j];
            h:= j;
            while h <= N - 1 do
              begin
                b[h]:= b[h+1];
                h:= h + 1;
              end;
            b[N]:= t;
            N:= N - 1;
          end
        else
          j:= j + 1;
      i:= i + 1;
    end;
    
    if v = 0 then
      write(0)
    else
      for i:= 1 to N do
        write(b[i],' ');

end.