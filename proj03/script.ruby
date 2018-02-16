Script started on Fri Feb 16 09:47:55 2018
[?1034hbash-3.2$ cat letter_grade.rb
#! /usr/bin/ruby
# letter_grade.rb translates a numeric grade into a letter grade
# Begun by: Shion Fukuzawa, for CS 214 at Calvin College 
################################################################

# Input:  The numberic grade
# Precondition: 0 <= grade <= 100
# Output: The corresponding letter grade for the given grade

def letterGrade grade
    case grade 
    when 90..100
        "A"
    when 80..89
        "B"
    when 70..79
        "C"
    when 60..69
        "D"
    else
        "F"
    end
end

if __FILE__ == $0
   print "Enter your grade: "
   grade = gets
   print "Letter grade is: "
   puts letterGrade(grade.to_i)
end

bash-3.2$ ruby letter_grade.rb
Enter your grade: 100
Letter grade is: A
bash-3.2$ ruby letter_grade.rb 
Enter your grade: 90
Letter grade is: A
bash-3.2$ let[K[K[Kruby letter_grade.rb 
Enter your grade: 89
Letter grade is: B
bash-3.2$ ruby letter_grade.rb
Enter your grade: 76
Letter grade is: C
bash-3.2$ ruy[Kby letter_grade.rb
Enter your grade: 65
Letter grade is: D
bash-3.2$ ruby letter_grade.rb
Enter your grade: 40
Letter grade is: F
bash-3.2$ exit

Script done on Fri Feb 16 09:48:53 2018
