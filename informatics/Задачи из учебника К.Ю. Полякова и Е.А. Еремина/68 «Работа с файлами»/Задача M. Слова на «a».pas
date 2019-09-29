Program Den;
var
  input, output:text;
  s, ss:string;
  f, ff:boolean;
begin

  Assign(input, 'input.txt'); reset(input);
  Assign(output, 'output.txt'); rewrite(output);
  
  ff:= true;
  
  while not eof(input) do
    begin
      readln(input, s);
      
      ss:= s; f:= false;
      
      while (ss <> '') and (f = false) do
        begin

          while (ss[1] = ' ') and (ss <> '') do
            delete(ss, 1, 1);

          if (ss[1] = 'A') or (ss[1] = 'a') then
            f:= true
          else
            begin
              if pos(' ',ss) <> 0 then
                delete(ss, 1, pos(' ', ss))
              else
                ss:=''
            end
        end;

      if f then
        begin
          writeln(output, s);
          ff:= false
        end
    end;
    
  if ff then
    write(output, 0);
    
  Close(input);
  Close(output)
    
end.