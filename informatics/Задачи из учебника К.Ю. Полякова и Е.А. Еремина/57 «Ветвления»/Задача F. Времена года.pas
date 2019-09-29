Program Den;
var
  a:longint;
begin

  read(a);

  if (a=1) or (a=2) or (a=12) then
    write('winter')
  else
    if (a=3) or (a=4) or (a=5) then
      write('spring')
    else
      if (a=6) or (a=7) or (a=8) then
        write('summer')
      else
        if (a=9) or (a=10) or (a=11) then
          write('autumn')
        else
          write('NO');

end.