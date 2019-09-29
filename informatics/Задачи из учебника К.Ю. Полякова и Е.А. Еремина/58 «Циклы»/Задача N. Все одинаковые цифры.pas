Program Den;
var
  N, g, k:longint;
begin
  read(N);

  if N div 10 = 0 then
    write('YES')

  else

    begin

      g:= N mod 10;

      N:= N div 10;

      k:=0;

      while N <> 0 do

        begin

          if g = (N mod 10) then
            k:=1
          else
            begin
              k:=0;
              write('NO');
              break;
            end;

          N:= N div 10;

        end;
        
      if k = 1 then
        write('YES');
        
    end;

end.