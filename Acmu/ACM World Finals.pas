Program Den;
var
  a, b, c, s, g:string;
begin

  assign(input, 'input.txt'); reset(input);
  assign(output, 'output.txt'); rewrite(output);

  readln(s); readln(a); readln(b); readln(c);

  write(s,': ');

  if a > b then
    begin
      g:=a;  a:=b;  b:=g;
    end;

  if b > c then
    begin
      g:=b;  b:=c;  c:=g;
    end;

  if a > b then
    begin
      g:=a;  a:=b;  b:=g;
    end;

  write(a,', ',b,', ',c);

end.