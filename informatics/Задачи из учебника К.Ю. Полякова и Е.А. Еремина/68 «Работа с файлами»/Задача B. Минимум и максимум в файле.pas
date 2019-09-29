Program Den;
var
  input, output:text;
  min, max, a:longint;
begin

  Assign(input, 'input.txt'); reset(input);
  Assign(output, 'output.txt'); rewrite(output);

  min:= 0; max:= 0;
  
  while not eof(input) do
    begin
      readln(input, a);
      
      if (a mod 2 = 0) and (a > 0) then
        begin
          if (max = 0) and (min = 0) then
            begin
              max:= a;
              min:= a
            end
          else
          if a > max then
            max:= a
          else
          if a < min then
            min:= a
        end
    end;
    
  if max * min = 0 then
    write(output, 0)
  else
    write(output, min, ' ', max);
    
  Close(input);
  Close(output)
    
end.