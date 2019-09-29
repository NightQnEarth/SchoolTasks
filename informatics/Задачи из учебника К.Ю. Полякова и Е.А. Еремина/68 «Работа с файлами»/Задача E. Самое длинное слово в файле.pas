Program Den;
var
  input, output:text;
  max, k, i:longint;
  s, smax:string;
begin

  Assign(input, 'input.txt'); reset(input);
  Assign(output, 'output.txt'); rewrite(output);
  
  max:= 0;

  while not eof(input) do
    begin
      readln(input, s);
      
      if pos(' ',s) = 0 then
        begin
          if length(s) > max then
            begin
              max:= length(s);
              smax:= s
            end
        end
      else
        begin

          while pos(' ', s) <> 0 do
            begin

              if pos(' ',s) - 1 > max then
                begin
                  max:= pos(' ',s) - 1;
                  smax:='';
                  smax:= copy(s, 1, pos(' ',s) - 1)
                end;

              delete(s, 1, pos(' ', s))
            end;
            
          if length(s) > max then
            begin
              max:= length(s);
              smax:= s
            end
        end
    end;
    
  write(output, smax);
  
  Close(input);
  Close(output)
end.
            
            
            
      
