Program Den;
var
  N, i, k, g:longint;
begin

  read(N);
  
  k:=0;

  if N = 0 then
    write(1)
  else

    begin
  
      while N <> 0 do

        begin
      
          if (N mod 10) mod 2 = 0 then
            k:=k+1;
          N:= N div 10;
        
        end;
      
      write(k);

    end;

end.