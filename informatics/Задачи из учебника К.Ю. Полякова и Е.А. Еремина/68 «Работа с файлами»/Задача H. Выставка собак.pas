Program Den;
var
  input, output:text;
  s, ss:string;
  K, a, c, t:longint;
begin

  Assign(input, 'input.txt'); reset(input);
  Assign(output, 'output.txt'); rewrite(output);
  
  readln(input, K);
  
  t:= 0;
  
  while not eof(input) do
    begin
      readln(input, s);
      
      ss:= s;
      
      delete(ss, 1, pos(' ',ss));
      
      ss:= copy(ss, 1, pos(' ',ss) - 1);
      
      val(ss, a, c);
      
      if a < K then
        begin
          writeln(output, s);
          t:= t + 1
        end
    end;
    
  write(output, t);
  
  Close(input);
  Close(output)
end.
    
    