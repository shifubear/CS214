Script started on Fri Feb 16 09:10:48 2018
[?1034hbash-3.2$ gnatmak[K[K[K[K[K[K[Kcat letter_grade.adb
-- letter_grade.adb converts a numerical grade to its corresponding letter grade.
--
-- By: Shion Fukuzawa, for CS 214 at Calvin College.
--
-- Input: average, an integer
-- Precondition: 0 <= average <= 100 
-- Output: The letter grade (A, B, C, D, or F) corresponding to average.
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure letter_grade is

    average : Integer;
    averageS : String(1 .. 3) := "   ";
    letter : String(1 .. 1) := " ";
    charsRead : Natural;
    
    function LetterGrade (average : Integer) return string is
        begin             
            case average is
                when 90 .. 100 => letter := "A";
                when 80 .. 89  => letter := "B";
                when 70 .. 79  => letter := "C";
                when 60 .. 69  => letter := "D";
                when others    => letter := "F";
            end case;
            return letter;
        end LetterGrade;

begin                                          
    Put("Enter your grade: ");           -- Prompt for input
    Get_Line(averageS, charsRead);                   -- Input
    average := Integer'Value(averageS);
    Put( LetterGrade(average) );                       -- Convert and output
    New_Line;
end letter_grade;

bash-3.2$ gnat [Kmake letter_grade.adb
gnatmake: "letter_grade" up to date.
bash-3.2$ ./letter_grade
Enter your grade: 100
A
bash-3.2$ ./letter_grade
Enter your grade: 90
A
bash-3.2$ ./letter_grade
Enter your grade: 89
B
bash-3.2$ ./letter_grade
Enter your grade: 76
C
bash-3.2$ ./letter_grade
Enter your grade: 65
D
bash-3.2$ ./letter_grade
Enter your grade: 40
F
bash-3.2$ exit

Script done on Fri Feb 16 09:11:39 2018
