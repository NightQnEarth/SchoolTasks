Program Den;
var
  s:string;
  i, j, N, k1, min1, min2, min3, a, c, b, k2, k3:longint;
begin

  readln(N);
  
  k1:= 0; k2:= 0; k3:= 0;
  
  min1:= 5001; min2:= 5001; min3:= 5001;
  
  for j:= 1 to N do
    begin
      readln(s);
      
      delete(s, 1, pos(' ',s));
      
      delete(s, 1, pos(' ',s));
      
      val(copy(s, 1, pos(' ',s)-1), a, c);
      
      delete(s, 1, pos(' ',s));

      val(copy(s, 1, length(s)), b, c);
      
      if a = 15 then
        begin
          if b < min1 then
            begin
              min1:= b;
              k1:= 1
            end
          else
          if b = min1 then
            k1:= k1 + 1
        end
      else
      if a = 20 then
        begin
          if b < min2 then
            begin
              min2:= b;
              k2:= 1
            end
          else
          if b = min2 then
            k2:= k2 + 1
        end
      else
      if a = 25 then
        begin
          if b < min3 then
            begin
              min3:= b;
              k3:= 1
            end
          else
          if b = min3 then
            k3:= k3 + 1
        end
    end;
    
  write(k1, ' ', k2, ' ', k3)
end.