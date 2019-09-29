Program Den;
var
  F1, F2, F3:text;
  s1, s2:string;
  i:longint;
begin

  Assign(F1, 'F1.txt'); reset(F1);
  Assign(F2, 'F2.txt'); reset(F2);
  Assign(F3, 'F3.txt'); rewrite(F3);
  
  while not eof(F1) do
    begin
      readln(F1, s1);
    
      while not eof(F2) do
        begin
          readln(F2, s2);
          
          if s1 = s2 then
            writeln(F3, s2)
            
        end;
      Close(F2);
      reset(F2)
    end;
    
  Close(F1);
  Close(F2);
  Close(F3)
end.