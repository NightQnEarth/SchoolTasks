Program Den;
var
  N, max:longint;

procedure m(N:longint;
      var max: longint);
begin
  read(N);
  
  if N = 0 then
    exit;
    
  if N > max then
    max:= N;
    
  m(N, max);
  
end;
    
begin

  read(N);
  
  if N <> 0 then
    begin
      max:= N;
      m(N, max);
    end;
    
  write(max);

end.