Program Den;
var
  a,b,c,max,min:longint;
begin

 read(a,b,c);


  if a<b then min:=a else min:=b;
    if min<c then writeln(min)
      else writeln(c);

  if a>b then max:=a else max:=b;
    if max>c then write(max)
      else write(c);

end.