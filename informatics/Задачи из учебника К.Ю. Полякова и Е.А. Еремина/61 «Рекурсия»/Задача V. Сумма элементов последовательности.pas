Program Den;
var
  N, s:longint;

procedure sum(N, s:longint);
begin

  read(N);
  
  if N = 0 then
    begin
      write(s);
      exit;
    end;
    
  s:= s + N;
  
  sum(N, s);
  
end;

begin

  s:= 0;

  sum(N, s);
  
end.