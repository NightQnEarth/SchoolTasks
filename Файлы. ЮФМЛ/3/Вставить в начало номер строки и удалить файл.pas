Program Den;
var
  Fin, Fout:text;
  k, g, c:longint;
  s, ss:string;
begin

  Assign(Fin, 'Fin.txt'); reset(Fin);
  Assign(Fout, 'Fout.txt'); rewrite(Fout);
  
  k:= 0;
  
  while not eof(Fin) do
    begin
      readln(Fin, s);
      
      k:= k + 1;
      
      str(k, ss);
      
      g:= k; c:= 0;
      
      while g <> 0 do
        begin
          g:= g div 10;
          c:= c + 1
        end;
        
      s:= s + ' ';
        
      insert(ss, s, 1);
      
      writeln(Fout, s)
    end;
    
  Close(Fin);
  Erase(Fin);
  Close(Fout)
  
end.
