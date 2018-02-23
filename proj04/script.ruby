Script started on Fri 23 Feb 2018 10:23:25 AM EST
sf27@goldberg:~/Desktop/cs214/proj04$ cat factorial.rb
#! /usr/bin/ruby
# factorial.rb computes the factorial of a given integer n
# 
# Input: a non-negative integer n
# Precondition: n not negative
# Output: n!
#
# By: Shion Fukuzawa, for CS214 at Calvin College
# Date: February 23, 2018
###############################################################

# function factorial returns a n factorial, given integer n
# Parameters: n, a number
# Precondition: n >= 0.
# Returns: n!
def factorial(n)
    ret = 1
    for i in 1..n 
        ret *= i
    end
    return ret
end

if __FILE__ == $0
   puts "To computer n!, "
   print " enter n: "
   n = gets.chomp.to_i
   print n
   print "! = "
   puts factorial(n)
end
sf27@goldberg:~/Desktop/cs214/proj04$ ruby factorial.rb
To computer n!, 
 enter n: 0
0! = 1
sf27@goldberg:~/Desktop/cs214/proj04$ ruby factorial.rb
To computer n!, 
 enter n: 3
3! = 6
sf27@goldberg:~/Desktop/cs214/proj04$ ruby factorial.rb
To computer n!, 
 enter n: 7
7! = 5040
sf27@goldberg:~/Desktop/cs214/proj04$ exit

Script done on Fri 23 Feb 2018 10:23:45 AM EST
