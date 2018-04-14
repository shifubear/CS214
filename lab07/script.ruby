Script started on Sat Apr 14 15:43:57 2018
[?1034hbash-3.2$ cat NameTester.rb
# NameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Shion Fukuzawa, for CS 214 at Calvin College.
# Date: April 14, 2018
####################################################

require 'test/unit/assertions'   # needed for assert
include Test::Unit::Assertions

class Name 
    def initialize(first, middle, last)
        @first, @middle, @last = first, middle, last
    end

    attr_reader :first, :middle, :last

    def fullName
        @first + " " + @middle + " " + @last
    end

    def print
        puts fullName
        fullName
    end
 end

def testName
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", "first failed"
   assert name.middle == "Paul", "middle failed"
   assert name.last == "Jones", "last failed"
   assert name.fullName == "John Paul Jones", "fullName failed"
   assert name.print == "John Paul Jones", "print failed"
   
   print "All tests passed!\n"
end

testName

bash-3.2$ ruby NameTester.rb
John Paul Jones
All tests passed!
bash-3.2$ exit

Script done on Sat Apr 14 15:44:38 2018
