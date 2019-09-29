Program Den;
var
  a, b, i:longint;
begin

  randomize;

    read(a,b);

      for i:=1 to 5 do
        write(random(b - a) + a,' ');

end.