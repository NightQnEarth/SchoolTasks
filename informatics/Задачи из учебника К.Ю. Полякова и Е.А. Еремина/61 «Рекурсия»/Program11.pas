Program Den;
var
  N, K, d, j, m:longint;

function sum(h:longint):longint;
var c:longint;
begin
  
  if h = 0 then
    begin
      sum:= c;
      exit
    end;
    
  c:= h mod 10;
    
  sum:= sum(h div 10) + c;

end;

function kol1(d, j:longint):longint;
var
  ii: longint;
begin

  if d > j then
    begin
      kol1:= ii; write(ii,' ');
      exit
    end;
    
  ii:= 0;
    
  if sum(d) = N then
    begin
      kol1:= kol1(d + 1, j);
      ii:= ii + 1;
    end
  else
    kol1:= kol1(d + 1, j);
    
end;

procedure kol2(K, m: longint);
var
  i, j, d:longint;
begin

  if K = 0 then
    begin
      write(m);
      exit
    end;

  d:= 1;

  for i:= 1 to K - 1 do
    d:= d * 10;

  j:= d * 10 - 1;
  
  m:= m + kol1(d, j);

  kol2(K - 1, m);

end;

begin

  read(K, N); m:= 0;
  
  kol2(K, m);
  
end.