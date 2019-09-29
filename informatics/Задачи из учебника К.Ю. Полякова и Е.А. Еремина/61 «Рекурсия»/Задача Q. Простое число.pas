Program Den;
var
  N, i:longint;

procedure prost(N, i:longint);
begin

  if i * i > N then
    begin
      write('YES');
      exit;
    end
  else
  if N mod i = 0 then
    begin
      write('NO');
      exit;
    end;
    
  prost(N, i + 2);
  
end;

begin

  read(N); i:= 3;
  
  if (N mod 2 = 0) and (N > 2) then
    write('NO')
  else
  if (N = 2) or (N = 3) then
    write('YES')
  else
    prost(N, i);
    
end.
