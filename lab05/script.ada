Script started on Wed Feb 28 08:40:22 2018
[?1034hbash-3.2$ cat split.adb
-- split.adb splits an input string about a specified position.
--
-- Input: Astring, a string,
--        Pos, an integer.
-- Precondition: pos is in Astring'Range.
-- Output: The substrings Astring(Astring'First..Pos-1) and
--                        Astring(Pos..Astring'Last).
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Shion Fukuzawa, for CS 214 at Calvin College
-- Date: February 28, 2018
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;

procedure split is

   EMPTY_STRING : String := "                                        ";

   Astring, Part1, Part2 : String  := EMPTY_STRING;
   Pos, Chars_read       : Natural;

   ------------------------------------------------
   --  split() splits a string in two.           
   -- Receive: The_String, the string to be split,
   --          Position, the split index.        
   -- PRE: 0 < Position <= The_String.length(). 
   --     (Ada arrays are 1-relative by default)
   -- Passback: First_Part - the first substring,
   --           Last_Part - the second substring.
   ------------------------------------------------
   -- Replace this line with definition of split() 
   procedure split(The_String: in string; Position: in Integer; Part1: out string; Part2: out string) is

   begin
      Move(The_String(The_String'First..Position-1), Part1);
      Move(The_String(Position..The_String'Last), Part2);
   end split;


begin                                           -- Prompt for input
   Put("To split a string, enter the string: ");
   Get_Line(Astring, Chars_Read);
   Put("Enter the split position: ");
   Get(Pos);

   split(Astring, Pos, Part1, Part2);

   Put("The first part is ");
   Put_Line(Part1);
   Put(" and the second part is ");
   Put_Line(Part2);

end split;

bash-3.2$ gnatmake split.adb
gcc -c split.adb
gnatbind -x split.ali
gnatlink split.ali
bash-3.2$ ./split
To split a string, enter the string: hello
Enter the split position: 1
The first part is                                         
 and the second part is hello                                   
bash-3.2$ ./split
To split a string, enter the string: hello
Enter the split position: 
4
The first part is hel                                     
 and the second part is lo                                      
bash-3.2$ ./split
To split a string, enter the string: hello
Enter the split position: 6
The first part is hello                                   
 and the second part is                                         
bash-3.2$ exit

Script done on Wed Feb 28 08:41:06 2018
