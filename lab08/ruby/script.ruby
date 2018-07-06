Script started on Sat Jun 23 16:48:01 2018
[?1034hbash-3.2$ cat Name.rb
# name.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
# Date: June 23, 2018
####################################################

module Names

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
end
bash-3.2$ cat nameTester.rb
# nameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Shion Fukuzawa 
# Date: June 23, 2018
####################################################

require 'test/unit/assertions'
require './Name.rb'
include Test::Unit::Assertions


def testName
   name = Names::Name.new("John", "Paul", "Jones")

   assert name.first == "John", 
           "first failed"
   assert name.middle == "Paul",
           "middle failed"
   assert name.last == "Jones",
           "last failed"
   assert name.fullName == "John Paul Jones",
           "fullName failed"
   assert name.print == "John Paul Jones",
           "print failed"
   
   print "All tests passed!\n"
end

testName

bash-3.2$ ruby nameTester.rb
John Paul Jones
All tests passed!
bash-3.2$ exit

Script done on Sat Jun 23 16:48:14 2018
