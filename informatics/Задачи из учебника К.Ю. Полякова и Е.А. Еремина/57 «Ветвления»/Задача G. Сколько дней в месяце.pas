Program Den;
var
  a:longint;
begin

  read(a);

  case a of

    1,3,5,7,8,10,12:write('31');

      2:write('28');

        4,6,9,11:write('30')
   else
     write('0');

  end;

end.