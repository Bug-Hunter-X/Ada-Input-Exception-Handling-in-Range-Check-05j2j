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
with Ada.Exceptions; use Ada.Exceptions;

procedure Main is
   Num : Integer;
   Input_Error : exception;
begin
   Put_Line("Enter an integer between 10 and 100:");
   begin
      Get(Num);
   exception
      when Data_Error =>
         raise Input_Error;
   end;

   begin
      if Check_Range(Num) then
         Put_Line("Number is within range.");
      else
         Put_Line("Number is outside range.");
      end if;
   exception
      when Input_Error =>
         Put_Line("Invalid input. Please enter an integer.");
   end;
end Main;
```