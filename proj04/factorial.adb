-- factorial.adb computes the factorial of n.
--
-- Input: n, an integer.
-- Precondition: n is positive.
-- Output: n factorial.
--
-- By: Shion Fukuzawa, for CS 214 at Calvin College
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Numerics.Elementary_Functions;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Numerics.Elementary_Functions;

procedure factorial is

   n : Integer;

   -- function factorial computes the factorial of a given integer n
   -- Parameter: n, an integer
   -- Precondition: n >= 0
   -- Return: the factorial of n
   ----------------------------------------------------
   function factorial(n: in Integer) return Integer is 
   ret: Integer := 1;
   begin
      for i in 1..n loop
         ret := ret * i;
      end loop;
      return ret;
   end factorial;


begin                                           -- Prompt for input
   Put_Line("To calculate the factorial,");
   Put(" enter n: ");
   Get(n);

   Put("The factorial of ");
   Put(n);
   Put(" is ");
   Put( factorial(n) );

end factorial;

