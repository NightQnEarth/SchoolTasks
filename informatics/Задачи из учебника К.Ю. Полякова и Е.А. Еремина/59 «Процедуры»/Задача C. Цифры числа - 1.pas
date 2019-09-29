Program Den;
var
  N:longint;
  
procedure ch (N:longint);

  begin
    while N <> 0 do
      begin

        writeln(N mod 10);
        
        N:= N div 10;
        
      end;
  end;
  
begin

  read(N);
  
  ch(N);
  
end.
      
