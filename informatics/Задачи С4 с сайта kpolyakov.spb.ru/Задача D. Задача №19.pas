Program Den;
var
  s, s1, ss:string;
  i, N, k, j, d, c, min1, min2, min3, m, g:longint;
begin

  readln(N);
  
  min1:= 2101;
  min2:= 32;
  min3:= 13;
  
  k:= 0;
  
  for j:= 1 to N do
    begin
      readln(s);
      
      ss:= s;
      
      delete(ss, 1, pos(' ',ss));
      
      delete(ss, 1, pos(' ',ss));
      
      val(copy(ss, 1, pos('.', ss) - 1), d, c);
      
      delete(ss, 1, pos('.',ss));
      
      val(copy(ss, 1, pos('.', ss) - 1), m, c);
      
      delete(ss, 1, pos('.',ss));

      val(copy(ss, 1, length(ss)), g, c);
      
      if g < min1 then
        begin
          k:= 1;
          min1:= g;
          min2:= m;
          min3:= d;
          s1:= s
        end
      else
      if g = min1 then
        begin
          if m < min2 then
            begin
              k:= 1;
              min1:= g;
              min2:= m;
              min3:= d;
              s1:= s
            end
          else
          if m = min2 then
            begin
              if d < min3 then
                begin
                  k:= 1;
                  min1:= g;
                  min2:= m;
                  min3:= d;
                  s1:= s
                end
              else
              if d = min3 then
                k:= k + 1
            end
        end
    end;
    
  if k > 1 then
    write(k)
  else
    write(s1)
end.