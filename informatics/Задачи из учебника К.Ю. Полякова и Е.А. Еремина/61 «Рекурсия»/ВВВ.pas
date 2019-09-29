Program Den1;
var
  K, N, i, j, d, m, h:longint;

function sum(v:longint):longint;
var c:longint;
begin

  c:= 0;

  while (v <> 0) and (c <= N)do
    begin
      c:= c + v mod 10;
      v:= v div 10;
    end;
    
  sum:= c;

end;

begin

  read(K, N);

  m:= 0;

  while K <> 0 do
    begin
      d:= 1; h:= 1; i:= 1;

      while i < K do
        begin
          d:= d * 10;
          i:= i + 1;
        end;

      j:= d * 10 - 1; h:= d;
      
      while (d <= j) and (d div h <= N) do
        begin
          if sum(d) = N then
            m:= m + 1;
          d:= d + 1
        end;

      K:= K - 1;

    end;
    
  write(m);

end.