Program Den;
var
  K, N, i, d, j, m, h1:longint;

function sum(h:longint):longint;
var c:longint;
begin

  c:= 0;

  while h <> 0 do
    begin
      c:= c + h mod 10;
      h:= h div 10;
    end;
    
  sum:= c;
  
end;

procedure kol(d:longint;
             var i:longint);
begin

  if (d > j) or (d div h1 > abs(N)) then
    begin
      write(i);
      exit
    end;
    
  if sum (d div 10) > abs(N) then
    begin
      d:= (d div h1 + 1) * h1 ;
      kol(d, i);
    end
  else
  if sum(d) = abs(N) then
    begin
      i:= i + 1;
      d:= d div 10;
      d:= d * 10 + 10;
      kol(d, i);
    end
  else
    kol(d + 1, i);

end;

begin

  read(K, N);
  
  if (K = 1) and (N = 0) then
    write(1)
  else
    begin
      d:= 1;
  
      for i:= 1 to K - 1 do
        d:= d * 10;
    
      h1:= d;
    
      j:= d * 10 - 1;
  
      i:= 0;
  
      kol(d, i);
    end;
end.