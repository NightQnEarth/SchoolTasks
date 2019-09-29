Program Den;
var
  A, B:longint;
begin

  read(A,B);

  while A div B >= 2 do
    begin
      if A mod 2 > 0 then
        begin
          A:= A - 1;
          writeln('-1')
        end;

      A:= A div 2;
      writeln(':2')
    end;

  while A > B do
    begin
      A:= A - 1;
      writeln('-1')
    end

end.