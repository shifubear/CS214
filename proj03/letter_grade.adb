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

