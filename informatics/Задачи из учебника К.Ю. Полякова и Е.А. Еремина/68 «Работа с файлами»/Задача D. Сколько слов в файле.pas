Program Den;
var
  input, output:text;
  k, i:longint;
  s:string;
  f:boolean;
begin

  Assign(input, 'input.txt'); reset(input);
  Assign(output, 'output.txt'); rewrite(output);
  
  k:= 0;
  
  while not eof(input) do
    begin
      readln(input, s);
      
      while pos(' ',s) <> 0 do
        begin
          f:= false;
          
          for i:= 1 to pos(' ', s) do
            if s[i] <> ' ' then
              f:= true;

          if f then
            k:= k + 1;
            
          delete(s, 1, pos(' ',s))
        end;
        
      if length(s) <> 0 then
        k:= k + 1
    end;
    
  write(output, k);
  
  Close(input);
  Close(output)
  
end.