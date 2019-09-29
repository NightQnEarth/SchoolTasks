Program Den;
var
  N:longint;

procedure rev(N:longint);
begin

  read(N);
  
  if N = 0 then
    exit;
    
  rev(N);
    
  write(N,' ');
  
end;

begin

rev(N);

end.