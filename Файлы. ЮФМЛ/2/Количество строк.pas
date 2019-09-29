Program Den;
var
  s:string;
  i, k, k1:longint;
  input, output:text;
begin

  Assign(input, 'input.txt'); reset(input);
  Assign(output, 'output.txt'); rewrite(output);
  
  k:= 0; k1:= 0;
  
  while not eof(input) do
    begin
      readln(input, s);
      if s[1] = s[length(s)] then
        k1:= k1 + 1;
      k:= k + 1;
    end;
    
  write(output, k,' ', k1);
  
  Close(input);
  Close(output)
  
end.