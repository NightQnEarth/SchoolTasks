Program Den;
var
  input, output:text;
  K, a, c, t, i:longint;
  s, ss:string;
begin

  Assign(input, 'input.txt'); reset(input);
  Assign(output, 'output.txt'); rewrite(output);
  
  readln(input, K);
  
  t:= 0;
  
  while not eof(input) do
    begin
      readln(input, s);
      
      ss:= s;
      
      for i:= length(ss) downto 1 do
        if ss[i] = ' ' then
          break;
          
      s:= copy(s, 1, i);

      delete(ss, 1, i);
     
      val(ss, a, c);
     
      if a > K then
        begin
          t:= t + 1;
          writeln(output, t,') ', s)
        end
    end;
    
  write(output, t);
  
  Close(input);
  Close(output)
  
end.