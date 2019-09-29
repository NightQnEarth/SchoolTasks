Program Den;
var
  N: longint;
  
procedure line (N:longint);
var i:longint;
  begin
  
    for i:= 1 to N do
      write('-');
      
  end;
  
begin

  read(N);
  
  line(N);
  
end.