Program Den;
var
  N, k, sum:longint;
  sr:real;

procedure s(N:longint;
   var k, sum:longint);
begin

  read(N);
  
  if N = 0 then
    exit;
  
  k:= k + 1;
  
  sum:= sum + N;
  
  s(N, k, sum);

end;

begin

  k:= 0;
  
  sum:= 0;
  
  N:= 0;
  
  s(N, k, sum);
  
  sr:= sum / k;
  
  write(sr:0:3);

end.
  
