Program Den;
var
  A, f1, f2, f, k:longint;
begin

  read(A);

  if A = 0 then
    write(0)
  else
  if A = 1 then
    write(1)
  else
    begin
      f1:= 1;

      f2:= 1;

      k:= 2;

      while f < A do
        begin
          f:= f1 + f2;

          f1:= f2;

          f2:= f;

          k:= k + 1
        end;

      if f = A then
        write(k)
      else
        write(-1)
    end
end.