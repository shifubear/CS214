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

