Program Den;
var
  input, output:text;
  sum, k, a:longint;
begin

  Assign(input, 'input.txt'); reset(input);
  Assign(output, 'output.txt'); rewrite(output);
  
  k:= 0; sum:= 0;
  
  while not eof(input) do
    begin
      readln(input, a);
      
      sum:= sum + a;
      
      k:= k + 1;
    end;
    
  write(output, sum/k:0:3);
  
  Close(input);
  Close(output)
  
end.