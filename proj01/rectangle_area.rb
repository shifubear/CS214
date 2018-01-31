#! /usr/bin/ruby
# rectangle_area.rb computes the area of a rectangle given its width and height
# 
# Input: the width and height of a rectangle
# Precondition: the width and height are not negative
# Output: the area of the rectangle.
#
# By: Shion Fukuzawa
# Date: January 31, 2018
###############################################################

# function rectangleArea returns a rectangle's area, given its width and height
# Parameters: w, a number
# Parameters: h, a number
# Precondition: w, h > 0.
# Returns: the area of a rectangle whose width is w and height is h.
def rectangleArea(w, h)
    w * h
end

if __FILE__ == $0
   puts "To compute the area of a rectangle,"
   print " enter its width: "
   width = gets.chomp.to_f
   print " enter its height: "
   height = gets.chomp.to_f
   print "The circle's area is: "
   puts rectangleArea(width, height)
end
