Program Den;
var
  a,b,c:longint;
begin

  read(a,b,c);

  if (a>b) and (a>c) then write('A')
    else
      if (b>c) and (b>a) then write('B')
        else
          if (c>a) and (c>b) then write('C')
            else
              if (a=b) and (b=c) then write(0)
                else
                 if (a=b) and (a>c) then write('A B')
                   else
                     if (a=c) and (a>b) then write('A C')
                       else
                         if (b=c) and (b>a) then write('B C');



end.

