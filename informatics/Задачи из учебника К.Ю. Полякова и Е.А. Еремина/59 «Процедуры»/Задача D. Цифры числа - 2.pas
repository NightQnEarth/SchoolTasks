Program Den;
var
  N:longint;
  
procedure ch (N:longint);
var k, h, i, d:longint;
  begin

    h:= N; k:= 0;
    
    if h = 0 then
      write(0)
    else
      begin
        while h <> 0 do
          begin
            h:= h div 10;
            k:= k + 1;
          end;
      
        if k = 1 then
          write(N)
        else
          while k <> 0 do
            begin
              d:= 1;
          
              for i:= 1 to k - 1 do
                d:= d * 10;
          
              k:= k - 1;
        
              writeln(N div d);
        
              N:= N mod d;
            end;
      
      end;
  end;
  
begin

  read(N);
  
  ch (N);
  
end.