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

    def lfmi
        @last + ", " + @first + " " + @middle[0]
    end

    def read
        puts "Enter the first name: "
        firstName = gets.chomp.to_s
        puts "Enter the middle name: "
        middleName = gets.chomp.to_s
        puts "Enter the last name: "
        lastName = gets.chomp.to_s
        @first = firstName
        @middle = middleName
        @last = lastName
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
   assert name.lfmi == "Jones, John P", "lfmi failed"
   assert name.print == "John Paul Jones", "print failed"
   
   name.read()
   name.print

   print "All tests passed!\n"
end

testName

