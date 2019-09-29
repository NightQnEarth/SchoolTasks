Program Den;
var a,k: integer;
begin
k:=0;
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(a);
if (a mod 400 = 0) or ((a mod 4 = 0) and (a mod 100<>0)) then k:=1;
if (a div 1000 <>0) and (k=1) then write('12/09/',a) else if (a div 1000 <>0) and (k=0) then write('13/09/',a) else
if (a div 1000 = 0) and (a div 100<>0) and (k=1) then write('12/09/0',a) else if (a div 1000 = 0) and (a div 100<>0) and (k=0) then write('13/09/0',a) else
if (a div 100 = 0) and (a div 10<>0) and (k=1) then write('12/09/00',a) else if (a div 100 = 0) and (a div 10<>0) and (k=0) then write('13/09/00',a) else
if (a div 10=0) and (k=1) then write('12/09/000',a) else if (a div 10=0) and (k=0) then write('13/09/000',a)
end.