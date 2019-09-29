Program Den;
var
  Fin, Fout: text;
  max, c, a, p, i:longint;
  s, ss, s0, str:string;
begin

  Assign(Fin, 'Fin.txt'); reset(Fin);
  Assign(Fout, 'Fout.txt'); rewrite(Fout);
  
  while not eof(Fin) do
    begin
      readln(Fin, s);
      
      s0:= s;
      
      c:= pos(' ', s);
      
      if c > 0 then
        begin
          str:='';
          for i:= 1 to c - 1 do
            str:= str + s0[i];
          delete(s0, i, 2)
        end  
      else
        begin
          str:='';
          for i:= 1 to length(s0) do
            str:= str + s0[i];
          delete(s0, 1, length(s0))
        end;  
      
      val(str, max, c);

      while length(s0) <> 0 do
        begin
      
          p:= pos(' ', s0); 
          
          if p > 0 then
            begin
              ss:='';
              ss:= copy(s0, 1, p - 1);
          
              delete(s0, 1, p);
                    
              val(ss, a, c)
            end
          else
            begin
              ss:='';
              for i:= 1 to length(s0) do
                ss:= ss + s0[i];
                
              delete(s0, 1, length(s));  
                
              val(ss, a, c); ss:= '';
            end;  
      
          if a > max then
            max:= a
        end;
        
      writeln(Fout, max)
    end;
  Close(Fin);
  Close(Fout)
    
end.