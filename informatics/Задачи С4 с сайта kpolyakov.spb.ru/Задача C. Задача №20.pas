Program Den;
var
  i, N, max1, max2, bb, k1, k2, num:longint;
  c:char;
  name1, f1, name2, f2, name3, f3:string;
begin

  max1:= 0;
  max2:= 0;
  k1:= 0;
  k2:= 0;
  
  read(N);

  for i:= 1 to N do
    begin
      name3:='';
      f3:='';
      
      read(c);
      
      while c <> ' ' do
        begin
          f3:= f3 + c;
          read(c)
        end;
        
      read(c);

      while c <> ' ' do
        begin
          name3:= name3 + c;
          read(c)
        end;

      read(num);

      read(bb);
      
      if num = 50 then
        begin
          if bb > max1 then
            begin
              max2:= max1;
              name2:= name1;
              f2:= f1;
              k2:= k1;
              k1:= 1;
              max1:= bb;
              name1:= name3;
              f1:= f3
            end
          else
          if bb = max1 then
            begin
              k1:= k1 + 1;
              max2:= bb;
              name2:= name3;
              f2:= f3;
              k2:= 1
            end
          else
          if (bb < max1) and (bb > max2) then
            begin
              max2:= bb;
              name2:= name3;
              f2:= f3;
              k2:= 1
            end
          else
          if bb = max2 then
            k2:= k2 + 1
        end
    end;
    
  if ((k1 = 1) and (k2 = 1)) or (k1 = 2) then
    begin
      writeln(f1,' ', name1);
      write(f2,' ', name2)
    end
  else
  if k1 > 2 then
    write(k1)
  else
  if (k1 = 1) and (k2 > 1) then
    write(f1,' ', name1)
    
end.