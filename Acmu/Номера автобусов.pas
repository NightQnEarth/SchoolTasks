Program Den;
var
  N,i:longint; s,st1,st3:string;
begin

  assign(input, 'input.txt'); reset(input);
  assign(output, 'output.txt'); rewrite(output);

  st1:='ABCEHKMOPTXY';
  st3:='0123456789';


  readln(N);


  for i:=1 to N do
    begin
      readln(s);
        if (length(s)=6) and (pos(s[1],st1)<>0) and (pos(s[5],st1)<>0) and (pos(s[6],st1)<>0) and (pos(s[2],st3)<>0) and (pos(s[3],st3)<>0) and (pos(s[4],st3)<>0) then writeln('Yes')
          else writeln('No');


end;
end.



