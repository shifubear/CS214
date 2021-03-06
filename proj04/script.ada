Script started on Fri 23 Feb 2018 10:00:28 AM EST
sf27@goldberg:~/Desktop/cs214/proj04$ cat factorial.adb
-- factorial.adb computes the factorial of n.
--
-- Input: n, an integer.
-- Precondition: n is positive.
-- Output: n factorial.
--
-- By: Shion Fukuzawa, for CS 214 at Calvin College
-- Date: February 23, 2018
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
   Put(n, Width => 1);
   Put(" is ");
   Put( factorial(n), Width => 1);

end factorial;

sf27@goldberg:~/Desktop/cs214/proj04$ gnatmake factorial.adb
gnatmake: "factorial" up to date.
sf27@goldberg:~/Desktop/cs214/proj04$ ./factorial
To calculate the factorial,
 enter n: 0
The factorial of 0 is 1
sf27@goldberg:~/Desktop/cs214/proj04$ ./factorial
To calculate the factorial,
 enter n: 3
The factorial of 3 is 6
sf27@goldberg:~/Desktop/cs214/proj04$ ./factorial
To calculate the factorial,
 enter n: 7
The factorial of 7 is 5040
sf27@goldberg:~/Desktop/cs214/proj04$ exit

Script done on Fri 23 Feb 2018 10:01:05 AM EST
