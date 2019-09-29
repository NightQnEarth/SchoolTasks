Program Den;
var
  a, b, i, s, g, k, n, m, h:longint;
begin

  read(a,b);

  k:=0;

  for i:=a to b do
    begin

      g:=i;

      s:=0;
      
      n:=1;
      
      m:=0;

      while g<>0 do
        begin
          m:=m + 1;
          g:=g div 10;
        end;
        
      g:=i;
      h:=m;
      while g<>0 do
        begin
          while h <> 0 do
            begin
              n:=n*(g mod 10);
              h:=h - 1;
            end;
          h:=m;
          s:=s+n;
          n:=1;
          g:=g div 10;
        end;
        
      if s = i then
        begin
          k:=1;
          write(i,' ');
        end;

    end;

  if k=0 then write(-1);

end.