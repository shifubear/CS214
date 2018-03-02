# roots.rb finds the two roots of a quadratic polynomial.
#
# Input: a, a double, the coefficient of x^2,
#        b, a double, the coefficient of x,
#        c, a double, the coefficient of 1
# Output: The roots root1 and
#                   root2 of the given quadratic
#
# By: Shion Fukuzawa, for CS 214 at Calvin College. 
# Date: March 2, 2018
#################################################################


# roots() finds the two roots of a quadratic polynomial.
# Receive: a, a double, the coefficient of x^2,
#          b, a double, the coefficient of x,
#          c, a double, the coefficient of 1
# Return: The roots root1 and
#                   root2 of the given quadratic
######################################################

# Replace this line with the definition of split()
def roots(a, b, c)
    if a != 0
        arg = b*b - 4*a*c
        if arg >= 0
            [ ( (-b + Math.sqrt(arg)) / (2*a) ) ,
              ( (-b - Math.sqrt(arg)) / (2*a) ) ]
        else 
            STDERR.puts "*** roots(): b^2 - 4ac is negative!"
        end
    else
        STDERR.puts "*** roots(): a is zero!"
    end 
end

def main
    puts "To find the roots, enter the quadratic: "; 
    print "Enter the coefficient of x^2: "; 
    a = gets.to_f
    print "Enter the coefficient of x: "; 
    b = gets.to_f
    print "Enter the coefficient of 1: "; 
    c = gets.to_f
    res = roots(a, b, c)
    if res != nil
        print "The first root is: " 
        print res[0]
        puts ""
        print "and the second root is: " 
        print res[1]
        puts ""
    end
end

main