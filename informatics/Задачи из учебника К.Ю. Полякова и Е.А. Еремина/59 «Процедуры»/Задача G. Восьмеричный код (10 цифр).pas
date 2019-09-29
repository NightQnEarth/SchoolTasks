Program Den;
var
  N:longint;

procedure oct (N:longint);
var g, i:longint;
begin

  g:= 1;

  for i:= 1 to 9 do
    g:= g * 8;

  while g > 0 do
    begin
      write(N div g);
      
      N:= N mod g;
      
      g:= g div 8;
    end;
    
end;

begin

  read(N);
  
  oct(N);
  
end.
    
    

