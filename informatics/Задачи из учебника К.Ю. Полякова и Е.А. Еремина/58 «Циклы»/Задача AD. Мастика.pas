Program Den;
var
  a, b, c, N, s1, s2, s3, k, e, m, w:longint;
begin

  read(a,b,c,N);
  
  s1:=0; s2:=0; s3:=0; e:=-1; m:=0; w:=0; k:=0;

  while m * a <= N   do
    begin
    
      while w * b <= N  do
        begin

          while e * c <= N do
            begin
            
              e:= e + 1;
              s3:= m * a + w * b + e * c;
              
              if s3 = N then
                  k:= k + 1;
            end;
            
          e:=-1;

          w:= w + 1;
            
        end;
        
      w:=0;
      
      m:= m + 1;
    end;
    
  writeln(k);
  
  s1:=0; s2:=0; s3:=0; e:=-1; m:=0; w:=0; k:=0;

  while m * a <= N   do
    begin

      while w * b <= N  do
        begin

          while e * c <= N do
            begin

              e:= e + 1;
              s3:= m * a + w * b + e * c;

              if s3 = N then
                begin
                  k:= k + 1;
                  writeln(m,' ',w,' ',e);
                end;

            end;

          e:=-1;

          w:= w + 1;

        end;

      w:=0;

      m:= m + 1;
      
    end;
  
end.
        
        
            
            
                
  