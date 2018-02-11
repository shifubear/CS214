Script started on Fri Feb  9 09:24:47 2018
[?1034hbash-3.2$ cat year_codes.adb
-- year_codes.adb converts academic year codes to corresponding years.
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
--
-- Input: year, a string
-- Precondition: year is one of "freshman", "sophomore", "junior", "senior"
-- Output: The year code (1, 2, 3 or 4) corresponding to year.
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure year_codes is

    year : String(1..9) := "         ";
    charsRead : Natural;
    
    -- replace this comment with the definition of yearCode()
    function YearCode (year : string) return Integer is
        begin             
            if     year = "freshman " then
                return 1;
            elsif (year = "sophomore") then
                return 2;
            elsif (year = "junior   ") then
                return 3;
            elsif (year = "senior   ") then
                return 4;
            else
                return 0;
            end if;
        end YearCode;

begin                                          
    Put("Enter your academic year: ");           -- Prompt for input
    Get_Line(year, charsRead);                   -- Input
    Put( yearCode(year) );                       -- Convert and output
    New_Line;
end year_codes;

bash-3.2$ gnatmake year_codes.adb
gcc -c year_codes.adb
gnatbind -x year_codes.ali
gnatlink year_codes.ali
bash-3.2$ ./ea[K[Kyear_codes
Enter your academic year: freshman
          1
bash-3.2$ ./year_codes
Enter your academic year: sophmore
          0
bash-3.2$ ./year_codes
Enter your academic year: sophoom  more
          2
bash-3.2$ ./year_codes
Enter your academic year: junior
          3
bash-3.2$ ./year_codes
Enter your academic year: senior
          4
bash-3.2$ ./year_codes
Enter your academic year: clown
          0
bash-3.2$ exit

Script done on Fri Feb  9 09:25:36 2018
