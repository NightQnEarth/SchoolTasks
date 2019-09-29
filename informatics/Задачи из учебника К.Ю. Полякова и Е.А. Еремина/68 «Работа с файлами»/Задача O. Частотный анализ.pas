Program Den;
var
  s:string;
  input, output:text;
  i, j, sum:longint;
  a:array [1..26,1..2] of real;
  t1, t2:real;
begin

  Assign(input, 'input.txt'); reset(input);
  Assign(output, 'output.txt'); rewrite(output);
  
  for i:= 1 to 26 do
    a[i,1]:= 96 + i;
    
  sum:= 0;
  
  while not eof(input) do
    begin
      readln(input, s);
      
      for i:= 1 to length(s) do
        for j:= 1 to 26 do
          if ( s[i] = Chr(trunc(a[j,1])) ) or ( s[i] = Chr(trunc(a[j,1]) - 32) )  then
            a[j,2]:= a[j,2] + 1
    end;
            
      for i:= 1 to 26 do
        sum:= sum + trunc(a[i,2]);
        
      if sum <> 0 then
        begin
        
          for i:= 1 to 26 do
            a[i,2]:= a[i,2] / sum;
        
          for i:= 1 to 25 do
            for j:= 25 downto i do
              if a[j,2] < a[j+1,2] then
                begin
                  t1:= a[j,1];
                  t2:= a[j,2];
                  a[j,1]:= a[j+1,1];
                  a[j,2]:= a[j+1,2];
                  a[j+1,1]:= t1;
                  a[j+1,2]:= t2
                end;
            
          for i:= 1 to 26 do
            if a[i,2] <> 0 then
              begin
                write(output, Chr( trunc(a[i,1]) ), ' ');

                writeln(output, a[i,2]:0:3)
              end
        end;
        
  Close(input);
  Close(output)
        
end.