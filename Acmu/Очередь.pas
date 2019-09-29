Program Den;
var K:longint;
begin
assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);
read(K);
if (K*5-5) div 60 >= 12 then write('NO') else

         if (K<>0) and (K<>1) and (K<>2) then write((K*5-5) div 60,' ',(K*5-5) mod 60) else

                    if (K=0) or (K=1) then write(0,' ',0) else

                                 if K=2 then write(0,' ',10);
end.