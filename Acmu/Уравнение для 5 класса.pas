Program Den;
var
  s:string; k3, k5, k1, c:longint;
begin
  assign(input, 'input.txt'); reset(input);
  assign(output, 'output.txt'); rewrite(output);
  
  c:=0;
  
  readln(s);

  if (pos('x+',s)<>0) then
    begin
      val(s[5],k5,c);
        val(s[3],k3,c);
          c:=k5-k3;
            write(c);
    end
      else
        if pos('x-',s)<>0 then
         begin
           val(s[5],k5,c);
             val(s[3],k3,c);
               c:=k5+k3;
                 write(c);
                   end
        else
          if pos('-x',s)<>0 then
            begin
             val(s[5],k5,c);
               val(s[1],k3,c);
                 c:=k3-k5;
                   write(c);
            end
          else
            if pos('=x',s)<>0 then
              begin
                val(s[1],k1,c);
                  val(s[3],k3,c);
                if s[2]='+' then
                  begin
                    c:=k1+k3;
                      write(c);
                  end
                else
                  if s[2]='-' then
                    begin
                      c:=k1-k3;
                        write(c);
                    end;
              end
                else
                  if (pos('+x',s)<>0) then
                    begin
                      val(s[5],k5,c);
                        val(s[1],k1,c);
                          c:=k5-k1;
                            write(c);
                    end;
end.

