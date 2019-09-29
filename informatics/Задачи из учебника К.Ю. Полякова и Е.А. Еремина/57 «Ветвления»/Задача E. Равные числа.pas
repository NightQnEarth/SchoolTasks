Program Den;
var
  a,b,c:longint;
begin
  read(a,b,c);

  if (a = b) and (b = c) then
    write(3)
    else
      if (a = b) and (a <> c) then
        write(2)
      else
        if (a = c) and (a <> b) then
          write(2)
        else
          if (b = c) and (b <> a) then
            write(2)
          else
            if (a <> b) and (b <> c) and (a <> c) then
              write(0);

end.