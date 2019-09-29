Program Den;
var
  N, g, m:longint;
begin

  read(N);

  g:=1;
  
  m:=0;
  
  if N < 4 then
    write(0)
  else
    begin
   
      while g < N do
        begin
          g:=g*2;
          m:=m+1;
        end;

      if g > N then
        begin
          begin
            g:=g div 2;
            m:=m-1;
          end;
          if m mod 2 <> 0 then
            begin
              g:=g div 2;
              while g >= 4 do
                begin
                  write(g,' ');
                  g:=g div 4;
                end;
            end
          else
            while g >= 4 do
              begin
                write(g,' ');
                g:=g div 4;
              end
        end
      else
        begin
          if m mod 2 = 0 then
            while g >= 4 do
              begin
                write(g,' ');
                g:=g div 4;
              end
          else
            begin
              g:=g div 2;
              m:=m-1;
              while g >= 4 do
                begin
                  write(g,' ');
                  g:=g div 4;
                end
            end;
        end;
    end;
end.

   
      