Program Den;
var
  N, f1, f2, f3:longint;
begin

  read(N);
  
  if N >=3 then
    begin
    
      N:=N-2;

      write('1 1 ');
  
      f1:=1;

      f2:=1;
  
      while N <> 0 do
        begin
          f3:=f1+f2;
          write(f3,' ');
          f1:=f2;
          f2:=f3;
          N:=N-1;
        end;
    end
  else
    if N = 1 then
      write(1)
  else
    if N = 2 then
      write('1 1');
      
end.


  