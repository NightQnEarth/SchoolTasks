Program Den;
var
  a,b,s,i:longint;
begin

  s:=0;

  read(a,b);

  if (a > 12) or (a < 1) then
    write(-1)
  else
    case a of
    
      3,5,7,8,10,12:
        begin
        
          if (b > 31) or (b < 1) then
            write(-1)
          else
            begin
              for i:=1 to a-1 do
                case i of
                  1,3,5,7,8,10,12: s := s + 31;
                    2: s := s + 28;
                      4,6,9,11: s := s + 30;
                end;
              write(365 - s - b);
            end;

        end;

      2:
        if (b > 28) or (b < 1) then
          write(-1)
        else
          write(365 - 31 - b);
  
      1:
        if (b > 31) or (b < 1) then
          write(-1)
        else
          write(365 - b);

      4,6,9,11:
        begin
          if (b > 30) or (b < 1) then
            write(-1)
          else
            begin
              for i:=1 to a-1 do
                case i of
                  1,3,5,7,8,10,12: s := s + 31;
                    2: s := s + 28;
                      4,6,9,11: s := s + 30;
                end;
              write(365 - s - b);
            end;
        end;

    end;
end.
