```ada
function Check_Range(Num : Integer) return Boolean is
begin
   if Num < 10 or Num > 100 then
      return False;
   else
      return True;
   end if;
end Check_Range;

with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   Num : Integer;
begin
   Put_Line("Enter an integer between 10 and 100:");
   Get(Num);

   if Check_Range(Num) then
      Put_Line("Number is within range.");
   else
      Put_Line("Number is outside range.");
   end if;
end Main;
```