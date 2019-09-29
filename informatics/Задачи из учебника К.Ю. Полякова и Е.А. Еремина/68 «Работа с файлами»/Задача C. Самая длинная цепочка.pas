Program Den;
var
  input, output:text;
  a, a1, k, max:longint;
begin

  Assign(input, 'input.txt'); reset(input);
  Assign(output, 'output.txt'); rewrite(output);
  
  readln(input, a);

  readln(input, a1);

  if a = a1 then
    begin
      k:= 2;
      max:= 2
    end
  else
    begin
      k:= 1;
      max:= 1
    end;
  
  while not eof(input) do
    begin
    
      if a = a1 then
        begin
          k:= k + 1;
          if k > max then
            max:= k
        end
      else
        k:= 1;
        
      a:= a1;
      
      readln(input, a1)
    end;
    
  write(output, max);
  
  Close(input);
  Close(output)
  
end.
        
        
        
        
        

        
      
      
      
      