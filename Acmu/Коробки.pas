Program Den;
var
  A1, B1, C1, A2, B2, C2:longint;
begin

  assign(input, 'input.txt'); reset(input);
  assign(output, 'output.txt'); rewrite(output);
  
  read(A1,B1,C1,A2,B2,C2);
  
  if ((A1 = A2) and (B1 = B2) and (C1 = C2)) or
     ((A1 = A2) and (B1 = C2) and (C1 = B2)) or
     ((A1 = B2) and (B1 = A2) and (C1 = C2)) or
     ((A1 = B2) and (B1 = C2) and (C1 = A2)) or
     ((A1 = C2) and (B1 = A2) and (C1 = B2)) or
     ((A1 = C2) and (B1 = B2) and (C1 = A2)) then
       write('Boxes are equal')
  else
    if ((A1 <= A2) and (B1 <= B2) and (C1 <= C2)) or
       ((A1 <= A2) and (B1 <= C2) and (C1 <= B2)) or
       ((A1 <= B2) and (B1 <= A2) and (C1 <= C2)) or
       ((A1 <= B2) and (B1 <= C2) and (C1 <= A2)) or
       ((A1 <= C2) and (B1 <= A2) and (C1 <= B2)) or
       ((A1 <= C2) and (B1 <= B2) and (C1 <= A2)) then
       write('The first box is smaller than the second one')
  else
    if ((A1 >= A2) and (B1 >= B2) and (C1 >= C2)) or
       ((A1 >= A2) and (B1 >= C2) and (C1 >= B2)) or
       ((A1 >= B2) and (B1 >= A2) and (C1 >= C2)) or
       ((A1 >= B2) and (B1 >= C2) and (C1 >= A2)) or
       ((A1 >= C2) and (B1 >= A2) and (C1 >= B2)) or
       ((A1 >= C2) and (B1 >= B2) and (C1 >= A2)) then
       write('The first box is larger than the second one')
  else
    write('Boxes are incomparable');

end.