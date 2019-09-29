Program Den;
var
  f, f2: text;
  k:longint;
  s:string;
begin

  Assign(f, 'f.txt'); reset(f);
  Assign(f2, 'C:\Users\User\Desktop\5\f2.txt'); rewrite(f2);
  
  k:= 0;

  while not eof(f) do
    begin
      readln(f, s);
      
      k:= k + 1;
      
      writeln(f2, s)
    end;
    
  Close(f); rewrite(f);
    
  Close(f2); reset(f2);
  
  while not eof(f2) do
    begin
      readln(f2, s);
      
      write(f, s);
      if not eof(f2) then
        writeln(f);
    end;
    
  write(f, k);
  
  Close(f);
  Close(f2);
  Erase(f2)
end.
  

    
