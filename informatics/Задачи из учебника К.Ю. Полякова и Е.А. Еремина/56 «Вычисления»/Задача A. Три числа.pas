Program Den;
var
  a, b, c, g1, g2:longint;
  g3:real;
begin
  read(a,b,c);

  g1:=a + b + c;

   g2:=a * b * c;

    g3:=(a + b + c) / 3;

      writeln(a,'+',b,'+',c,'=',g1);

        writeln(a,'*',b,'*',c,'=',g2);

          write('(',a,'+',b,'+',c,')/3=',g3:0:3);

end.